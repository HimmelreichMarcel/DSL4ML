<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:82147aaa-f8fd-411b-9383-4b859b23e5b0(estimator.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="wg1f" ref="r:11104845-93e0-4180-a3fa-727a6772438c(style.editor)" />
    <import index="5t6d" ref="r:74fa9f55-9024-401b-8305-653d85756786(estimator.structure)" implicit="true" />
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
  </registry>
  <node concept="24kQdi" id="6azzq4WXqKU">
    <ref role="1XX52x" to="5t6d:6azzq4WW_L7" resolve="EstimatorType" />
    <node concept="3F0ifn" id="6azzq4WXqKW" role="2wV5jI">
      <property role="3F0ifm" value="estimator" />
    </node>
  </node>
  <node concept="24kQdi" id="UOeJaKFUww">
    <ref role="1XX52x" to="5t6d:UOeJaKFLEu" resolve="RandomForestEstimator" />
    <node concept="3EZMnI" id="UOeJaKFUwy" role="2wV5jI">
      <node concept="3F0ifn" id="UOeJaKFUwD" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sGOjD" resolve="colon" />
      </node>
      <node concept="3F0ifn" id="UOeJaKFUwJ" role="3EZMnx">
        <property role="3F0ifm" value="random forest" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="2iRfu4" id="UOeJaKFUw_" role="2iSdaV" />
    </node>
  </node>
</model>

