<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:65aadb5c-2f1e-4a2a-b988-9153ab74365c(string.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="5" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" />
    <import index="kxx6" ref="r:18feddd0-1a2e-4d91-891f-d1d27cf0d129(strList.structure)" />
    <import index="veum" ref="r:dd7856aa-5828-444c-bc87-c88a89a8bb82(wordlist.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="5qo5" ref="r:6d93ddb1-b0b0-4eee-8079-51303666672a(org.iets3.core.expr.simpleTypes.structure)" implicit="true" />
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
  <node concept="1TIwiD" id="58ojJcwsu23">
    <property role="EcuMT" value="5915564916679499907" />
    <property role="TrG5h" value="LengthOperation" />
    <property role="34LRSv" value="get length" />
    <property role="3GE5qa" value="length" />
    <ref role="1TJDcQ" node="7D1YCyB4a47" resolve="AbstractStringOp" />
    <node concept="1TJgyi" id="7WePDBgM91T" role="1TKVEl">
      <property role="IQ2nx" value="9155491048611942521" />
      <property role="TrG5h" value="measure" />
      <ref role="AX2Wp" node="7WePDBgM91O" resolve="length_measures" />
    </node>
  </node>
  <node concept="AxPO7" id="7WePDBgM91O">
    <property role="TrG5h" value="length_measures" />
    <property role="3GE5qa" value="length" />
    <ref role="M4eZT" to="tpck:fKAQMTA" resolve="integer" />
    <node concept="M4N5e" id="7WePDBgM91P" role="M5hS2">
      <property role="1uS6qo" value="character-count" />
      <property role="1uS6qv" value="0" />
    </node>
    <node concept="M4N5e" id="7WePDBgM91Q" role="M5hS2">
      <property role="1uS6qo" value="tokens-count" />
      <property role="1uS6qv" value="1" />
    </node>
  </node>
  <node concept="1TIwiD" id="7WePDBgMhw5">
    <property role="EcuMT" value="9155491048611977221" />
    <property role="TrG5h" value="StartsWithOp" />
    <property role="3GE5qa" value="correspondence" />
    <property role="34LRSv" value="startsWith" />
    <ref role="1TJDcQ" node="7D1YCyB4a47" resolve="AbstractStringOp" />
    <node concept="1TJgyj" id="7WePDBgMWZj" role="1TKVEi">
      <property role="IQ2ns" value="9155491048612155347" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="targetString" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="5qo5:4rZeNQ6OYR8" resolve="StringLiteral" />
    </node>
  </node>
  <node concept="1TIwiD" id="7WePDBgMhw8">
    <property role="EcuMT" value="9155491048611977224" />
    <property role="TrG5h" value="ContainsOp" />
    <property role="3GE5qa" value="correspondence" />
    <property role="34LRSv" value="contains" />
    <ref role="1TJDcQ" node="7D1YCyB4a47" resolve="AbstractStringOp" />
    <node concept="1TJgyj" id="7WePDBgMhwz" role="1TKVEi">
      <property role="IQ2ns" value="9155491048611977251" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="searchString" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="5qo5:4rZeNQ6OYR8" resolve="StringLiteral" />
    </node>
  </node>
  <node concept="1TIwiD" id="7WePDBgMhw9">
    <property role="EcuMT" value="9155491048611977225" />
    <property role="TrG5h" value="MatchesExpressionOp" />
    <property role="3GE5qa" value="correspondence" />
    <property role="34LRSv" value="matches" />
    <ref role="1TJDcQ" node="7D1YCyB4a47" resolve="AbstractStringOp" />
    <node concept="1TJgyi" id="7WePDBgMsLu" role="1TKVEl">
      <property role="IQ2nx" value="9155491048612023390" />
      <property role="TrG5h" value="targetExpression" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="7D1YCyB4a47">
    <property role="EcuMT" value="8809597810938781959" />
    <property role="TrG5h" value="AbstractStringOp" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7D1YCyB4a48" role="PzmwI">
      <ref role="PrY4T" to="5frd:CAhoO5jugf" resolve="IDotOperation" />
    </node>
  </node>
</model>

