<?xml version="1.0" encoding="UTF-8"?>
<document type="com.apple.InterfaceBuilder3.CocoaTouch.Storyboard.XIB" version="3.0" toolsVersion="15705" targetRuntime="iOS.CocoaTouch" propertyAccessControl="none" useAutolayout="YES" useTraitCollections="YES" useSafeAreas="YES" colorMatched="YES" initialViewController="BYZ-38-t0r">
    <device id="retina6_1" orientation="portrait" appearance="light"/>
    <dependencies>
        <plugIn identifier="com.apple.InterfaceBuilder.IBCocoaTouchPlugin" version="15706"/>
        <capability name="Safe area layout guides" minToolsVersion="9.0"/>
        <capability name="documents saved in the Xcode 8 format" minToolsVersion="8.0"/>
    </dependencies>
    <scenes>
	
	//Add a Doctor Page
        <!--View Controller-->
        <scene sceneID="tne-QT-ifu">
            <objects>
                <viewController id="BYZ-38-t0r" customClass="ViewController" customModule="Senior_Project" customModuleProvider="target" sceneMemberID="viewController">
                    <view key="view" contentMode="top" id="8bC-Xf-vdC">
                        <rect key="frame" x="0.0" y="0.0" width="414" height="896"/>
                        <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
                        <subviews>
						
						//Add a Docotor page title label
                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Add a Doctor" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="ZkW-q0-hX4">
                                <rect key="frame" x="101" y="72" width="213" height="46"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                <fontDescription key="fontDescription" type="system" pointSize="38"/>
                                <nil key="textColor"/>
                                <nil key="highlightedColor"/>
                            </label>
						
						// Doctor Name label
                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Doctor Name" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="iJV-cT-GjB">
                                <rect key="frame" x="20" y="153" width="126" height="27"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                <fontDescription key="fontDescription" type="system" pointSize="22"/>
                                <nil key="textColor"/>
                                <nil key="highlightedColor"/>
                            </label>
							
						//Doctor Name field
                            <textField opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="left" contentVerticalAlignment="center" borderStyle="roundedRect" placeholder="John Smith" textAlignment="natural" minimumFontSize="17" translatesAutoresizingMaskIntoConstraints="NO" id="dzk-Rr-o1T">
                                <rect key="frame" x="180" y="149" width="214" height="34"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                <fontDescription key="fontDescription" type="system" pointSize="14"/>
                                <textInputTraits key="textInputTraits"/>
                            </textField>
							
						//Practice Name label
                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Practice Name" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="sPM-la-i0x">
                                <rect key="frame" x="20" y="209" width="139" height="27"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                <fontDescription key="fontDescription" type="system" pointSize="22"/>
                                <nil key="textColor"/>
                                <nil key="highlightedColor"/>
                            </label>
							
						//Practice Name field (name of place doctor works at)
                            <textField opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="left" contentVerticalAlignment="center" borderStyle="roundedRect" placeholder="Kidz Pediactrics" textAlignment="natural" minimumFontSize="17" translatesAutoresizingMaskIntoConstraints="NO" id="hxh-kt-Uxp">
                                <rect key="frame" x="180" y="205" width="214" height="34"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                <fontDescription key="fontDescription" type="system" pointSize="14"/>
                                <textInputTraits key="textInputTraits"/>
                            </textField>
							
						//Office Address label
                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Office Address" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="IAm-zW-5NA">
                                <rect key="frame" x="20" y="264" width="142" height="27"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                <fontDescription key="fontDescription" type="system" pointSize="22"/>
                                <nil key="textColor"/>
                                <nil key="highlightedColor"/>
                            </label>
							
						//Office (practice) Address field
                            <textField opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="left" contentVerticalAlignment="center" borderStyle="roundedRect" placeholder="123 Hospital St." textAlignment="natural" minimumFontSize="17" translatesAutoresizingMaskIntoConstraints="NO" id="Dbg-p4-2Wt">
                                <rect key="frame" x="180" y="260" width="214" height="34"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                <fontDescription key="fontDescription" type="system" pointSize="14"/>
                                <textInputTraits key="textInputTraits"/>
                            </textField>
							
						//Specialization label
                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Specialization" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="kJg-Zd-axx">
                                <rect key="frame" x="17" y="317" width="133" height="27"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                <fontDescription key="fontDescription" type="system" pointSize="22"/>
                                <nil key="textColor"/>
                                <nil key="highlightedColor"/>
                            </label>
							
						//Specialization field (what type of doctor)
                            <textField opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="left" contentVerticalAlignment="center" borderStyle="roundedRect" placeholder="Cardiologist, Pediatrician, etc." textAlignment="natural" minimumFontSize="17" translatesAutoresizingMaskIntoConstraints="NO" id="eW3-W6-2Oh">
                                <rect key="frame" x="180" y="313" width="214" height="34"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                <fontDescription key="fontDescription" type="system" pointSize="14"/>
                                <textInputTraits key="textInputTraits"/>
                            </textField>
							
						//SAVE button
                            <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="aXe-FO-p1k">
                                <rect key="frame" x="348" y="832" width="34" height="30"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                <state key="normal" title="Save"/>
                            </button>
							
                        </subviews>
                        <color key="backgroundColor" systemColor="systemBackgroundColor" cocoaTouchSystemColor="whiteColor"/>
                        <viewLayoutGuide key="safeArea" id="6Tk-OE-BBY"/>
                    </view>
                </viewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="dkx-z0-nzr" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="-65.217391304347828" y="97.767857142857139"/>
        </scene>
		
	//Add an Appointment Page
        <!--View Controller-->
        <scene sceneID="goH-dV-94R">
            <objects>
                <viewController id="pcP-F2-QeQ" sceneMemberID="viewController">
                    <view key="view" contentMode="scaleToFill" id="Rd9-A6-1kZ">
                        <rect key="frame" x="0.0" y="0.0" width="414" height="896"/>
                        <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
                        <subviews>
						
						//Add an Appointment page title label
                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Add an Appointment" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="0M0-Pj-Sb3">
                                <rect key="frame" x="20" y="67" width="374" height="61"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                <fontDescription key="fontDescription" type="system" pointSize="38"/>
                                <nil key="textColor"/>
                                <nil key="highlightedColor"/>
                            </label>
							
						//Add (Event) Title label 
                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Add Title" textAlignment="natural" lineBreakMode="tailTruncation" numberOfLines="2" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="368-Tw-KRY">
                                <rect key="frame" x="20" y="143" width="86" height="27"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                <fontDescription key="fontDescription" type="system" pointSize="22"/>
                                <nil key="textColor"/>
                                <nil key="highlightedColor"/>
                            </label>
							
						//Add Title field
                            <textField opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="left" contentVerticalAlignment="center" borderStyle="roundedRect" textAlignment="natural" minimumFontSize="17" translatesAutoresizingMaskIntoConstraints="NO" id="ktI-S1-NfJ">
                                <rect key="frame" x="147" y="139" width="246" height="34"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                <fontDescription key="fontDescription" type="system" pointSize="14"/>
                                <textInputTraits key="textInputTraits"/>
                            </textField>
							
						//Date Picker
                            <datePicker contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" datePickerMode="dateAndTime" minuteInterval="1" translatesAutoresizingMaskIntoConstraints="NO" id="PzG-Bn-4Sa">
                                <rect key="frame" x="20" y="202" width="374" height="216"/>
                                <autoresizingMask key="autoresizingMask" widthSizable="YES" flexibleMaxY="YES"/>
                            </datePicker>
							
						//SAVE button
                            <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="HrF-kp-GIj">
                                <rect key="frame" x="347" y="832" width="34" height="30"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                <state key="normal" title="Save"/>
                            </button>
							
                        </subviews>
                        <color key="backgroundColor" systemColor="systemBackgroundColor" cocoaTouchSystemColor="whiteColor"/>
                        <viewLayoutGuide key="safeArea" id="sTp-gW-fxz"/>
                    </view>
                </viewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="CTL-L9-UKN" userLabel="First Responder" customClass="UIResponder" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="576.81159420289862" y="97.767857142857139"/>
        </scene>
		
	//Add a Prescription Page
        <!--View Controller-->
        <scene sceneID="nbt-bY-K9x">
            <objects>
                <viewController id="Tcn-0B-fRN" sceneMemberID="viewController">
                    <view key="view" contentMode="scaleToFill" id="WxK-Si-FiF">
                        <rect key="frame" x="0.0" y="0.0" width="414" height="896"/>
                        <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
                        <subviews>
						
						//Add a Medication page title label
                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Add a Medication" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="2T5-bW-R3w">
                                <rect key="frame" x="20" y="65" width="374" height="61"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                <fontDescription key="fontDescription" type="system" pointSize="38"/>
                                <nil key="textColor"/>
                                <nil key="highlightedColor"/>
                            </label>
							
						//Medicine Name label
                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Medicine Name" textAlignment="natural" lineBreakMode="tailTruncation" numberOfLines="2" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="yEK-GM-hqe">
                                <rect key="frame" x="21" y="144" width="149" height="27"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                <fontDescription key="fontDescription" type="system" pointSize="22"/>
                                <nil key="textColor"/>
                                <nil key="highlightedColor"/>
                            </label>
							
						//Medicine Name field
                            <textField opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="left" contentVerticalAlignment="center" borderStyle="roundedRect" textAlignment="natural" minimumFontSize="17" translatesAutoresizingMaskIntoConstraints="NO" id="LjV-o2-Qlt">
                                <rect key="frame" x="197" y="140" width="197" height="34"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                <fontDescription key="fontDescription" type="system" pointSize="14"/>
                                <textInputTraits key="textInputTraits"/>
                            </textField>
							
						//Dosage Amount label
                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Dosage Amount" textAlignment="natural" lineBreakMode="tailTruncation" numberOfLines="2" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="E8i-6h-G6d">
                                <rect key="frame" x="21" y="199" width="154" height="27"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                <fontDescription key="fontDescription" type="system" pointSize="22"/>
                                <nil key="textColor"/>
                                <nil key="highlightedColor"/>
                            </label>
							
						//Dosage Amount field
                            <textField opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="left" contentVerticalAlignment="center" borderStyle="roundedRect" textAlignment="natural" minimumFontSize="17" translatesAutoresizingMaskIntoConstraints="NO" id="ZrI-xl-Bdp">
                                <rect key="frame" x="197" y="195" width="197" height="34"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                <fontDescription key="fontDescription" type="system" pointSize="14"/>
                                <textInputTraits key="textInputTraits"/>
                            </textField>
						
						//Take With Food label
							 <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Take with Food" textAlignment="natural" lineBreakMode="tailTruncation" numberOfLines="2" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="DLb-aW-qGa">
                                <rect key="frame" x="20" y="254" width="142" height="27"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                <fontDescription key="fontDescription" type="system" pointSize="22"/>
                                <nil key="textColor"/>
                                <nil key="highlightedColor"/>
                            </label>
							
						//Take With Food switch
                            <switch opaque="NO" contentMode="scaleToFill" horizontalHuggingPriority="750" verticalHuggingPriority="750" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" on="YES" translatesAutoresizingMaskIntoConstraints="NO" id="acg-tt-DDm">
                                <rect key="frame" x="197" y="252" width="49" height="31"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                            </switch>
							
						//When to Take label
                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="When to Take" textAlignment="natural" lineBreakMode="tailTruncation" numberOfLines="2" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="Wde-bV-hwv">
                                <rect key="frame" x="21" y="331" width="157" height="33"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                <fontDescription key="fontDescription" type="system" pointSize="27"/>
                                <nil key="textColor"/>
                                <nil key="highlightedColor"/>
                            </label>	
							
						//Morning label
                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Morning" textAlignment="natural" lineBreakMode="tailTruncation" numberOfLines="2" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="WuK-0d-uu2">
                                <rect key="frame" x="23" y="384" width="79" height="27"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                <fontDescription key="fontDescription" type="system" pointSize="22"/>
                                <nil key="textColor"/>
                                <nil key="highlightedColor"/>
                            </label
							
						//Morning switch
                            <switch opaque="NO" contentMode="scaleToFill" horizontalHuggingPriority="750" verticalHuggingPriority="750" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" on="YES" translatesAutoresizingMaskIntoConstraints="NO" id="Mqq-eC-3L7">
                                <rect key="frame" x="199" y="382" width="49" height="31"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                            </switch>
							
						//Noon label
                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Noon" textAlignment="natural" lineBreakMode="tailTruncation" numberOfLines="2" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="qqK-lS-Cc4">
                                <rect key="frame" x="22" y="432" width="52" height="27"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                <fontDescription key="fontDescription" type="system" pointSize="22"/>
                                <nil key="textColor"/>
                                <nil key="highlightedColor"/>
                            </label>
							
						//Noon switch
                            <switch opaque="NO" contentMode="scaleToFill" horizontalHuggingPriority="750" verticalHuggingPriority="750" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" on="YES" translatesAutoresizingMaskIntoConstraints="NO" id="7Ot-bm-ZYy">
                                <rect key="frame" x="199" y="430" width="49" height="31"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                            </switch>
							
						//Evening label
                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Evening" textAlignment="natural" lineBreakMode="tailTruncation" numberOfLines="2" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="5IR-PK-G04">
                                <rect key="frame" x="23" y="480" width="76" height="27"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                <fontDescription key="fontDescription" type="system" pointSize="22"/>
                                <nil key="textColor"/>
                                <nil key="highlightedColor"/>
                            </label>
							
						//Evening Switch
                            <switch opaque="NO" contentMode="scaleToFill" horizontalHuggingPriority="750" verticalHuggingPriority="750" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" on="YES" translatesAutoresizingMaskIntoConstraints="NO" id="kN8-i3-3cJ">
                                <rect key="frame" x="199" y="478" width="49" height="31"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                            </switch>
													
						//Bedtime label
                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Bedtime" textAlignment="natural" lineBreakMode="tailTruncation" numberOfLines="2" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="hjS-37-uug">
                                <rect key="frame" x="23" y="528" width="80" height="27"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                <fontDescription key="fontDescription" type="system" pointSize="22"/>
                                <nil key="textColor"/>
                                <nil key="highlightedColor"/>
                            </label>
							
						//Beditme switch
                            <switch opaque="NO" contentMode="scaleToFill" horizontalHuggingPriority="750" verticalHuggingPriority="750" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" on="YES" translatesAutoresizingMaskIntoConstraints="NO" id="lwb-CC-qJ3">
                                <rect key="frame" x="198" y="526" width="49" height="31"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                            </switch>
							
						//SAVE button
                            <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="Y38-V8-KlZ">
                                <rect key="frame" x="348" y="832" width="34" height="30"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                <state key="normal" title="Save"/>
                            </button>
							
                        </subviews>
                        <color key="backgroundColor" systemColor="systemBackgroundColor" cocoaTouchSystemColor="whiteColor"/>
                        <viewLayoutGuide key="safeArea" id="Hlk-gn-qOn"/>
                    </view>
                </viewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="sN6-GR-B9r" userLabel="First Responder" customClass="UIResponder" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="1218.840579710145" y="97.767857142857139"/>
        </scene>
    </scenes>
</document>
