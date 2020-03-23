<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fc597f30-d1d1-4d82-975e-209a1fdb1f96(statements.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="5" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="vs0r" ref="r:f7764ca4-8c75-4049-922b-08516400a727(com.mbeddr.core.base.structure)" />
    <import index="jqrd" ref="r:a86b5aa2-977c-4dd4-975b-865365d5871c(types.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ" />
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
  <node concept="1TIwiD" id="2t3FM7fJm6J">
    <property role="EcuMT" value="2829297550672880047" />
    <property role="3GE5qa" value="statements.type" />
    <property role="TrG5h" value="TypeRelatedStatement" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" node="6pyCRNQL2EL" resolve="AbstractStatement" />
    <node concept="PrWs8" id="2t3FM7fJm6N" role="PzmwI">
      <ref role="PrY4T" to="hm2y:6KxoTHgLv_I" resolve="IMayHaveEffect" />
    </node>
  </node>
  <node concept="1TIwiD" id="2t3FM7fJm6K">
    <property role="EcuMT" value="2829297550672880048" />
    <property role="3GE5qa" value="statements.type" />
    <property role="TrG5h" value="ProvideTypeStatement" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" node="2t3FM7fJm6J" resolve="TypeRelatedStatement" />
  </node>
  <node concept="1TIwiD" id="2t3FM7fJm6L">
    <property role="EcuMT" value="2829297550672880049" />
    <property role="3GE5qa" value="statements.type" />
    <property role="TrG5h" value="WriteTypeStatement" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" node="2t3FM7fJm6J" resolve="TypeRelatedStatement" />
  </node>
  <node concept="1TIwiD" id="2t3FM7fJm6M">
    <property role="EcuMT" value="2829297550672880050" />
    <property role="3GE5qa" value="statements.type" />
    <property role="TrG5h" value="ReadTypeStatement" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" node="2t3FM7fJm6J" resolve="TypeRelatedStatement" />
  </node>
  <node concept="1TIwiD" id="6pyCRNQL2EL">
    <property role="EcuMT" value="7377638896697617073" />
    <property role="TrG5h" value="AbstractStatement" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="" />
    <ref role="1TJDcQ" to="hm2y:6sdnDbSla17" resolve="Expression" />
    <node concept="1TJgyj" id="6pyCRNR1bO4" role="1TKVEi">
      <property role="IQ2ns" value="7377638896701848836" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="objectAtPosition" />
      <ref role="20lvS9" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
    </node>
    <node concept="1TJgyi" id="4k$35jY17_C" role="1TKVEl">
      <property role="IQ2nx" value="4982120646957103464" />
      <property role="TrG5h" value="relativeId" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="4rZ4tH4gay7">
    <property role="EcuMT" value="5115827335156770951" />
    <property role="3GE5qa" value="statements.structure" />
    <property role="TrG5h" value="EmptyStatement" />
    <property role="34LRSv" value="empty statement" />
    <ref role="1TJDcQ" node="4rZ4tH4gay8" resolve="VisibleStructureStatement" />
    <node concept="PrWs8" id="4rZ4tH4gay9" role="PzmwI">
      <ref role="PrY4T" to="vs0r:Ug1QzfhXN3" resolve="IEmpty" />
    </node>
    <node concept="PrWs8" id="4rZ4tH4gaye" role="PzmwI">
      <ref role="PrY4T" to="hm2y:YXKE79ImBi" resolve="IWantNewLine" />
    </node>
  </node>
  <node concept="1TIwiD" id="4rZ4tH4gay8">
    <property role="EcuMT" value="5115827335156770952" />
    <property role="3GE5qa" value="statements.structure" />
    <property role="TrG5h" value="VisibleStructureStatement" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" node="6pyCRNQL2EL" resolve="AbstractStatement" />
    <node concept="PrWs8" id="4fxn4ASpRha" role="PzmwI">
      <ref role="PrY4T" node="4fxn4ASmiCo" resolve="IToplevelStatement" />
    </node>
    <node concept="PrWs8" id="3KhNVPMZtTu" role="PzmwI">
      <ref role="PrY4T" to="hm2y:6KxoTHgLv_I" resolve="IMayHaveEffect" />
    </node>
  </node>
  <node concept="PlHQZ" id="4fxn4ASmiCo">
    <property role="EcuMT" value="4891292141996288536" />
    <property role="TrG5h" value="IToplevelStatement" />
  </node>
</model>

