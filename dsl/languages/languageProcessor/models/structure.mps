<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e2c2b3d9-18ab-47eb-bfc6-892bc1ff2292(languageProcessor.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="5" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="jqrd" ref="r:a86b5aa2-977c-4dd4-975b-865365d5871c(types.structure)" />
    <import index="bxmu" ref="r:2caa4bf2-77af-43e0-8e72-8a12a8978a06(edit.structure)" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
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
  <node concept="1TIwiD" id="1wn8NGzgTkM">
    <property role="EcuMT" value="1735894918276289842" />
    <property role="TrG5h" value="LanguageProcessorType" />
    <property role="34LRSv" value="languageProcessor" />
    <ref role="1TJDcQ" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
    <node concept="PrWs8" id="1wn8NGzEKvS" role="PzmwI">
      <ref role="PrY4T" to="5frd:1UULepO1t7_" resolve="ISynchWithServer" />
    </node>
    <node concept="PrWs8" id="4IazLL4ihob" role="PzmwI">
      <ref role="PrY4T" to="bxmu:XZLIaPLIAc" resolve="ICanBeEdited" />
    </node>
  </node>
  <node concept="1TIwiD" id="1wn8NGzhudz">
    <property role="EcuMT" value="1735894918276440931" />
    <property role="TrG5h" value="LanguageProcessorEditor" />
    <ref role="1TJDcQ" to="bxmu:XZLIaPLIAd" resolve="AbstractTypeEditing" />
  </node>
  <node concept="1TIwiD" id="1wn8NGzrJ$t">
    <property role="EcuMT" value="1735894918279133469" />
    <property role="TrG5h" value="AbstractLanguageProcessorEditingStatement" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="editing" />
    <ref role="1TJDcQ" to="bxmu:7WePDBhhPDV" resolve="AbstractEditingStatment" />
  </node>
  <node concept="1TIwiD" id="1wn8NGzrJ$u">
    <property role="EcuMT" value="1735894918279133470" />
    <property role="3GE5qa" value="editing" />
    <property role="TrG5h" value="SetTokenizer" />
    <property role="34LRSv" value="set tokenizer" />
    <ref role="1TJDcQ" node="1wn8NGzrJ$t" resolve="AbstractLanguageProcessorEditingStatement" />
  </node>
  <node concept="1TIwiD" id="1wn8NGzrKUI">
    <property role="EcuMT" value="1735894918279138990" />
    <property role="3GE5qa" value="editing" />
    <property role="TrG5h" value="SetInflectionReduction" />
    <property role="34LRSv" value="set inflection reduction" />
    <ref role="1TJDcQ" node="1wn8NGzrJ$t" resolve="AbstractLanguageProcessorEditingStatement" />
  </node>
  <node concept="1TIwiD" id="1wn8NGzrL1A">
    <property role="EcuMT" value="1735894918279139430" />
    <property role="3GE5qa" value="editing" />
    <property role="TrG5h" value="SetStopwordRemoval" />
    <property role="34LRSv" value="set stopword removal" />
    <ref role="1TJDcQ" node="1wn8NGzrJ$t" resolve="AbstractLanguageProcessorEditingStatement" />
  </node>
</model>

