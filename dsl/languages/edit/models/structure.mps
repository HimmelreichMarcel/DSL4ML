<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2caa4bf2-77af-43e0-8e72-8a12a8978a06(edit.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="5" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" />
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="XZLIaPLIoZ">
    <property role="EcuMT" value="1116829909625792063" />
    <property role="TrG5h" value="EditStatement" />
    <property role="34LRSv" value="edit" />
    <ref role="1TJDcQ" to="ja9q:2t3FM7fJm6L" resolve="WriteTypeStatement" />
    <node concept="1TJgyj" id="XZLIaPLIpf" role="1TKVEi">
      <property role="IQ2ns" value="1116829909625792079" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="object" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="5frd:pBV22SMBK$" resolve="IProvideTypeObject" />
    </node>
    <node concept="1TJgyj" id="XZLIaPN1sb" role="1TKVEi">
      <property role="IQ2ns" value="1116829909626132235" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="XZLIaPLIAd" resolve="AbstractTypeEditing" />
    </node>
    <node concept="PrWs8" id="4fxn4ASpR$x" role="PzmwI">
      <ref role="PrY4T" to="ja9q:4fxn4ASmiCo" resolve="IToplevelStatement" />
    </node>
  </node>
  <node concept="PlHQZ" id="XZLIaPLIAc">
    <property role="EcuMT" value="1116829909625792908" />
    <property role="TrG5h" value="ICanBeEdited" />
  </node>
  <node concept="1TIwiD" id="XZLIaPLIAd">
    <property role="EcuMT" value="1116829909625792909" />
    <property role="TrG5h" value="AbstractTypeEditing" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="ja9q:6pyCRNQL2EL" resolve="AbstractStatement" />
    <node concept="1TJgyj" id="1wn8NGzhv9i" role="1TKVEi">
      <property role="IQ2ns" value="1735894918276444754" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="body" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="7WePDBhhPDV" resolve="AbstractEditingStatment" />
    </node>
  </node>
  <node concept="1TIwiD" id="7WePDBhhPDV">
    <property role="EcuMT" value="9155491048620251771" />
    <property role="TrG5h" value="AbstractEditingStatment" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="ja9q:6pyCRNQL2EL" resolve="AbstractStatement" />
    <node concept="PrWs8" id="LOMntzS57d" role="PzmwI">
      <ref role="PrY4T" to="5frd:LOMntzS55L" resolve="IMayAlterServer" />
    </node>
  </node>
</model>

