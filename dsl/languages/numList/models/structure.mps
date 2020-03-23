<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4eb8b9d8-1029-4a92-95e3-99ee93716939(numList.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="5" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" />
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
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="46b_jc7UmHw">
    <property role="EcuMT" value="4723032680636705632" />
    <property role="TrG5h" value="AverageOp" />
    <property role="34LRSv" value="get average" />
    <ref role="1TJDcQ" node="3CO1ndsWVnj" resolve="AbstractNumberlistOp" />
    <node concept="1TJgyi" id="46b_jc7UmKG" role="1TKVEl">
      <property role="IQ2nx" value="4723032680636705836" />
      <property role="TrG5h" value="avgType" />
      <ref role="AX2Wp" node="46b_jc7UmKJ" resolve="avg_type" />
    </node>
  </node>
  <node concept="AxPO7" id="46b_jc7UmKJ">
    <property role="TrG5h" value="avg_type" />
    <property role="3lZH7k" value="derive_from_internal_value" />
    <ref role="M4eZT" to="tpck:fKAQMTA" resolve="integer" />
    <node concept="M4N5e" id="46b_jc7UmKK" role="M5hS2">
      <property role="1uS6qo" value="mean (arith)" />
      <property role="1uS6qv" value="0" />
    </node>
    <node concept="M4N5e" id="46b_jc7UmKQ" role="M5hS2">
      <property role="1uS6qo" value="median" />
      <property role="1uS6qv" value="1" />
    </node>
  </node>
  <node concept="1TIwiD" id="3CO1ndsWVnj">
    <property role="EcuMT" value="4193983146027627987" />
    <property role="TrG5h" value="AbstractNumberlistOp" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <node concept="PrWs8" id="3CO1ndsWVnk" role="PzmwI">
      <ref role="PrY4T" to="5frd:CAhoO5jugf" resolve="IDotOperation" />
    </node>
  </node>
</model>

