<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a0b09593-26bd-4d75-98f1-657e49dea4f1(create.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="5" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="68mc" ref="r:2a10821d-612f-4a73-b7b0-ed6b57106321(com.mbeddr.mpsutil.filepicker.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="ja9q" ref="r:fc597f30-d1d1-4d82-975e-209a1fdb1f96(statements.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ" />
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
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
  <node concept="1TIwiD" id="4Z2dWAVu5W2">
    <property role="EcuMT" value="5747217414051356418" />
    <property role="TrG5h" value="CreateStatement" />
    <property role="34LRSv" value="create" />
    <property role="3GE5qa" value="" />
    <ref role="1TJDcQ" to="5frd:1UULepNJ9io" resolve="VariableDeclaration" />
    <node concept="PrWs8" id="4fxn4ASq4kt" role="PzmwI">
      <ref role="PrY4T" to="ja9q:4fxn4ASmiCo" resolve="IToplevelStatement" />
    </node>
  </node>
  <node concept="1TIwiD" id="1pFVOLkFKeb">
    <property role="EcuMT" value="1615648002459763595" />
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="AbstractTypeInitializator" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="hm2y:6sdnDbSla17" resolve="Expression" />
  </node>
  <node concept="1TIwiD" id="4Z2dWAVyuhq">
    <property role="EcuMT" value="5747217414052504666" />
    <property role="3GE5qa" value="fromFile" />
    <property role="TrG5h" value="AbstractLoaderExpression" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="hm2y:6sdnDbSla17" resolve="Expression" />
    <node concept="1TJgyj" id="4Z2dWAVyuJm" role="1TKVEi">
      <property role="IQ2ns" value="5747217414052506582" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="loader" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="4Z2dWAVvrX9" resolve="FileLoader" />
    </node>
  </node>
  <node concept="1TIwiD" id="7bbTq01XjrK">
    <property role="EcuMT" value="8271957615986423536" />
    <property role="3GE5qa" value="fromFile" />
    <property role="TrG5h" value="CreateFromFileInitialization" />
    <property role="34LRSv" value="from file" />
    <ref role="1TJDcQ" node="1pFVOLkFKeb" resolve="AbstractTypeInitializator" />
    <node concept="1TJgyj" id="7bbTq01Z0VP" role="1TKVEi">
      <property role="IQ2ns" value="8271957615986872053" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="loader" />
      <ref role="20lvS9" to="hm2y:6sdnDbSla17" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="4Z2dWAVvrX9">
    <property role="EcuMT" value="5747217414051708745" />
    <property role="3GE5qa" value="fromFile" />
    <property role="TrG5h" value="FileLoader" />
    <ref role="1TJDcQ" to="68mc:5lKnBeAxLdJ" resolve="SolutionRelativeFilePicker" />
    <node concept="1TJgyj" id="4Z2dWAVvS02" role="1TKVEi">
      <property role="IQ2ns" value="5747217414051823618" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="extensions" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" to="tpee:f$Xl_Og" resolve="StringLiteral" />
    </node>
  </node>
  <node concept="PlHQZ" id="4Z2dWAVu5W3">
    <property role="EcuMT" value="5747217414051356419" />
    <property role="TrG5h" value="ICanBeLoaded" />
    <property role="3GE5qa" value="fromFile" />
  </node>
</model>

