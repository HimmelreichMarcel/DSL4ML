<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d14b83e6-d738-4a09-82b2-fc22620126d4(composition.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="5" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="elym" ref="92f195b6-a209-4804-ad65-f5248ecd5873/r:ab11cd4e-3f49-4307-8d3a-82afd3a5de48(com.mbeddr.mpsutil.margincell/com.mbeddr.mpsutil.margincell.structure)" />
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
        <property id="1096454100552" name="rootable" index="19KtqR" />
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
  <node concept="1TIwiD" id="wb0I6Vb7D5">
    <property role="EcuMT" value="579560145578392133" />
    <property role="TrG5h" value="ArtifactDescription" />
    <property role="19KtqR" value="true" />
    <property role="3GE5qa" value="artifactDescription" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="4T0MB1XbEo9" role="1TKVEl">
      <property role="IQ2nx" value="5638729317953218057" />
      <property role="TrG5h" value="path" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="XZk_44NpAT" role="1TKVEl">
      <property role="IQ2nx" value="1116701740537584057" />
      <property role="TrG5h" value="shortname" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="wb0I6VbEIe" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="wb0I6Vd19D" role="1TKVEl">
      <property role="IQ2nx" value="579560145578889833" />
      <property role="TrG5h" value="childrenType" />
      <ref role="AX2Wp" node="wb0I6Vdi5n" resolve="children_type" />
    </node>
    <node concept="1TJgyj" id="4T0MB1Xf65x" role="1TKVEi">
      <property role="IQ2ns" value="5638729317954117985" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="mandatory" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="4T0MB1Xf65_" resolve="DirectChildRef" />
    </node>
    <node concept="1TJgyj" id="4x6uVBKxmWb" role="1TKVEi">
      <property role="IQ2ns" value="5207986057635000075" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="required" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="4x6uVBKx3sp" resolve="NoDescendentRef" />
    </node>
    <node concept="1TJgyj" id="4x6uVBKxmWx" role="1TKVEi">
      <property role="IQ2ns" value="5207986057635000097" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="excluded" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="4x6uVBKx3sp" resolve="NoDescendentRef" />
    </node>
    <node concept="1TJgyj" id="4T0MB1XdSHH" role="1TKVEi">
      <property role="IQ2ns" value="5638729317953801069" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="parent" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="wb0I6Vb7D5" resolve="ArtifactDescription" />
    </node>
  </node>
  <node concept="1TIwiD" id="4T0MB1Xf65_">
    <property role="EcuMT" value="5638729317954117989" />
    <property role="TrG5h" value="DirectChildRef" />
    <property role="3GE5qa" value="artifactDescription" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2qK8RKEIZEL" role="1TKVEi">
      <property role="IQ2ns" value="2787767185542216369" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="ref" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="wb0I6Vb7D5" resolve="ArtifactDescription" />
    </node>
  </node>
  <node concept="1TIwiD" id="4x6uVBKx3sp">
    <property role="EcuMT" value="5207986057634920217" />
    <property role="TrG5h" value="NoDescendentRef" />
    <property role="3GE5qa" value="artifactDescription" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2qK8RKEIZFt" role="1TKVEi">
      <property role="IQ2ns" value="2787767185542216413" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="ref" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="wb0I6Vb7D5" resolve="ArtifactDescription" />
    </node>
  </node>
  <node concept="AxPO7" id="wb0I6Vdi5n">
    <property role="TrG5h" value="children_type" />
    <property role="3GE5qa" value="artifactDescription" />
    <property role="3lZH7k" value="derive_from_internal_value" />
    <ref role="M4eZT" to="tpck:fKAOsGN" resolve="string" />
    <node concept="M4N5e" id="wb0I6Vdi5o" role="M5hS2">
      <property role="1uS6qv" value="ind" />
      <property role="1uS6qo" value="independent" />
    </node>
    <node concept="M4N5e" id="wb0I6Vdi5p" role="M5hS2">
      <property role="1uS6qo" value="n-of-m" />
      <property role="1uS6qv" value="or" />
    </node>
    <node concept="M4N5e" id="wb0I6Vdi5s" role="M5hS2">
      <property role="1uS6qo" value="1-of-m" />
      <property role="1uS6qv" value="xor" />
    </node>
  </node>
  <node concept="1TIwiD" id="wb0I6Vg0ao">
    <property role="EcuMT" value="579560145579672216" />
    <property role="3GE5qa" value="artifactsTree" />
    <property role="TrG5h" value="AbstractArtifactNode" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="2SikScA6xUZ" role="1TKVEl">
      <property role="IQ2nx" value="3319807698070544063" />
      <property role="TrG5h" value="isPrerequisited" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="6I9RXT7Mc2" role="1TKVEl">
      <property role="IQ2nx" value="121077668431995650" />
      <property role="TrG5h" value="isSelected" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="ww5GvfIUTN" role="1TKVEl">
      <property role="IQ2nx" value="585492998997651059" />
      <property role="TrG5h" value="isMandatoryChild" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="2qK8RKECpC$" role="1TKVEl">
      <property role="IQ2nx" value="2787767185540487716" />
      <property role="TrG5h" value="path" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="2qK8RKECpCE" role="1TKVEl">
      <property role="IQ2nx" value="2787767185540487722" />
      <property role="TrG5h" value="shortname" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="4x6uVBKzUAz" role="1TKVEi">
      <property role="IQ2ns" value="5207986057635670435" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="childNodes" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="wb0I6Vg0ao" resolve="AbstractArtifactNode" />
    </node>
    <node concept="1TJgyj" id="2qK8RKEC3$n" role="1TKVEi">
      <property role="IQ2ns" value="2787767185540397335" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="mandatory" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="2qK8RKEBS5B" resolve="ArtifactNodeRef" />
    </node>
    <node concept="1TJgyj" id="2qK8RKEC3$o" role="1TKVEi">
      <property role="IQ2ns" value="2787767185540397336" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="required" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="2qK8RKEBS5B" resolve="ArtifactNodeRef" />
    </node>
    <node concept="1TJgyj" id="2qK8RKEC3$p" role="1TKVEi">
      <property role="IQ2ns" value="2787767185540397337" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="excluded" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="2qK8RKEBS5B" resolve="ArtifactNodeRef" />
    </node>
  </node>
  <node concept="1TIwiD" id="wb0I6Vg0b5">
    <property role="EcuMT" value="579560145579672261" />
    <property role="3GE5qa" value="artifactsTree" />
    <property role="TrG5h" value="ArtifactNode1M" />
    <ref role="1TJDcQ" node="wb0I6Vg0ao" resolve="AbstractArtifactNode" />
  </node>
  <node concept="1TIwiD" id="wb0I6Vg0ar">
    <property role="EcuMT" value="579560145579672219" />
    <property role="3GE5qa" value="artifactsTree" />
    <property role="TrG5h" value="ArtifactNodeIndep" />
    <ref role="1TJDcQ" node="wb0I6Vg0ao" resolve="AbstractArtifactNode" />
  </node>
  <node concept="1TIwiD" id="wb0I6Vg0b4">
    <property role="EcuMT" value="579560145579672260" />
    <property role="3GE5qa" value="artifactsTree" />
    <property role="TrG5h" value="ArtifactNodeNM" />
    <ref role="1TJDcQ" node="wb0I6Vg0ao" resolve="AbstractArtifactNode" />
  </node>
  <node concept="1TIwiD" id="2qK8RKEBS5B">
    <property role="EcuMT" value="2787767185540350311" />
    <property role="TrG5h" value="ArtifactNodeRef" />
    <property role="3GE5qa" value="artifactsTree" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2qK8RKEBS5C" role="1TKVEi">
      <property role="IQ2ns" value="2787767185540350312" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="ref" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="wb0I6Vg0ao" resolve="AbstractArtifactNode" />
    </node>
  </node>
  <node concept="1TIwiD" id="4mwbOhsXrAp">
    <property role="EcuMT" value="5017061955554621849" />
    <property role="TrG5h" value="ArtifactsTree" />
    <property role="34LRSv" value="create feature set" />
    <property role="3GE5qa" value="artifactsTree" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="wb0I6Vg0al" role="1TKVEi">
      <property role="IQ2ns" value="579560145579672213" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="root" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="wb0I6Vg0ao" resolve="AbstractArtifactNode" />
    </node>
    <node concept="1TJgyi" id="7r$Cpd5VOh_" role="1TKVEl">
      <property role="IQ2nx" value="8567150045071098981" />
      <property role="TrG5h" value="error" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
</model>

