<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c964cb74-f215-4302-9a62-b6e9b5c9382d(comment.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="tpc2" ref="r:00000000-0000-4000-0000-011c8959029e(jetbrains.mps.lang.editor.structure)" />
    <import index="5ueo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.editor.runtime.style(MPS.Editor/)" />
    <import index="wg1f" ref="r:11104845-93e0-4180-a3fa-727a6772438c(style.editor)" />
    <import index="gp8g" ref="r:a3c890d1-ba29-4628-8336-00501786ff69(comment.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="3KhNVPMZ9$L">
    <ref role="1XX52x" to="gp8g:3KhNVPMZ3DZ" resolve="ExplainationComment" />
    <node concept="3EZMnI" id="3KhNVPMZ9$N" role="2wV5jI">
      <node concept="3F0ifn" id="3KhNVPMZ9$U" role="3EZMnx">
        <property role="3F0ifm" value=" ! " />
        <ref role="1k5W1q" to="wg1f:3KhNVPMZP7N" resolve="comment_explaination" />
      </node>
      <node concept="3F0ifn" id="3KhNVPMZMri" role="3EZMnx">
        <property role="3F0ifm" value=" " />
        <node concept="11LMrY" id="3KhNVPMZNJT" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11L4FC" id="3KhNVPMZNJY" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3KhNVPMZL0u" role="3EZMnx">
        <property role="3F0ifm" value=" " />
        <ref role="1k5W1q" to="wg1f:3KhNVPMZP7N" resolve="comment_explaination" />
      </node>
      <node concept="3F0A7n" id="3KhNVPMZ9_4" role="3EZMnx">
        <ref role="1NtTu8" to="gp8g:3KhNVPMZ9$m" resolve="comment" />
        <ref role="1k5W1q" to="wg1f:3KhNVPMZP7N" resolve="comment_explaination" />
      </node>
      <node concept="3F0ifn" id="3KhNVPMZIpv" role="3EZMnx">
        <property role="3F0ifm" value=" " />
        <ref role="1k5W1q" to="wg1f:3KhNVPMZP7N" resolve="comment_explaination" />
      </node>
      <node concept="2iRfu4" id="3KhNVPMZ9$Q" role="2iSdaV" />
      <node concept="Vb9p2" id="3KhNVPMZs3X" role="3F10Kt">
        <property role="Vbekb" value="BOLD_ITALIC" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3KhNVPMZRHt">
    <ref role="1XX52x" to="gp8g:3KhNVPMZP_E" resolve="QuestionComment" />
    <node concept="3EZMnI" id="3KhNVPMZRHv" role="2wV5jI">
      <node concept="3F0ifn" id="3KhNVPMZRHw" role="3EZMnx">
        <property role="3F0ifm" value=" ? " />
        <ref role="1k5W1q" to="wg1f:3KhNVPMZCTJ" resolve="comment_question" />
      </node>
      <node concept="3F0ifn" id="3KhNVPMZRHx" role="3EZMnx">
        <property role="3F0ifm" value=" " />
        <node concept="11LMrY" id="3KhNVPMZRHy" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11L4FC" id="3KhNVPMZRHz" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3KhNVPMZRH$" role="3EZMnx">
        <property role="3F0ifm" value=" " />
        <ref role="1k5W1q" to="wg1f:3KhNVPMZCTJ" resolve="comment_question" />
      </node>
      <node concept="3F0A7n" id="3KhNVPMZRH_" role="3EZMnx">
        <ref role="1NtTu8" to="gp8g:3KhNVPMZP_F" resolve="comment" />
        <ref role="1k5W1q" to="wg1f:3KhNVPMZCTJ" resolve="comment_question" />
      </node>
      <node concept="3F0ifn" id="3KhNVPMZRHA" role="3EZMnx">
        <property role="3F0ifm" value=" " />
        <ref role="1k5W1q" to="wg1f:3KhNVPMZCTJ" resolve="comment_question" />
      </node>
      <node concept="2iRfu4" id="3KhNVPMZRHB" role="2iSdaV" />
      <node concept="Vb9p2" id="3KhNVPMZRHC" role="3F10Kt">
        <property role="Vbekb" value="BOLD_ITALIC" />
      </node>
    </node>
  </node>
</model>

