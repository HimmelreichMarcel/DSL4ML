<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0a2eb21f-fd0b-49b5-8a4c-2ff8b9d2f6c8(featuresEditing.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="5" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="55s9" ref="r:349f01e8-2ba4-49f7-be71-679bbbf4b80d(features.structure)" />
    <import index="4kwy" ref="r:657c9fde-2f36-4e61-ae17-20f02b8630ad(org.iets3.core.base.structure)" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" />
    <import index="jqrd" ref="r:a86b5aa2-977c-4dd4-975b-865365d5871c(types.structure)" />
    <import index="veum" ref="r:dd7856aa-5828-444c-bc87-c88a89a8bb82(wordlist.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1082978164219" name="jetbrains.mps.lang.structure.structure.EnumerationDataTypeDeclaration" flags="ng" index="AxPO7">
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
  <node concept="1TIwiD" id="5TCgtqdzv5u">
    <property role="EcuMT" value="6802759626896830814" />
    <property role="TrG5h" value="FeaturesetComposition" />
    <property role="34LRSv" value="compose" />
    <property role="3GE5qa" value="composition" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="5frd:1UULepNJ9io" resolve="VariableDeclaration" />
    <node concept="1TJgyj" id="2I8Ps5NdH6Y" role="1TKVEi">
      <property role="IQ2ns" value="3136992167301927358" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="featuresets" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" to="5frd:pBV22SMBK$" resolve="IProvideTypeObject" />
    </node>
    <node concept="PrWs8" id="5TCgtqdzv6f" role="PzmwI">
      <ref role="PrY4T" to="4kwy:cJpacq5T0O" resolve="IValidNamedConcept" />
    </node>
    <node concept="1TJgyj" id="5TCgtqdzE1L" role="1TKVEi">
      <property role="IQ2ns" value="6802759626896875633" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="jointFeatures" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="5TCgtqdAnQi" resolve="JointFeatureStatement" />
    </node>
    <node concept="1TJgyj" id="2I8Ps5Ng5dZ" role="1TKVEi">
      <property role="IQ2ns" value="3136992167302550399" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="composeFeatures" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="2I8Ps5Ng5cV" resolve="SelectExpr" />
    </node>
    <node concept="1TJgyi" id="5TCgtqdAHML" role="1TKVEl">
      <property role="IQ2nx" value="6802759626897677489" />
      <property role="TrG5h" value="detectJointFeature" />
      <ref role="AX2Wp" node="2I8Ps5NdH71" resolve="JointMethod" />
    </node>
    <node concept="1TJgyi" id="2I8Ps5NeWfu" role="1TKVEl">
      <property role="IQ2nx" value="3136992167302251486" />
      <property role="TrG5h" value="selectAll" />
      <ref role="AX2Wp" node="2I8Ps5NeWfx" resolve="SelectMethod" />
    </node>
  </node>
  <node concept="1TIwiD" id="5TCgtqdAnQi">
    <property role="EcuMT" value="6802759626897587602" />
    <property role="3GE5qa" value="composition" />
    <property role="TrG5h" value="JointFeatureStatement" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4x_I0nqn5VX" role="1TKVEi">
      <property role="IQ2ns" value="5216778078656421629" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="featureset" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" to="5frd:pBV22SMBK$" resolve="IProvideTypeObject" />
    </node>
    <node concept="1TJgyj" id="5TCgtqdAnQl" role="1TKVEi">
      <property role="IQ2ns" value="6802759626897587605" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="jointFeature" />
      <ref role="20lvS9" to="55s9:4O6zKM3EyR8" resolve="FeatureRef" />
    </node>
  </node>
  <node concept="AxPO7" id="2I8Ps5NdH71">
    <property role="3GE5qa" value="composition" />
    <property role="TrG5h" value="JointMethod" />
    <property role="3lZH7k" value="derive_from_internal_value" />
    <ref role="M4eZT" to="tpck:fKAQMTB" resolve="boolean" />
    <node concept="M4N5e" id="2I8Ps5NdH72" role="M5hS2">
      <property role="1uS6qo" value="auto-detect" />
      <property role="1uS6qv" value="true" />
    </node>
    <node concept="M4N5e" id="2I8Ps5NdH73" role="M5hS2">
      <property role="1uS6qv" value="false" />
      <property role="1uS6qo" value="manually" />
    </node>
  </node>
  <node concept="AxPO7" id="2I8Ps5NeWfx">
    <property role="3GE5qa" value="composition" />
    <property role="TrG5h" value="SelectMethod" />
    <property role="3lZH7k" value="derive_from_internal_value" />
    <ref role="M4eZT" to="tpck:fKAQMTB" resolve="boolean" />
    <node concept="M4N5e" id="2I8Ps5NeWfy" role="M5hS2">
      <property role="1uS6qo" value="all" />
      <property role="1uS6qv" value="true" />
    </node>
    <node concept="M4N5e" id="2I8Ps5NeWfz" role="M5hS2">
      <property role="1uS6qv" value="false" />
      <property role="1uS6qo" value="manually" />
    </node>
  </node>
  <node concept="1TIwiD" id="2I8Ps5Ng5cV">
    <property role="EcuMT" value="3136992167302550331" />
    <property role="3GE5qa" value="composition" />
    <property role="TrG5h" value="SelectExpr" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4x_I0nqoBjN" role="1TKVEi">
      <property role="IQ2ns" value="5216778078656820467" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="featureset" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" to="5frd:pBV22SMBK$" resolve="IProvideTypeObject" />
    </node>
    <node concept="1TJgyj" id="5A1koKOPwsJ" role="1TKVEi">
      <property role="IQ2ns" value="6449525803994973999" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="features" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="55s9:6Quy7yTSu7D" resolve="FeatureSelection" />
    </node>
  </node>
</model>

