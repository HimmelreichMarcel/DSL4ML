<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7ba08399-0216-467f-b3ef-c722ed983539(model.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="5" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="jqrd" ref="r:a86b5aa2-977c-4dd4-975b-865365d5871c(types.structure)" />
    <import index="5t6d" ref="r:74fa9f55-9024-401b-8305-653d85756786(estimator.structure)" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" implicit="true" />
    <import index="bxmu" ref="r:2caa4bf2-77af-43e0-8e72-8a12a8978a06(edit.structure)" implicit="true" />
    <import index="55s9" ref="r:349f01e8-2ba4-49f7-be71-679bbbf4b80d(features.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="ckmh" ref="r:a0b09593-26bd-4d75-98f1-657e49dea4f1(create.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1082978164219" name="jetbrains.mps.lang.structure.structure.EnumerationDataTypeDeclaration" flags="ng" index="AxPO7">
        <property id="1212080844762" name="hasNoDefaultMember" index="PDuV0" />
        <property id="1197591154882" name="memberIdentifierPolicy" index="3lZH7k" />
        <reference id="1083171729157" name="memberDataType" index="M4eZT" />
        <child id="1083172003582" name="member" index="M5hS2" />
      </concept>
      <concept id="1083171877298" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ig" index="M4N5e">
        <property id="1083923523172" name="externalValue" index="1uS6qo" />
        <property id="1083923523171" name="internalValue" index="1uS6qv" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ">
        <child id="1169127546356" name="extends" index="PrDN$" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="5_q2PHPuV_W">
    <property role="EcuMT" value="6438471104720517500" />
    <property role="TrG5h" value="ModelType" />
    <property role="34LRSv" value="model" />
    <ref role="1TJDcQ" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
    <node concept="PrWs8" id="UOeJaKFlEV" role="PzmwI">
      <ref role="PrY4T" to="5frd:1UULepO1t7_" resolve="ISynchWithServer" />
    </node>
    <node concept="PrWs8" id="4IazLL4kBS0" role="PzmwI">
      <ref role="PrY4T" to="bxmu:XZLIaPLIAc" resolve="ICanBeEdited" />
    </node>
    <node concept="1TJgyj" id="5_q2PHPvbSn" role="1TKVEi">
      <property role="IQ2ns" value="6438471104720584215" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="fittedOn" />
      <ref role="20lvS9" to="55s9:7OzZ9xI8jbt" resolve="FeaturesetType" />
    </node>
    <node concept="1TJgyj" id="699fBOoy0w2" role="1TKVEi">
      <property role="IQ2ns" value="7082260596020217858" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="estimator" />
      <ref role="20lvS9" to="5t6d:6azzq4WW_L7" resolve="EstimatorType" />
    </node>
    <node concept="1TJgyi" id="1oR6hBkeYPk" role="1TKVEl">
      <property role="IQ2nx" value="1600775791279074644" />
      <property role="TrG5h" value="isTrained" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="5_q2PHPuVBP">
    <property role="EcuMT" value="6438471104720517621" />
    <property role="TrG5h" value="AbstractModelEditingStatement" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="editing" />
    <ref role="1TJDcQ" to="bxmu:7WePDBhhPDV" resolve="AbstractEditingStatment" />
  </node>
  <node concept="1TIwiD" id="5_q2PHPuZcP">
    <property role="EcuMT" value="6438471104720532277" />
    <property role="TrG5h" value="ModelEditing" />
    <ref role="1TJDcQ" to="bxmu:XZLIaPLIAd" resolve="AbstractTypeEditing" />
  </node>
  <node concept="1TIwiD" id="5_q2PHPuZm8">
    <property role="EcuMT" value="6438471104720532872" />
    <property role="3GE5qa" value="editing.estimator" />
    <property role="TrG5h" value="DetectEstimator" />
    <property role="34LRSv" value="detect estimator" />
    <ref role="1TJDcQ" node="5_q2PHPuVBP" resolve="AbstractModelEditingStatement" />
    <node concept="1TJgyi" id="5_q2PHPuZy2" role="1TKVEl">
      <property role="IQ2nx" value="6438471104720533634" />
      <property role="TrG5h" value="task" />
      <ref role="AX2Wp" node="7bbTq01X5JX" resolve="task_type" />
    </node>
    <node concept="PrWs8" id="UOeJaKE9fq" role="PzmwI">
      <ref role="PrY4T" node="UOeJaKCSIh" resolve="IDefineEstimator" />
    </node>
  </node>
  <node concept="1TIwiD" id="5_q2PHPuZrX">
    <property role="EcuMT" value="6438471104720533245" />
    <property role="3GE5qa" value="editing.estimator" />
    <property role="TrG5h" value="SetEstimator" />
    <property role="34LRSv" value="set estimator" />
    <ref role="1TJDcQ" node="5_q2PHPuVBP" resolve="AbstractModelEditingStatement" />
    <node concept="1TJgyj" id="5_q2PHPv4vT" role="1TKVEi">
      <property role="IQ2ns" value="6438471104720553977" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="estimator" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="5frd:pBV22SMBK$" resolve="IProvideTypeObject" />
    </node>
    <node concept="PrWs8" id="UOeJaKCSIO" role="PzmwI">
      <ref role="PrY4T" node="UOeJaKCSIh" resolve="IDefineEstimator" />
    </node>
  </node>
  <node concept="AxPO7" id="7bbTq01X5JX">
    <property role="TrG5h" value="task_type" />
    <property role="3lZH7k" value="derive_from_internal_value" />
    <property role="PDuV0" value="true" />
    <property role="3GE5qa" value="editing.estimator" />
    <ref role="M4eZT" to="tpck:fKAOsGN" resolve="string" />
    <node concept="M4N5e" id="7bbTq01X5JY" role="M5hS2">
      <property role="1uS6qo" value="classification" />
      <property role="1uS6qv" value="classification" />
    </node>
    <node concept="M4N5e" id="7bbTq01X5JZ" role="M5hS2">
      <property role="1uS6qo" value="regression" />
      <property role="1uS6qv" value="regression" />
    </node>
    <node concept="M4N5e" id="7bbTq01X5K2" role="M5hS2">
      <property role="1uS6qo" value="clustering" />
      <property role="1uS6qv" value="clustering" />
    </node>
  </node>
  <node concept="1TIwiD" id="5_q2PHPv4KA">
    <property role="EcuMT" value="6438471104720555046" />
    <property role="3GE5qa" value="editing.execution" />
    <property role="TrG5h" value="TrainOnData" />
    <property role="34LRSv" value="train" />
    <ref role="1TJDcQ" node="5_q2PHPuVBP" resolve="AbstractModelEditingStatement" />
    <node concept="PrWs8" id="1oR6hBkfALM" role="PzmwI">
      <ref role="PrY4T" node="1oR6hBkfzoU" resolve="IRequireEstimator" />
    </node>
  </node>
  <node concept="1TIwiD" id="5_q2PHPv54U">
    <property role="EcuMT" value="6438471104720556346" />
    <property role="3GE5qa" value="editing.execution" />
    <property role="TrG5h" value="ValidateOnData" />
    <property role="34LRSv" value="validate" />
    <ref role="1TJDcQ" node="5_q2PHPuVBP" resolve="AbstractModelEditingStatement" />
    <node concept="PrWs8" id="1oR6hBkfALP" role="PzmwI">
      <ref role="PrY4T" node="1oR6hBkfzoU" resolve="IRequireEstimator" />
    </node>
  </node>
  <node concept="1TIwiD" id="5_q2PHPv59A">
    <property role="EcuMT" value="6438471104720556646" />
    <property role="3GE5qa" value="editing.execution" />
    <property role="TrG5h" value="CrossValidateOnData" />
    <property role="34LRSv" value="cross-validate" />
    <ref role="1TJDcQ" node="5_q2PHPuVBP" resolve="AbstractModelEditingStatement" />
    <node concept="PrWs8" id="1oR6hBkfALJ" role="PzmwI">
      <ref role="PrY4T" node="1oR6hBkfzoU" resolve="IRequireEstimator" />
    </node>
    <node concept="1TJgyi" id="5UZ5Kaxbj5P" role="1TKVEl">
      <property role="IQ2nx" value="6827200860178428277" />
      <property role="TrG5h" value="folds" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="PlHQZ" id="UOeJaKCSIh">
    <property role="EcuMT" value="1059536626358913937" />
    <property role="3GE5qa" value="editing.estimator" />
    <property role="TrG5h" value="IDefineEstimator" />
    <node concept="PrWs8" id="5UZ5Kaxbmgm" role="PrDN$">
      <ref role="PrY4T" node="5UZ5Kaxb6iV" resolve="IInsertData" />
    </node>
  </node>
  <node concept="PlHQZ" id="5UZ5Kaxb6iV">
    <property role="EcuMT" value="6827200860178375867" />
    <property role="3GE5qa" value="editing" />
    <property role="TrG5h" value="IInsertData" />
    <node concept="1TJgyj" id="5UZ5Kaxb6iW" role="1TKVEi">
      <property role="IQ2ns" value="6827200860178375868" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="data" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="5frd:pBV22SMBK$" resolve="IProvideTypeObject" />
    </node>
  </node>
  <node concept="PlHQZ" id="1oR6hBkfzoU">
    <property role="EcuMT" value="1600775791279224378" />
    <property role="3GE5qa" value="editing.execution" />
    <property role="TrG5h" value="IRequireEstimator" />
    <node concept="PrWs8" id="1oR6hBkfALH" role="PrDN$">
      <ref role="PrY4T" node="5UZ5Kaxb6iV" resolve="IInsertData" />
    </node>
  </node>
  <node concept="1TIwiD" id="1oR6hBkfEx3">
    <property role="EcuMT" value="1600775791279253571" />
    <property role="3GE5qa" value="editing.execution" />
    <property role="TrG5h" value="TestOnData" />
    <property role="34LRSv" value="test" />
    <ref role="1TJDcQ" node="5_q2PHPuVBP" resolve="AbstractModelEditingStatement" />
    <node concept="PrWs8" id="1oR6hBkfExt" role="PzmwI">
      <ref role="PrY4T" node="1oR6hBkfzoU" resolve="IRequireEstimator" />
    </node>
  </node>
  <node concept="1TIwiD" id="3ERSFayISbT">
    <property role="EcuMT" value="4231099631800124153" />
    <property role="TrG5h" value="AsNewModelInitialization" />
    <ref role="1TJDcQ" to="ckmh:1pFVOLkFKeb" resolve="AbstractTypeInitializator" />
  </node>
</model>

