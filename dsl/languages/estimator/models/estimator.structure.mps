<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:74fa9f55-9024-401b-8305-653d85756786(estimator.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="5" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" />
    <import index="jqrd" ref="r:a86b5aa2-977c-4dd4-975b-865365d5871c(types.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
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
  <node concept="1TIwiD" id="6azzq4WW_L7">
    <property role="EcuMT" value="7107680360572542023" />
    <property role="TrG5h" value="EstimatorType" />
    <property role="34LRSv" value="estimator" />
    <ref role="1TJDcQ" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
    <node concept="PrWs8" id="6azzq4WW_L8" role="PzmwI">
      <ref role="PrY4T" to="5frd:1UULepO1t7_" resolve="ISynchWithServer" />
    </node>
  </node>
  <node concept="1TIwiD" id="7bbTq01X5JW">
    <property role="EcuMT" value="8271957615986367484" />
    <property role="TrG5h" value="DeprecatedSetEstimatorWithImportantInterpreterStuff" />
    <property role="3GE5qa" value="initializers" />
    <ref role="1TJDcQ" node="1pFVOLkMnz4" resolve="AbstractEstimatorInitialExpression" />
    <node concept="1TJgyi" id="7bbTq01X5K6" role="1TKVEl">
      <property role="IQ2nx" value="8271957615986367494" />
      <property role="TrG5h" value="task" />
      <ref role="AX2Wp" node="7bbTq01X5JX" resolve="task_type" />
    </node>
    <node concept="1TJgyj" id="7bbTq01X5K8" role="1TKVEi">
      <property role="IQ2ns" value="8271957615986367496" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="data" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="5frd:pBV22SMBK$" resolve="IProvideTypeObject" />
    </node>
  </node>
  <node concept="AxPO7" id="7bbTq01X5JX">
    <property role="TrG5h" value="task_type" />
    <property role="3lZH7k" value="derive_from_internal_value" />
    <property role="PDuV0" value="true" />
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
  <node concept="1TIwiD" id="1pFVOLkMnz4">
    <property role="EcuMT" value="1615648002461497540" />
    <property role="3GE5qa" value="initializers" />
    <property role="TrG5h" value="AbstractEstimatorInitialExpression" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="jqrd:1pFVOLkFKeb" resolve="AbstractTypeInitializator" />
  </node>
</model>

