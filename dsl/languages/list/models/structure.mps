<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e630b3ba-b212-41e3-8805-ab1676020fd2(list.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="5" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="z82i" ref="r:0a2eb21f-fd0b-49b5-8a4c-2ff8b9d2f6c8(featuresEditing.structure)" />
    <import index="55s9" ref="r:349f01e8-2ba4-49f7-be71-679bbbf4b80d(features.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ" />
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="40aEca_iBE6">
    <property role="EcuMT" value="4614686322144737926" />
    <property role="TrG5h" value="AsFeatureColumn" />
    <property role="34LRSv" value="column" />
    <ref role="1TJDcQ" to="5frd:1Ho6EEsY2ow" resolve="PythonExpression" />
    <node concept="1TJgyj" id="1Ho6EEsAosU" role="1TKVEi">
      <property role="IQ2ns" value="1970354157048661818" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="feature" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" to="55s9:4O6zKM3EyR8" resolve="FeatureRef" />
    </node>
  </node>
  <node concept="1TIwiD" id="NehizIbJ55">
    <property role="EcuMT" value="922751015754592581" />
    <property role="TrG5h" value="AsFeatureList" />
    <property role="34LRSv" value="!()" />
    <ref role="1TJDcQ" to="5frd:1Ho6EEsY2ow" resolve="PythonExpression" />
    <node concept="1TJgyj" id="5j$SRt4dqF_" role="1TKVEi">
      <property role="IQ2ns" value="6117264295260957413" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="selection" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="55s9:6Quy7yTSu7D" resolve="FeatureSelection" />
    </node>
  </node>
  <node concept="PlHQZ" id="1pFVOLkDK8b">
    <property role="EcuMT" value="1615648002459238923" />
    <property role="TrG5h" value="IOperateOnColumns" />
  </node>
</model>

