<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fed0e092-47aa-4d8b-b3f8-7e83a0bc6fc6(create.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="wg1f" ref="r:11104845-93e0-4180-a3fa-727a6772438c(style.editor)" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" />
    <import index="ckmh" ref="r:a0b09593-26bd-4d75-98f1-657e49dea4f1(create.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <property id="1130859485024" name="attractsFocus" index="1cu_pB" />
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
  <node concept="24kQdi" id="4IazLL3Pbj2">
    <property role="3GE5qa" value="" />
    <ref role="1XX52x" to="ckmh:4Z2dWAVu5W2" resolve="CreateStatement" />
    <node concept="3EZMnI" id="4Z2dWAVu9WF" role="2wV5jI">
      <node concept="3F0ifn" id="4Z2dWAVu9WP" role="3EZMnx">
        <property role="3F0ifm" value="create" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="3F1sOY" id="4m9Cn7c$D5a" role="3EZMnx">
        <ref role="1NtTu8" to="5frd:1UULepNU6GA" resolve="type" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztl9" resolve="type" />
      </node>
      <node concept="3F0A7n" id="4Z2dWAVu9Xb" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="1k5W1q" to="wg1f:4fA_w_szsJt" resolve="variable" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F1sOY" id="7bbTq01WQVu" role="3EZMnx">
        <property role="1$x2rV" value="&lt;new empty&gt;" />
        <ref role="1NtTu8" to="5frd:1UULepNJ9VZ" resolve="initialExpression" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="2iRfu4" id="4Z2dWAVu9WI" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4IazLL3PDqj">
    <property role="3GE5qa" value="fromFile" />
    <ref role="1XX52x" to="ckmh:7bbTq01XjrK" resolve="CreateFromFileInitialization" />
    <node concept="3EZMnI" id="1UULepNFD1v" role="2wV5jI">
      <node concept="3F0ifn" id="1UULepNFD1M" role="3EZMnx">
        <property role="3F0ifm" value="from" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="2iRfu4" id="1UULepNFD1w" role="2iSdaV" />
      <node concept="3F1sOY" id="4Z2dWAVvrv0" role="3EZMnx">
        <ref role="1NtTu8" to="ckmh:7bbTq01Z0VP" resolve="loader" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4IazLL3PGa$">
    <property role="3GE5qa" value="fromFile" />
    <ref role="1XX52x" to="ckmh:4Z2dWAVyuhq" resolve="AbstractLoaderExpression" />
    <node concept="3EZMnI" id="1afqJykrsz3" role="2wV5jI">
      <node concept="3F0ifn" id="1afqJykrsza" role="3EZMnx">
        <property role="3F0ifm" value="file" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="3F0ifn" id="1afqJykrszg" role="3EZMnx">
        <property role="3F0ifm" value="[" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sAgAS" resolve="leftBracket" />
      </node>
      <node concept="3F1sOY" id="1afqJykrszo" role="3EZMnx">
        <ref role="1k5W1q" to="wg1f:4fA_w_sALb_" resolve="subtle" />
        <ref role="1NtTu8" to="ckmh:4Z2dWAVyuJm" resolve="loader" />
      </node>
      <node concept="3F0ifn" id="1afqJykrszy" role="3EZMnx">
        <property role="3F0ifm" value="]" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sAgCG" resolve="rightBracket" />
      </node>
      <node concept="2iRfu4" id="1afqJykrsz6" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="1afqJykrtKS" role="6VMZX">
      <node concept="2iRfu4" id="1afqJykrtKT" role="2iSdaV" />
      <node concept="3F0ifn" id="1afqJykrtKW" role="3EZMnx">
        <property role="3F0ifm" value="allowed extensions:" />
      </node>
      <node concept="1iCGBv" id="1afqJykrtL5" role="3EZMnx">
        <ref role="1NtTu8" to="ckmh:4Z2dWAVyuJm" resolve="loader" />
        <node concept="1sVBvm" id="1afqJykrtL7" role="1sWHZn">
          <node concept="3EZMnI" id="1afqJykrtLi" role="2wV5jI">
            <node concept="2iRkQZ" id="1afqJykrtLj" role="2iSdaV" />
            <node concept="3F2HdR" id="1afqJykrtLf" role="3EZMnx">
              <ref role="1NtTu8" to="ckmh:4Z2dWAVvS02" resolve="extensions" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

