<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8b60c4ae-4d5b-4ec4-9b3b-33519b8a2909(core.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
    <use id="1919c723-b60b-4592-9318-9ce96d91da44" name="de.itemis.mps.editor.celllayout" version="0" />
    <use id="b33d119e-196d-4497-977c-5c167b21fe33" name="com.mbeddr.mpsutil.framecell" version="0" />
    <use id="9d69e719-78c8-4286-90db-fb19c107d049" name="com.mbeddr.mpsutil.grammarcells" version="0" />
    <use id="7ba829ec-d0f7-4157-9641-bc2956de9c1c" name="style" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="r4b4" ref="r:1784e088-20fd-4fdb-96b8-bc57f0056d94(com.mbeddr.core.base.editor)" />
    <import index="pvux" ref="r:bb8c05bc-4758-44fe-b1ab-f9faa5a73d31(de.itemis.mps.editor.celllayout.structure)" />
    <import index="epcs" ref="b33d119e-196d-4497-977c-5c167b21fe33/r:b7f325a3-1f57-46bc-8b14-d2d7c5ff6714(com.mbeddr.mpsutil.framecell/com.mbeddr.mpsutil.framecell.editor)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="zzzn" ref="r:af0af2e7-f7e1-4536-83b5-6bf010d4afd2(org.iets3.core.expr.lambda.structure)" />
    <import index="pbu6" ref="r:83e946de-2a7f-4a4c-b3c9-4f671aa7f2db(org.iets3.core.expr.base.behavior)" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="jqrd" ref="r:a86b5aa2-977c-4dd4-975b-865365d5871c(types.structure)" />
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" />
    <import index="wg1f" ref="r:11104845-93e0-4180-a3fa-727a6772438c(style.editor)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="yv47" ref="r:da65683e-ff6f-430d-ab68-32a77df72c93(org.iets3.core.expr.toplevel.structure)" implicit="true" />
    <import index="ja9q" ref="r:fc597f30-d1d1-4d82-975e-209a1fdb1f96(statements.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1176897764478" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeFactory" flags="in" index="4$FPG" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <child id="1176897874615" name="nodeFactory" index="4_6I_" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1078308402140" name="jetbrains.mps.lang.editor.structure.CellModel_Custom" flags="sg" stub="8104358048506730068" index="gc7cB">
        <child id="1176795024817" name="cellProvider" index="3YsKMw" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="6718020819487620876" name="jetbrains.mps.lang.editor.structure.TransformationMenuReference_Default" flags="ng" index="A1WHr" />
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <child id="1186403803051" name="query" index="VblUZ" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186404574412" name="jetbrains.mps.lang.editor.structure.BackgroundColorStyleClassItem" flags="ln" index="Veino" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1630016958697718209" name="jetbrains.mps.lang.editor.structure.IMenuReference_Default" flags="ng" index="2Z_bC8">
        <reference id="1630016958698373342" name="concept" index="2ZyFGn" />
      </concept>
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1225456267680" name="jetbrains.mps.lang.editor.structure.RGBColor" flags="ng" index="1iSF2X">
        <property id="1225456424731" name="value" index="1iTho6" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="3982520150125052579" name="jetbrains.mps.lang.editor.structure.QueryFunction_AttributeStyleParameter" flags="ig" index="3sjG9q" />
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="3982520150122341378" name="jetbrains.mps.lang.editor.structure.AttributeStyleClassItem" flags="lg" index="3tD6jV">
        <reference id="3982520150122346707" name="attribute" index="3tD7wE" />
        <child id="3982520150122341379" name="query" index="3tD6jU" />
      </concept>
      <concept id="9122903797312246523" name="jetbrains.mps.lang.editor.structure.StyleReference" flags="ng" index="1wgc9g">
        <reference id="9122903797312247166" name="style" index="1wgcnl" />
      </concept>
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
        <child id="4202667662392416064" name="transformationMenu" index="3vIgyS" />
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
      <concept id="1225898583838" name="jetbrains.mps.lang.editor.structure.ReadOnlyModelAccessor" flags="ng" index="1HfYo3">
        <child id="1225898971709" name="getter" index="1Hhtcw" />
      </concept>
      <concept id="1225900081164" name="jetbrains.mps.lang.editor.structure.CellModel_ReadOnlyModelAccessor" flags="sg" stub="3708815482283559694" index="1HlG4h">
        <child id="1225900141900" name="modelAccessor" index="1HlULh" />
      </concept>
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
      <concept id="1176749715029" name="jetbrains.mps.lang.editor.structure.QueryFunction_CellProvider" flags="in" index="3VJUX4" />
      <concept id="1950447826681509042" name="jetbrains.mps.lang.editor.structure.ApplyStyleClass" flags="lg" index="3Xmtl4">
        <child id="1950447826683828796" name="target" index="3XvnJa" />
      </concept>
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
      <concept id="1176809959526" name="jetbrains.mps.lang.editor.structure.QueryFunction_Color" flags="in" index="3ZlJ5R" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="9d69e719-78c8-4286-90db-fb19c107d049" name="com.mbeddr.mpsutil.grammarcells">
      <concept id="5083944728298846680" name="com.mbeddr.mpsutil.grammarcells.structure.OptionalCell" flags="ng" index="_tjkj">
        <child id="5083944728298846681" name="option" index="_tjki" />
      </concept>
      <concept id="7363578995839435357" name="com.mbeddr.mpsutil.grammarcells.structure.WrapperCell" flags="ng" index="1kIj98">
        <child id="7363578995839435358" name="wrapped" index="1kIj9b" />
      </concept>
    </language>
    <language id="b33d119e-196d-4497-977c-5c167b21fe33" name="com.mbeddr.mpsutil.framecell">
      <concept id="8760592470373336790" name="com.mbeddr.mpsutil.framecell.structure.CellModel_FrameCell" flags="ng" index="3j0QqT">
        <child id="8760592470373394508" name="child" index="3j0Cwz" />
      </concept>
    </language>
    <language id="1919c723-b60b-4592-9318-9ce96d91da44" name="de.itemis.mps.editor.celllayout">
      <concept id="4682418030828844315" name="de.itemis.mps.editor.celllayout.structure.HorizontalLineColorStyle" flags="lg" index="2T_bXS" />
      <concept id="4682418030828725523" name="de.itemis.mps.editor.celllayout.structure.HorizontalLineCell" flags="ng" index="2T_mXK" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
  <node concept="24kQdi" id="2$uHlqTu$Aw">
    <property role="3GE5qa" value="file" />
    <ref role="1XX52x" to="5frd:2$uHlqSzhDy" resolve="File" />
    <node concept="3EZMnI" id="2$uHlqTu_FR" role="2wV5jI">
      <node concept="3EZMnI" id="2$uHlqTu_G1" role="3EZMnx">
        <node concept="gc7cB" id="2$uHlqTuAtW" role="3EZMnx">
          <node concept="3VJUX4" id="2$uHlqTuAtY" role="3YsKMw">
            <node concept="3clFbS" id="2$uHlqTuAu0" role="2VODD2">
              <node concept="3clFbF" id="2$uHlqTuBij" role="3cqZAp">
                <node concept="2ShNRf" id="2$uHlqTuBih" role="3clFbG">
                  <node concept="1pGfFk" id="2$uHlqTuCzP" role="2ShVmc">
                    <ref role="37wK5l" to="r4b4:DubiFB4e4X" resolve="IconCell" />
                    <node concept="2ShNRf" id="2$uHlqTuDyT" role="37wK5m">
                      <node concept="3zrR0B" id="2$uHlqTuDOs" role="2ShVmc">
                        <node concept="3Tqbb2" id="2$uHlqTuDOu" role="3zrR0E">
                          <ref role="ehGHo" to="5frd:2$uHlqTwAFr" resolve="Icon" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cmrfG" id="2$uHlqTwDRN" role="37wK5m">
                      <property role="3cmrfH" value="17" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="2$uHlqTu_G3" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3EZMnI" id="2$uHlqTwExr" role="3EZMnx">
          <node concept="2iRkQZ" id="2$uHlqTwExs" role="2iSdaV" />
          <node concept="3F0ifn" id="2$uHlqTu_Gf" role="3EZMnx">
            <property role="3F0ifm" value="Machine Learning Evolves" />
          </node>
          <node concept="3EZMnI" id="2aoocMLjRLe" role="3EZMnx">
            <node concept="3EZMnI" id="2aoocMLjSgR" role="3EZMnx">
              <node concept="3F0ifn" id="2aoocMLjShm" role="3EZMnx">
                <property role="3F0ifm" value="file name:" />
                <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
              </node>
              <node concept="VPM3Z" id="2aoocMLjSgT" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="3F0A7n" id="2$uHlqTw_7y" role="3EZMnx">
                <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                <ref role="1k5W1q" to="wg1f:4fA_w_sHaIY" resolve="option" />
              </node>
              <node concept="2iRfu4" id="2aoocMLjSgW" role="2iSdaV" />
            </node>
            <node concept="3XFhqQ" id="2aoocMLkmiB" role="3EZMnx" />
            <node concept="3XFhqQ" id="2aoocMLkOhF" role="3EZMnx" />
            <node concept="2iRfu4" id="2aoocMLjRLf" role="2iSdaV" />
            <node concept="3EZMnI" id="2aoocMLiV6S" role="3EZMnx">
              <node concept="VPM3Z" id="2aoocMLiV6U" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="3F0ifn" id="2aoocMLiV6W" role="3EZMnx">
                <property role="3F0ifm" value="main directory:" />
                <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
              </node>
              <node concept="3F1sOY" id="2aoocMLiV7a" role="3EZMnx">
                <ref role="1NtTu8" to="5frd:2aoocMLiV1q" resolve="loader" />
                <ref role="1k5W1q" to="wg1f:4fA_w_sHaIY" resolve="option" />
              </node>
              <node concept="2iRfu4" id="2aoocMLiV6X" role="2iSdaV" />
            </node>
          </node>
        </node>
        <node concept="2iRfu4" id="2$uHlqTu_G6" role="2iSdaV" />
      </node>
      <node concept="2T_mXK" id="3CJpga9FlgW" role="3EZMnx" />
      <node concept="3F0ifn" id="2aoocMLliv_" role="3EZMnx" />
      <node concept="3F0ifn" id="5syS6lAgylp" role="3EZMnx">
        <property role="3F0ifm" value="Select language components:" />
      </node>
      <node concept="3F1sOY" id="2$uHlqTwIve" role="3EZMnx">
        <ref role="1NtTu8" to="5frd:2$uHlqTuxYX" resolve="featureComposition" />
      </node>
      <node concept="3F0ifn" id="2$uHlqTwIvT" role="3EZMnx" />
      <node concept="3F2HdR" id="2$uHlqTwIxj" role="3EZMnx">
        <ref role="1NtTu8" to="yv47:ub9nkyK62i" resolve="contents" />
        <node concept="2iRkQZ" id="2$uHlqTwIxl" role="2czzBx" />
      </node>
      <node concept="2iRkQZ" id="2$uHlqTu_FU" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2$uHlqTwJbc">
    <property role="3GE5qa" value="section" />
    <ref role="1XX52x" to="5frd:2$uHlqSzbou" resolve="Section" />
    <node concept="3EZMnI" id="7OzZ9xI8qGE" role="2wV5jI">
      <node concept="2iRkQZ" id="7OzZ9xI8qGF" role="2iSdaV" />
      <node concept="3j0QqT" id="5U8d23QobMD" role="3EZMnx">
        <node concept="3EZMnI" id="7OzZ9xI8KMW" role="3j0Cwz">
          <node concept="2iRkQZ" id="7OzZ9xI8KMX" role="2iSdaV" />
          <node concept="3EZMnI" id="2$uHlqTwKiP" role="3EZMnx">
            <node concept="3F0ifn" id="2$uHlqTwKJm" role="3EZMnx">
              <property role="3F0ifm" value="section" />
              <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
            </node>
            <node concept="2iRfu4" id="2$uHlqTwKiQ" role="2iSdaV" />
            <node concept="3F0A7n" id="7OzZ9xI8qG$" role="3EZMnx">
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              <ref role="1k5W1q" to="wg1f:4fA_w_sDihM" resolve="section" />
            </node>
            <node concept="3F0ifn" id="2$uHlqTwKJz" role="3EZMnx">
              <property role="3F0ifm" value="uses vars" />
              <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
            </node>
            <node concept="3F2HdR" id="2$uHlqTwKJW" role="3EZMnx">
              <ref role="1NtTu8" to="5frd:2$uHlqTwKJO" resolve="inports" />
              <node concept="2iRkQZ" id="2$uHlqTwLj$" role="2czzBx" />
            </node>
            <node concept="3F0ifn" id="2$uHlqTwLjO" role="3EZMnx">
              <property role="3F0ifm" value="and provides vars" />
              <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
            </node>
            <node concept="3F2HdR" id="2$uHlqTwLkh" role="3EZMnx">
              <ref role="1NtTu8" to="5frd:2$uHlqTwKJR" resolve="outports" />
              <node concept="2iRkQZ" id="2$uHlqTwLk$" role="2czzBx" />
            </node>
          </node>
          <node concept="2T_mXK" id="4BgJq$29ESf" role="3EZMnx">
            <node concept="2T_bXS" id="38ogk7FPLjk" role="3F10Kt">
              <node concept="1iSF2X" id="38ogk7FPLju" role="VblUZ">
                <property role="1iTho6" value="4E4D4C" />
              </node>
            </node>
            <node concept="3tD6jV" id="38ogk7FPLP0" role="3F10Kt">
              <ref role="3tD7wE" to="epcs:7AjS6YEz03y" resolve="frame-width" />
              <node concept="3sjG9q" id="38ogk7FPLP2" role="3tD6jU">
                <node concept="3clFbS" id="38ogk7FPLP4" role="2VODD2">
                  <node concept="3clFbF" id="38ogk7FPM6l" role="3cqZAp">
                    <node concept="3cmrfG" id="38ogk7FPM6k" role="3clFbG">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3F1sOY" id="2$uHlqTwO8x" role="3EZMnx">
            <ref role="1NtTu8" to="5frd:2$uHlqTwM8L" resolve="codeblock" />
          </node>
          <node concept="3F0ifn" id="NehizIbcpt" role="3EZMnx">
            <property role="3F0ifm" value="___________________________________________________________________________________________________________" />
            <node concept="VechU" id="NehizIbsG6" role="3F10Kt">
              <node concept="1iSF2X" id="NehizIbsG8" role="VblUZ">
                <property role="1iTho6" value="F4F2F1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="Veino" id="5U8d23QsP3$" role="3F10Kt">
          <node concept="3ZlJ5R" id="5U8d23QsP3G" role="VblUZ">
            <node concept="3clFbS" id="5U8d23QsP3H" role="2VODD2">
              <node concept="3clFbF" id="5U8d23QtesS" role="3cqZAp">
                <node concept="2YIFZM" id="7OzZ9xI8JmP" role="3clFbG">
                  <ref role="37wK5l" to="z60i:~Color.decode(java.lang.String):java.awt.Color" resolve="decode" />
                  <ref role="1Pybhc" to="z60i:~Color" resolve="Color" />
                  <node concept="Xl_RD" id="7OzZ9xI8JmU" role="37wK5m">
                    <property role="Xl_RC" value="#F4F2F1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3tD6jV" id="5U8d23Qodv0" role="3F10Kt">
          <ref role="3tD7wE" to="epcs:7AjS6YEz03l" resolve="frame-color" />
          <node concept="3sjG9q" id="5U8d23Qodv1" role="3tD6jU">
            <node concept="3clFbS" id="5U8d23Qodv2" role="2VODD2">
              <node concept="3clFbF" id="7OzZ9xI8K3f" role="3cqZAp">
                <node concept="2YIFZM" id="7OzZ9xI8Kh7" role="3clFbG">
                  <ref role="1Pybhc" to="z60i:~Color" resolve="Color" />
                  <ref role="37wK5l" to="z60i:~Color.decode(java.lang.String):java.awt.Color" resolve="decode" />
                  <node concept="Xl_RD" id="7OzZ9xI8KpD" role="37wK5m">
                    <property role="Xl_RC" value="#4E4D4C" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3tD6jV" id="5U8d23QodIC" role="3F10Kt">
          <ref role="3tD7wE" to="epcs:7AjS6YEz03T" resolve="frame-padding" />
          <node concept="3sjG9q" id="5U8d23QodIE" role="3tD6jU">
            <node concept="3clFbS" id="5U8d23QodIG" role="2VODD2">
              <node concept="3clFbF" id="5U8d23Qoe7m" role="3cqZAp">
                <node concept="3cmrfG" id="5U8d23Qoe7l" role="3clFbG">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3tD6jV" id="5U8d23Qoewk" role="3F10Kt">
          <ref role="3tD7wE" to="epcs:7AjS6YEz03y" resolve="frame-width" />
          <node concept="3sjG9q" id="5U8d23Qoewm" role="3tD6jU">
            <node concept="3clFbS" id="5U8d23Qoewo" role="2VODD2">
              <node concept="3clFbF" id="5U8d23QoeTc" role="3cqZAp">
                <node concept="3cmrfG" id="1lXEU5vp_Bq" role="3clFbG">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F2HdR" id="5dzaEnaOT1w" role="3EZMnx">
        <ref role="1NtTu8" to="5frd:2$uHlqTwMzG" resolve="results" />
        <node concept="2iRkQZ" id="5dzaEnaOT1y" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="4TFMgV42o0G" role="3EZMnx" />
    </node>
  </node>
  <node concept="24kQdi" id="2$uHlqTwLPA">
    <property role="3GE5qa" value="section" />
    <ref role="1XX52x" to="5frd:2$uHlqTwLPc" resolve="Codeblock" />
    <node concept="3EZMnI" id="4flHrhnC3B9" role="2wV5jI">
      <node concept="3F0ifn" id="4flHrhnC3Bg" role="3EZMnx">
        <property role="3F0ifm" value="code" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
        <node concept="ljvvj" id="4flHrhnC3Bj" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="fN3qU6G4DP" role="3EZMnx">
        <ref role="1NtTu8" to="zzzn:49WTic8ig5E" resolve="expressions" />
        <node concept="l2Vlx" id="fN3qU6G4DR" role="2czzBx" />
        <node concept="lj46D" id="fN3qU6G4DW" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pj6Ft" id="fN3qU6G4DY" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="4$FPG" id="4rZ4tH4i9bY" role="4_6I_">
          <node concept="3clFbS" id="4rZ4tH4i9bZ" role="2VODD2">
            <node concept="3clFbF" id="4rZ4tH4i9zx" role="3cqZAp">
              <node concept="2ShNRf" id="4rZ4tH4i9zv" role="3clFbG">
                <node concept="3zrR0B" id="4rZ4tH4ia$m" role="2ShVmc">
                  <node concept="3Tqbb2" id="4rZ4tH4ia$o" role="3zrR0E">
                    <ref role="ehGHo" to="ja9q:4rZ4tH4gay7" resolve="EmptyStatement" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="4flHrhnC3Bc" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="57k_vxmYYEe">
    <property role="3GE5qa" value="output" />
    <ref role="1XX52x" to="5frd:6Iu9bl6MC_2" resolve="SimpleMessageOutput" />
    <node concept="3F0A7n" id="57k_vxmYYEg" role="2wV5jI">
      <ref role="1NtTu8" to="5frd:6Iu9bl6MC_x" resolve="message" />
      <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
    </node>
  </node>
  <node concept="24kQdi" id="66yDixH1U5s">
    <property role="3GE5qa" value="section.ports" />
    <ref role="1XX52x" to="5frd:2$uHlqTwKhA" resolve="InportRef" />
    <node concept="1iCGBv" id="26bEYU6GCYQ" role="2wV5jI">
      <ref role="1NtTu8" to="5frd:26bEYU6GCYE" resolve="inport" />
      <node concept="1sVBvm" id="26bEYU6GCYS" role="1sWHZn">
        <node concept="3F0A7n" id="26bEYU6GCZ2" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <ref role="1k5W1q" to="wg1f:4fA_w_szsJt" resolve="variable" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="432kJCy_gCr">
    <property role="3GE5qa" value="section.ports" />
    <ref role="1XX52x" to="5frd:5uNOSkli4V2" resolve="ProvideOutportExpr" />
    <node concept="3EZMnI" id="432kJCy_gCt" role="2wV5jI">
      <node concept="3F0ifn" id="432kJCy_gCB" role="3EZMnx">
        <property role="3F0ifm" value="provide" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="3F1sOY" id="2kN28RP0pWn" role="3EZMnx">
        <ref role="1NtTu8" to="5frd:432kJCyAB3S" resolve="outport" />
      </node>
      <node concept="2iRfu4" id="432kJCy_gCw" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="432kJCy_gDt">
    <property role="3GE5qa" value="section.ports" />
    <ref role="1XX52x" to="5frd:2$uHlqTwKhB" resolve="Outport" />
    <node concept="3EZMnI" id="2kN28RP0pXu" role="2wV5jI">
      <node concept="3F1sOY" id="2kN28RP0pX_" role="3EZMnx">
        <ref role="1NtTu8" to="5frd:2kN28RP0pXq" resolve="object" />
      </node>
      <node concept="PMmxH" id="2kN28RP0pXF" role="3EZMnx">
        <ref role="PMmxG" node="7n1QYH2a$B_" resolve="AliasEditorComponent" />
      </node>
      <node concept="2iRfu4" id="2kN28RP0pXx" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="432kJCyAUFK">
    <property role="3GE5qa" value="section.ports" />
    <ref role="1XX52x" to="5frd:2$uHlqTwKhC" resolve="OutportRef" />
    <node concept="3EZMnI" id="432kJCyAUFV" role="2wV5jI">
      <node concept="PMmxH" id="4fA_w_sG7IN" role="3EZMnx">
        <ref role="PMmxG" node="37IcDEOZgCT" resolve="RevealType" />
      </node>
      <node concept="1iCGBv" id="432kJCyAUG2" role="3EZMnx">
        <ref role="1NtTu8" to="5frd:432kJCyA_iQ" resolve="val" />
        <node concept="1sVBvm" id="432kJCyAUG4" role="1sWHZn">
          <node concept="3F0A7n" id="432kJCyAUGb" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <ref role="1k5W1q" to="wg1f:4fA_w_szsJt" resolve="variable" />
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="432kJCyAUFY" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="26bEYU6$geg">
    <property role="3GE5qa" value="section.ports" />
    <ref role="1XX52x" to="5frd:2$uHlqTwKh_" resolve="Inport" />
    <node concept="3EZMnI" id="5uNOSkle9EU" role="2wV5jI">
      <node concept="PMmxH" id="37IcDEP27H4" role="3EZMnx">
        <ref role="PMmxG" node="37IcDEOZgCT" resolve="RevealType" />
      </node>
      <node concept="1iCGBv" id="5uNOSklfm7g" role="3EZMnx">
        <ref role="1NtTu8" to="5frd:26bEYU6$gdJ" resolve="from" />
        <node concept="1sVBvm" id="5uNOSklfm7i" role="1sWHZn">
          <node concept="3F0A7n" id="5uNOSklfm7u" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <ref role="1k5W1q" to="wg1f:4fA_w_sDihM" resolve="section" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="5uNOSklekB_" role="3EZMnx">
        <property role="3F0ifm" value="." />
        <ref role="1k5W1q" to="wg1f:4fA_w_sA651" resolve="dot" />
      </node>
      <node concept="1iCGBv" id="2kN28RP3v$p" role="3EZMnx">
        <ref role="1NtTu8" to="5frd:26bEYU6$gdM" resolve="outport" />
        <node concept="1sVBvm" id="2kN28RP3v$r" role="1sWHZn">
          <node concept="3F0A7n" id="2kN28RP4gMW" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <ref role="1k5W1q" to="wg1f:4fA_w_szsJt" resolve="variable" />
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="2kN28RP4VXi" role="3EZMnx">
        <ref role="PMmxG" node="7n1QYH2a$B_" resolve="AliasEditorComponent" />
      </node>
      <node concept="2iRfu4" id="7n1QYH2ayeP" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="26bEYU6G1VF">
    <property role="3GE5qa" value="variables" />
    <ref role="1XX52x" to="5frd:1EO_bV9G$FR" resolve="VariableReference" />
    <node concept="1iCGBv" id="26bEYU6G1VL" role="2wV5jI">
      <ref role="1NtTu8" to="5frd:1UULepNKcNI" resolve="val" />
      <ref role="1k5W1q" to="wg1f:4fA_w_szsJt" resolve="variable" />
      <node concept="1sVBvm" id="26bEYU6G1VN" role="1sWHZn">
        <node concept="3F0A7n" id="26bEYU6G1VX" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="7n1QYH2a$B_">
    <property role="3GE5qa" value="util.alias" />
    <property role="TrG5h" value="AliasEditorComponent" />
    <ref role="1XX52x" to="5frd:2kN28ROXXD0" resolve="OptAliasExpression" />
    <node concept="3EZMnI" id="7n1QYH2a$BB" role="2wV5jI">
      <node concept="_tjkj" id="7n1QYH2a$BL" role="3EZMnx">
        <node concept="3EZMnI" id="7n1QYH2a$BR" role="_tjki">
          <node concept="3F0ifn" id="7n1QYH2a$C0" role="3EZMnx">
            <property role="3F0ifm" value="as" />
          </node>
          <node concept="3F1sOY" id="7n1QYH2a$C6" role="3EZMnx">
            <ref role="1NtTu8" to="5frd:2kN28ROXXD1" resolve="optAlias" />
          </node>
          <node concept="2iRfu4" id="7n1QYH2a$BU" role="2iSdaV" />
          <node concept="VPM3Z" id="7n1QYH2a$BV" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="7n1QYH2a$BE" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="37IcDEOZgCT">
    <property role="3GE5qa" value="util" />
    <property role="TrG5h" value="RevealType" />
    <ref role="1XX52x" to="5frd:37IcDEOYvRZ" resolve="IRevealType" />
    <node concept="3EZMnI" id="37IcDEOZgCV" role="2wV5jI">
      <node concept="3F0ifn" id="37IcDEOZgD5" role="3EZMnx">
        <property role="3F0ifm" value="[" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sAgAS" resolve="leftBracket" />
      </node>
      <node concept="1HlG4h" id="37IcDEP1Fpf" role="3EZMnx">
        <ref role="1k5W1q" to="wg1f:4fA_w_sztl9" resolve="type" />
        <node concept="1HfYo3" id="37IcDEP1Fph" role="1HlULh">
          <node concept="3TQlhw" id="37IcDEP1Fpj" role="1Hhtcw">
            <node concept="3clFbS" id="37IcDEP1Fpl" role="2VODD2">
              <node concept="3clFbF" id="37IcDEP1FG$" role="3cqZAp">
                <node concept="3cpWs3" id="1ELd1MG1wRn" role="3clFbG">
                  <node concept="Xl_RD" id="1ELd1MG1_1H" role="3uHU7w">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="2OqwBi" id="37IcDEP1FTg" role="3uHU7B">
                    <node concept="pncrf" id="37IcDEP1FGz" role="2Oq$k0" />
                    <node concept="2qgKlT" id="1ELd1MG1wtF" role="2OqNvi">
                      <ref role="37wK5l" to="64zb:1ELd1MG1vXo" resolve="getType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Xmtl4" id="4fA_w_sB1Au" role="3F10Kt">
          <node concept="1wgc9g" id="4fA_w_sB1Mq" role="3XvnJa">
            <ref role="1wgcnl" to="wg1f:4fA_w_sALb_" resolve="subtle" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="37IcDEP1H07" role="3EZMnx">
        <property role="3F0ifm" value="]" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sAgCG" resolve="rightBracket" />
      </node>
      <node concept="2iRfu4" id="37IcDEOZgCY" role="2iSdaV" />
      <node concept="pkWqt" id="37IcDEOZiSp" role="pqm2j">
        <node concept="3clFbS" id="37IcDEOZiSq" role="2VODD2">
          <node concept="3clFbF" id="37IcDEOZiZ_" role="3cqZAp">
            <node concept="2OqwBi" id="37IcDEOZjbD" role="3clFbG">
              <node concept="pncrf" id="37IcDEOZiZ$" role="2Oq$k0" />
              <node concept="2qgKlT" id="37IcDEOZjvT" role="2OqNvi">
                <ref role="37wK5l" to="64zb:37IcDEOZfb8" resolve="isTypeVisible" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6Quy7yTNPDf">
    <property role="3GE5qa" value="util.items.selection" />
    <ref role="1XX52x" to="5frd:6MKNUaQDNDz" resolve="ItemSelector" />
    <node concept="3EZMnI" id="6Quy7yTNPDh" role="2wV5jI">
      <node concept="1kIj98" id="6Quy7yTNPDr" role="3EZMnx">
        <node concept="3F1sOY" id="6Quy7yTNPDx" role="1kIj9b">
          <ref role="1NtTu8" to="5frd:6MKNUaQDND$" resolve="item" />
        </node>
      </node>
      <node concept="_tjkj" id="6Quy7yTNPDH" role="3EZMnx">
        <node concept="3EZMnI" id="6Quy7yTNPDP" role="_tjki">
          <node concept="3F0ifn" id="6Quy7yTNPDY" role="3EZMnx">
            <property role="3F0ifm" value=".." />
          </node>
          <node concept="3F1sOY" id="6Quy7yTNPE8" role="3EZMnx">
            <ref role="1NtTu8" to="5frd:6MKNUaQDNDA" resolve="other" />
          </node>
          <node concept="2iRfu4" id="6Quy7yTNPDS" role="2iSdaV" />
          <node concept="VPM3Z" id="6Quy7yTNPDT" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="6Quy7yTNPDk" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6Quy7yTNRiu">
    <property role="3GE5qa" value="util.items.selection" />
    <ref role="1XX52x" to="5frd:6Quy7yTNPCI" resolve="ItemSelection" />
    <node concept="3F2HdR" id="6Quy7yTNRiw" role="2wV5jI">
      <property role="2czwfO" value="," />
      <ref role="1NtTu8" to="5frd:6MKNUaQDNDD" resolve="selectors" />
    </node>
  </node>
  <node concept="24kQdi" id="37IcDEP2sCy">
    <property role="3GE5qa" value="util.items.expression" />
    <ref role="1XX52x" to="5frd:fN3qU6G$xK" resolve="ItemDependentExpression" />
    <node concept="3EZMnI" id="37IcDEP2sC$" role="2wV5jI">
      <node concept="PMmxH" id="37IcDEP2sCU" role="3EZMnx">
        <ref role="PMmxG" node="37IcDEOZgCT" resolve="RevealType" />
      </node>
      <node concept="3F1sOY" id="37IcDEP2sCI" role="3EZMnx">
        <ref role="1NtTu8" to="5frd:fN3qU6G$xL" resolve="expression" />
      </node>
      <node concept="2iRfu4" id="37IcDEP2sCB" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2L5U6Itb4e">
    <property role="3GE5qa" value="util.items.selection" />
    <ref role="1XX52x" to="5frd:4x_I0npP4pK" resolve="ItemRef" />
    <node concept="1iCGBv" id="2L5U6Itb4g" role="2wV5jI">
      <ref role="1NtTu8" to="5frd:4x_I0npP4pL" resolve="val" />
      <node concept="1sVBvm" id="2L5U6Itb4i" role="1sWHZn">
        <node concept="3F0A7n" id="2L5U6Itb4p" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <ref role="1k5W1q" to="wg1f:4fA_w_szsJz" resolve="item" />
        </node>
      </node>
      <node concept="A1WHr" id="2qzUg86Kqlv" role="3vIgyS">
        <ref role="2ZyFGn" to="5frd:4x_I0npP4pK" resolve="ItemRef" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4fA_w_sIVcF">
    <property role="3GE5qa" value="util.items.expression" />
    <ref role="1XX52x" to="5frd:1o0JaC2_8i8" resolve="ItemDependentCondition" />
    <node concept="3EZMnI" id="4fA_w_sIVcH" role="2wV5jI">
      <node concept="3EZMnI" id="4fA_w_sJpP9" role="3EZMnx">
        <node concept="VPM3Z" id="4fA_w_sJpPb" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="4fA_w_sJs4Z" role="3EZMnx">
          <property role="3F0ifm" value="[" />
          <ref role="1k5W1q" to="wg1f:4fA_w_sAgAS" resolve="leftBracket" />
        </node>
        <node concept="3F0ifn" id="4fA_w_sJsEp" role="3EZMnx">
          <property role="3F0ifm" value="boolean" />
          <ref role="1k5W1q" to="wg1f:4fA_w_sztl9" resolve="type" />
          <node concept="3Xmtl4" id="4fA_w_sJXq_" role="3F10Kt">
            <node concept="1wgc9g" id="4fA_w_sJXqD" role="3XvnJa">
              <ref role="1wgcnl" to="wg1f:4fA_w_sALb_" resolve="subtle" />
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="4fA_w_sJtfP" role="3EZMnx">
          <property role="3F0ifm" value="]" />
          <ref role="1k5W1q" to="wg1f:4fA_w_sAgCG" resolve="rightBracket" />
        </node>
        <node concept="2iRfu4" id="4fA_w_sJpPe" role="2iSdaV" />
        <node concept="pkWqt" id="4fA_w_sJpPk" role="pqm2j">
          <node concept="3clFbS" id="4fA_w_sJpPl" role="2VODD2">
            <node concept="3clFbF" id="4fA_w_sJpWu" role="3cqZAp">
              <node concept="2OqwBi" id="4fA_w_sJqee" role="3clFbG">
                <node concept="pncrf" id="4fA_w_sJpWt" role="2Oq$k0" />
                <node concept="2qgKlT" id="4fA_w_sJqI3" role="2OqNvi">
                  <ref role="37wK5l" to="64zb:37IcDEOZfb8" resolve="isTypeVisible" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="4fA_w_sIVcR" role="3EZMnx">
        <ref role="1NtTu8" to="5frd:fN3qU6G$xL" resolve="expression" />
      </node>
      <node concept="2iRfu4" id="4fA_w_sIVcK" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4fxn4ASqs2P">
    <property role="3GE5qa" value="util.items.item" />
    <ref role="1XX52x" to="5frd:4fxn4ASqs2m" resolve="AbstractItemGrabber" />
    <node concept="3EZMnI" id="4fxn4ASqs2R" role="2wV5jI">
      <node concept="3F1sOY" id="4fxn4ASqs2Y" role="3EZMnx">
        <ref role="1NtTu8" to="5frd:4fxn4ASqs2n" resolve="container" />
      </node>
      <node concept="3F0ifn" id="4fxn4ASqs34" role="3EZMnx">
        <property role="3F0ifm" value="." />
        <ref role="1k5W1q" to="wg1f:4fA_w_sA651" resolve="dot" />
      </node>
      <node concept="3F1sOY" id="4fxn4ASqs3c" role="3EZMnx">
        <ref role="1NtTu8" to="5frd:4fxn4ASqs2p" resolve="item" />
      </node>
      <node concept="2iRfu4" id="4fxn4ASqs2U" role="2iSdaV" />
    </node>
  </node>
</model>

