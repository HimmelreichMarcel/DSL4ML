<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cf10e997-faad-4278-8cbd-5db80ba5ed98(strList.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
    <use id="9d69e719-78c8-4286-90db-fb19c107d049" name="com.mbeddr.mpsutil.grammarcells" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="wg1f" ref="r:11104845-93e0-4180-a3fa-727a6772438c(style.editor)" />
    <import index="kxx6" ref="r:18feddd0-1a2e-4d91-891f-d1d27cf0d129(strList.structure)" implicit="true" />
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
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
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
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="9d69e719-78c8-4286-90db-fb19c107d049" name="com.mbeddr.mpsutil.grammarcells">
      <concept id="5083944728298846680" name="com.mbeddr.mpsutil.grammarcells.structure.OptionalCell" flags="ng" index="_tjkj">
        <child id="5083944728298846681" name="option" index="_tjki" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="3$o$AJ1iMjz">
    <ref role="1XX52x" to="kxx6:3$o$AJ1iMj3" resolve="JoinOperation" />
    <node concept="3EZMnI" id="3$o$AJ1iMj_" role="2wV5jI">
      <node concept="3F0ifn" id="3$o$AJ1iMjJ" role="3EZMnx">
        <property role="3F0ifm" value="join" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="_tjkj" id="3$o$AJ1iMjY" role="3EZMnx">
        <node concept="3EZMnI" id="3$o$AJ1iMk8" role="_tjki">
          <node concept="3F0ifn" id="3$o$AJ1iMkl" role="3EZMnx">
            <property role="3F0ifm" value="using" />
            <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
          </node>
          <node concept="3F1sOY" id="3$o$AJ1iMku" role="3EZMnx">
            <ref role="1NtTu8" to="kxx6:3$o$AJ1iMj4" resolve="str" />
          </node>
          <node concept="2iRfu4" id="3$o$AJ1iMkb" role="2iSdaV" />
          <node concept="VPM3Z" id="3$o$AJ1iMkc" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="3$o$AJ1iMjC" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1pYj3$cR9S6">
    <property role="3GE5qa" value="encoding" />
    <ref role="1XX52x" to="kxx6:1pYj3$cR9Ir" resolve="EncodeLabelsOperation" />
    <node concept="3EZMnI" id="1pYj3$cR9Sd" role="2wV5jI">
      <node concept="2iRfu4" id="1pYj3$cR9Se" role="2iSdaV" />
      <node concept="3F0ifn" id="1pYj3$cR9S8" role="3EZMnx">
        <property role="3F0ifm" value="encode labels" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="_tjkj" id="1pYj3$cRbkn" role="3EZMnx">
        <node concept="3EZMnI" id="1pYj3$cWpAO" role="_tjki">
          <node concept="2iRfu4" id="1pYj3$cWpAP" role="2iSdaV" />
          <node concept="3F0ifn" id="1pYj3$cRbku" role="3EZMnx">
            <property role="3F0ifm" value="using" />
            <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
          </node>
          <node concept="3F0A7n" id="1pYj3$cR9Sm" role="3EZMnx">
            <ref role="1NtTu8" to="kxx6:1pYj3$cR9Sb" resolve="measure" />
            <ref role="1k5W1q" to="wg1f:4fA_w_sHaIY" resolve="option" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

