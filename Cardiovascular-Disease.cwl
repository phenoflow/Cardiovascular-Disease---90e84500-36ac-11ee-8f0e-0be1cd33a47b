cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  cardiovascular-disease-psoriasis-association-study-with-cvd-myocard---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-myocard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-infarctn---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-infarctn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-myocard---primary/output
  coronary-cardiovascular-disease-psoriasis-association-study-with-cvd---primary:
    run: coronary-cardiovascular-disease-psoriasis-association-study-with-cvd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-infarctn---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-ruptur---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-ruptur---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: coronary-cardiovascular-disease-psoriasis-association-study-with-cvd---primary/output
  lateral-cardiovascular-disease-psoriasis-association-study-with-cvd---primary:
    run: lateral-cardiovascular-disease-psoriasis-association-study-with-cvd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-ruptur---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-infarct---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-infarct---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: lateral-cardiovascular-disease-psoriasis-association-study-with-cvd---primary/output
  septal-cardiovascular-disease-psoriasis-association-study-with-cvd---primary:
    run: septal-cardiovascular-disease-psoriasis-association-study-with-cvd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-infarct---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-posterior---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-posterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: septal-cardiovascular-disease-psoriasis-association-study-with-cvd---primary/output
  subendocardial-cardiovascular-disease-psoriasis-association-study-with-cvd---primary:
    run: subendocardial-cardiovascular-disease-psoriasis-association-study-with-cvd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-posterior---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-elevation---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-elevation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: subendocardial-cardiovascular-disease-psoriasis-association-study-with-cvd---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-muscle---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-muscle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-elevation---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-angina---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-angina---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-muscle---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-aborted---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-aborted---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-angina---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-arrest---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-arrest---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-aborted---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-asystole---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-asystole---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-arrest---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-cardiac---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-cardiac---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-asystole---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-unspecif---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-unspecif---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-cardiac---primary/output
  subarachnoid-cardiovascular-disease-psoriasis-association-study-with-cvd---primary:
    run: subarachnoid-cardiovascular-disease-psoriasis-association-study-with-cvd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-unspecif---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-cereb---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-cereb---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: subarachnoid-cardiovascular-disease-psoriasis-association-study-with-cvd---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-communicating---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-communicating---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-cereb---primary/output
  vertebral-cardiovascular-disease-psoriasis-association-study-with-cvd---primary:
    run: vertebral-cardiovascular-disease-psoriasis-association-study-with-cvd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-communicating---primary/output
  intracranial-cardiovascular-disease-psoriasis-association-study-with-cvd---primary:
    run: intracranial-cardiovascular-disease-psoriasis-association-study-with-cvd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: vertebral-cardiovascular-disease-psoriasis-association-study-with-cvd---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-haemorrhage---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-haemorrhage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: intracranial-cardiovascular-disease-psoriasis-association-study-with-cvd---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-capsule---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-capsule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-haemorrhage---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-basal---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-basal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-capsule---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-hemisphere---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-hemisphere---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-basal---primary/output
  nontraumatic-cardiovascular-disease-psoriasis-association-study-with-cvd---primary:
    run: nontraumatic-cardiovascular-disease-psoriasis-association-study-with-cvd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-hemisphere---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-precerebr---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-precerebr---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: nontraumatic-cardiovascular-disease-psoriasis-association-study-with-cvd---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-occlus---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-occlus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-precerebr---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-brainstem---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-brainstem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-occlus---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-lacunar---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-lacunar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-brainstem---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-sided---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-sided---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-lacunar---primary/output
  right-cardiovascular-disease-psoriasis-association-study-with-cvd---primary:
    run: right-cardiovascular-disease-psoriasis-association-study-with-cvd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-sided---primary/output
  ischaemic-cardiovascular-disease-psoriasis-association-study-with-cvd---primary:
    run: ischaemic-cardiovascular-disease-psoriasis-association-study-with-cvd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: right-cardiovascular-disease-psoriasis-association-study-with-cvd---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-occlusn---primary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-occlusn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: ischaemic-cardiovascular-disease-psoriasis-association-study-with-cvd---primary/output
  other-cardiovascular-disease-psoriasis-association-study-with-cvd---primary:
    run: other-cardiovascular-disease-psoriasis-association-study-with-cvd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-occlusn---primary/output
  lateral-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary:
    run: lateral-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: other-cardiovascular-disease-psoriasis-association-study-with-cvd---primary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-anterior---secondary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-anterior---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: lateral-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-posterior---secondary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-posterior---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-anterior---secondary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-inferior---secondary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-inferior---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-posterior---secondary/output
  bilateral-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary:
    run: bilateral-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-inferior---secondary/output
  subendocardial-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary:
    run: subendocardial-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: bilateral-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-specified---secondary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-specified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: subendocardial-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd---secondary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-specified---secondary/output
  other-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary:
    run: other-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd---secondary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-hemorrhage---secondary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-hemorrhage---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: other-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary/output
  basilar-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary:
    run: basilar-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-hemorrhage---secondary/output
  carotid-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary:
    run: carotid-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: basilar-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary/output
  vertebral-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary:
    run: vertebral-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: carotid-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-thrombosis---secondary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-thrombosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: vertebral-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-embolism---secondary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-embolism---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-thrombosis---secondary/output
  acute-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary:
    run: acute-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-embolism---secondary/output
  transmural-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary:
    run: transmural-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: acute-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-unspecified---secondary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-unspecified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: transmural-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary/output
  subsequent-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary:
    run: subsequent-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-unspecified---secondary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-following---secondary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-following---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: subsequent-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-haemopericardium---secondary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-haemopericardium---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-following---secondary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-defect---secondary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-defect---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-haemopericardium---secondary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-rupture---secondary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-rupture---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-defect---secondary/output
  subarachnoid-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary:
    run: subarachnoid-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-rupture---secondary/output
  precerebral-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary:
    run: precerebral-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: subarachnoid-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-communicating---secondary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-communicating---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: precerebral-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary/output
  intracranial-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary:
    run: intracranial-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-communicating---secondary/output
  intracerebral-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary:
    run: intracerebral-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: intracranial-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-hemisphere---secondary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-hemisphere---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: intracerebral-cardiovascular-disease-psoriasis-association-study-with-cvd---secondary/output
  cardiovascular-disease-psoriasis-association-study-with-cvd-stenosis---secondary:
    run: cardiovascular-disease-psoriasis-association-study-with-cvd-stenosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-hemisphere---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: cardiovascular-disease-psoriasis-association-study-with-cvd-stenosis---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
