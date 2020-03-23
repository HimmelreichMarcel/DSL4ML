<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c2e6d899-3e21-418b-a6c4-aab40f488eae(model.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="3kl9" ref="r:7ba08399-0216-467f-b3ef-c722ed983539(model.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
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
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="5_q2PHPuZyv">
    <property role="3GE5qa" value="editing.estimator" />
    <ref role="1XX52x" to="3kl9:5_q2PHPuZm8" resolve="DetectEstimator" />
    <node concept="3EZMnI" id="5_q2PHPuZyx" role="2wV5jI">
      <node concept="3F0ifn" id="5_q2PHPuZyC" role="3EZMnx">
        <property role="3F0ifm" value="detect estimator for" />
      </node>
      <node concept="3F0A7n" id="5_q2PHPuZyM" role="3EZMnx">
        <ref role="1NtTu8" to="3kl9:5_q2PHPuZy2" resolve="task" />
      </node>
      <node concept="3F0ifn" id="5_q2PHPuZyU" role="3EZMnx">
        <property role="3F0ifm" value="on" />
      </node>
      <node concept="3F1sOY" id="5_q2PHPuZza" role="3EZMnx">
        <ref role="1NtTu8" to="3kl9:5UZ5Kaxb6iW" resolve="data" />
      </node>
      <node concept="2iRfu4" id="5_q2PHPuZy$" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5_q2PHPv4vH">
    <property role="3GE5qa" value="editing.estimator" />
    <ref role="1XX52x" to="3kl9:5_q2PHPuZrX" resolve="SetEstimator" />
    <node concept="3EZMnI" id="5_q2PHPv4vJ" role="2wV5jI">
      <node concept="3F0ifn" id="5_q2PHPv4vQ" role="3EZMnx">
        <property role="3F0ifm" value="set estimator" />
      </node>
      <node concept="3F1sOY" id="UOeJaKEwVY" role="3EZMnx">
        <ref role="1NtTu8" to="3kl9:5_q2PHPv4vT" resolve="estimator" />
      </node>
      <node concept="3F0ifn" id="699fBOowrb8" role="3EZMnx">
        <property role="3F0ifm" value="for" />
      </node>
      <node concept="3F1sOY" id="UOeJaKEnFX" role="3EZMnx">
        <ref role="1NtTu8" to="3kl9:5UZ5Kaxb6iW" resolve="data" />
      </node>
      <node concept="2iRfu4" id="5_q2PHPv4vM" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5_q2PHPva4z">
    <ref role="1XX52x" to="3kl9:5_q2PHPuV_W" resolve="ModelType" />
    <node concept="3F0ifn" id="5_q2PHPva4_" role="2wV5jI">
      <property role="3F0ifm" value="model" />
    </node>
  </node>
  <node concept="24kQdi" id="5UZ5Kaxbd2a">
    <property role="3GE5qa" value="editing.execution" />
    <ref role="1XX52x" to="3kl9:5_q2PHPv59A" resolve="CrossValidateOnData" />
    <node concept="3EZMnI" id="5UZ5Kaxbd2c" role="2wV5jI">
      <node concept="3F0ifn" id="5UZ5Kaxbd2j" role="3EZMnx">
        <property role="3F0ifm" value="cross-validate on" />
      </node>
      <node concept="3F1sOY" id="5UZ5Kaxbd2p" role="3EZMnx">
        <ref role="1NtTu8" to="3kl9:5UZ5Kaxb6iW" resolve="data" />
      </node>
      <node concept="3F0ifn" id="5UZ5Kaxbj5V" role="3EZMnx">
        <property role="3F0ifm" value="with" />
      </node>
      <node concept="3F0A7n" id="5UZ5Kaxbj65" role="3EZMnx">
        <ref role="1NtTu8" to="3kl9:5UZ5Kaxbj5P" resolve="folds" />
      </node>
      <node concept="3F0ifn" id="5UZ5Kaxbj6h" role="3EZMnx">
        <property role="3F0ifm" value="folds" />
      </node>
      <node concept="2iRfu4" id="5UZ5Kaxbd2f" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5UZ5Kaxbd2Q">
    <property role="3GE5qa" value="editing.execution" />
    <ref role="1XX52x" to="3kl9:5_q2PHPv4KA" resolve="TrainOnData" />
    <node concept="3EZMnI" id="5UZ5Kaxbd2S" role="2wV5jI">
      <node concept="3F0ifn" id="5UZ5Kaxbd2Z" role="3EZMnx">
        <property role="3F0ifm" value="train on" />
      </node>
      <node concept="3F1sOY" id="5UZ5Kaxbd37" role="3EZMnx">
        <ref role="1NtTu8" to="3kl9:5UZ5Kaxb6iW" resolve="data" />
      </node>
      <node concept="2iRfu4" id="5UZ5Kaxbd2V" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5UZ5Kaxbd3A">
    <property role="3GE5qa" value="editing.execution" />
    <ref role="1XX52x" to="3kl9:5_q2PHPv54U" resolve="ValidateOnData" />
    <node concept="3EZMnI" id="5UZ5Kaxbd3C" role="2wV5jI">
      <node concept="3F0ifn" id="5UZ5Kaxbd3J" role="3EZMnx">
        <property role="3F0ifm" value="validate on" />
      </node>
      <node concept="3F1sOY" id="5UZ5Kaxbd3P" role="3EZMnx">
        <ref role="1NtTu8" to="3kl9:5UZ5Kaxb6iW" resolve="data" />
      </node>
      <node concept="2iRfu4" id="5UZ5Kaxbd3F" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1oR6hBkfEAR">
    <property role="3GE5qa" value="editing.execution" />
    <ref role="1XX52x" to="3kl9:1oR6hBkfEx3" resolve="TestOnData" />
    <node concept="3EZMnI" id="1oR6hBkfEAT" role="2wV5jI">
      <node concept="3F0ifn" id="1oR6hBkfEB0" role="3EZMnx">
        <property role="3F0ifm" value="test on" />
      </node>
      <node concept="3F1sOY" id="1oR6hBkfEBa" role="3EZMnx">
        <ref role="1NtTu8" to="3kl9:5UZ5Kaxb6iW" resolve="data" />
      </node>
      <node concept="2iRfu4" id="1oR6hBkfEAW" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3ERSFayJ$jF">
    <ref role="1XX52x" to="3kl9:3ERSFayISbT" resolve="AsNewModelInitialization" />
    <node concept="3F0ifn" id="3ERSFayJ$ld" role="2wV5jI">
      <property role="3F0ifm" value="as new model" />
    </node>
  </node>
</model>

