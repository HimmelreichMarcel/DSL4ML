<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:18feddd0-1a2e-4d91-891f-d1d27cf0d129(strList.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="5" />
  </languages>
  <imports>
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" />
    <import index="tpbt" ref="r:65aadb5c-2f1e-4a2a-b988-9153ab74365c(string.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="fd7h" ref="r:e630b3ba-b212-41e3-8805-ab1676020fd2(list.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1082978164219" name="jetbrains.mps.lang.structure.structure.EnumerationDataTypeDeclaration" flags="ng" index="AxPO7">
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
  <node concept="1TIwiD" id="3$o$AJ1iMj3">
    <property role="EcuMT" value="4114199251105031363" />
    <property role="TrG5h" value="JoinOperation" />
    <property role="34LRSv" value="join" />
    <ref role="1TJDcQ" node="7D1YCyB465l" resolve="AbstractStringlistOperation" />
    <node concept="1TJgyj" id="3$o$AJ1iMj4" role="1TKVEi">
      <property role="IQ2ns" value="4114199251105031364" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="str" />
      <ref role="20lvS9" to="tpee:f$Xl_Og" resolve="StringLiteral" />
    </node>
  </node>
  <node concept="1TIwiD" id="7D1YCyB465l">
    <property role="EcuMT" value="8809597810938765653" />
    <property role="TrG5h" value="AbstractStringlistOperation" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7D1YCyB465m" role="PzmwI">
      <ref role="PrY4T" to="5frd:CAhoO5jugf" resolve="IDotOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="1pYj3$cR9Ir">
    <property role="EcuMT" value="1620816723812588443" />
    <property role="TrG5h" value="EncodeLabelsOperation" />
    <property role="34LRSv" value="encode labels" />
    <property role="3GE5qa" value="encoding" />
    <ref role="1TJDcQ" node="7D1YCyB465l" resolve="AbstractStringlistOperation" />
    <node concept="1TJgyi" id="1pYj3$cR9Sb" role="1TKVEl">
      <property role="IQ2nx" value="1620816723812589067" />
      <property role="TrG5h" value="measure" />
      <ref role="AX2Wp" node="1pYj3$cR9Ry" resolve="encoding_measure" />
    </node>
    <node concept="PrWs8" id="1pFVOLkE5K$" role="PzmwI">
      <ref role="PrY4T" to="fd7h:1pFVOLkDK8b" resolve="IOperateOnColumns" />
    </node>
    <node concept="PrWs8" id="1pFVOLkEo1o" role="PzmwI">
      <ref role="PrY4T" to="5frd:1pFVOLkE9h9" resolve="ICannotBeFurtherEdited" />
    </node>
  </node>
  <node concept="AxPO7" id="1pYj3$cR9Ry">
    <property role="3GE5qa" value="encoding" />
    <property role="TrG5h" value="encoding_measure" />
    <ref role="M4eZT" to="tpck:fKAQMTA" resolve="integer" />
    <node concept="M4N5e" id="1pYj3$cR9Rz" role="M5hS2">
      <property role="1uS6qo" value="single column" />
      <property role="1uS6qv" value="0" />
    </node>
    <node concept="M4N5e" id="1pYj3$cR9R$" role="M5hS2">
      <property role="1uS6qo" value="column per value" />
      <property role="1uS6qv" value="1" />
    </node>
  </node>
</model>

