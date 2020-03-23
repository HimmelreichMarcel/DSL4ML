<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:50326754-7c36-4ed4-935b-c1c3ecb91979(list.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="wg1f" ref="r:11104845-93e0-4180-a3fa-727a6772438c(style.editor)" />
    <import index="fd7h" ref="r:e630b3ba-b212-41e3-8805-ab1676020fd2(list.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="9122903797312246523" name="jetbrains.mps.lang.editor.structure.StyleReference" flags="ng" index="1wgc9g">
        <reference id="9122903797312247166" name="style" index="1wgcnl" />
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
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1950447826681509042" name="jetbrains.mps.lang.editor.structure.ApplyStyleClass" flags="lg" index="3Xmtl4">
        <child id="1950447826683828796" name="target" index="3XvnJa" />
      </concept>
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="TC21X81t0d">
    <ref role="1XX52x" to="fd7h:NehizIbJ55" resolve="AsFeatureList" />
    <node concept="3EZMnI" id="NehizIbJ5_" role="2wV5jI">
      <node concept="3F0ifn" id="NehizIbJ5G" role="3EZMnx">
        <property role="3F0ifm" value="!(" />
        <node concept="11LMrY" id="4d9YXW2nq$m" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="5j$SRt4dror" role="3EZMnx">
        <ref role="1NtTu8" to="fd7h:5j$SRt4dqF_" resolve="selection" />
      </node>
      <node concept="3F0ifn" id="NehizIbJ5M" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="11L4FC" id="4d9YXW2nq$o" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="NehizIbJ5C" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1Ho6EEsArmc">
    <ref role="1XX52x" to="fd7h:40aEca_iBE6" resolve="AsFeatureColumn" />
    <node concept="3EZMnI" id="1Ho6EEsArmh" role="2wV5jI">
      <node concept="2iRfu4" id="1Ho6EEsArmi" role="2iSdaV" />
      <node concept="3F0ifn" id="1Ho6EEsArme" role="3EZMnx">
        <property role="3F0ifm" value="column" />
        <ref role="1k5W1q" to="wg1f:4fA_w_szsJF" resolve="column" />
      </node>
      <node concept="3F0ifn" id="1Ho6EEsArmq" role="3EZMnx">
        <property role="3F0ifm" value="[" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sAgAS" resolve="leftBracket" />
        <node concept="3Xmtl4" id="7ez2ynXaP1A" role="3F10Kt">
          <node concept="1wgc9g" id="7ez2ynXaP1E" role="3XvnJa">
            <ref role="1wgcnl" to="wg1f:4fA_w_szsJF" resolve="column" />
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="1Ho6EEsKdnP" role="3EZMnx">
        <ref role="1NtTu8" to="fd7h:1Ho6EEsAosU" resolve="feature" />
      </node>
      <node concept="3F0ifn" id="1Ho6EEsArmX" role="3EZMnx">
        <property role="3F0ifm" value="]" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sAgCG" resolve="rightBracket" />
        <node concept="3Xmtl4" id="7ez2ynXaP1H" role="3F10Kt">
          <node concept="1wgc9g" id="7ez2ynXaP1L" role="3XvnJa">
            <ref role="1wgcnl" to="wg1f:4fA_w_szsJF" resolve="column" />
          </node>
        </node>
        <node concept="VPxyj" id="55_guBAPzHk" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
</model>

