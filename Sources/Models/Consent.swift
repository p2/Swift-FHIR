//
//  Consent.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Consent) on 2016-12-08.
//  2016, SMART Health IT.
//

import Foundation


/**
A healthcare consumer’s policy choices to permits or denies recipients or roles to perform actions for specific purposes
and periods of time.

A record of a healthcare consumer’s policy choices, which permits or denies identified recipient(s) or recipient role(s)
to perform one or more actions within a given policy context, for specific purposes and periods of time.
*/
open class Consent: DomainResource {
	override open class var resourceType: String {
		get { return "Consent" }
	}
	
	/// Classification of the consent statement - for indexing/retrieval.
	public var category: [CodeableConcept]?
	
	/// Who is agreeing to the policy and exceptions.
	public var consentor: [Reference]?
	
	/// When this Consent was created or indexed.
	public var dateTime: DateTime?
	
	/// Additional rule -  addition or removal of permissions.
	public var except: [ConsentExcept]?
	
	/// Identifier for this record (external references).
	public var identifier: Identifier?
	
	/// Organization that manages the consent.
	public var organization: Reference?
	
	/// Who the consent applies to.
	public var patient: Reference?
	
	/// Period that this consent applies.
	public var period: Period?
	
	/// Policy that this consents to.
	public var policy: FHIRURL?
	
	/// Context of activities for which the agreement is made.
	public var purpose: [Coding]?
	
	/// Whose access is controlled by the policy.
	public var recipient: [Reference]?
	
	/// Source from which this consent is taken.
	public var sourceAttachment: Attachment?
	
	/// Source from which this consent is taken.
	public var sourceIdentifier: Identifier?
	
	/// Source from which this consent is taken.
	public var sourceReference: Reference?
	
