<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:651c6a0e-00ad-4599-a864-e42abff8dae9(languageProcessor.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="j8uj" ref="r:e2c2b3d9-18ab-47eb-bfc6-892bc1ff2292(languageProcessor.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="1wn8NGzhqdx">
    <ref role="1XX52x" to="j8uj:1wn8NGzgTkM" resolve="LanguageProcessorType" />
    <node concept="3F0ifn" id="1wn8NGzhqdz" role="2wV5jI">
      <property role="3F0ifm" value="languageProcessor" />
    </node>
  </node>
  <node concept="24kQdi" id="1wn8NGzrL6_">
    <property role="3GE5qa" value="editing" />
    <ref role="1XX52x" to="j8uj:1wn8NGzrL1A" resolve="SetStopwordRemoval" />
    <node concept="3EZMnI" id="1wn8NGzrL6B" role="2wV5jI">
      <node concept="3F0ifn" id="1wn8NGzrL6I" role="3EZMnx">
        <property role="3F0ifm" value="set stopword removal" />
      </node>
      <node concept="2iRfu4" id="1wn8NGzrL6E" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1wn8NGzrL7a">
    <property role="3GE5qa" value="editing" />
    <ref role="1XX52x" to="j8uj:1wn8NGzrKUI" resolve="SetInflectionReduction" />
    <node concept="3EZMnI" id="1wn8NGzrL7c" role="2wV5jI">
      <node concept="3F0ifn" id="1wn8NGzrL7j" role="3EZMnx">
        <property role="3F0ifm" value="set inflection reduction" />
      </node>
      <node concept="2iRfu4" id="1wn8NGzrL7f" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1wn8NGzrL7J">
    <property role="3GE5qa" value="editing" />
    <ref role="1XX52x" to="j8uj:1wn8NGzrJ$u" resolve="SetTokenizer" />
    <node concept="3EZMnI" id="1wn8NGzrL7L" role="2wV5jI">
      <node concept="3F0ifn" id="1wn8NGzrL7S" role="3EZMnx">
        <property role="3F0ifm" value="set tokenizer" />
      </node>
      <node concept="2iRfu4" id="1wn8NGzrL7O" role="2iSdaV" />
    </node>
  </node>
</model>

