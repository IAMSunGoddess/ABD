structure ssmPlanPBTheory :> ssmPlanPBTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading ssmPlanPBTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open OMNITypeTheory PlanPBTypeTheory ssm11Theory
  in end;
  val _ = Theory.link_parents
          ("ssmPlanPB",
          Arbnum.fromString "1500860947",
          Arbnum.fromString "915284")
          [("PlanPBType",
           Arbnum.fromString "1500860943",
           Arbnum.fromString "711843"),
           ("ssm11",
           Arbnum.fromString "1499652452",
           Arbnum.fromString "890464"),
           ("OMNIType",
           Arbnum.fromString "1499574745",
           Arbnum.fromString "168021")];
  val _ = Theory.incorporate_types "ssmPlanPB" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("aclfoundation", "Form"),
   ID("PlanPBType", "stateRole"), ID("ssm11", "order"),
   ID("OMNIType", "command"), ID("PlanPBType", "slCommand"),
   ID("PlanPBType", "slState"), ID("list", "list"),
   ID("PlanPBType", "psgCommand"), ID("PlanPBType", "plCommand"),
   ID("PlanPBType", "slOutput"), ID("ssm11", "trType"), ID("min", "bool"),
   ID("aclfoundation", "Kripke"), ID("aclfoundation", "po"),
   ID("OMNIType", "output"), ID("aclfoundation", "Princ"),
   ID("aclfoundation", "IntLevel"), ID("aclfoundation", "SecLevel"),
   ID("num", "num"), ID("bool", "!"), ID("pair", ","), ID("pair", "prod"),
   ID("bool", "/\\"), ID("min", "="), ID("min", "==>"), ID("min", "@"),
   ID("ssm11", "CFG"), ID("ssm11", "configuration"),
   ID("ssm11", "CFGInterpret"), ID("PlanPBType", "COMPLETE"),
   ID("list", "CONS"), ID("PlanPBType", "Complete"), ID("bool", "F"),
   ID("aclfoundation", "FF"), ID("aclfoundation", "Form_CASE"),
   ID("combin", "I"), ID("PlanPBType", "INITIATE_MOVEMENT"),
   ID("list", "NIL"), ID("ssm11", "NONE"), ID("aclfoundation", "Name"),
   ID("PlanPBType", "PL"), ID("PlanPBType", "PSG"),
   ID("PlanPBType", "PlatoonLeader"), ID("PlanPBType", "PlatoonSergeant"),
   ID("aclfoundation", "Princ_CASE"), ID("PlanPBType", "RECEIVE_MISSION"),
   ID("PlanPBType", "RECON"), ID("PlanPBType", "ReceiveMission"),
   ID("OMNIType", "SLc"), ID("ssm11", "SOME"), ID("bool", "T"),
   ID("PlanPBType", "TENTATIVE_PLAN"), ID("ssm11", "TR"),
   ID("aclfoundation", "TT"), ID("PlanPBType", "WARNO"),
   ID("relation", "WF"), ID("relation", "WFREC"),
   ID("PlanPBType", "Warno"), ID("aclfoundation", "andf"),
   ID("ssmPlanPB", "authTestConductORP"), ID("PlanPBType", "complete"),
   ID("aclfoundation", "controls"), ID("ssm11", "discard"),
   ID("aclfoundation", "domi"), ID("aclfoundation", "doms"),
   ID("aclfoundation", "eqf"), ID("aclfoundation", "eqi"),
   ID("aclfoundation", "eqn"), ID("aclfoundation", "eqs"),
   ID("ssm11", "exec"), ID("aclfoundation", "impf"),
   ID("PlanPBType", "initiateMovement"), ID("aclfoundation", "lt"),
   ID("aclfoundation", "lte"), ID("aclfoundation", "meet"),
   ID("aclfoundation", "notf"), ID("aclfoundation", "orf"),
   ID("PlanPBType", "plIncomplete"), ID("ssmPlanPB", "planPBNS"),
   ID("ssmPlanPB", "planPBOut"), ID("aclfoundation", "prop"),
   ID("PlanPBType", "psgIncomplete"), ID("aclfoundation", "quoting"),
   ID("PlanPBType", "receiveMission"), ID("PlanPBType", "recon"),
   ID("aclfoundation", "reps"), ID("aclrules", "sat"),
   ID("aclfoundation", "says"), ID("ssmPlanPB", "secContextConductORP"),
   ID("aclfoundation", "speaks_for"),
   ID("ssmPlanPB", "ssmConductORPStateInterp"),
   ID("PlanPBType", "tentativePlan"), ID("ssm11", "trap"),
   ID("PlanPBType", "unAuthenticated"), ID("PlanPBType", "unAuthorized"),
   ID("PlanPBType", "warno"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'e", TYV "'d", TYOP [2], TYOP [5], TYOP [4, 3], TYOP [3, 4],
   TYOP [1, 5, 2, 1, 0], TYOP [6], TYOP [0, 7, 6], TYOP [7, 6],
   TYOP [0, 3, 9], TYOP [8], TYOP [0, 11, 10], TYOP [9], TYOP [0, 13, 12],
   TYOP [10], TYOP [7, 3], TYOP [11, 16], TYOP [0, 17, 15],
   TYOP [0, 7, 18], TYOP [0, 17, 7], TYOP [0, 7, 20], TYOP [12],
   TYOP [0, 6, 22], TYV "'b", TYOP [13, 5, 24, 2, 1, 0], TYOP [11, 4],
   TYOP [0, 26, 7], TYOP [0, 7, 27], TYOP [14, 1], TYOP [14, 0],
   TYOP [15, 15], TYOP [0, 26, 31], TYOP [0, 7, 32], TYOP [0, 17, 22],
   TYOP [0, 7, 34], TYOP [0, 6, 23], TYOP [7, 31], TYOP [16, 2],
   TYOP [17, 2, 1], TYOP [18, 2, 0], TYOP [19], TYOP [0, 23, 22],
   TYOP [0, 39, 22], TYOP [0, 43, 22], TYOP [0, 25, 22], TYOP [0, 45, 22],
   TYOP [0, 38, 22], TYOP [0, 47, 22], TYOP [0, 40, 22], TYOP [0, 49, 22],
   TYOP [0, 4, 22], TYOP [0, 51, 22], TYOP [0, 42, 22], TYOP [0, 33, 22],
   TYOP [0, 54, 22], TYOP [0, 28, 22], TYOP [0, 56, 22], TYOP [0, 35, 22],
   TYOP [0, 58, 22], TYOP [0, 16, 22], TYOP [0, 60, 22], TYOP [0, 41, 22],
   TYOP [0, 62, 22], TYOP [0, 5, 22], TYOP [0, 64, 22], TYOP [0, 13, 22],
   TYOP [0, 66, 22], TYOP [0, 29, 22], TYOP [0, 68, 22], TYOP [0, 30, 22],
   TYOP [0, 70, 22], TYOP [0, 11, 22], TYOP [0, 72, 22], TYOP [0, 3, 22],
   TYOP [0, 74, 22], TYOP [0, 7, 22], TYOP [0, 76, 22], TYOP [0, 34, 22],
   TYOP [22, 29, 30], TYOP [22, 25, 79], TYOP [0, 79, 80],
   TYOP [0, 25, 81], TYOP [0, 30, 79], TYOP [0, 29, 83], TYOP [0, 22, 22],
   TYOP [0, 22, 85], TYOP [0, 23, 42], TYOP [0, 9, 22], TYOP [0, 9, 88],
   TYOP [0, 15, 22], TYOP [0, 15, 90], TYOP [0, 7, 76], TYOP [0, 36, 22],
   TYOP [0, 93, 36], TYOP [28, 4, 1, 0, 31, 2, 7], TYOP [0, 37, 95],
   TYOP [0, 7, 96], TYOP [0, 9, 97], TYOP [0, 9, 98], TYOP [0, 8, 99],
   TYOP [0, 23, 100], TYOP [0, 95, 22], TYOP [0, 80, 102], TYOP [0, 9, 9],
   TYOP [0, 6, 104], TYOP [0, 37, 37], TYOP [0, 31, 106], TYOP [0, 16, 16],
   TYOP [0, 3, 108], TYOP [0, 41, 62], TYOP [0, 110, 22],
   TYOP [0, 110, 111], TYOP [0, 110, 112], TYOP [0, 40, 49],
   TYOP [0, 114, 113], TYOP [0, 114, 115], TYOP [0, 39, 43],
   TYOP [0, 117, 116], TYOP [0, 117, 118], TYOP [0, 38, 23],
   TYOP [0, 38, 120], TYOP [0, 121, 119], TYOP [0, 120, 122],
   TYOP [0, 38, 47], TYOP [0, 124, 123], TYOP [0, 120, 125],
   TYOP [0, 36, 126], TYOP [0, 36, 127], TYOP [0, 36, 128],
   TYOP [0, 36, 129], TYOP [0, 23, 130], TYOP [0, 64, 131],
   TYOP [0, 22, 132], TYOP [0, 22, 133], TYOP [0, 6, 134], TYOP [0, 2, 38],
   TYOP [0, 13, 3], TYOP [0, 11, 3], TYOP [0, 124, 22], TYOP [0, 124, 139],
   TYOP [0, 2, 22], TYOP [0, 141, 140], TYOP [0, 38, 142], TYOP [0, 3, 4],
   TYOP [0, 4, 5], TYOP [0, 95, 102], TYOP [0, 26, 146], TYOP [0, 80, 147],
   TYOP [0, 23, 23], TYOP [0, 149, 23], TYOP [0, 36, 150], TYOP [0, 6, 6],
   TYOP [0, 6, 152], TYOP [0, 38, 152], TYOP [0, 16, 17], TYOP [0, 39, 6],
   TYOP [0, 39, 156], TYOP [0, 40, 6], TYOP [0, 40, 158], TYOP [0, 41, 6],
   TYOP [0, 41, 160], TYOP [0, 4, 26], TYOP [0, 38, 38], TYOP [0, 38, 163],
   TYOP [0, 5, 6], TYOP [0, 38, 154], TYOP [0, 80, 23], TYOP [0, 38, 6],
   TYOP [0, 38, 168]]
  end
  val _ = Theory.incorporate_consts "ssmPlanPB" tyvector
     [("ssmConductORPStateInterp", 8), ("secContextConductORP", 14),
      ("planPBOut", 19), ("planPBNS", 21), ("authTestConductORP", 23)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("M", 25), TMV("NS", 28), TMV("Oi", 29), TMV("Os", 30),
   TMV("Out", 33), TMV("P", 23), TMV("P", 35), TMV("R", 36), TMV("a", 6),
   TMV("authTestConductORP", 23), TMV("cmd", 4), TMV("cmd", 5),
   TMV("incomplete", 3), TMV("ins", 9), TMV("outs", 37),
   TMV("plCommand", 13), TMV("plcmd", 13), TMV("psgCommand", 11),
   TMV("psgcmd", 11), TMV("s", 7), TMV("slState", 7), TMV("v", 6),
   TMV("v", 5), TMV("v", 7), TMV("v1", 6), TMV("v1", 17), TMV("v10", 38),
   TMV("v10", 16), TMV("v100", 6), TMV("v101", 6), TMV("v102", 6),
   TMV("v102", 11), TMV("v103", 6), TMV("v103", 13), TMV("v104", 6),
   TMV("v104", 11), TMV("v105", 6), TMV("v105", 11), TMV("v106", 6),
   TMV("v106", 3), TMV("v107", 6), TMV("v108", 6), TMV("v109", 38),
   TMV("v109", 3), TMV("v110", 6), TMV("v110", 16), TMV("v111", 38),
   TMV("v112", 38), TMV("v113", 38), TMV("v113", 11), TMV("v114", 6),
   TMV("v114", 13), TMV("v115", 38), TMV("v115", 11), TMV("v116", 38),
   TMV("v116", 11), TMV("v117", 6), TMV("v117", 3), TMV("v118", 39),
   TMV("v118", 11), TMV("v119", 39), TMV("v119", 3), TMV("v12", 38),
   TMV("v120", 39), TMV("v120", 16), TMV("v121", 39), TMV("v121", 11),
   TMV("v122", 40), TMV("v122", 3), TMV("v123", 40), TMV("v123", 16),
   TMV("v124", 40), TMV("v125", 40), TMV("v126", 41), TMV("v126", 11),
   TMV("v127", 41), TMV("v127", 3), TMV("v128", 41), TMV("v129", 41),
   TMV("v13", 38), TMV("v13", 3), TMV("v130", 41), TMV("v130", 11),
   TMV("v131", 41), TMV("v133", 38), TMV("v133", 3), TMV("v134", 38),
   TMV("v134", 16), TMV("v135", 38), TMV("v136", 38), TMV("v137", 11),
   TMV("v137", 2), TMV("v138", 38), TMV("v138", 13), TMV("v139", 38),
   TMV("v139", 13), TMV("v14", 38), TMV("v140", 38), TMV("v140", 13),
   TMV("v141", 38), TMV("v141", 13), TMV("v142", 13), TMV("v143", 13),
   TMV("v144", 3), TMV("v145", 13), TMV("v146", 3), TMV("v147", 16),
   TMV("v148", 3), TMV("v149", 16), TMV("v15", 6), TMV("v150", 11),
   TMV("v151", 16), TMV("v152", 16), TMV("v153", 16), TMV("v154", 16),
   TMV("v16", 38), TMV("v17", 38), TMV("v18", 6), TMV("v18", 3),
   TMV("v19", 39), TMV("v19", 16), TMV("v2", 6), TMV("v20", 39),
   TMV("v21", 39), TMV("v22", 39), TMV("v22", 3), TMV("v23", 40),
   TMV("v24", 40), TMV("v25", 40), TMV("v26", 40), TMV("v27", 41),
   TMV("v27", 3), TMV("v28", 16), TMV("v28", 41), TMV("v29", 41),
   TMV("v3", 6), TMV("v30", 41), TMV("v31", 41), TMV("v31", 11),
   TMV("v32", 41), TMV("v32", 3), TMV("v33", 5), TMV("v34", 6),
   TMV("v35", 6), TMV("v36", 6), TMV("v37", 6), TMV("v38", 6),
   TMV("v39", 6), TMV("v39", 11), TMV("v4", 6), TMV("v40", 6),
   TMV("v41", 6), TMV("v42", 6), TMV("v43", 38), TMV("v44", 6),
   TMV("v44", 13), TMV("v45", 38), TMV("v45", 3), TMV("v46", 38),
   TMV("v47", 38), TMV("v48", 6), TMV("v48", 13), TMV("v49", 38),
   TMV("v49", 3), TMV("v5", 6), TMV("v50", 38), TMV("v50", 16),
   TMV("v51", 6), TMV("v51", 13), TMV("v52", 39), TMV("v52", 3),
   TMV("v53", 39), TMV("v53", 16), TMV("v54", 39), TMV("v55", 39),
   TMV("v56", 40), TMV("v56", 3), TMV("v57", 40), TMV("v57", 16),
   TMV("v58", 40), TMV("v59", 40), TMV("v59", 13), TMV("v6", 6),
   TMV("v60", 41), TMV("v61", 41), TMV("v61", 13), TMV("v62", 41),
   TMV("v62", 11), TMV("v63", 41), TMV("v63", 11), TMV("v64", 41),
   TMV("v64", 11), TMV("v65", 41), TMV("v65", 11), TMV("v66", 5),
   TMV("v66", 11), TMV("v67", 6), TMV("v67", 13), TMV("v68", 6),
   TMV("v68", 3), TMV("v69", 6), TMV("v7", 6), TMV("v70", 6),
   TMV("v71", 6), TMV("v71", 3), TMV("v72", 6), TMV("v72", 16),
   TMV("v73", 6), TMV("v74", 6), TMV("v74", 13), TMV("v75", 6),
   TMV("v76", 38), TMV("v76", 13), TMV("v77", 6), TMV("v77", 11),
   TMV("v78", 38), TMV("v78", 11), TMV("v79", 38), TMV("v79", 11),
   TMV("v8", 6), TMV("v80", 38), TMV("v80", 11), TMV("v81", 6),
   TMV("v81", 11), TMV("v82", 38), TMV("v82", 13), TMV("v83", 38),
   TMV("v83", 3), TMV("v84", 6), TMV("v84", 13), TMV("v85", 39),
   TMV("v85", 3), TMV("v86", 39), TMV("v86", 16), TMV("v87", 39),
   TMV("v87", 13), TMV("v88", 39), TMV("v88", 3), TMV("v89", 40),
   TMV("v89", 16), TMV("v9", 6), TMV("v9", 3), TMV("v90", 40),
   TMV("v90", 11), TMV("v91", 40), TMV("v91", 3), TMV("v92", 40),
   TMV("v92", 16), TMV("v93", 41), TMV("v93", 11), TMV("v94", 41),
   TMV("v94", 3), TMV("v95", 16), TMV("v95", 41), TMV("v96", 41),
   TMV("v97", 41), TMV("v98", 41), TMV("v98", 3), TMV("v99", 16),
   TMC(20, 42), TMC(20, 44), TMC(20, 46), TMC(20, 48), TMC(20, 50),
   TMC(20, 52), TMC(20, 53), TMC(20, 55), TMC(20, 57), TMC(20, 59),
   TMC(20, 61), TMC(20, 63), TMC(20, 65), TMC(20, 67), TMC(20, 69),
   TMC(20, 71), TMC(20, 73), TMC(20, 75), TMC(20, 77), TMC(20, 78),
   TMC(21, 82), TMC(21, 84), TMC(23, 86), TMC(24, 36), TMC(24, 86),
   TMC(24, 87), TMC(24, 89), TMC(24, 91), TMC(24, 92), TMC(25, 86),
   TMC(26, 94), TMC(27, 101), TMC(29, 103), TMC(30, 7), TMC(31, 105),
   TMC(31, 107), TMC(31, 109), TMC(32, 15), TMC(33, 22), TMC(34, 6),
   TMC(35, 135), TMC(36, 85), TMC(37, 7), TMC(38, 9), TMC(38, 16),
   TMC(39, 5), TMC(40, 136), TMC(41, 137), TMC(42, 138), TMC(43, 2),
   TMC(44, 2), TMC(45, 143), TMC(46, 7), TMC(47, 7), TMC(48, 15),
   TMC(49, 144), TMC(50, 145), TMC(51, 22), TMC(52, 7), TMC(53, 148),
   TMC(54, 6), TMC(55, 7), TMC(56, 93), TMC(57, 151), TMC(58, 15),
   TMC(59, 153), TMC(60, 23), TMC(61, 13), TMC(62, 154), TMC(63, 155),
   TMC(64, 157), TMC(65, 159), TMC(66, 153), TMC(67, 157), TMC(68, 161),
   TMC(69, 159), TMC(70, 162), TMC(70, 155), TMC(71, 153), TMC(72, 11),
   TMC(73, 161), TMC(74, 161), TMC(75, 164), TMC(76, 152), TMC(77, 153),
   TMC(78, 13), TMC(79, 21), TMC(80, 19), TMC(81, 165), TMC(82, 11),
   TMC(83, 164), TMC(84, 13), TMC(85, 13), TMC(86, 166), TMC(87, 167),
   TMC(88, 154), TMC(89, 14), TMC(90, 169), TMC(91, 8), TMC(92, 13),
   TMC(93, 155), TMC(94, 15), TMC(95, 15), TMC(96, 13), TMC(97, 85)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op authTestConductORP_primitive_def x = x
    val op authTestConductORP_primitive_def =
    ThmBind.DT(((("ssmPlanPB",8),[]),[]),
               [ThmBind.read"%284%325@%322%289%7%321$0@|@2%9%8%299$0@%300%297@2%300%297@2%141%300%297@|@%142%300%297@|@%143%144%300%297@||@%145%146%300%297@||@%147%150%300%297@||@%151%152%300%297@||@%153%154%299$0@%300%297@2%300%297@2%11%310$2@%91%300%316@|@%92%94%300%297@||@%97%99%300%297@||@|@%28%300%297@|@%29%30%300%297@||@%32%34%300%297@||@%36%38%300%297@||@%40%41%300%297@||@%42%44%300%297@||@%46%47%300%297@||@%48%50%300%297@||@%52%54%56%300%297@|||@%58%60%300%297@||@%63%65%300%297@||@%67%69%300%297@||@%71%72%300%297@||@%73%75%300%297@||@%77%78%300%297@||@%81%83%300%297@||@||@%156%158%300%297@||@%159%160%300%297@||@%162%165%167%300%297@|||@%169%171%300%297@||@%173%174%300%297@||@%175%177%300%297@||@%179%180%300%297@||@%183%184%300%297@||@%186%188%300%297@||@%190%192%300%297@||@||@2"])
  fun op ssmConductORPStateInterp_def x = x
    val op ssmConductORPStateInterp_def =
    ThmBind.DT(((("ssmPlanPB",11),[]),[]),
               [ThmBind.read"%277%20%282%357$0@2%319@|@"])
  fun op secContextConductORP_def x = x
    val op secContextConductORP_def =
    ThmBind.DT(((("ssmPlanPB",13),[]),[]),
               [ThmBind.read"%272%16%275%18%276%12%285%355$2@$1@$0@2%293%327%305%308@2%347%315%314%306$2@6%293%327%305%309@2%347%315%314%307$1@6%293%337%354%305%308@2%347%315%314%307$1@6%347%304@3%293%337%354%305%309@2%347%315%314%306$2@6%347%304@3%302@5|@|@|@"])
  fun op planPBNS_ind x = x
    val op planPBNS_ind =
    ThmBind.DT(((("ssmPlanPB",2),
                [("PlanPBType",[23,46,62,90]),
                 ("bool",[25,26,46,47,52,53,57,62,71,75,76,77,79]),
                 ("list",[46]),("pair",[5,16]),("relation",[101,107]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("ssm11",[31])]),["DISK_THM"]),
               [ThmBind.read"%268%6%288%281$0%311@%336%295%306%362@2%303@4%281$0%311@%336%295%306%344@2%303@4%281$0%320@%336%295%306%358@2%295%307%338@2%295%306%351@2%303@6%281$0%320@%336%295%307%338@2%295%306%358@2%295%306%351@2%303@6%281$0%320@%336%295%306%358@2%295%306%351@2%295%307%338@2%303@6%281$0%320@%336%295%306%351@2%295%306%358@2%295%307%338@2%303@6%281$0%320@%336%295%307%338@2%295%306%351@2%295%306%358@2%303@6%281$0%320@%336%295%306%351@2%295%307%338@2%295%306%358@2%303@6%281$0%320@%336%295%306%344@2%303@4%281%277%19%272%15$2$1@%359%295%306$0@2%303@3|@|@2%281%277%19%275%17$2$1@%359%295%307$0@2%303@3|@|@2%281%277%19%272%15$2$1@%328%295%306$0@2%303@3|@|@2%281%277%19%275%17$2$1@%328%295%307$0@2%303@3|@|@2%281%277%19$1$0@%328%303@2|@2%281%277%19%276%80%276%241%269%27$4$3@%328%295$2@%295$1@$0@4|@|@|@|@2%281%277%19$1$0@%359%303@2|@2%281%277%19%276%125%276%118%269%120$4$3@%359%295$2@%295$1@$0@4|@|@|@|@2%281$0%311@%336%303@3%281$0%311@%336%295%306%350@2%303@4%281$0%311@%336%295%306%358@2%303@4%281$0%311@%336%295%306%351@2%303@4%281$0%311@%336%295%306%326@2%303@4%281%275%138$1%311@%336%295%307$0@2%303@3|@2%281%276%140%276%131%269%132$3%311@%336%295$2@%295$1@$0@4|@|@|@2%281$0%320@%336%303@3%281$0%320@%336%295%306%350@2%303@4%281$0%320@%336%295%306%362@2%303@4%281$0%320@%336%295%306%358@2%303@4%281$0%320@%336%295%306%351@2%303@4%281$0%320@%336%295%306%326@2%303@4%281%275%148$1%320@%336%295%307$0@2%303@3|@2%281%272%155%276%157$2%320@%336%295%306$1@2%295$0@%303@4|@|@2%281%272%161%276%163%269%166$3%320@%336%295%306%350@2%295%306$2@2%295$1@$0@5|@|@|@2%281%272%168%276%170%269%172$3%320@%336%295%306%362@2%295%306$2@2%295$1@$0@5|@|@|@2%281%272%185%272%181$2%320@%336%295%306%358@2%295%306$1@2%295%306$0@2%303@5|@|@2%281%275%187$1%320@%336%295%306%358@2%295%306%350@2%295%307$0@2%303@5|@2%281%275%189$1%320@%336%295%306%358@2%295%306%362@2%295%307$0@2%303@5|@2%281%275%191$1%320@%336%295%306%358@2%295%306%358@2%295%307$0@2%303@5|@2%281$0%320@%336%295%306%358@2%295%306%351@2%295%307%348@2%303@6%281%275%193$1%320@%336%295%306%358@2%295%306%326@2%295%307$0@2%303@5|@2%281%275%195$1%320@%336%295%306%358@2%295%306%344@2%295%307$0@2%303@5|@2%281%272%197%276%199%276%176%269%178$4%320@%336%295%306%358@2%295%306$3@2%295$2@%295$1@$0@6|@|@|@|@2%281%272%212%272%209$2%320@%336%295%306%351@2%295%306$1@2%295%306$0@2%303@5|@|@2%281%275%214$1%320@%336%295%306%351@2%295%306%350@2%295%307$0@2%303@5|@2%281%275%216$1%320@%336%295%306%351@2%295%306%362@2%295%307$0@2%303@5|@2%281$0%320@%336%295%306%351@2%295%306%358@2%295%307%348@2%303@6%281%275%218$1%320@%336%295%306%351@2%295%306%351@2%295%307$0@2%303@5|@2%281%275%221$1%320@%336%295%306%351@2%295%306%326@2%295%307$0@2%303@5|@2%281%275%223$1%320@%336%295%306%351@2%295%306%344@2%295%307$0@2%303@5|@2%281%272%225%276%227%276%204%269%206$4%320@%336%295%306%351@2%295%306$3@2%295$2@%295$1@$0@6|@|@|@|@2%281%272%229%276%231%269%233$3%320@%336%295%306%326@2%295%306$2@2%295$1@$0@5|@|@|@2%281%272%235%276%237%269%239$3%320@%336%295%306%344@2%295%306$2@2%295$1@$0@5|@|@|@2%281%275%243%276%245%269%247$3%320@%336%295%306%350@2%295%307$2@2%295$1@$0@5|@|@|@2%281%275%249%276%251%269%252$3%320@%336%295%306%362@2%295%307$2@2%295$1@$0@5|@|@|@2%281$0%320@%336%295%306%358@2%295%307%338@2%295%306%350@2%303@6%281$0%320@%336%295%306%358@2%295%307%338@2%295%306%362@2%303@6%281$0%320@%336%295%306%358@2%295%307%338@2%295%306%358@2%303@6%281$0%320@%336%295%306%358@2%295%307%338@2%295%306%326@2%303@6%281$0%320@%336%295%306%358@2%295%307%338@2%295%306%344@2%303@6%281%272%33$1%320@%336%295%306%358@2%295%307%348@2%295%306$0@2%303@5|@2%281%275%35%275%31$2%320@%336%295%306%358@2%295%307$1@2%295%307$0@2%303@5|@|@2%281%275%37%276%39%276%257%269%258$4%320@%336%295%306%358@2%295%307$3@2%295$2@%295$1@$0@6|@|@|@|@2%281$0%320@%336%295%306%351@2%295%307%338@2%295%306%350@2%303@6%281$0%320@%336%295%306%351@2%295%307%338@2%295%306%362@2%303@6%281$0%320@%336%295%306%351@2%295%307%338@2%295%306%351@2%303@6%281$0%320@%336%295%306%351@2%295%307%338@2%295%306%326@2%303@6%281$0%320@%336%295%306%351@2%295%307%338@2%295%306%344@2%303@6%281%272%51$1%320@%336%295%306%351@2%295%307%348@2%295%306$0@2%303@5|@2%281%275%53%275%49$2%320@%336%295%306%351@2%295%307$1@2%295%307$0@2%303@5|@|@2%281%275%55%276%57%276%43%269%45$4%320@%336%295%306%351@2%295%307$3@2%295$2@%295$1@$0@6|@|@|@|@2%281%275%59%276%61%269%64$3%320@%336%295%306%326@2%295%307$2@2%295$1@$0@5|@|@|@2%281%275%66%276%68%269%70$3%320@%336%295%306%344@2%295%307$2@2%295$1@$0@5|@|@|@2%281%275%74%276%76$2%320@%336%295%307$1@2%295$0@%303@4|@|@2%281%272%93$1%320@%336%295%307%338@2%295%306%350@2%295%306$0@2%303@5|@2%281%272%95$1%320@%336%295%307%338@2%295%306%362@2%295%306$0@2%303@5|@2%281$0%320@%336%295%307%338@2%295%306%358@2%295%306%350@2%303@6%281$0%320@%336%295%307%338@2%295%306%358@2%295%306%362@2%303@6%281$0%320@%336%295%307%338@2%295%306%358@2%295%306%358@2%303@6%281$0%320@%336%295%307%338@2%295%306%358@2%295%306%326@2%303@6%281$0%320@%336%295%307%338@2%295%306%358@2%295%306%344@2%303@6%281$0%320@%336%295%307%338@2%295%306%351@2%295%306%350@2%303@6%281$0%320@%336%295%307%338@2%295%306%351@2%295%306%362@2%303@6%281$0%320@%336%295%307%338@2%295%306%351@2%295%306%351@2%303@6%281$0%320@%336%295%307%338@2%295%306%351@2%295%306%326@2%303@6%281$0%320@%336%295%307%338@2%295%306%351@2%295%306%344@2%303@6%281%272%98$1%320@%336%295%307%338@2%295%306%326@2%295%306$0@2%303@5|@2%281%272%100$1%320@%336%295%307%338@2%295%306%344@2%295%306$0@2%303@5|@2%281%272%101%275%90$2%320@%336%295%307%338@2%295%306$1@2%295%307$0@2%303@5|@|@2%281%272%102%276%103%276%85%269%87$4%320@%336%295%307%338@2%295%306$3@2%295$2@%295$1@$0@6|@|@|@|@2%281%272%104%276%105%269%106$3%320@%336%295%307%348@2%295%306$2@2%295$1@$0@5|@|@|@2%281%275%110%275%82%276%107%269%108$4%320@%336%295%307$3@2%295%307$2@2%295$1@$0@5|@|@|@|@2%281%269%111$1%317@%336$0@2|@2%281%269%112$1%301@%336$0@2|@2%281%269%113$1%312@%336$0@2|@2%269%114$1%292@%336$0@2|@96%277%23%278%25$2$1@$0@|@|@2|@"])
  fun op planPBNS_def x = x
    val op planPBNS_def =
    ThmBind.DT(((("ssmPlanPB",3),
                [("PlanPBType",[19,42,56,86]),("bool",[15,57]),
                 ("combin",[19]),("list",[6]),("pair",[49]),
                 ("relation",[107,126]),("ssm11",[25]),
                 ("ssmPlanPB",[0,1])]),["DISK_THM"]),
               [ThmBind.read"%281%287%345%311@%336%295%306%362@2%303@4%320@2%281%287%345%311@%336%295%306%344@2%303@4%311@2%281%287%345%320@%336%295%306%358@2%295%307%338@2%295%306%351@2%303@6%292@2%281%287%345%320@%336%295%307%338@2%295%306%358@2%295%306%351@2%303@6%292@2%281%287%345%320@%336%295%306%358@2%295%306%351@2%295%307%338@2%303@6%292@2%281%287%345%320@%336%295%306%351@2%295%306%358@2%295%307%338@2%303@6%292@2%281%287%345%320@%336%295%307%338@2%295%306%351@2%295%306%358@2%303@6%292@2%281%287%345%320@%336%295%306%351@2%295%307%338@2%295%306%358@2%303@6%292@2%281%287%345%320@%336%295%306%344@2%303@4%320@2%281%287%345%19@%359%295%306%15@2%303@4%19@2%281%287%345%19@%359%295%307%17@2%303@4%19@2%281%287%345%19@%328%295%306%15@2%303@4%19@2%287%345%19@%328%295%307%17@2%303@4%19@13"])
  fun op planPBOut_ind x = x
    val op planPBOut_ind =
    ThmBind.DT(((("ssmPlanPB",6),
                [("PlanPBType",[23,46,62,90]),
                 ("bool",[25,26,46,47,52,53,57,62,71,75,76,77,79]),
                 ("list",[46]),("pair",[5,16]),("relation",[101,107]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("ssm11",[31])]),["DISK_THM"]),
               [ThmBind.read"%268%6%288%281$0%311@%336%295%306%362@2%303@4%281$0%311@%336%295%306%344@2%303@4%281$0%320@%336%295%306%358@2%295%307%338@2%295%306%351@2%303@6%281$0%320@%336%295%307%338@2%295%306%358@2%295%306%351@2%303@6%281$0%320@%336%295%306%358@2%295%306%351@2%295%307%338@2%303@6%281$0%320@%336%295%306%351@2%295%306%358@2%295%307%338@2%303@6%281$0%320@%336%295%307%338@2%295%306%351@2%295%306%358@2%303@6%281$0%320@%336%295%306%351@2%295%307%338@2%295%306%358@2%303@6%281$0%320@%336%295%306%344@2%303@4%281%277%19%272%15$2$1@%359%295%306$0@2%303@3|@|@2%281%277%19%275%17$2$1@%359%295%307$0@2%303@3|@|@2%281%277%19%272%15$2$1@%328%295%306$0@2%303@3|@|@2%281%277%19%275%17$2$1@%328%295%307$0@2%303@3|@|@2%281%277%19$1$0@%328%303@2|@2%281%277%19%276%80%276%241%269%27$4$3@%328%295$2@%295$1@$0@4|@|@|@|@2%281%277%19$1$0@%359%303@2|@2%281%277%19%276%125%276%118%269%120$4$3@%359%295$2@%295$1@$0@4|@|@|@|@2%281$0%311@%336%303@3%281$0%311@%336%295%306%350@2%303@4%281$0%311@%336%295%306%358@2%303@4%281$0%311@%336%295%306%351@2%303@4%281$0%311@%336%295%306%326@2%303@4%281%275%138$1%311@%336%295%307$0@2%303@3|@2%281%276%140%276%131%269%132$3%311@%336%295$2@%295$1@$0@4|@|@|@2%281$0%320@%336%303@3%281$0%320@%336%295%306%350@2%303@4%281$0%320@%336%295%306%362@2%303@4%281$0%320@%336%295%306%358@2%303@4%281$0%320@%336%295%306%351@2%303@4%281$0%320@%336%295%306%326@2%303@4%281%275%148$1%320@%336%295%307$0@2%303@3|@2%281%272%155%276%157$2%320@%336%295%306$1@2%295$0@%303@4|@|@2%281%272%161%276%163%269%166$3%320@%336%295%306%350@2%295%306$2@2%295$1@$0@5|@|@|@2%281%272%168%276%170%269%172$3%320@%336%295%306%362@2%295%306$2@2%295$1@$0@5|@|@|@2%281%272%185%272%181$2%320@%336%295%306%358@2%295%306$1@2%295%306$0@2%303@5|@|@2%281%275%187$1%320@%336%295%306%358@2%295%306%350@2%295%307$0@2%303@5|@2%281%275%189$1%320@%336%295%306%358@2%295%306%362@2%295%307$0@2%303@5|@2%281%275%191$1%320@%336%295%306%358@2%295%306%358@2%295%307$0@2%303@5|@2%281$0%320@%336%295%306%358@2%295%306%351@2%295%307%348@2%303@6%281%275%193$1%320@%336%295%306%358@2%295%306%326@2%295%307$0@2%303@5|@2%281%275%195$1%320@%336%295%306%358@2%295%306%344@2%295%307$0@2%303@5|@2%281%272%197%276%199%276%176%269%178$4%320@%336%295%306%358@2%295%306$3@2%295$2@%295$1@$0@6|@|@|@|@2%281%272%212%272%209$2%320@%336%295%306%351@2%295%306$1@2%295%306$0@2%303@5|@|@2%281%275%214$1%320@%336%295%306%351@2%295%306%350@2%295%307$0@2%303@5|@2%281%275%216$1%320@%336%295%306%351@2%295%306%362@2%295%307$0@2%303@5|@2%281$0%320@%336%295%306%351@2%295%306%358@2%295%307%348@2%303@6%281%275%218$1%320@%336%295%306%351@2%295%306%351@2%295%307$0@2%303@5|@2%281%275%221$1%320@%336%295%306%351@2%295%306%326@2%295%307$0@2%303@5|@2%281%275%223$1%320@%336%295%306%351@2%295%306%344@2%295%307$0@2%303@5|@2%281%272%225%276%227%276%204%269%206$4%320@%336%295%306%351@2%295%306$3@2%295$2@%295$1@$0@6|@|@|@|@2%281%272%229%276%231%269%233$3%320@%336%295%306%326@2%295%306$2@2%295$1@$0@5|@|@|@2%281%272%235%276%237%269%239$3%320@%336%295%306%344@2%295%306$2@2%295$1@$0@5|@|@|@2%281%275%243%276%245%269%247$3%320@%336%295%306%350@2%295%307$2@2%295$1@$0@5|@|@|@2%281%275%249%276%251%269%252$3%320@%336%295%306%362@2%295%307$2@2%295$1@$0@5|@|@|@2%281$0%320@%336%295%306%358@2%295%307%338@2%295%306%350@2%303@6%281$0%320@%336%295%306%358@2%295%307%338@2%295%306%362@2%303@6%281$0%320@%336%295%306%358@2%295%307%338@2%295%306%358@2%303@6%281$0%320@%336%295%306%358@2%295%307%338@2%295%306%326@2%303@6%281$0%320@%336%295%306%358@2%295%307%338@2%295%306%344@2%303@6%281%272%33$1%320@%336%295%306%358@2%295%307%348@2%295%306$0@2%303@5|@2%281%275%35%275%31$2%320@%336%295%306%358@2%295%307$1@2%295%307$0@2%303@5|@|@2%281%275%37%276%39%276%257%269%258$4%320@%336%295%306%358@2%295%307$3@2%295$2@%295$1@$0@6|@|@|@|@2%281$0%320@%336%295%306%351@2%295%307%338@2%295%306%350@2%303@6%281$0%320@%336%295%306%351@2%295%307%338@2%295%306%362@2%303@6%281$0%320@%336%295%306%351@2%295%307%338@2%295%306%351@2%303@6%281$0%320@%336%295%306%351@2%295%307%338@2%295%306%326@2%303@6%281$0%320@%336%295%306%351@2%295%307%338@2%295%306%344@2%303@6%281%272%51$1%320@%336%295%306%351@2%295%307%348@2%295%306$0@2%303@5|@2%281%275%53%275%49$2%320@%336%295%306%351@2%295%307$1@2%295%307$0@2%303@5|@|@2%281%275%55%276%57%276%43%269%45$4%320@%336%295%306%351@2%295%307$3@2%295$2@%295$1@$0@6|@|@|@|@2%281%275%59%276%61%269%64$3%320@%336%295%306%326@2%295%307$2@2%295$1@$0@5|@|@|@2%281%275%66%276%68%269%70$3%320@%336%295%306%344@2%295%307$2@2%295$1@$0@5|@|@|@2%281%275%74%276%76$2%320@%336%295%307$1@2%295$0@%303@4|@|@2%281%272%93$1%320@%336%295%307%338@2%295%306%350@2%295%306$0@2%303@5|@2%281%272%95$1%320@%336%295%307%338@2%295%306%362@2%295%306$0@2%303@5|@2%281$0%320@%336%295%307%338@2%295%306%358@2%295%306%350@2%303@6%281$0%320@%336%295%307%338@2%295%306%358@2%295%306%362@2%303@6%281$0%320@%336%295%307%338@2%295%306%358@2%295%306%358@2%303@6%281$0%320@%336%295%307%338@2%295%306%358@2%295%306%326@2%303@6%281$0%320@%336%295%307%338@2%295%306%358@2%295%306%344@2%303@6%281$0%320@%336%295%307%338@2%295%306%351@2%295%306%350@2%303@6%281$0%320@%336%295%307%338@2%295%306%351@2%295%306%362@2%303@6%281$0%320@%336%295%307%338@2%295%306%351@2%295%306%351@2%303@6%281$0%320@%336%295%307%338@2%295%306%351@2%295%306%326@2%303@6%281$0%320@%336%295%307%338@2%295%306%351@2%295%306%344@2%303@6%281%272%98$1%320@%336%295%307%338@2%295%306%326@2%295%306$0@2%303@5|@2%281%272%100$1%320@%336%295%307%338@2%295%306%344@2%295%306$0@2%303@5|@2%281%272%101%275%90$2%320@%336%295%307%338@2%295%306$1@2%295%307$0@2%303@5|@|@2%281%272%102%276%103%276%85%269%87$4%320@%336%295%307%338@2%295%306$3@2%295$2@%295$1@$0@6|@|@|@|@2%281%272%104%276%105%269%106$3%320@%336%295%307%348@2%295%306$2@2%295$1@$0@5|@|@|@2%281%275%110%275%82%276%107%269%108$4%320@%336%295%307$3@2%295%307$2@2%295$1@$0@5|@|@|@|@2%281%269%111$1%317@%336$0@2|@2%281%269%112$1%301@%336$0@2|@2%281%269%113$1%312@%336$0@2|@2%269%114$1%292@%336$0@2|@96%277%23%278%25$2$1@$0@|@|@2|@"])
  fun op planPBOut_def x = x
    val op planPBOut_def =
    ThmBind.DT(((("ssmPlanPB",7),
                [("PlanPBType",[19,42,56,86]),("bool",[15,57]),
                 ("combin",[19]),("list",[6]),("pair",[49]),
                 ("relation",[107,126]),("ssm11",[25]),
                 ("ssmPlanPB",[4,5])]),["DISK_THM"]),
               [ThmBind.read"%281%286%346%311@%336%295%306%362@2%303@4%323@2%281%286%346%311@%336%295%306%344@2%303@4%313@2%281%286%346%320@%336%295%306%358@2%295%307%338@2%295%306%351@2%303@6%296@2%281%286%346%320@%336%295%307%338@2%295%306%358@2%295%306%351@2%303@6%296@2%281%286%346%320@%336%295%306%358@2%295%306%351@2%295%307%338@2%303@6%296@2%281%286%346%320@%336%295%306%351@2%295%306%358@2%295%307%338@2%303@6%296@2%281%286%346%320@%336%295%307%338@2%295%306%351@2%295%306%358@2%303@6%296@2%281%286%346%320@%336%295%306%351@2%295%307%338@2%295%306%358@2%303@6%296@2%281%286%346%320@%336%295%306%344@2%303@4%323@2%281%286%346%19@%359%295%306%15@2%303@4%361@2%281%286%346%19@%359%295%307%17@2%303@4%361@2%281%286%346%19@%328%295%306%15@2%303@4%360@2%286%346%19@%328%295%307%17@2%303@4%360@13"])
  fun op authTestConductORP_ind x = x
    val op authTestConductORP_ind =
    ThmBind.DT(((("ssmPlanPB",9),
                [("PlanPBType",[142]),("aclfoundation",[55,116]),
                 ("bool",[25,26,46,47,52,53,57,62,71,75,76,77,79]),
                 ("relation",[101,107]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%265%5%288%281%271%11$1%354%305%308@2%347$0@3|@2%281%271%11$1%354%305%309@2%347$0@3|@2%281$0%319@2%281$0%298@2%281%271%22$1%347$0@2|@2%281%259%24$1%342$0@2|@2%281%259%121%259%135$2%324$1@$0@2|@|@2%281%259%149%259%164$2%343$1@$0@2|@|@2%281%259%182%259%201$2%337$1@$0@2|@|@2%281%259%219%259%240$2%331$1@$0@2|@|@2%281%262%26$1%354$0@%319@2|@2%281%262%26$1%354$0@%298@2|@2%281%262%84%262%86%271%194$3%354%341$2@$1@2%347$0@3|@|@|@2%281%262%88%262%89%271%194$3%354%349$2@$1@2%347$0@3|@|@|@2%281%262%26%259%196$2%354$1@%342$0@3|@|@2%281%262%26%259%198%259%200$3%354$2@%324$1@$0@3|@|@|@2%281%262%26%259%202%259%203$3%354$2@%343$1@$0@3|@|@|@2%281%262%26%259%205%259%207$3%354$2@%337$1@$0@3|@|@|@2%281%262%26%259%208%259%210$3%354$2@%331$1@$0@3|@|@|@2%281%262%26%262%211%259%213$3%354$2@%354$1@$0@3|@|@|@2%281%262%26%262%215%262%217$3%354$2@%356$1@$0@3|@|@|@2%281%262%26%262%220%259%222$3%354$2@%327$1@$0@3|@|@|@2%281%262%26%262%224%262%226%259%228$4%354$3@%352$2@$1@$0@3|@|@|@|@2%281%262%26%260%230%260%232$3%354$2@%329$1@$0@3|@|@|@2%281%262%26%260%234%260%236$3%354$2@%332$1@$0@3|@|@|@2%281%262%26%263%238%263%242$3%354$2@%330$1@$0@3|@|@|@2%281%262%26%263%244%263%246$3%354$2@%334$1@$0@3|@|@|@2%281%262%26%270%248%270%250$3%354$2@%333$1@$0@3|@|@|@2%281%262%26%270%253%270%254$3%354$2@%340$1@$0@3|@|@|@2%281%262%26%270%255%270%256$3%354$2@%339$1@$0@3|@|@|@2%281%262%62%262%79$2%356$1@$0@2|@|@2%281%262%96%259%109$2%327$1@$0@2|@|@2%281%262%115%262%116%259%117$3%352$2@$1@$0@2|@|@|@2%281%260%119%260%122$2%329$1@$0@2|@|@2%281%260%123%260%124$2%332$1@$0@2|@|@2%281%263%126%263%127$2%330$1@$0@2|@|@2%281%263%128%263%129$2%334$1@$0@2|@|@2%281%270%130%270%133$2%333$1@$0@2|@|@2%281%270%134%270%136$2%340$1@$0@2|@|@2%270%137%270%139$2%339$1@$0@2|@|@41%259%21$1$0@|@2|@"])
  fun op authTestConductORP_def x = x
    val op authTestConductORP_def =
    ThmBind.DT(((("ssmPlanPB",10),
                [("aclfoundation",[33,110]),("bool",[15]),("combin",[19]),
                 ("relation",[107,126]),("ssmPlanPB",[8])]),["DISK_THM"]),
               [ThmBind.read"%281%283%325%354%305%308@2%347%11@4%316@2%281%283%325%354%305%309@2%347%11@4%316@2%281%283%325%319@2%297@2%281%283%325%298@2%297@2%281%283%325%347%22@3%297@2%281%283%325%342%24@3%297@2%281%283%325%324%121@%135@3%297@2%281%283%325%343%149@%164@3%297@2%281%283%325%337%182@%201@3%297@2%281%283%325%331%219@%240@3%297@2%281%283%325%354%26@%319@3%297@2%281%283%325%354%26@%298@3%297@2%281%283%325%354%341%84@%86@2%347%194@4%297@2%281%283%325%354%349%88@%89@2%347%194@4%297@2%281%283%325%354%26@%342%196@4%297@2%281%283%325%354%26@%324%198@%200@4%297@2%281%283%325%354%26@%343%202@%203@4%297@2%281%283%325%354%26@%337%205@%207@4%297@2%281%283%325%354%26@%331%208@%210@4%297@2%281%283%325%354%26@%354%211@%213@4%297@2%281%283%325%354%26@%356%215@%217@4%297@2%281%283%325%354%26@%327%220@%222@4%297@2%281%283%325%354%26@%352%224@%226@%228@4%297@2%281%283%325%354%26@%329%230@%232@4%297@2%281%283%325%354%26@%332%234@%236@4%297@2%281%283%325%354%26@%330%238@%242@4%297@2%281%283%325%354%26@%334%244@%246@4%297@2%281%283%325%354%26@%333%248@%250@4%297@2%281%283%325%354%26@%340%253@%254@4%297@2%281%283%325%354%26@%339%255@%256@4%297@2%281%283%325%356%62@%79@3%297@2%281%283%325%327%96@%109@3%297@2%281%283%325%352%115@%116@%117@3%297@2%281%283%325%329%119@%122@3%297@2%281%283%325%332%123@%124@3%297@2%281%283%325%330%126@%127@3%297@2%281%283%325%334%128@%129@3%297@2%281%283%325%333%130@%133@3%297@2%281%283%325%340%134@%136@3%297@2%283%325%339%137@%139@3%297@40"])
  fun op authTestConductORP_cmd_reject_lemma x = x
    val op authTestConductORP_cmd_reject_lemma =
    ThmBind.DT(((("ssmPlanPB",12),
                [("aclfoundation",[33,110]),
                 ("bool",[15,25,26,46,47,52,53,62,70,72]),("combin",[19]),
                 ("relation",[107,126]),("sat",[1,3,5,6,7,11,14,15]),
                 ("ssmPlanPB",[8])]),["DISK_THM"]),
               [ThmBind.read"%264%10%363%325%347%315$0@4|@"])
  fun op PlatoonLeader_plCommand_lemma x = x
    val op PlatoonLeader_plCommand_lemma =
    ThmBind.DT(((("ssmPlanPB",14),
                [("aclDrules",[3]),("aclrules",[63]),
                 ("bool",[25,26,46,47,50,52,53,62,92,93,95]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm11",[52]),("ssmPlanPB",[11,13])]),["DISK_THM"]),
               [ThmBind.read"%288%291%279%0@%280%2@%3@3%290%325@%357@%355%15@%17@%12@2%293%354%305%308@2%347%315%314%306%15@6%13@2%19@%14@3%353%279%0@%280%2@%3@3%347%315%314%306%15@6"])
  fun op PlatoonLeader_exec_plCommand_justified_thm x = x
    val op PlatoonLeader_exec_plCommand_justified_thm =
    ThmBind.DT(((("ssmPlanPB",15),
                [("aclDrules",[3]),("aclrules",[63]),
                 ("bool",
                 [25,26,35,42,46,47,50,52,53,55,57,62,70,76,83,92,93,95,
                  145]),("combin",[19]),("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("satList",[1,3]),("ssm11",[52,62]),
                 ("ssmPlanPB",[11,13])]),["DISK_THM"]),
               [ThmBind.read"%267%1%266%4%261%0%273%2%274%3%283%318%279$2@%280$1@$0@3%335%314%306%15@4%290%325@%357@%355%15@%17@%12@2%293%354%305%308@2%347%315%314%306%15@6%13@2%19@%14@2%290%325@%357@%355%15@%17@%12@2%13@$4%19@%335%314%306%15@5%294$3%19@%335%314%306%15@5%14@4%281%325%354%305%308@2%347%315%314%306%15@7%281%291%279$2@%280$1@$0@3%290%325@%357@%355%15@%17@%12@2%293%354%305%308@2%347%315%314%306%15@6%13@2%19@%14@3%353%279$2@%280$1@$0@3%347%315%314%306%15@8|@|@|@|@|@"])
  fun op PlatoonSergeant_psgCommand_lemma x = x
    val op PlatoonSergeant_psgCommand_lemma =
    ThmBind.DT(((("ssmPlanPB",16),
                [("aclDrules",[3]),("aclrules",[63]),
                 ("bool",[25,26,46,47,50,52,53,62,92,93,95]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm11",[52]),("ssmPlanPB",[11,13])]),["DISK_THM"]),
               [ThmBind.read"%288%291%279%0@%280%2@%3@3%290%325@%357@%355%15@%17@%12@2%293%354%305%309@2%347%315%314%307%17@6%13@2%19@%14@3%353%279%0@%280%2@%3@3%347%315%314%307%17@6"])
  fun op PlatoonSergeant_exec_psgCommand_justified_thm x = x
    val op PlatoonSergeant_exec_psgCommand_justified_thm =
    ThmBind.DT(((("ssmPlanPB",17),
                [("aclDrules",[3]),("aclrules",[63]),
                 ("bool",
                 [25,26,35,42,46,47,50,52,53,55,57,62,70,76,83,92,93,95,
                  145]),("combin",[19]),("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("satList",[1,3]),("ssm11",[52,62]),
                 ("ssmPlanPB",[11,13])]),["DISK_THM"]),
               [ThmBind.read"%267%1%266%4%261%0%273%2%274%3%283%318%279$2@%280$1@$0@3%335%314%307%17@4%290%325@%357@%355%15@%17@%12@2%293%354%305%309@2%347%315%314%307%17@6%13@2%19@%14@2%290%325@%357@%355%15@%17@%12@2%13@$4%19@%335%314%307%17@5%294$3%19@%335%314%307%17@5%14@4%281%325%354%305%309@2%347%315%314%307%17@7%281%291%279$2@%280$1@$0@3%290%325@%357@%355%15@%17@%12@2%293%354%305%309@2%347%315%314%307%17@6%13@2%19@%14@3%353%279$2@%280$1@$0@3%347%315%314%307%17@8|@|@|@|@|@"])

  val _ = DB.bindl "ssmPlanPB"
  [("authTestConductORP_primitive_def",
    authTestConductORP_primitive_def,
    DB.Def),
   ("ssmConductORPStateInterp_def",ssmConductORPStateInterp_def,DB.Def),
   ("secContextConductORP_def",secContextConductORP_def,DB.Def),
   ("planPBNS_ind",planPBNS_ind,DB.Thm),
   ("planPBNS_def",planPBNS_def,DB.Thm),
   ("planPBOut_ind",planPBOut_ind,DB.Thm),
   ("planPBOut_def",planPBOut_def,DB.Thm),
   ("authTestConductORP_ind",authTestConductORP_ind,DB.Thm),
   ("authTestConductORP_def",authTestConductORP_def,DB.Thm),
   ("authTestConductORP_cmd_reject_lemma",
    authTestConductORP_cmd_reject_lemma,
    DB.Thm),
   ("PlatoonLeader_plCommand_lemma",PlatoonLeader_plCommand_lemma,DB.Thm),
   ("PlatoonLeader_exec_plCommand_justified_thm",
    PlatoonLeader_exec_plCommand_justified_thm,
    DB.Thm),
   ("PlatoonSergeant_psgCommand_lemma",
    PlatoonSergeant_psgCommand_lemma,
    DB.Thm),
   ("PlatoonSergeant_exec_psgCommand_justified_thm",
    PlatoonSergeant_exec_psgCommand_justified_thm,
    DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "ssmPlanPB",
    thydataty = "compute",
    read = ThmBind.read,
    data =
        "ssmPlanPB.planPBNS_def ssmPlanPB.planPBOut_def ssmPlanPB.secContextConductORP_def ssmPlanPB.ssmConductORPStateInterp_def ssmPlanPB.authTestConductORP_def"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "ssmPlanPB",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data =
        "OO8.planPBNS4.%345OO9.planPBOut4.%346OO18.authTestConductORP4.%325OO24.ssmConductORPStateInterp4.%357OO20.secContextConductORP4.%355"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val ssmPlanPB_grammars = merge_grammars ["PlanPBType", "ssm11",
                                           "OMNIType"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="ssmPlanPB"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val ssmPlanPB_grammars = 
    Portable.## (addtyUDs,addtmUDs) ssmPlanPB_grammars
  val _ = Parse.grammarDB_insert("ssmPlanPB",ssmPlanPB_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "ssmPlanPB"
end