	/// Indicates the current state of this consent.
	public var status: ConsentStatus?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference, policy: FHIRURL, status: ConsentStatus) {
		self.init()
		self.patient = patient
		self.policy = policy
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		category = try createInstances(of: CodeableConcept.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? category
		consentor = try createInstances(of: Reference.self, for: "consentor", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? consentor
		dateTime = try createInstance(type: DateTime.self, for: "dateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dateTime
		except = try createInstances(of: ConsentExcept.self, for: "except", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? except
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		organization = try createInstance(type: Reference.self, for: "organization", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? organization
		patient = try createInstance(type: Reference.self, for: "patient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patient
		if nil == patient && !presentKeys.contains("patient") {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		period = try createInstance(type: Period.self, for: "period", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? period
		policy = try createInstance(type: FHIRURL.self, for: "policy", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? policy
		if nil == policy && !presentKeys.contains("policy") {
			errors.append(FHIRValidationError(missing: "policy"))
		}
		purpose = try createInstances(of: Coding.self, for: "purpose", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? purpose
		recipient = try createInstances(of: Reference.self, for: "recipient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? recipient
		sourceAttachment = try createInstance(type: Attachment.self, for: "sourceAttachment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? sourceAttachment
		sourceIdentifier = try createInstance(type: Identifier.self, for: "sourceIdentifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? sourceIdentifier
		sourceReference = try createInstance(type: Reference.self, for: "sourceReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? sourceReference
		status = createEnum(type: ConsentStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "category", using: self.category, errors: &errors)
		arrayDecorate(json: &json, withKey: "consentor", using: self.consentor, errors: &errors)
		self.dateTime?.decorate(json: &json, withKey: "dateTime", errors: &errors)
		arrayDecorate(json: &json, withKey: "except", using: self.except, errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.organization?.decorate(json: &json, withKey: "organization", errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		if nil == self.patient {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		self.policy?.decorate(json: &json, withKey: "policy", errors: &errors)
		if nil == self.policy {
			errors.append(FHIRValidationError(missing: "policy"))
		}
		arrayDecorate(json: &json, withKey: "purpose", using: self.purpose, errors: &errors)
		arrayDecorate(json: &json, withKey: "recipient", using: self.recipient, errors: &errors)
		self.sourceAttachment?.decorate(json: &json, withKey: "sourceAttachment", errors: &errors)
		self.sourceIdentifier?.decorate(json: &json, withKey: "sourceIdentifier", errors: &errors)
		self.sourceReference?.decorate(json: &json, withKey: "sourceReference", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
	}
}


/**
Additional rule -  addition or removal of permissions.

An exception to the base policy of this consent. An exception can be an addition or removal of access permissions.
*/
open class ConsentExcept: BackboneElement {
	override open class var resourceType: String {
		get { return "ConsentExcept" }
	}
	
	/// e.g. Resource Type, Profile, or CDA etc.
	public var `class`: [Coding]?
	
	/// Actions controlled by this exception.
	public var action: [CodeableConcept]?
	
	/// Who|what controlled by this exception (or group, by role).
	public var actor: [ConsentExceptActor]?
	
	/// e.g. LOINC or SNOMED CT code, etc in the content.
	public var code: [Coding]?
	
	/// Data controlled by this exception.
	public var data: [ConsentExceptData]?
	
	/// Timeframe for data controlled by this exception.
	public var period: Period?
	
	/// Context of activities covered by this exception.
	public var purpose: [Coding]?
	
	/// Security Labels that define affected resources.
	public var securityLabel: [Coding]?
	
	/// Action  to take - permit or deny - when the exception conditions are met.
	public var type: ConsentExceptType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: ConsentExceptType) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		`class` = try createInstances(of: Coding.self, for: "class", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? `class`
		action = try createInstances(of: CodeableConcept.self, for: "action", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? action
		actor = try createInstances(of: ConsentExceptActor.self, for: "actor", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? actor
		code = try createInstances(of: Coding.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		data = try createInstances(of: ConsentExceptData.self, for: "data", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? data
		period = try createInstance(type: Period.self, for: "period", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? period
		purpose = try createInstances(of: Coding.self, for: "purpose", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? purpose
		securityLabel = try createInstances(of: Coding.self, for: "securityLabel", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? securityLabel
		type = createEnum(type: ConsentExceptType.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "class", using: self.`class`, errors: &errors)
		arrayDecorate(json: &json, withKey: "action", using: self.action, errors: &errors)
		arrayDecorate(json: &json, withKey: "actor", using: self.actor, errors: &errors)
		arrayDecorate(json: &json, withKey: "code", using: self.code, errors: &errors)
		arrayDecorate(json: &json, withKey: "data", using: self.data, errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		arrayDecorate(json: &json, withKey: "purpose", using: self.purpose, errors: &errors)
		arrayDecorate(json: &json, withKey: "securityLabel", using: self.securityLabel, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
Who|what controlled by this exception (or group, by role).

Who or what is controlled by this Exception. Use group to identify a set of actors by some property they share (e.g.
'admitting officers').
*/
open class ConsentExceptActor: BackboneElement {
	override open class var resourceType: String {
		get { return "ConsentExceptActor" }
	}
	
	/// Resource for the actor (or group, by role).
	public var reference: Reference?
	
	/// How the actor is/was involved.
	public var role: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(reference: Reference, role: CodeableConcept) {
		self.init()
		self.reference = reference
		self.role = role
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		reference = try createInstance(type: Reference.self, for: "reference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reference
		if nil == reference && !presentKeys.contains("reference") {
			errors.append(FHIRValidationError(missing: "reference"))
		}
		role = try createInstance(type: CodeableConcept.self, for: "role", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? role
		if nil == role && !presentKeys.contains("role") {
			errors.append(FHIRValidationError(missing: "role"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.reference?.decorate(json: &json, withKey: "reference", errors: &errors)
		if nil == self.reference {
			errors.append(FHIRValidationError(missing: "reference"))
		}
		self.role?.decorate(json: &json, withKey: "role", errors: &errors)
		if nil == self.role {
			errors.append(FHIRValidationError(missing: "role"))
		}
	}
}


/**
Data controlled by this exception.

The resources controlled by this exception, if specific resources are referenced.
*/
open class ConsentExceptData: BackboneElement {
	override open class var resourceType: String {
		get { return "ConsentExceptData" }
	}
	
	/// How the resource reference is interpreted when testing consent restrictions.
	public var meaning: ConsentDataMeaning?
	
	/// The actual data reference.
	public var reference: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(meaning: ConsentDataMeaning, reference: Reference) {
		self.init()
		self.meaning = meaning
		self.reference = reference
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		meaning = createEnum(type: ConsentDataMeaning.self, for: "meaning", in: json, presentKeys: &presentKeys, errors: &errors) ?? meaning
		if nil == meaning && !presentKeys.contains("meaning") {
			errors.append(FHIRValidationError(missing: "meaning"))
		}
		reference = try createInstance(type: Reference.self, for: "reference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reference
		if nil == reference && !presentKeys.contains("reference") {
			errors.append(FHIRValidationError(missing: "reference"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.meaning?.decorate(json: &json, withKey: "meaning", errors: &errors)
		if nil == self.meaning {
			errors.append(FHIRValidationError(missing: "meaning"))
		}
		self.reference?.decorate(json: &json, withKey: "reference", errors: &errors)
		if nil == self.reference {
			errors.append(FHIRValidationError(missing: "reference"))
		}
	}
}
