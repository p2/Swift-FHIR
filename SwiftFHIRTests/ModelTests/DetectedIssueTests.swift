//
//  DetectedIssueTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.1.7108 on 2015-09-23.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class DetectedIssueTests: XCTestCase
{
	func instantiateFrom(filename filename: String) throws -> DetectedIssue {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> DetectedIssue {
		let instance = DetectedIssue(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDetectedIssue1() {
		let instance = try? runDetectedIssue1()
		XCTAssertNotNil(instance, "Must instantiate DetectedIssue")
		try! runDetectedIssue1(instance!.asJSON())
	}
	
	func runDetectedIssue1(json: FHIRJSON? = nil) throws -> DetectedIssue {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "detectedissue-example-allergy.json")
		
		XCTAssertEqual(inst.id!, "allergy")
		XCTAssertEqual(inst.text!.div!, "<div>[Put rendering here]</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testDetectedIssue2() {
		let instance = try? runDetectedIssue2()
		XCTAssertNotNil(instance, "Must instantiate DetectedIssue")
		try! runDetectedIssue2(instance!.asJSON())
	}
	
	func runDetectedIssue2(json: FHIRJSON? = nil) throws -> DetectedIssue {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "detectedissue-example-dup.json")
		
		XCTAssertEqual(inst.author!.reference!, "Device/dsp")
		XCTAssertEqual(inst.category!.coding![0].code!, "DUPTHPY")
		XCTAssertEqual(inst.category!.coding![0].display!, "Duplicate Therapy Alert")
		XCTAssertEqual(inst.category!.coding![0].system!.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst.date!.description, "2013-05-08")
		XCTAssertEqual(inst.detail!, "Similar test was performed within the past 14 days")
		XCTAssertEqual(inst.id!, "duplicate")
		XCTAssertEqual(inst.implicated![0].display!, "Chest CT - ordered May 8, 2013 by Dr. Adam Careful")
		XCTAssertEqual(inst.implicated![0].reference!, "DiagnosticOrder/di")
		XCTAssertEqual(inst.implicated![1].display!, "Image 1 from Series 3: CT Images on Patient MINT (MINT1234) taken at 1-Jan 2011 01:20 AM")
		XCTAssertEqual(inst.implicated![1].reference!, "ImagingStudy/example")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testDetectedIssue3() {
		let instance = try? runDetectedIssue3()
		XCTAssertNotNil(instance, "Must instantiate DetectedIssue")
		try! runDetectedIssue3(instance!.asJSON())
	}
	
	func runDetectedIssue3(json: FHIRJSON? = nil) throws -> DetectedIssue {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "detectedissue-example-lab.json")
		
		XCTAssertEqual(inst.id!, "lab")
		XCTAssertEqual(inst.text!.div!, "<div>[Put rendering here]</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testDetectedIssue4() {
		let instance = try? runDetectedIssue4()
		XCTAssertNotNil(instance, "Must instantiate DetectedIssue")
		try! runDetectedIssue4(instance!.asJSON())
	}
	
	func runDetectedIssue4(json: FHIRJSON? = nil) throws -> DetectedIssue {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "detectedissue-example.json")
		
		XCTAssertEqual(inst.author!.reference!, "Device/dsp")
		XCTAssertEqual(inst.category!.coding![0].code!, "DRG")
		XCTAssertEqual(inst.category!.coding![0].display!, "Drug Interaction Alert")
		XCTAssertEqual(inst.category!.coding![0].system!.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst.date!.description, "2014-01-05")
		XCTAssertEqual(inst.id!, "ddi")
		XCTAssertEqual(inst.implicated![0].display!, "500 mg Acetaminophen tablet 1/day, PRN since 2010")
		XCTAssertEqual(inst.implicated![0].reference!, "MedicationStatement/tylenol")
		XCTAssertEqual(inst.implicated![1].display!, "Warfarin 1 MG TAB prescribed Jan. 5, 2014")
		XCTAssertEqual(inst.implicated![1].reference!, "MedicationOrder/warfarin")
		XCTAssertEqual(inst.mitigation![0].action!.coding![0].code!, "13")
		XCTAssertEqual(inst.mitigation![0].action!.coding![0].display!, "Stopped Concurrent Therapy")
		XCTAssertEqual(inst.mitigation![0].action!.coding![0].system!.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst.mitigation![0].action!.text!, "Asked patient to discontinue regular use of Tylenol and to consult with clinician if they need to resume to allow appropriate INR monitoring")
		XCTAssertEqual(inst.mitigation![0].author!.display!, "Dr. Adam Careful")
		XCTAssertEqual(inst.mitigation![0].author!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.mitigation![0].date!.description, "2014-01-05")
		XCTAssertEqual(inst.severity!, "high")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}