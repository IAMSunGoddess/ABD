(******************************************************************************)
(* OMNIType contains definitions for datatypes that are pertinent to all      *)
(* state machines in the project.  It contains the escape datatype definitions*)(* which can be used in any state machine.  It also contains general datatypes*)(* which are to be defined in subsequent state machine datatype definitions.  *)(* Author: Lori Pickering (HOL implementation), Jesse Hall (content expert).  *)
(* PI: Professor Shiu-Kai Chin.                                               *)
(* Date: 16 June 2017                                                         *)
(******************************************************************************)
structure OMNITypeScript = struct

(* ===== Interactive Mode ====
app load ["TypeBase","OMNITypeTheory"];
open TypeBase OMNITypeTheory
 ==== end Interactive Mode ==== *)

open HolKernel Parse boolLib bossLib;
open TypeBase;


val _ = new_theory "OMNIType";

(* -------------------------------------------------------------------------- *)
(* Command datatypes and escape datatypes.                                    *)
(* -------------------------------------------------------------------------- *)
val _=
Datatype `escCommand = returnToBase
	 	     | changeMission
	 	     | resupply
		     | reactToContact`

val _=
Datatype `command = ESCc escCommand (* Constructor for escape command *)
 	 	  | SLc  'slCommand` (* Constructor for state level cmd *)


val escCommand_distinct_clauses = distinct_of``:escCommand``
val _ = save_thm("escCommand_distinct_clauses",escCommand_distinct_clauses)

val command_distinct_clauses = distinct_of``:'slCommand command``
val _ = save_thm("command_distinct_clauses",command_distinct_clauses)

val command_one_one = one_one_of``:'slCommand command``
val _ = save_thm("command_one_one",command_one_one)

(* -------------------------------------------------------------------------- *)
(* State datatypes and escape datatypes.                                      *)
(* -------------------------------------------------------------------------- *)
val _=
Datatype `escState = RTB | CM | RESUPPLY | RTC `

val escState_distinct_clauses = distinct_of``:escState``
val _ = save_thm("escState_distinct_clauses",escState_distinct_clauses)


val _=
Datatype `state = ESCs escState  (* Constructor for escape state *)
	 	| SLs  'slState`  (* Constructor for state level state *)

val state_distinct_clauses = distinct_of``:'slState state``
val _ = save_thm("state_distinct_clauses",state_distinct_clauses)

val state_one_one = one_one_of``:'slState state``
val _ = save_thm("state_one_one",state_one_one)
(* -------------------------------------------------------------------------- *)
(* Output datatypes and escape datatypes.                                     *)
(* -------------------------------------------------------------------------- *)
val _=
Datatype `escOutput = ReturnToBase
	 	    | ChangeMission
		    | Resupply
		    | ReactToContact`

val escOutput_distinct_clauses = distinct_of``:escOutput``
val _ = save_thm("escOutput_distinct_clauses",escOutput_distinct_clauses)

val _=
Datatype `output = ESCo escOutput (* Constructor for escape output *)
	 	 | SLo 'slOutput`  (* Constructor for state level output *)

val output_distinct_clauses = distinct_of``:'slOutput output``
val _ = save_thm("output_distinct_clauses",output_distinct_clauses)

val output_one_one = one_one_of``:'slOutput output``
val _ = save_thm("output_one_one",output_one_one)

(* -------------------------------------------------------------------------- *)
(* Principal datatypes                                                        *)
(* -------------------------------------------------------------------------- *)
(* These will likely change as needed. *)
val _=
Datatype `principal = SR 'stateRole` (* Constructor for stateRole*)

val principal_one_one = one_one_of``:'stateRole principal``
val _ = save_thm("principal_one_one",principal_one_one)

(* ==== interactive mode ====
 ==== end interactive mode ==== *)
 	    
val _ = export_theory();

end