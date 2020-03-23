<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5ffeb7a2-fca9-448b-9156-392cdf572cb0(base.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="amyc" ref="r:999800c2-1941-4cf0-8fc5-d15eb2e8e3d8(base.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="na62" ref="r:00f9bb1b-55b4-4779-85b7-20858121b8dd(rootfile.editor)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
      </concept>
      <concept id="1186413799158" name="jetbrains.mps.lang.editor.structure.BracketColorStyleClassItem" flags="ln" index="VLuvy" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1219226236603" name="jetbrains.mps.lang.editor.structure.DrawBracketsStyleClassItem" flags="ln" index="3vyZuw" />
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
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
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
  <node concept="24kQdi" id="fN3qU6G$x2">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="amyc:fN3qU6G$wA" resolve="AddFeatureExpr" />
    <node concept="3EZMnI" id="fN3qU6G$x4" role="2wV5jI">
      <node concept="3F0ifn" id="fN3qU6G$xb" role="3EZMnx">
        <property role="3F0ifm" value="add" />
      </node>
      <node concept="3F0ifn" id="fN3qU6G$xh" role="3EZMnx">
        <property role="3F0ifm" value="feature" />
      </node>
      <node concept="3F0A7n" id="fN3qU6G$xw" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="fN3qU6G$xE" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="11L4FC" id="1zQNQW5jNH5" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="fN3qU6G$yp" role="3EZMnx">
        <ref role="1NtTu8" to="amyc:fN3qU6G$yn" resolve="expr" />
      </node>
      <node concept="2iRfu4" id="fN3qU6G$x7" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3RQ8TRgF$0o">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="amyc:3RQ8TRgFzZU" resolve="DeleteFeatureExpr" />
    <node concept="3EZMnI" id="3RQ8TRgF$0t" role="2wV5jI">
      <node concept="3F0ifn" id="3RQ8TRgF$0v" role="3EZMnx">
        <property role="3F0ifm" value="delete" />
      </node>
      <node concept="3F1sOY" id="3RQ8TRgFRdL" role="3EZMnx">
        <ref role="1NtTu8" to="amyc:3RQ8TRgFRdF" resolve="feature" />
      </node>
      <node concept="2iRfu4" id="3RQ8TRgF$0w" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="fN3qU6G$yc">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="amyc:fN3qU6G$xK" resolve="FeatureEditionExpression" />
    <node concept="3EZMnI" id="506RQlN1htZ" role="2wV5jI">
      <node concept="3F0ifn" id="506RQlN1hug" role="3EZMnx">
        <property role="3F0ifm" value="[" />
        <node concept="11LMrY" id="1zQNQW5jOlZ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="506RQlN1hu8" role="3EZMnx">
        <ref role="1NtTu8" to="amyc:506RQlN1hsn" resolve="typestring" />
        <ref role="1k5W1q" to="na62:38ogk7FTaNh" resolve="filepath" />
      </node>
      <node concept="3F0ifn" id="506RQlN1huq" role="3EZMnx">
        <property role="3F0ifm" value="]" />
        <node concept="11L4FC" id="1zQNQW5jOm1" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="506RQlN1hu0" role="2iSdaV" />
      <node concept="3F1sOY" id="fN3qU6G$ye" role="3EZMnx">
        <ref role="1NtTu8" to="amyc:fN3qU6G$xL" resolve="expression" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3RQ8TRgEYfG">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="amyc:3RQ8TRgEYfg" resolve="FeaturesetEditorBlock" />
    <node concept="3EZMnI" id="3RQ8TRgEYfR" role="2wV5jI">
      <node concept="3F0ifn" id="3RQ8TRgEYfY" role="3EZMnx">
        <property role="3F0ifm" value="edit" />
        <ref role="1k5W1q" to="na62:38ogk7FQpJU" resolve="code" />
      </node>
      <node concept="3F1sOY" id="3RQ8TRgFi7i" role="3EZMnx">
        <ref role="1NtTu8" to="amyc:3RQ8TRgFh8V" resolve="featureset" />
        <ref role="1k5W1q" to="na62:38ogk7FQG9l" resolve="varname" />
      </node>
      <node concept="3F0ifn" id="3RQ8TRgEYgn" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="ljvvj" id="3RQ8TRgEYgu" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="NehizIbIdF" role="3EZMnx">
        <node concept="2iRfu4" id="NehizIbIdG" role="2iSdaV" />
        <node concept="3F2HdR" id="3RQ8TRgEYh6" role="3EZMnx">
          <ref role="1NtTu8" to="amyc:3RQ8TRgEYh2" resolve="body" />
          <node concept="l2Vlx" id="3RQ8TRgEYh8" role="2czzBx" />
          <node concept="pj6Ft" id="3RQ8TRgEYhj" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3vyZuw" id="NehizIawCo" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="VLuvy" id="NehizIaxgB" role="3F10Kt">
            <property role="Vb096" value="gray" />
          </node>
        </node>
        <node concept="3F0ifn" id="NehizIbIe4" role="3EZMnx">
          <property role="3F0ifm" value="" />
        </node>
      </node>
      <node concept="l2Vlx" id="3RQ8TRgEYfU" role="2iSdaV" />
    </node>
  </node>
</model>

