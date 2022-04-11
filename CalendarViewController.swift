//
//  ViewController.swift
//  Calendar 2.0
//
//  Created by Karina Tovar on 4/10/22.
//
//notes: privacy list under info. -> privacy - calendar usage description

import UIKit
import CalendarKit //swift package
import EventKit
import EventKitUI
//EventKit framework provides access to calendar and reminders data. Users can create, retrieve, and edit calendar items.



//renamed class ViewController to CalendarViewController
class CalendarViewController: DayViewController,  EKEventEditViewDelegate {
    func eventEditViewController(_ controller: EKEventEditViewController, didCompleteWith action: EKEventEditViewAction) {
    }
    
    private let eventStore = EKEventStore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Calendar"
        requestAcessToCalendar()
        subscribeToNotifications()
        
      }
        //method requestAccesstoCalendar asks the user for permission to access calendar.
    func requestAcessToCalendar () {
        eventStore.requestAccess(to: .event) {success , error in
        }
        
    }
    
    //subscribe so user gets notifications
    func subscribeToNotifications () {
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(storeChanged(_ :)),
                                               name: .EKEventStoreChanged,
                                               object: nil)
    }
    
    @objc func storeChanged( _ notifications: Notification) {
        reloadData()
    }
    
    override func eventsForDate(_ date: Date) -> [EventDescriptor] {
        let startDate = date
        var oneDayComponents = DateComponents()
        oneDayComponents.day = 1
        
        let endDate = calendar.date(byAdding: oneDayComponents,  to: startDate)!
        
        let predicate = eventStore.predicateForEvents(withStart: startDate,
                                                      end: endDate,
                                                      calendars: nil)
        
        let eventKitEvents = eventStore.events(matching: predicate)
        
        let calendarKitEvents = eventKitEvents.map (EKWrapper.init)
         
        return calendarKitEvents
    }
       
        
    override func dayViewDidSelectEventView(_ eventView: EventView) {
        guard let ckEvent = eventView.descriptor as? EKWrapper else {
            return
        }
        
        let ekEvent = ckEvent.ekEvent
        presentDetailView(ekEvent)
    }
    
    // Provides detailed view of events when clicked
    private func presentDetailView(_ ekEvent : EKEvent){
        let eventViewController = EKEventViewController()
        eventViewController.event = ekEvent
        eventViewController.allowsCalendarPreview = true
        eventViewController.allowsEditing = true
        navigationController?.pushViewController(eventViewController,
                                                 animated: true)
    }
    
    override func dayViewDidLongPressEventView(_ eventView: EventView) {
        guard let ckEvent = eventView.descriptor as? EKWrapper else {
            return
        }
        beginEditing(event:ckEvent , animated: true)
    }
    
    override func dayView(dayView: DayView, didUpdate event: EventDescriptor){
        guard let editingEvent = event as? EKWrapper else { return }
        if let originalEvent = event.editedEvent {
            editingEvent.commitEditing()
            
            try! eventStore.save(editingEvent.ekEvent,
                                 span: .thisEvent)
        }
        reloadData()
    }
    
    //
    func presentEditingViewForEvent(_ ekEvent: EKEvent){
        let editingViewController = EKEventEditViewController()
        editingViewController.editViewDelegate = self
        editingViewController.eventStore = eventStore
        present(editingViewController, animated: true, completion: nil)
    }
    
    
    //end event editing
    override func dayView(dayView: DayView, didTapTimelineAt date: Date) {
        endEventEditing()
    }
    
    override func dayViewDidBeginDragging(dayView: DayView) {
        endEventEditing()
    }
    
    //create event
    override func dayView(dayView: DayView, didLongPressTimelineAt date: Date){
        let newEKEvent = EKEvent(eventStore: eventStore)
        newEKEvent.calendar = eventStore.defaultCalendarForNewEvents
        
        var oneHourComponents = DateComponents()
        oneHourComponents.hour = 1
        
        let endDate = calendar.date(byAdding: oneHourComponents, to: date)
        
        newEKEvent.startDate = date
        newEKEvent.endDate = endDate
        newEKEvent.title = "New Event"
        
        
        let newEKWrapper = EKWrapper(eventKitEvent: newEKEvent)
        newEKWrapper.editedEvent = newEKWrapper
        
        create(event: newEKWrapper, animated: true)
    }
    
    
    func eventViewController(_ controller: EKEventViewController, didCompleteWith
        action: EKEventViewAction) {
        endEventEditing()
        reloadData()
        controller.dismiss(animated: true, completion: nil)
    }
    
    
    
}//end of class CalendarViewController



//Class EKEventStore object that accesses user's calendar events and reminders and supports scheduling of events.


