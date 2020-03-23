<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:05671352-acc6-4059-9d1e-b505260133ee(string.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
    <use id="9d69e719-78c8-4286-90db-fb19c107d049" name="com.mbeddr.mpsutil.grammarcells" version="0" />
    <use id="7ba829ec-d0f7-4157-9641-bc2956de9c1c" name="style" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="wg1f" ref="r:11104845-93e0-4180-a3fa-727a6772438c(style.editor)" />
    <import index="tpbt" ref="r:65aadb5c-2f1e-4a2a-b988-9153ab74365c(string.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
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
  <node concept="24kQdi" id="58ojJcwsu3q">
    <property role="3GE5qa" value="length" />
    <ref role="1XX52x" to="tpbt:58ojJcwsu23" resolve="LengthOperation" />
    <node concept="3EZMnI" id="7WePDBgM90R" role="2wV5jI">
      <node concept="2iRfu4" id="7WePDBgM90S" role="2iSdaV" />
      <node concept="3F0ifn" id="58ojJcwsu3s" role="3EZMnx">
        <property role="3F0ifm" value="get length" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="_tjkj" id="7WePDBgM91D" role="3EZMnx">
        <node concept="3EZMnI" id="7WePDBgM91d" role="_tjki">
          <node concept="2iRfu4" id="7WePDBgM91e" role="2iSdaV" />
          <node concept="3F0ifn" id="7WePDBgM910" role="3EZMnx">
            <property role="3F0ifm" value="using" />
            <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
          </node>
          <node concept="3F0A7n" id="7WePDBgM91Z" role="3EZMnx">
            <ref role="1NtTu8" to="tpbt:7WePDBgM91T" resolve="measure" />
            <ref role="1k5W1q" to="wg1f:4fA_w_sHaIY" resolve="option" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7WePDBgMhwY">
    <property role="3GE5qa" value="correspondence" />
    <ref role="1XX52x" to="tpbt:7WePDBgMhw8" resolve="ContainsOp" />
    <node concept="3EZMnI" id="7WePDBgMhx0" role="2wV5jI">
      <node concept="3F0ifn" id="7WePDBgMhx7" role="3EZMnx">
        <property role="3F0ifm" value="contains" />
      </node>
      <node concept="3F0ifn" id="7WePDBgMhxd" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F1sOY" id="7WePDBgMhxl" role="3EZMnx">
        <ref role="1NtTu8" to="tpbt:7WePDBgMhwz" resolve="searchString" />
      </node>
      <node concept="3F0ifn" id="7WePDBgMhxv" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="2iRfu4" id="7WePDBgMhx3" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7WePDBgMhyp">
    <property role="3GE5qa" value="correspondence" />
    <ref role="1XX52x" to="tpbt:7WePDBgMhw9" resolve="MatchesExpressionOp" />
    <node concept="3EZMnI" id="7WePDBgMhyr" role="2wV5jI">
      <node concept="3F0ifn" id="7WePDBgMhyy" role="3EZMnx">
        <property role="3F0ifm" value="matches" />
      </node>
      <node concept="3F0ifn" id="7WePDBgMhyC" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F0ifn" id="7WePDBgMhyU" role="3EZMnx">
        <property role="3F0ifm" value="/" />
      </node>
      <node concept="3F0A7n" id="7WePDBgMsLT" role="3EZMnx">
        <ref role="1NtTu8" to="tpbt:7WePDBgMsLu" resolve="targetExpression" />
      </node>
      <node concept="3F0ifn" id="7WePDBgMhz6" role="3EZMnx">
        <property role="3F0ifm" value="/" />
      </node>
      <node concept="3F0ifn" id="7WePDBgMhyK" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="2iRfu4" id="7WePDBgMhyu" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7WePDBgMNEe">
    <property role="3GE5qa" value="correspondence" />
    <ref role="1XX52x" to="tpbt:7WePDBgMhw5" resolve="StartsWithOp" />
    <node concept="3EZMnI" id="7WePDBgMNEg" role="2wV5jI">
      <node concept="3F0ifn" id="7WePDBgMNEn" role="3EZMnx">
        <property role="3F0ifm" value="startsWith" />
      </node>
      <node concept="3F0ifn" id="7WePDBgMNEt" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F1sOY" id="7WePDBgMWZt" role="3EZMnx">
        <ref role="1NtTu8" to="tpbt:7WePDBgMWZj" resolve="targetString" />
      </node>
      <node concept="3F0ifn" id="7WePDBgMNE_" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="2iRfu4" id="7WePDBgMNEj" role="2iSdaV" />
    </node>
  </node>
</model>

