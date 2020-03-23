<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:372863d1-da2c-4d51-9ce5-ef15e0220a9a(split.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="5" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="5qo5" ref="r:6d93ddb1-b0b0-4eee-8079-51303666672a(org.iets3.core.expr.simpleTypes.structure)" />
    <import index="ja9q" ref="r:fc597f30-d1d1-4d82-975e-209a1fdb1f96(statements.structure)" implicit="true" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="crj2MTJ7hd">
    <property role="EcuMT" value="223856361463379021" />
    <property role="TrG5h" value="SplitStatement" />
    <property role="34LRSv" value="split" />
    <ref role="1TJDcQ" to="ja9q:2t3FM7fJm6L" resolve="WriteTypeStatement" />
    <node concept="1TJgyj" id="crj2MTJa9j" role="1TKVEi">
      <property role="IQ2ns" value="223856361463390803" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="object" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="5frd:pBV22SMBK$" resolve="IProvideTypeObject" />
    </node>
    <node concept="1TJgyj" id="crj2MTK8yS" role="1TKVEi">
      <property role="IQ2ns" value="223856361463646392" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="parts" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="crj2MTJZed" resolve="PartStatement" />
    </node>
    <node concept="PrWs8" id="crj2MTWkLv" role="PzmwI">
      <ref role="PrY4T" to="5frd:crj2MTWkJA" resolve="IContainSublevelVariableDeclarations" />
    </node>
  </node>
  <node concept="PlHQZ" id="crj2MTJa9l">
    <property role="EcuMT" value="223856361463390805" />
    <property role="TrG5h" value="ICanBeSplit" />
  </node>
  <node concept="1TIwiD" id="crj2MTJZed">
    <property role="EcuMT" value="223856361463608205" />
    <property role="TrG5h" value="PartStatement" />
    <ref role="1TJDcQ" to="5frd:crj2MTMfPg" resolve="SublevelVariableDeclaration" />
    <node concept="1TJgyj" id="crj2MTKQut" role="1TKVEi">
      <property role="IQ2ns" value="223856361463834525" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="amount" />
      <ref role="20lvS9" to="5qo5:4rZeNQ6Oerq" resolve="NumberLiteral" />
    </node>
  </node>
</model>

