//
//  PlanDefinitionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-05-17.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRPlanDefinition = Models.PlanDefinition
#else
import SwiftFHIR
typealias SwiftFHIRPlanDefinition = SwiftFHIR.PlanDefinition
#endif


class PlanDefinitionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRPlanDefinition {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRPlanDefinition {
		return try SwiftFHIRPlanDefinition(json: json)
	}
	
	func testPlanDefinition1() {
		do {
			let instance = try runPlanDefinition1()
			try runPlanDefinition1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test PlanDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPlanDefinition1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPlanDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "plandefinition-example-kdn5-simplified.json")
		
		// Don't know how to create unit test for "action?[0].action?[0].action?[0].action?[0].action?[0].definitionCanonical", which is a FHIRCanonical
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[0].extension_fhir?[0].extension_fhir?[0].url, "day")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[0].extension_fhir?[0].extension_fhir?[0].valueInteger, 1)
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[0].extension_fhir?[0].extension_fhir?[1].url, "day")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[0].extension_fhir?[0].extension_fhir?[1].valueInteger, 8)
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[0].extension_fhir?[0].url, "http://hl7.org/fhir/StructureDefinition/timing-daysOfCycle")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[0].id, "action-1")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[0].textEquivalent, "Gemcitabine 1250 mg/m² IV over 30 minutes on days 1 and 8")
		// Don't know how to create unit test for "action?[0].action?[0].action?[0].action?[0].action?[1].definitionCanonical", which is a FHIRCanonical
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[1].extension_fhir?[0].extension_fhir?[0].url, "day")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[1].extension_fhir?[0].extension_fhir?[0].valueInteger, 1)
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[1].extension_fhir?[0].url, "http://hl7.org/fhir/StructureDefinition/timing-daysOfCycle")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[1].id, "action-2")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[1].relatedAction?[0].actionId, "action-1")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[1].relatedAction?[0].relationship, ActionRelationshipType(rawValue: "concurrent-with-start")!)
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[1].textEquivalent, "CARBOplatin AUC 5 IV over 30 minutes on Day 1")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].id, "cycle-definition-1")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].textEquivalent, "21-day cycle for 6 cycles")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].timingTiming?.repeat_fhir?.count, 6)
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].timingTiming?.repeat_fhir?.duration, "21")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].timingTiming?.repeat_fhir?.durationUnit, "d")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].groupingBehavior, ActionGroupingBehavior(rawValue: "sentence-group")!)
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].selectionBehavior, ActionSelectionBehavior(rawValue: "exactly-one")!)
		XCTAssertEqual(inst.action?[0].action?[0].selectionBehavior, ActionSelectionBehavior(rawValue: "all")!)
		XCTAssertEqual(inst.action?[0].selectionBehavior, ActionSelectionBehavior(rawValue: "exactly-one")!)
		XCTAssertEqual(inst.approvalDate?.description, "2016-07-27")
		XCTAssertEqual(inst.author?[0].name, "Lee Surprenant")
		XCTAssertEqual(inst.contained?[0].id, "1111")
		XCTAssertEqual(inst.contained?[1].id, "2222")
		XCTAssertEqual(inst.copyright, "All rights reserved.")
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.id, "KDN5")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://example.org/ordertemplates")
		XCTAssertEqual(inst.identifier?[0].value, "KDN5")
		XCTAssertEqual(inst.lastReviewDate?.description, "2016-07-27")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.publisher, "National Comprehensive Cancer Network, Inc.")
		XCTAssertEqual(inst.relatedArtifact?[0].display, "NCCN Guidelines for Kidney Cancer. V.2.2016")
		XCTAssertEqual(inst.relatedArtifact?[0].type, RelatedArtifactType(rawValue: "derived-from")!)
		XCTAssertEqual(inst.relatedArtifact?[0].url?.absoluteString, "http://www.example.org/professionals/physician_gls/PDF/kidney.pdf")
		XCTAssertEqual(inst.relatedArtifact?[1].citation, "Oudard S, et al. J Urol. 2007;177(5):1698-702")
		XCTAssertEqual(inst.relatedArtifact?[1].type, RelatedArtifactType(rawValue: "citation")!)
		XCTAssertEqual(inst.relatedArtifact?[1].url?.absoluteString, "http://www.ncbi.nlm.nih.gov/pubmed/17437788")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "additional")!)
		XCTAssertEqual(inst.title, "Gemcitabine/CARBOplatin")
		XCTAssertEqual(inst.type?.text, "Chemotherapy Order Template")
		XCTAssertEqual(inst.useContext?[0].code?.code, "treamentSetting-or-diseaseStatus")
		XCTAssertEqual(inst.useContext?[0].code?.system?.absoluteString, "http://example.org/fhir/CodeSystem/indications")
		XCTAssertEqual(inst.useContext?[0].extension_fhir?[0].url, "http://hl7.org/fhir/StructureDefinition/usagecontext-group")
		XCTAssertEqual(inst.useContext?[0].extension_fhir?[0].valueString, "A")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.text, "Metastatic")
		XCTAssertEqual(inst.useContext?[1].code?.code, "disease-or-histology")
		XCTAssertEqual(inst.useContext?[1].code?.system?.absoluteString, "http://example.org/fhir/CodeSystem/indications")
		XCTAssertEqual(inst.useContext?[1].extension_fhir?[0].url, "http://hl7.org/fhir/StructureDefinition/usagecontext-group")
		XCTAssertEqual(inst.useContext?[1].extension_fhir?[0].valueString, "A")
		XCTAssertEqual(inst.useContext?[1].valueCodeableConcept?.text, "Collecting Duct/Medullary Subtypes")
		XCTAssertEqual(inst.useContext?[2].code?.code, "focus")
		XCTAssertEqual(inst.useContext?[2].code?.system?.absoluteString, "http://terminology.hl7.org/CodeSystem/usage-context-type")
		XCTAssertEqual(inst.useContext?[2].extension_fhir?[0].url, "http://hl7.org/fhir/StructureDefinition/usagecontext-group")
		XCTAssertEqual(inst.useContext?[2].extension_fhir?[0].valueString, "A")
		XCTAssertEqual(inst.useContext?[2].valueCodeableConcept?.text, "Kidney Cancer")
		XCTAssertEqual(inst.useContext?[3].code?.code, "treatmentSetting-or-diseaseStatus")
		XCTAssertEqual(inst.useContext?[3].code?.system?.absoluteString, "http://example.org/fhir/CodeSystem/indications")
		XCTAssertEqual(inst.useContext?[3].extension_fhir?[0].url, "http://hl7.org/fhir/StructureDefinition/usagecontext-group")
		XCTAssertEqual(inst.useContext?[3].extension_fhir?[0].valueString, "B")
		XCTAssertEqual(inst.useContext?[3].valueCodeableConcept?.text, "Relapsed")
		XCTAssertEqual(inst.useContext?[4].code?.code, "disease-or-histology")
		XCTAssertEqual(inst.useContext?[4].code?.system?.absoluteString, "http://example.org/fhir/CodeSystem/indications")
		XCTAssertEqual(inst.useContext?[4].extension_fhir?[0].url, "http://hl7.org/fhir/StructureDefinition/usagecontext-group")
		XCTAssertEqual(inst.useContext?[4].extension_fhir?[0].valueString, "B")
		XCTAssertEqual(inst.useContext?[4].valueCodeableConcept?.text, "Collecting Duct/Medullary Subtypes")
		XCTAssertEqual(inst.useContext?[5].code?.code, "focus")
		XCTAssertEqual(inst.useContext?[5].code?.system?.absoluteString, "http://terminology.hl7.org/CodeSystem/usage-context-type")
		XCTAssertEqual(inst.useContext?[5].extension_fhir?[0].url, "http://hl7.org/fhir/StructureDefinition/usagecontext-group")
		XCTAssertEqual(inst.useContext?[5].extension_fhir?[0].valueString, "B")
		XCTAssertEqual(inst.useContext?[5].valueCodeableConcept?.text, "Kidney Cancer – Collecting Duct/Medullary Subtypes - Metastatic")
		XCTAssertEqual(inst.version, "1")
		
		return inst
	}
	
	func testPlanDefinition2() {
		do {
			let instance = try runPlanDefinition2()
			try runPlanDefinition2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test PlanDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPlanDefinition2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPlanDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "plandefinition-options-example.json")
		
		// Don't know how to create unit test for "action?[0].action?[0].definitionCanonical", which is a FHIRCanonical
		XCTAssertEqual(inst.action?[0].action?[0].id, "medication-action-1")
		XCTAssertEqual(inst.action?[0].action?[0].title, "Administer Medication 1")
		// Don't know how to create unit test for "action?[0].action?[1].definitionCanonical", which is a FHIRCanonical
		XCTAssertEqual(inst.action?[0].action?[1].id, "medication-action-2")
		XCTAssertEqual(inst.action?[0].action?[1].relatedAction?[0].actionId, "medication-action-1")
		XCTAssertEqual(inst.action?[0].action?[1].relatedAction?[0].offsetDuration?.unit, "h")
		XCTAssertEqual(inst.action?[0].action?[1].relatedAction?[0].offsetDuration?.value, "1")
		XCTAssertEqual(inst.action?[0].action?[1].relatedAction?[0].relationship, ActionRelationshipType(rawValue: "after-end")!)
		XCTAssertEqual(inst.action?[0].action?[1].title, "Administer Medication 2")
		XCTAssertEqual(inst.action?[0].groupingBehavior, ActionGroupingBehavior(rawValue: "logical-group")!)
		XCTAssertEqual(inst.action?[0].selectionBehavior, ActionSelectionBehavior(rawValue: "all")!)
		XCTAssertEqual(inst.contained?[0].id, "activitydefinition-medicationrequest-1")
		XCTAssertEqual(inst.contained?[1].id, "activitydefinition-medicationrequest-2")
		XCTAssertEqual(inst.id, "options-example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "This example illustrates relationships between actions.")
		
		return inst
	}
	
	func testPlanDefinition3() {
		do {
			let instance = try runPlanDefinition3()
			try runPlanDefinition3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test PlanDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPlanDefinition3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPlanDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "plandefinition-example-cardiology-os.json")
		
		// Don't know how to create unit test for "action?[0].action?[0].action?[0].definitionCanonical", which is a FHIRCanonical
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[0].expression?.expression, "Now()")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[0].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[0].path, "timing.event")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[1].expression?.expression, "Code '261QM0850X' from CardiologyChestPainLogic.\"NUCC Provider Taxonomy\" display 'Adult Mental Health'")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[1].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[1].path, "specialty")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[2].expression?.expression, "CardiologyChestPainLogic.ServiceRequestFulfillmentTime")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[2].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[2].path, "occurrenceDateTime")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[3].expression?.expression, "CardiologyChestPainLogic.Patient")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[3].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[3].path, "subject")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[4].expression?.expression, "CardiologyChestPainLogic.Practitioner")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[4].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[4].path, "requester.agent")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[5].expression?.expression, "CardiologyChestPainLogic.CardiologyReferralReason")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[5].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[5].path, "reasonCode")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[6].expression?.expression, "CardiologyChestPainLogic.RiskAssessment")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[6].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[6].path, "reasonReference")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].textEquivalent, "Referral to cardiology to evaluate chest pain (routine)")
		// Don't know how to create unit test for "action?[0].action?[0].action?[1].definitionCanonical", which is a FHIRCanonical
		XCTAssertEqual(inst.action?[0].action?[0].action?[1].title, "Reason for cardiology consultation")
		// Don't know how to create unit test for "action?[0].action?[0].action?[2].definitionCanonical", which is a FHIRCanonical
		XCTAssertEqual(inst.action?[0].action?[0].action?[2].title, "Goal of cardiology consultation")
		XCTAssertEqual(inst.action?[0].action?[0].groupingBehavior, ActionGroupingBehavior(rawValue: "logical-group")!)
		XCTAssertEqual(inst.action?[0].action?[0].selectionBehavior, ActionSelectionBehavior(rawValue: "any")!)
		XCTAssertEqual(inst.action?[0].action?[0].title, "Consults and Referrals")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].groupingBehavior, ActionGroupingBehavior(rawValue: "logical-group")!)
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].selectionBehavior, ActionSelectionBehavior(rawValue: "at-most-one")!)
		// Don't know how to create unit test for "action?[0].action?[1].action?[1].action?[0].definitionCanonical", which is a FHIRCanonical
		XCTAssertEqual(inst.action?[0].action?[1].action?[1].action?[0].dynamicValue?[0].expression?.expression, "'draft'")
		XCTAssertEqual(inst.action?[0].action?[1].action?[1].action?[0].dynamicValue?[0].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[1].action?[1].action?[0].dynamicValue?[0].path, "status")
		XCTAssertEqual(inst.action?[0].action?[1].action?[1].action?[0].dynamicValue?[1].expression?.expression, "CardiologyChestPainLogic.Patient")
		XCTAssertEqual(inst.action?[0].action?[1].action?[1].action?[0].dynamicValue?[1].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[1].action?[1].action?[0].dynamicValue?[1].path, "patient")
		XCTAssertEqual(inst.action?[0].action?[1].action?[1].action?[0].dynamicValue?[2].expression?.expression, "CardiologyChestPainLogic.Practitioner")
		XCTAssertEqual(inst.action?[0].action?[1].action?[1].action?[0].dynamicValue?[2].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[1].action?[1].action?[0].dynamicValue?[2].path, "prescriber")
		XCTAssertEqual(inst.action?[0].action?[1].action?[1].action?[0].textEquivalent, "metoprolol tartrate 25 mg tablet 1 tablet oral 2 time daily")
		// Don't know how to create unit test for "action?[0].action?[1].action?[1].action?[1].definitionCanonical", which is a FHIRCanonical
		XCTAssertEqual(inst.action?[0].action?[1].action?[1].action?[1].dynamicValue?[0].expression?.expression, "'draft'")
		XCTAssertEqual(inst.action?[0].action?[1].action?[1].action?[1].dynamicValue?[0].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[1].action?[1].action?[1].dynamicValue?[0].path, "status")
		XCTAssertEqual(inst.action?[0].action?[1].action?[1].action?[1].dynamicValue?[1].expression?.expression, "CardiologyChestPainLogic.Patient")
		XCTAssertEqual(inst.action?[0].action?[1].action?[1].action?[1].dynamicValue?[1].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[1].action?[1].action?[1].dynamicValue?[1].path, "patient")
		XCTAssertEqual(inst.action?[0].action?[1].action?[1].action?[1].dynamicValue?[2].expression?.expression, "CardiologyChestPainLogic.Practitioner")
		XCTAssertEqual(inst.action?[0].action?[1].action?[1].action?[1].dynamicValue?[2].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[1].action?[1].action?[1].dynamicValue?[2].path, "prescriber")
		XCTAssertEqual(inst.action?[0].action?[1].action?[1].action?[1].textEquivalent, "metoprolol tartrate 50 mg tablet 1 tablet oral 2 time daily")
		// Don't know how to create unit test for "action?[0].action?[1].action?[1].action?[2].definitionCanonical", which is a FHIRCanonical
		XCTAssertEqual(inst.action?[0].action?[1].action?[1].action?[2].dynamicValue?[0].expression?.expression, "'draft'")
		XCTAssertEqual(inst.action?[0].action?[1].action?[1].action?[2].dynamicValue?[0].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[1].action?[1].action?[2].dynamicValue?[0].path, "status")
		XCTAssertEqual(inst.action?[0].action?[1].action?[1].action?[2].dynamicValue?[1].expression?.expression, "CardiologyChestPainLogic.Patient")
		XCTAssertEqual(inst.action?[0].action?[1].action?[1].action?[2].dynamicValue?[1].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[1].action?[1].action?[2].dynamicValue?[1].path, "patient")
		XCTAssertEqual(inst.action?[0].action?[1].action?[1].action?[2].dynamicValue?[2].expression?.expression, "CardiologyChestPainLogic.Practitioner")
		XCTAssertEqual(inst.action?[0].action?[1].action?[1].action?[2].dynamicValue?[2].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[1].action?[1].action?[2].dynamicValue?[2].path, "prescriber")
		XCTAssertEqual(inst.action?[0].action?[1].action?[1].action?[2].textEquivalent, "amlodipine 5  tablet 1 tablet oral  daily")
		XCTAssertEqual(inst.action?[0].action?[1].action?[1].groupingBehavior, ActionGroupingBehavior(rawValue: "logical-group")!)
		XCTAssertEqual(inst.action?[0].action?[1].action?[1].selectionBehavior, ActionSelectionBehavior(rawValue: "at-most-one")!)
		XCTAssertEqual(inst.action?[0].action?[1].action?[1].title, "Antianginal Therapy")
		// Don't know how to create unit test for "action?[0].action?[1].action?[2].action?[0].definitionCanonical", which is a FHIRCanonical
		XCTAssertEqual(inst.action?[0].action?[1].action?[2].action?[0].dynamicValue?[0].expression?.expression, "'draft'")
		XCTAssertEqual(inst.action?[0].action?[1].action?[2].action?[0].dynamicValue?[0].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[1].action?[2].action?[0].dynamicValue?[0].path, "status")
		XCTAssertEqual(inst.action?[0].action?[1].action?[2].action?[0].dynamicValue?[1].expression?.expression, "CardiologyChestPainLogic.Patient")
		XCTAssertEqual(inst.action?[0].action?[1].action?[2].action?[0].dynamicValue?[1].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[1].action?[2].action?[0].dynamicValue?[1].path, "patient")
		XCTAssertEqual(inst.action?[0].action?[1].action?[2].action?[0].dynamicValue?[2].expression?.expression, "CardiologyChestPainLogic.Practitioner")
		XCTAssertEqual(inst.action?[0].action?[1].action?[2].action?[0].dynamicValue?[2].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[1].action?[2].action?[0].dynamicValue?[2].path, "prescriber")
		XCTAssertEqual(inst.action?[0].action?[1].action?[2].action?[0].textEquivalent, "nitroglycerin 0.4 mg tablet sub-lingual every 5 minutes as needed for chest pain; maximum 3 tablets")
		XCTAssertEqual(inst.action?[0].action?[1].action?[2].groupingBehavior, ActionGroupingBehavior(rawValue: "logical-group")!)
		XCTAssertEqual(inst.action?[0].action?[1].action?[2].selectionBehavior, ActionSelectionBehavior(rawValue: "at-most-one")!)
		XCTAssertEqual(inst.action?[0].action?[1].action?[2].title, "Nitroglycerin")
		XCTAssertEqual(inst.action?[0].action?[1].description_fhir, "Consider the following medications for stable patients to be initiated prior to the cardiology consultation.")
		XCTAssertEqual(inst.action?[0].action?[1].title, "Medications")
		XCTAssertEqual(inst.author?[0].name, "Bruce Bray MD")
		XCTAssertEqual(inst.author?[1].name, "Scott Wall MD")
		XCTAssertEqual(inst.author?[2].name, "Aiden Abidov MD, PhD")
		XCTAssertEqual(inst.contained?[0].id, "cardiology-chestPain-logic")
		XCTAssertEqual(inst.contained?[1].id, "referralToCardiologyConsult")
		XCTAssertEqual(inst.contained?[2].id, "metoprololTartrate25Prescription")
		XCTAssertEqual(inst.contained?[3].id, "metoprololTartrate25Medication")
		XCTAssertEqual(inst.contained?[4].id, "metoprololTartrate25Substance")
		XCTAssertEqual(inst.contained?[5].id, "metoprololTartrate50Prescription")
		XCTAssertEqual(inst.contained?[6].id, "metoprololTartrate50Medication")
		XCTAssertEqual(inst.contained?[7].id, "metoprololTartrate50Substance")
		XCTAssertEqual(inst.contained?[8].id, "nitroglycerinPrescription")
		XCTAssertEqual(inst.contained?[9].id, "nitroglycerinMedication")
		XCTAssertEqual(inst.copyright, "© Copyright Cognitive Medical Systems, Inc. 9444 Waples Street Suite 300 San Diego, CA 92121")
		XCTAssertEqual(inst.date?.description, "2017-08-29")
		XCTAssertEqual(inst.id, "example-cardiology-os")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:va.gov:kbs:knart:artifact:r1")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "bb7ccea6-9744-4743-854a-bcffd87191f6")
		XCTAssertEqual(inst.identifier?[1].system?.absoluteString, "urn:va.gov:kbs:contract:VA118-16-D-1008:to:VA-118-16-F-1008-0007")
		XCTAssertEqual(inst.identifier?[1].value, "CLIN0004AG")
		XCTAssertEqual(inst.identifier?[2].system?.absoluteString, "urn:cognitivemedicine.com:lab:jira")
		XCTAssertEqual(inst.identifier?[2].value, "KP-914")
		// Don't know how to create unit test for "library?[0]", which is a FHIRCanonical
		XCTAssertEqual(inst.name, "ChestPainCoronaryArteryDiseaseOrderSetKNART")
		XCTAssertEqual(inst.publisher, "Department of Veterans Affairs")
		XCTAssertEqual(inst.relatedArtifact?[0].display, "Cardiology: Chest Pain (CP) / Coronary Artery Disease (CAD) Clinical Content White Paper")
		XCTAssertEqual(inst.relatedArtifact?[0].type, RelatedArtifactType(rawValue: "derived-from")!)
		XCTAssertEqual(inst.relatedArtifact?[0].url?.absoluteString, "NEED-A-URL-HERE")
		XCTAssertEqual(inst.relatedArtifact?[1].display, "Outcome CVD (coronary death, myocardial infarction, coronary insufficiency, angina, ischemic stroke, hemorrhagic stroke, transient ischemic attack, peripheral artery disease, heart failure)")
		XCTAssertEqual(inst.relatedArtifact?[1].type, RelatedArtifactType(rawValue: "justification")!)
		XCTAssertEqual(inst.relatedArtifact?[1].url?.absoluteString, "https://www.framinghamheartstudy.org/risk-functions/cardiovascular-disease/10-year-risk.php")
		XCTAssertEqual(inst.relatedArtifact?[2].display, "General cardiovascular risk profile for use in primary care: the Framingham Heart Study")
		XCTAssertEqual(inst.relatedArtifact?[2].type, RelatedArtifactType(rawValue: "justification")!)
		XCTAssertEqual(inst.relatedArtifact?[2].url?.absoluteString, "https://www.framinghamheartstudy.org/risk-functions/cardiovascular-disease/10-year-risk.php")
		XCTAssertEqual(inst.relatedArtifact?[3].type, RelatedArtifactType(rawValue: "justification")!)
		XCTAssertEqual(inst.relatedArtifact?[3].url?.absoluteString, "NEED-A-URL-HERE")
		XCTAssertEqual(inst.relatedArtifact?[4].type, RelatedArtifactType(rawValue: "justification")!)
		XCTAssertEqual(inst.relatedArtifact?[4].url?.absoluteString, "NEED-A-URL-HERE")
		XCTAssertEqual(inst.relatedArtifact?[5].display, "LABEL: ASPIRIN 81 MG- aspirin tablet, coated")
		XCTAssertEqual(inst.relatedArtifact?[5].type, RelatedArtifactType(rawValue: "justification")!)
		XCTAssertEqual(inst.relatedArtifact?[5].url?.absoluteString, "https://dailymed.nlm.nih.gov/dailymed/drugInfo.cfm?setid=b4064039-2345-4227-b83d-54dc13a838d3")
		XCTAssertEqual(inst.relatedArtifact?[6].display, "LABEL: CLOPIDOGREL- clopidogrel bisulfate tablet, film coated")
		XCTAssertEqual(inst.relatedArtifact?[6].type, RelatedArtifactType(rawValue: "justification")!)
		XCTAssertEqual(inst.relatedArtifact?[6].url?.absoluteString, "https://dailymed.nlm.nih.gov/dailymed/drugInfo.cfm?setid=7fe85155-bc00-406b-b097-e8aece187a8a")
		XCTAssertEqual(inst.relatedArtifact?[7].display, "LABEL: LIPITOR- atorvastatin calcium tablet, film coated")
		XCTAssertEqual(inst.relatedArtifact?[7].type, RelatedArtifactType(rawValue: "justification")!)
		XCTAssertEqual(inst.relatedArtifact?[7].url?.absoluteString, "https://dailymed.nlm.nih.gov/dailymed/drugInfo.cfm?setid=7fe85155-bc00-406b-b097-e8aece187a8a")
		XCTAssertEqual(inst.relatedArtifact?[8].display, "LABEL: METOPROLOL SUCCINATE EXTENDED-RELEASE - metoprolol succinate tablet, film coated, extended release")
		XCTAssertEqual(inst.relatedArtifact?[8].type, RelatedArtifactType(rawValue: "justification")!)
		XCTAssertEqual(inst.relatedArtifact?[8].url?.absoluteString, "https://dailymed.nlm.nih.gov/dailymed/drugInfo.cfm?setid=2d948600-35d8-4490-983b-918bdce488c8")
		XCTAssertEqual(inst.relatedArtifact?[9].display, "LABEL: NITROGLYCERIN- nitroglycerin tablet")
		XCTAssertEqual(inst.relatedArtifact?[9].type, RelatedArtifactType(rawValue: "justification")!)
		XCTAssertEqual(inst.relatedArtifact?[9].url?.absoluteString, "https://dailymed.nlm.nih.gov/dailymed/drugInfo.cfm?setid=67bf2a15-b115-47ac-ae28-ce2dafd6b5c9")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Chest Pain (CP) - Coronary Artery Disease (CAD) Order Set KNART")
		XCTAssertEqual(inst.type?.coding?[0].code, "order-set")
		XCTAssertEqual(inst.type?.coding?[0].display, "Order Set")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/plan-definition-type")
		XCTAssertEqual(inst.url?.absoluteString, "http://va.gov/kas/orderset/B5-Cardiology-ChestPainCAD-OS")
		XCTAssertEqual(inst.useContext?[0].code?.code, "focus")
		XCTAssertEqual(inst.useContext?[0].code?.system?.absoluteString, "http://terminology.hl7.org/CodeSystem/usage-context-type")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].code, "look up value")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].display, "appropriate snomed condition")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.version, "0.1")
		
		return inst
	}
	
	func testPlanDefinition4() {
		do {
			let instance = try runPlanDefinition4()
			try runPlanDefinition4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test PlanDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPlanDefinition4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPlanDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "plandefinition-protocol-example.json")
		
		XCTAssertEqual(inst.action?[0].cardinalityBehavior, ActionCardinalityBehavior(rawValue: "single")!)
		XCTAssertEqual(inst.action?[0].condition?[0].expression?.expression, "exists ([Condition: Obesity]) or not exists ([Observation: BMI] O where O.effectiveDateTime 2 years or less before Today())")
		XCTAssertEqual(inst.action?[0].condition?[0].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].condition?[0].kind, ActionConditionKind(rawValue: "applicability")!)
		// Don't know how to create unit test for "action?[0].definitionCanonical", which is a FHIRCanonical
		XCTAssertEqual(inst.action?[0].description_fhir, "Measure, Weight, Height, Waist, Circumference; Calculate BMI")
		XCTAssertEqual(inst.action?[0].goalId?[0], "reduce-bmi-ratio")
		XCTAssertEqual(inst.action?[0].requiredBehavior, ActionRequiredBehavior(rawValue: "must-unless-documented")!)
		XCTAssertEqual(inst.action?[0].title, "Measure BMI")
		XCTAssertEqual(inst.author?[0].name, "National Heart, Lung, and Blood Institute")
		XCTAssertEqual(inst.author?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.author?[0].telecom?[0].value, "https://www.nhlbi.nih.gov/health-pro/guidelines")
		XCTAssertEqual(inst.contained?[0].id, "procedure")
		XCTAssertEqual(inst.goal?[0].addresses?[0].coding?[0].code, "414916001")
		XCTAssertEqual(inst.goal?[0].addresses?[0].coding?[0].display, "Obesity (disorder)")
		XCTAssertEqual(inst.goal?[0].addresses?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.goal?[0].category?.text, "Treatment")
		XCTAssertEqual(inst.goal?[0].description_fhir?.text, "Reduce BMI to below 25")
		XCTAssertEqual(inst.goal?[0].documentation?[0].display, "Evaluation and Treatment Strategy")
		XCTAssertEqual(inst.goal?[0].documentation?[0].type, RelatedArtifactType(rawValue: "justification")!)
		XCTAssertEqual(inst.goal?[0].documentation?[0].url?.absoluteString, "https://www.nhlbi.nih.gov/health-pro/guidelines/current/obesity-guidelines/e_textbook/txgd/42.htm")
		XCTAssertEqual(inst.goal?[0].id, "reduce-bmi-ratio")
		XCTAssertEqual(inst.goal?[0].priority?.text, "medium-priority")
		XCTAssertEqual(inst.goal?[0].start?.text, "When the patient's BMI Ratio is at or above 25")
		XCTAssertEqual(inst.goal?[0].target?[0].detailRange?.high?.unit, "kg/m2")
		XCTAssertEqual(inst.goal?[0].target?[0].detailRange?.high?.value, "24.9")
		XCTAssertEqual(inst.goal?[0].target?[0].due?.unit, "a")
		XCTAssertEqual(inst.goal?[0].target?[0].due?.value, "1")
		XCTAssertEqual(inst.goal?[0].target?[0].measure?.coding?[0].code, "39156-5")
		XCTAssertEqual(inst.goal?[0].target?[0].measure?.coding?[0].display, "Body mass index (BMI) [Ratio]")
		XCTAssertEqual(inst.goal?[0].target?[0].measure?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.id, "protocol-example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://acme.org")
		XCTAssertEqual(inst.identifier?[0].value, "example-1")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.purpose, "Example of A medical algorithm for assessment and treatment of overweight and obesity")
		XCTAssertEqual(inst.relatedArtifact?[0].display, "Overweight and Obesity Treatment Guidelines")
		XCTAssertEqual(inst.relatedArtifact?[0].type, RelatedArtifactType(rawValue: "derived-from")!)
		XCTAssertEqual(inst.relatedArtifact?[0].url?.absoluteString, "http://www.nhlbi.nih.gov/health-pro/guidelines/current/obesity-guidelines/e_textbook/txgd/algorthm/algorthm.htm")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Obesity Assessment Protocol")
		XCTAssertEqual(inst.type?.coding?[0].code, "clinical-protocol")
		XCTAssertEqual(inst.useContext?[0].code?.code, "focus")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].code, "414916001")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].display, "Obesity (disorder)")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		
		return inst
	}
	
	func testPlanDefinition5() {
		do {
			let instance = try runPlanDefinition5()
			try runPlanDefinition5(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test PlanDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPlanDefinition5(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPlanDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "plandefinition-example.json")
		
		// Don't know how to create unit test for "action?[0].action?[0].action?[0].definitionCanonical", which is a FHIRCanonical
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[0].expression?.expression, "Now()")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[0].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[0].path, "timing.event")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[1].expression?.expression, "Code '261QM0850X' from SuicideRiskLogic.\"NUCC Provider Taxonomy\" display 'Adult Mental Health'")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[1].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[1].path, "specialty")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[2].expression?.expression, "SuicideRiskLogic.ServiceRequestFulfillmentTime")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[2].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[2].path, "occurrenceDateTime")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[3].expression?.expression, "SuicideRiskLogic.Patient")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[3].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[3].path, "subject")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[4].expression?.expression, "SuicideRiskLogic.Practitioner")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[4].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[4].path, "requester.agent")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[5].expression?.expression, "SuicideRiskLogic.RiskAssessmentScore")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[5].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[5].path, "reasonCode")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[6].expression?.expression, "SuicideRiskLogic.RiskAssessment")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[6].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[6].path, "reasonReference")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].textEquivalent, "Refer to outpatient mental health program for evaluation and treatment of mental health conditions now")
		XCTAssertEqual(inst.action?[0].action?[0].groupingBehavior, ActionGroupingBehavior(rawValue: "logical-group")!)
		XCTAssertEqual(inst.action?[0].action?[0].selectionBehavior, ActionSelectionBehavior(rawValue: "any")!)
		XCTAssertEqual(inst.action?[0].action?[0].title, "Consults and Referrals")
		// Don't know how to create unit test for "action?[0].action?[1].action?[0].action?[0].action?[0].definitionCanonical", which is a FHIRCanonical
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[0].dynamicValue?[0].expression?.expression, "'draft'")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[0].dynamicValue?[0].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[0].dynamicValue?[0].path, "status")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[0].dynamicValue?[1].expression?.expression, "SuicideRiskLogic.Patient")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[0].dynamicValue?[1].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[0].dynamicValue?[1].path, "patient")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[0].dynamicValue?[2].expression?.expression, "SuicideRiskLogic.Practitioner")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[0].dynamicValue?[2].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[0].dynamicValue?[2].path, "prescriber")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[0].dynamicValue?[3].expression?.expression, "SuicideRiskLogic.RiskAssessmentScore")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[0].dynamicValue?[3].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[0].dynamicValue?[3].path, "reasonCode")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[0].dynamicValue?[4].expression?.expression, "SuicideRiskLogic.RiskAssessment")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[0].dynamicValue?[4].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[0].dynamicValue?[4].path, "reasonReference")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[0].textEquivalent, "citalopram 20 mg tablet 1 tablet oral 1 time daily now (30 table; 3 refills)")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[1].textEquivalent, "escitalopram 10 mg tablet 1 tablet oral 1 time daily now (30 tablet; 3 refills)")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[2].textEquivalent, "fluoxetine 20 mg capsule 1 capsule oral 1 time daily now (30 tablet; 3 refills)")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[3].textEquivalent, "paroxetine 20 mg tablet 1 tablet oral 1 time daily now (30 tablet; 3 refills)")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[4].textEquivalent, "sertraline 50 mg tablet 1 tablet oral 1 time daily now (30 tablet; 3 refills)")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].documentation?[0].document?.contentType, "text/html")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].documentation?[0].document?.title, "National Library of Medicine. DailyMed website. CITALOPRAM- citalopram hydrobromide tablet, film coated.")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].documentation?[0].document?.url?.absoluteString, "http://dailymed.nlm.nih.gov/dailymed/drugInfo.cfm?setid=6daeb45c-451d-b135-bf8f-2d6dff4b6b01")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].documentation?[0].type, RelatedArtifactType(rawValue: "citation")!)
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].groupingBehavior, ActionGroupingBehavior(rawValue: "logical-group")!)
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].selectionBehavior, ActionSelectionBehavior(rawValue: "at-most-one")!)
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].title, "Selective Serotonin Reuptake Inhibitors (Choose a mazimum of one or document reasons for exception)")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[1].textEquivalent, "Dopamine Norepinephrine Reuptake Inhibitors (Choose a maximum of one or document reasons for exception)")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[2].textEquivalent, "Serotonin Norepinephrine Reuptake Inhibitors (Choose a maximum of one or doument reasons for exception)")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[3].textEquivalent, "Norepinephrine-Serotonin Modulators (Choose a maximum of one or document reasons for exception)")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].documentation?[0].document?.contentType, "text/html")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].documentation?[0].document?.extension_fhir?[0].url, "http://hl7.org/fhir/StructureDefinition/cqf-qualityOfEvidence")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].documentation?[0].document?.extension_fhir?[0].valueCodeableConcept?.coding?[0].code, "high")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].documentation?[0].document?.extension_fhir?[0].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/evidence-quality")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].documentation?[0].document?.extension_fhir?[0].valueCodeableConcept?.text, "High Quality")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].documentation?[0].document?.title, "Practice Guideline for the Treatment of Patients with Major Depressive Disorder")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].documentation?[0].document?.url?.absoluteString, "http://psychiatryonline.org/pb/assets/raw/sitewide/practice_guidelines/guidelines/mdd.pdf")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].documentation?[0].type, RelatedArtifactType(rawValue: "citation")!)
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].groupingBehavior, ActionGroupingBehavior(rawValue: "logical-group")!)
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].selectionBehavior, ActionSelectionBehavior(rawValue: "at-most-one")!)
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].title, "First-Line Antidepressants")
		XCTAssertEqual(inst.action?[0].action?[1].groupingBehavior, ActionGroupingBehavior(rawValue: "logical-group")!)
		XCTAssertEqual(inst.action?[0].action?[1].selectionBehavior, ActionSelectionBehavior(rawValue: "at-most-one")!)
		XCTAssertEqual(inst.action?[0].action?[1].title, "Medications")
		XCTAssertEqual(inst.action?[0].title, "Suicide Risk Assessment and Outpatient Management")
		XCTAssertEqual(inst.approvalDate?.description, "2016-03-12")
		XCTAssertEqual(inst.author?[0].name, "Motive Medical Intelligence")
		XCTAssertEqual(inst.author?[0].telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.author?[0].telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.author?[0].telecom?[0].value, "415-362-4007")
		XCTAssertEqual(inst.author?[0].telecom?[1].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.author?[0].telecom?[1].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.author?[0].telecom?[1].value, "info@motivemi.com")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "415-362-4007")
		XCTAssertEqual(inst.contact?[0].telecom?[1].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.contact?[0].telecom?[1].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.contact?[0].telecom?[1].value, "info@motivemi.com")
		XCTAssertEqual(inst.contained?[0].id, "referralToMentalHealthCare")
		XCTAssertEqual(inst.contained?[1].id, "citalopramPrescription")
		XCTAssertEqual(inst.contained?[2].id, "citalopramMedication")
		XCTAssertEqual(inst.contained?[3].id, "citalopramSubstance")
		XCTAssertEqual(inst.copyright, "© Copyright 2016 Motive Medical Intelligence. All rights reserved.")
		XCTAssertEqual(inst.date?.description, "2015-08-15")
		XCTAssertEqual(inst.description_fhir, "Orders to be applied to a patient characterized as low suicide risk.")
		XCTAssertEqual(inst.effectivePeriod?.end?.description, "2017-12-31")
		XCTAssertEqual(inst.effectivePeriod?.start?.description, "2016-01-01")
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.id, "low-suicide-risk-order-set")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://motivemi.com/artifacts")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "mmi:low-suicide-risk-order-set")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].code, "US")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].system?.absoluteString, "urn:iso:std:iso:3166")
		XCTAssertEqual(inst.lastReviewDate?.description, "2016-08-15")
		// Don't know how to create unit test for "library?[0]", which is a FHIRCanonical
		XCTAssertEqual(inst.name, "LowSuicideRiskOrderSet")
		XCTAssertEqual(inst.publisher, "Motive Medical Intelligence")
		XCTAssertEqual(inst.purpose, "This order set helps ensure consistent application of appropriate orders for the care of low suicide risk patients.")
		XCTAssertEqual(inst.relatedArtifact?[0].display, "Practice Guideline for the Treatment of Patients with Major Depressive Disorder")
		XCTAssertEqual(inst.relatedArtifact?[0].type, RelatedArtifactType(rawValue: "derived-from")!)
		XCTAssertEqual(inst.relatedArtifact?[0].url?.absoluteString, "http://psychiatryonline.org/pb/assets/raw/sitewide/practice_guidelines/guidelines/mdd.pdf")
		// Don't know how to create unit test for "relatedArtifact?[1].resource", which is a FHIRCanonical
		XCTAssertEqual(inst.relatedArtifact?[1].type, RelatedArtifactType(rawValue: "composed-of")!)
		// Don't know how to create unit test for "relatedArtifact?[2].resource", which is a FHIRCanonical
		XCTAssertEqual(inst.relatedArtifact?[2].type, RelatedArtifactType(rawValue: "composed-of")!)
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Low Suicide Risk Order Set")
		XCTAssertEqual(inst.topic?[0].text, "Suicide risk assessment")
		XCTAssertEqual(inst.url?.absoluteString, "http://motivemi.com/artifacts/PlanDefinition/low-suicide-risk-order-set")
		XCTAssertEqual(inst.usage, "This order set should be applied after assessing a patient for suicide risk, when the findings of that assessment indicate the patient has low suicide risk.")
		XCTAssertEqual(inst.useContext?[0].code?.code, "age")
		XCTAssertEqual(inst.useContext?[0].code?.system?.absoluteString, "http://terminology.hl7.org/CodeSystem/usage-context-type")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].code, "D000328")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].display, "Adult")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].system?.absoluteString, "https://meshb.nlm.nih.gov")
		XCTAssertEqual(inst.useContext?[1].code?.code, "focus")
		XCTAssertEqual(inst.useContext?[1].code?.system?.absoluteString, "http://terminology.hl7.org/CodeSystem/usage-context-type")
		XCTAssertEqual(inst.useContext?[1].valueCodeableConcept?.coding?[0].code, "87512008")
		XCTAssertEqual(inst.useContext?[1].valueCodeableConcept?.coding?[0].display, "Mild major depression")
		XCTAssertEqual(inst.useContext?[1].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.useContext?[2].code?.code, "focus")
		XCTAssertEqual(inst.useContext?[2].code?.system?.absoluteString, "http://terminology.hl7.org/CodeSystem/usage-context-type")
		XCTAssertEqual(inst.useContext?[2].valueCodeableConcept?.coding?[0].code, "40379007")
		XCTAssertEqual(inst.useContext?[2].valueCodeableConcept?.coding?[0].display, "Major depression, recurrent, mild")
		XCTAssertEqual(inst.useContext?[2].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.useContext?[3].code?.code, "focus")
		XCTAssertEqual(inst.useContext?[3].code?.system?.absoluteString, "http://terminology.hl7.org/CodeSystem/usage-context-type")
		XCTAssertEqual(inst.useContext?[3].valueCodeableConcept?.coding?[0].code, "394687007")
		XCTAssertEqual(inst.useContext?[3].valueCodeableConcept?.coding?[0].display, "Low suicide risk")
		XCTAssertEqual(inst.useContext?[3].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.useContext?[4].code?.code, "focus")
		XCTAssertEqual(inst.useContext?[4].code?.system?.absoluteString, "http://terminology.hl7.org/CodeSystem/usage-context-type")
		XCTAssertEqual(inst.useContext?[4].valueCodeableConcept?.coding?[0].code, "225337009")
		XCTAssertEqual(inst.useContext?[4].valueCodeableConcept?.coding?[0].display, "Suicide risk assessment")
		XCTAssertEqual(inst.useContext?[4].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.useContext?[5].code?.code, "user")
		XCTAssertEqual(inst.useContext?[5].code?.system?.absoluteString, "http://terminology.hl7.org/CodeSystem/usage-context-type")
		XCTAssertEqual(inst.useContext?[5].valueCodeableConcept?.coding?[0].code, "309343006")
		XCTAssertEqual(inst.useContext?[5].valueCodeableConcept?.coding?[0].display, "Physician")
		XCTAssertEqual(inst.useContext?[5].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.useContext?[6].code?.code, "venue")
		XCTAssertEqual(inst.useContext?[6].code?.system?.absoluteString, "http://terminology.hl7.org/CodeSystem/usage-context-type")
		XCTAssertEqual(inst.useContext?[6].valueCodeableConcept?.coding?[0].code, "440655000")
		XCTAssertEqual(inst.useContext?[6].valueCodeableConcept?.coding?[0].display, "Outpatient environment")
		XCTAssertEqual(inst.useContext?[6].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.version, "1.0.0")
		
		return inst
	}
	
	func testPlanDefinition6() {
		do {
			let instance = try runPlanDefinition6()
			try runPlanDefinition6(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test PlanDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPlanDefinition6(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPlanDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "plandefinition-predecessor-example.json")
		
		XCTAssertEqual(inst.action?[0].action?[0].condition?[0].expression?.expression, "Should Administer Zika Virus Exposure Assessment")
		XCTAssertEqual(inst.action?[0].action?[0].condition?[0].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[0].condition?[0].kind, ActionConditionKind(rawValue: "applicability")!)
		// Don't know how to create unit test for "action?[0].action?[0].definitionCanonical", which is a FHIRCanonical
		XCTAssertEqual(inst.action?[0].action?[1].condition?[0].expression?.expression, "Should Order Serum + Urine rRT-PCR Test")
		XCTAssertEqual(inst.action?[0].action?[1].condition?[0].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[1].condition?[0].kind, ActionConditionKind(rawValue: "applicability")!)
		// Don't know how to create unit test for "action?[0].action?[1].definitionCanonical", which is a FHIRCanonical
		XCTAssertEqual(inst.action?[0].action?[2].condition?[0].expression?.expression, "Should Order Serum Zika Virus IgM + Dengue Virus IgM")
		XCTAssertEqual(inst.action?[0].action?[2].condition?[0].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[2].condition?[0].kind, ActionConditionKind(rawValue: "applicability")!)
		// Don't know how to create unit test for "action?[0].action?[2].definitionCanonical", which is a FHIRCanonical
		XCTAssertEqual(inst.action?[0].action?[3].condition?[0].expression?.expression, "Should Consider IgM Antibody Testing")
		XCTAssertEqual(inst.action?[0].action?[3].condition?[0].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[3].condition?[0].kind, ActionConditionKind(rawValue: "applicability")!)
		// Don't know how to create unit test for "action?[0].action?[3].definitionCanonical", which is a FHIRCanonical
		// Don't know how to create unit test for "action?[0].action?[4].action?[0].definitionCanonical", which is a FHIRCanonical
		// Don't know how to create unit test for "action?[0].action?[4].action?[1].definitionCanonical", which is a FHIRCanonical
		XCTAssertEqual(inst.action?[0].action?[4].condition?[0].expression?.expression, "Should Provide Mosquito Prevention and Contraception Advice")
		XCTAssertEqual(inst.action?[0].action?[4].condition?[0].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].action?[4].condition?[0].kind, ActionConditionKind(rawValue: "applicability")!)
		XCTAssertEqual(inst.action?[0].condition?[0].expression?.expression, "Is Patient Pregnant")
		XCTAssertEqual(inst.action?[0].condition?[0].expression?.language, "text/cql")
		XCTAssertEqual(inst.action?[0].condition?[0].kind, ActionConditionKind(rawValue: "applicability")!)
		XCTAssertEqual(inst.action?[0].title, "Zika Virus Assessment")
		XCTAssertEqual(inst.action?[0].trigger?[0].name, "patient-view")
		XCTAssertEqual(inst.action?[0].trigger?[0].type, TriggerType(rawValue: "named-event")!)
		XCTAssertEqual(inst.date?.description, "2016-11-14")
		XCTAssertEqual(inst.description_fhir, "Zika Virus Management intervention describing the CDC Guidelines for Zika Virus Reporting and Management.")
		XCTAssertEqual(inst.id, "zika-virus-intervention-initial")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "zika-virus-intervention")
		// Don't know how to create unit test for "library?[0]", which is a FHIRCanonical
		XCTAssertEqual(inst.relatedArtifact?[0].type, RelatedArtifactType(rawValue: "derived-from")!)
		XCTAssertEqual(inst.relatedArtifact?[0].url?.absoluteString, "https://www.cdc.gov/mmwr/volumes/65/wr/mm6539e1.htm?s_cid=mm6539e1_w")
		// Don't know how to create unit test for "relatedArtifact?[1].resource", which is a FHIRCanonical
		XCTAssertEqual(inst.relatedArtifact?[1].type, RelatedArtifactType(rawValue: "successor")!)
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Example Zika Virus Intervention")
		XCTAssertEqual(inst.topic?[0].text, "Zika Virus Management")
		XCTAssertEqual(inst.url?.absoluteString, "http://example.org/PlanDefinition/zika-virus-intervention")
		XCTAssertEqual(inst.version, "1.0.0")
		
		return inst
	}
}
