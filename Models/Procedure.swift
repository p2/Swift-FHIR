//
//  Procedure.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  An action that is performed on a patient.
 *
 *  Scope and Usage This resource is used to record the details of procedures performed on a patient. A procedure
 *  is an activity that is performed with or on a patient as part of the provision of care. Examples include
 *  surgical procedures, diagnostic procedures, endoscopic procedures, biopsies, and exclude things for which
 *  there are specific resources, such as immunizations, drug administrations.
 *  
 *  Note that many diagnostic processes are procedures that generate observations and reports. In many cases, the
 *  existence of the procedure is assumed, but where there are details of interest about how the diagnostic
 *  procedure was performed, the procedure resource is used to describe the activity.
 */
class Procedure: FHIRResource
{
	override var resourceName: String {
		get { return "Procedure" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! External Ids for this procedure */
	var identifier: Identifier[]?

	/*! Who procedure was performed on */
	var subject: ResourceReference

	/*! Identification of the procedure */
	var type: CodeableConcept

	/*! Precise location details */
	var bodySite: CodeableConcept[]?

	/*! Reason procedure performed */
	var indication: CodeableConcept[]?

	/*! The people who performed the procedure */
	var performer: ProcedurePerformer[]?

	/*! The date the procedure was performed */
	var date: Period?

	/*! The encounter when procedure performed */
	var encounter: ResourceReference?

	/*! What was result of procedure? */
	var outcome: String?

	/*! Any report that results from the procedure */
	var report: ResourceReference[]?

	/*! Complication following the procedure */
	var complication: CodeableConcept[]?

	/*! Instructions for follow up */
	var followUp: String?

	/*! A procedure that is related to this one */
	var relatedItem: ProcedureRelatedItem[]?

	/*! Additional information about procedure */
	var notes: String?

	init(subject: ResourceReference, type: CodeableConcept) {
		self.subject = subject
		self.type = type
	}
}


/*!
 *  The people who performed the procedure.
 *
 *  Limited to 'real' people rather than equipment.
 */
class ProcedurePerformer: FHIRElement
{
	/*! The reference to the practitioner */
	var person: ResourceReference?

	/*! The role the person was in */
	var role: CodeableConcept?

}


/*!
 *  A procedure that is related to this one.
 *
 *  Procedures may be related to other items such as procedures or medications. For example treating wound
 *  dehiscence following a previous procedure.
 */
class ProcedureRelatedItem: FHIRElement
{
	/*! caused-by | because-of */
	var type: String?

	/*! The related item - e.g. a procedure */
	var target: ResourceReference?

}
