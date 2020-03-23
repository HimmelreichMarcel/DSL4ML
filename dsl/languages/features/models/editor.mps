<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b0cecc04-eafc-4b19-ad00-3a74dd5bd487(features.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
    <use id="9d69e719-78c8-4286-90db-fb19c107d049" name="com.mbeddr.mpsutil.grammarcells" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" />
    <import index="wg1f" ref="r:11104845-93e0-4180-a3fa-727a6772438c(style.editor)" />
    <import index="55s9" ref="r:349f01e8-2ba4-49f7-be71-679bbbf4b80d(features.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="917x" ref="r:83f7a824-2d8f-4211-9c8e-802488d31e7c(features.behavior)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" implicit="true" />
    <import index="26nm" ref="r:8b60c4ae-4d5b-4ec4-9b3b-33519b8a2909(core.editor)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1103016434866" name="jetbrains.mps.lang.editor.structure.CellModel_JComponent" flags="sg" stub="8104358048506731196" index="3gTLQM">
        <child id="1176475119347" name="componentProvider" index="3FoqZy" />
      </concept>
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1075375595203" name="jetbrains.mps.lang.editor.structure.CellModel_Error" flags="sg" stub="8104358048506729356" index="1xolST">
        <property id="1075375595204" name="text" index="1xolSY" />
      </concept>
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
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
      <concept id="1176474535556" name="jetbrains.mps.lang.editor.structure.QueryFunction_JComponent" flags="in" index="3Fmcul" />
      <concept id="1225898583838" name="jetbrains.mps.lang.editor.structure.ReadOnlyModelAccessor" flags="ng" index="1HfYo3">
        <child id="1225898971709" name="getter" index="1Hhtcw" />
      </concept>
      <concept id="1225900081164" name="jetbrains.mps.lang.editor.structure.CellModel_ReadOnlyModelAccessor" flags="sg" stub="3708815482283559694" index="1HlG4h">
        <child id="1225900141900" name="modelAccessor" index="1HlULh" />
      </concept>
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="5279705229678483897" name="jetbrains.mps.baseLanguage.structure.FloatingPointFloatConstant" flags="nn" index="2$xPTn">
        <property id="5279705229678483899" name="value" index="2$xPTl" />
      </concept>
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
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534513062" name="jetbrains.mps.baseLanguage.structure.DoubleType" flags="in" index="10P55v" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1111509017652" name="jetbrains.mps.baseLanguage.structure.FloatingPointConstant" flags="nn" index="3b6qkQ">
        <property id="1113006610751" name="value" index="$nhwW" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="7024111702304495340" name="jetbrains.mps.baseLanguage.structure.MulAssignmentExpression" flags="nn" index="3vZbUc" />
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
    </language>
  </registry>
  <node concept="24kQdi" id="2$uHlqTNeo_">
    <property role="3GE5qa" value="featureset" />
    <ref role="1XX52x" to="55s9:74vMKqQrVnB" resolve="FeaturesetOutput" />
    <node concept="3EZMnI" id="74vMKqQrVo5" role="2wV5jI">
      <node concept="3EZMnI" id="6Iu9bl6v9V1" role="3EZMnx">
        <node concept="1iCGBv" id="MS2eiU9Z$J" role="3EZMnx">
          <ref role="1NtTu8" to="55s9:XZLIaPnCPB" resolve="featureset" />
          <node concept="1sVBvm" id="MS2eiU9Z$L" role="1sWHZn">
            <node concept="3F0A7n" id="MS2eiU9Z_5" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="2iRfu4" id="6Iu9bl6v9V2" role="2iSdaV" />
        <node concept="3F0ifn" id="6Iu9bl6vCrL" role="3EZMnx">
          <property role="3F0ifm" value="[" />
          <node concept="11L4FC" id="6Iu9bl6w6Aq" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="11LMrY" id="6Iu9bl6w6Av" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0A7n" id="7ietByWNlhX" role="3EZMnx">
          <ref role="1NtTu8" to="55s9:7ietByWNa2_" resolve="dimensions" />
        </node>
        <node concept="3F0ifn" id="6Iu9bl6v9VY" role="3EZMnx">
          <property role="3F0ifm" value="dimensions," />
        </node>
        <node concept="1HlG4h" id="233v7iKOp33" role="3EZMnx">
          <node concept="1HfYo3" id="233v7iKOp35" role="1HlULh">
            <node concept="3TQlhw" id="233v7iKOp37" role="1Hhtcw">
              <node concept="3clFbS" id="233v7iKOp39" role="2VODD2">
                <node concept="3cpWs8" id="233v7iKOG7R" role="3cqZAp">
                  <node concept="3cpWsn" id="233v7iKOG7U" role="3cpWs9">
                    <property role="TrG5h" value="rows" />
                    <node concept="10Oyi0" id="233v7iKOG7P" role="1tU5fm" />
                    <node concept="2OqwBi" id="233v7iKOGPJ" role="33vP2m">
                      <node concept="2OqwBi" id="233v7iKOGPK" role="2Oq$k0">
                        <node concept="pncrf" id="233v7iKOGPL" role="2Oq$k0" />
                        <node concept="3TrEf2" id="233v7iKOGPM" role="2OqNvi">
                          <ref role="3Tt5mk" to="55s9:XZLIaPnCPB" resolve="featureset" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="233v7iKOGPN" role="2OqNvi">
                        <ref role="3TsBF5" to="55s9:2sVpZP$Em_h" resolve="numRows" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="233v7iKOP6k" role="3cqZAp">
                  <node concept="3clFbS" id="233v7iKOP6m" role="3clFbx">
                    <node concept="3clFbF" id="233v7iKOWC6" role="3cqZAp">
                      <node concept="3vZbUc" id="233v7iKP1q3" role="3clFbG">
                        <node concept="3cmrfG" id="233v7iKP5fG" role="37vLTx">
                          <property role="3cmrfH" value="-1" />
                        </node>
                        <node concept="37vLTw" id="233v7iKOWC4" role="37vLTJ">
                          <ref role="3cqZAo" node="233v7iKOG7U" resolve="rows" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="233v7iKPbt0" role="3cqZAp">
                      <node concept="3cpWs3" id="233v7iKPhHP" role="3cqZAk">
                        <node concept="37vLTw" id="233v7iKPjNh" role="3uHU7B">
                          <ref role="3cqZAo" node="233v7iKOG7U" resolve="rows" />
                        </node>
                        <node concept="Xl_RD" id="233v7iKPfBA" role="3uHU7w">
                          <property role="Xl_RC" value="?" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3eOVzh" id="233v7iKOUCu" role="3clFbw">
                    <node concept="3cmrfG" id="233v7iKOUC$" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="37vLTw" id="233v7iKOR62" role="3uHU7B">
                      <ref role="3cqZAo" node="233v7iKOG7U" resolve="rows" />
                    </node>
                  </node>
                  <node concept="9aQIb" id="233v7iKPnXQ" role="9aQIa">
                    <node concept="3clFbS" id="233v7iKPnXR" role="9aQI4">
                      <node concept="3cpWs6" id="233v7iKPq3u" role="3cqZAp">
                        <node concept="3cpWs3" id="233v7iKPz4v" role="3cqZAk">
                          <node concept="Xl_RD" id="233v7iKPzCG" role="3uHU7w">
                            <property role="Xl_RC" value="" />
                          </node>
                          <node concept="37vLTw" id="233v7iKPue9" role="3uHU7B">
                            <ref role="3cqZAo" node="233v7iKOG7U" resolve="rows" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="233v7iKOFq2" role="3cqZAp" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="6Iu9bl6v9Wa" role="3EZMnx">
          <property role="3F0ifm" value="rows" />
        </node>
        <node concept="3F0ifn" id="6Iu9bl6vCrZ" role="3EZMnx">
          <property role="3F0ifm" value="]" />
          <node concept="11L4FC" id="6Iu9bl6w6Ao" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="6Iu9bl6vCsf" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <node concept="11L4FC" id="6Iu9bl6w$JL" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="ljvvj" id="6Iu9bl6v9Vb" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="6Iu9bl68YAg" role="3EZMnx">
        <ref role="PMmxG" node="6Iu9bl68YAc" resolve="SwgFeatureList" />
        <node concept="lj46D" id="6Iu9bl6sAOu" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="6Iu9bl6x2Wk" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="74vMKqQrVo8" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="6Iu9bl68YAc">
    <property role="TrG5h" value="SwgFeatureList" />
    <property role="3GE5qa" value="featureset" />
    <ref role="1XX52x" to="55s9:74vMKqQrVnB" resolve="FeaturesetOutput" />
    <node concept="3gTLQM" id="6Iu9bl68YAd" role="2wV5jI">
      <node concept="3Fmcul" id="6Iu9bl68YAe" role="3FoqZy">
        <node concept="3clFbS" id="6Iu9bl68YAf" role="2VODD2">
          <node concept="3SKdUt" id="6Iu9bl6gII0" role="3cqZAp">
            <node concept="3SKdUq" id="6Iu9bl6gII2" role="3SKWNk">
              <property role="3SKdUp" value="compose table" />
            </node>
          </node>
          <node concept="3cpWs8" id="6Iu9bl6aye2" role="3cqZAp">
            <node concept="3cpWsn" id="6Iu9bl6aye8" role="3cpWs9">
              <property role="TrG5h" value="head" />
              <node concept="10Q1$e" id="6Iu9bl6ayea" role="1tU5fm">
                <node concept="17QB3L" id="6Iu9bl6aDgn" role="10Q1$1" />
              </node>
              <node concept="2OqwBi" id="6Iu9bl6eE3P" role="33vP2m">
                <node concept="35c_gC" id="6Iu9bl6eDyL" role="2Oq$k0">
                  <ref role="35c_gD" to="55s9:46b_jc7VwtB" resolve="FeatureType" />
                </node>
                <node concept="2qgKlT" id="46b_jc7XELW" role="2OqNvi">
                  <ref role="37wK5l" to="917x:46b_jc7Vxbx" resolve="getHead" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6Iu9bl6advA" role="3cqZAp">
            <node concept="3cpWsn" id="6Iu9bl6advB" role="3cpWs9">
              <property role="TrG5h" value="data" />
              <node concept="10Q1$e" id="6Iu9bl6albv" role="1tU5fm">
                <node concept="10Q1$e" id="6Iu9bl6akJK" role="10Q1$1">
                  <node concept="3uibUv" id="6Iu9bl6advC" role="10Q1$1">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6Iu9bl6fUlp" role="33vP2m">
                <node concept="pncrf" id="5dzaEnaNhyu" role="2Oq$k0" />
                <node concept="2qgKlT" id="699fBOotYGN" role="2OqNvi">
                  <ref role="37wK5l" to="917x:6Iu9bl6fuej" resolve="getTable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6Iu9bl6gOJK" role="3cqZAp" />
          <node concept="3cpWs8" id="6Iu9bl6gLdx" role="3cqZAp">
            <node concept="3cpWsn" id="6Iu9bl6gLdy" role="3cpWs9">
              <property role="TrG5h" value="table" />
              <node concept="3uibUv" id="6Iu9bl6gLdz" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JTable" resolve="JTable" />
              </node>
              <node concept="2ShNRf" id="6Iu9bl6gMQF" role="33vP2m">
                <node concept="1pGfFk" id="6Iu9bl6gNVA" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JTable.&lt;init&gt;(java.lang.Object[][],java.lang.Object[])" resolve="JTable" />
                  <node concept="37vLTw" id="6Iu9bl6gU89" role="37wK5m">
                    <ref role="3cqZAo" node="6Iu9bl6advB" resolve="data" />
                  </node>
                  <node concept="37vLTw" id="6Iu9bl6gXH_" role="37wK5m">
                    <ref role="3cqZAo" node="6Iu9bl6aye8" resolve="head" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6Iu9bl6h3Rl" role="3cqZAp" />
          <node concept="3SKdUt" id="6Iu9bl6h5zy" role="3cqZAp">
            <node concept="3SKdUq" id="6Iu9bl6h5z$" role="3SKWNk">
              <property role="3SKdUp" value="add table to panel via scrollpane" />
            </node>
          </node>
          <node concept="3cpWs8" id="6Iu9bl6h8FL" role="3cqZAp">
            <node concept="3cpWsn" id="6Iu9bl6h8FM" role="3cpWs9">
              <property role="TrG5h" value="tPane" />
              <node concept="3uibUv" id="6Iu9bl6h8FN" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JScrollPane" resolve="JScrollPane" />
              </node>
              <node concept="2ShNRf" id="6Iu9bl6hcPM" role="33vP2m">
                <node concept="1pGfFk" id="6Iu9bl6hdVG" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JScrollPane.&lt;init&gt;(java.awt.Component)" resolve="JScrollPane" />
                  <node concept="37vLTw" id="6Iu9bl6hghH" role="37wK5m">
                    <ref role="3cqZAo" node="6Iu9bl6gLdy" resolve="table" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6Iu9bl6oVAS" role="3cqZAp">
            <node concept="3cpWsn" id="6Iu9bl6oVAV" role="3cpWs9">
              <property role="TrG5h" value="h" />
              <node concept="10P55v" id="6Iu9bl6oVAQ" role="1tU5fm" />
              <node concept="17qRlL" id="6Iu9bl6lVSk" role="33vP2m">
                <node concept="2$xPTn" id="6Iu9bl6nGde" role="3uHU7w">
                  <property role="2$xPTl" value="16.45f" />
                </node>
                <node concept="1eOMI4" id="6Iu9bl6m$Cj" role="3uHU7B">
                  <node concept="3cpWs3" id="6Iu9bl6mxWD" role="1eOMHV">
                    <node concept="1eOMI4" id="6Iu9bl6nSIN" role="3uHU7B">
                      <node concept="2OqwBi" id="6Iu9bl6lQJ$" role="1eOMHV">
                        <node concept="37vLTw" id="6Iu9bl6lPYh" role="2Oq$k0">
                          <ref role="3cqZAo" node="6Iu9bl6advB" resolve="data" />
                        </node>
                        <node concept="1Rwk04" id="6Iu9bl6lSAa" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="3b6qkQ" id="6Iu9bl6nOTA" role="3uHU7w">
                      <property role="$nhwW" value="1.0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6Iu9bl6hUBI" role="3cqZAp">
            <node concept="2OqwBi" id="6Iu9bl6hVTc" role="3clFbG">
              <node concept="37vLTw" id="6Iu9bl6hUBG" role="2Oq$k0">
                <ref role="3cqZAo" node="6Iu9bl6h8FM" resolve="tPane" />
              </node>
              <node concept="liA8E" id="6Iu9bl6hZ2G" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JComponent.setPreferredSize(java.awt.Dimension):void" resolve="setPreferredSize" />
                <node concept="2ShNRf" id="6Iu9bl6i0g4" role="37wK5m">
                  <node concept="1pGfFk" id="6Iu9bl6i2kk" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                    <node concept="3cmrfG" id="6Iu9bl6i3TY" role="37wK5m">
                      <property role="3cmrfH" value="400" />
                    </node>
                    <node concept="10QFUN" id="6Iu9bl6pdvd" role="37wK5m">
                      <node concept="10Oyi0" id="6Iu9bl6peSS" role="10QFUM" />
                      <node concept="37vLTw" id="6Iu9bl6pc9$" role="10QFUP">
                        <ref role="3cqZAo" node="6Iu9bl6oVAV" resolve="h" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6Iu9bl6blCr" role="3cqZAp" />
          <node concept="3cpWs6" id="6Iu9bl695So" role="3cqZAp">
            <node concept="37vLTw" id="6Iu9bl6rX9P" role="3cqZAk">
              <ref role="3cqZAo" node="6Iu9bl6h8FM" resolve="tPane" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2$uHlqTNnB7">
    <property role="3GE5qa" value="featureset" />
    <ref role="1XX52x" to="55s9:7OzZ9xI8jbt" resolve="FeaturesetType" />
    <node concept="3F0ifn" id="2$uHlqTNnB9" role="2wV5jI">
      <property role="3F0ifm" value="featureset" />
    </node>
    <node concept="3EZMnI" id="1lXEU5vmE_k" role="6VMZX">
      <node concept="2iRkQZ" id="1lXEU5vmE_l" role="2iSdaV" />
      <node concept="3EZMnI" id="1lXEU5vmE_q" role="3EZMnx">
        <node concept="VPM3Z" id="1lXEU5vmE_s" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3EZMnI" id="1lXEU5vmE_$" role="3EZMnx">
          <node concept="VPM3Z" id="1lXEU5vmE_A" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F0ifn" id="1lXEU5vmE_C" role="3EZMnx">
            <property role="3F0ifm" value="name" />
          </node>
          <node concept="3F0ifn" id="1lXEU5vmEA8" role="3EZMnx">
            <property role="3F0ifm" value="num rows" />
          </node>
          <node concept="3F0ifn" id="1lXEU5vmEAu" role="3EZMnx">
            <property role="3F0ifm" value="features" />
          </node>
          <node concept="2iRkQZ" id="1lXEU5vmE_D" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="1lXEU5vmE_O" role="3EZMnx">
          <node concept="VPM3Z" id="1lXEU5vmE_Q" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F0A7n" id="1lXEU5vmEA2" role="3EZMnx">
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
          <node concept="3F0A7n" id="1lXEU5vmEAf" role="3EZMnx">
            <ref role="1NtTu8" to="55s9:2sVpZP$Em_h" resolve="numRows" />
          </node>
          <node concept="3F2HdR" id="1lXEU5vmEAn" role="3EZMnx">
            <ref role="1NtTu8" to="5frd:5c6KWTiqlNT" resolve="items" />
            <node concept="2iRkQZ" id="1lXEU5vmEAp" role="2czzBx" />
          </node>
          <node concept="2iRkQZ" id="1lXEU5vmE_T" role="2iSdaV" />
        </node>
        <node concept="2iRfu4" id="1lXEU5vmE_v" role="2iSdaV" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="46b_jc7Vx8_">
    <property role="3GE5qa" value="feature" />
    <ref role="1XX52x" to="55s9:46b_jc7VwtB" resolve="FeatureType" />
    <node concept="3EZMnI" id="46b_jc7Vx8B" role="2wV5jI">
      <node concept="3F0A7n" id="46b_jc7Vx8C" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="46b_jc7Vx8D" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="46b_jc7Vx8E" role="3EZMnx">
        <ref role="1NtTu8" to="55s9:46b_jc7Vx81" resolve="scale" />
      </node>
      <node concept="l2Vlx" id="46b_jc7Vx8F" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4fA_w_svabH">
    <property role="3GE5qa" value="featurevector" />
    <ref role="1XX52x" to="55s9:4fA_w_svabf" resolve="FeatureVectorType" />
    <node concept="3EZMnI" id="4fA_w_svabJ" role="2wV5jI">
      <node concept="3F0ifn" id="4fA_w_svabQ" role="3EZMnx">
        <property role="3F0ifm" value="feature-vector" />
      </node>
      <node concept="3F0ifn" id="4fA_w_svac$" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
      </node>
      <node concept="3F1sOY" id="4fA_w_svac0" role="3EZMnx">
        <ref role="1NtTu8" to="55s9:4fA_w_svabg" resolve="type" />
      </node>
      <node concept="3F0ifn" id="4fA_w_svacM" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
      </node>
      <node concept="2iRfu4" id="4fA_w_svabM" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="37IcDEP2sBR">
    <property role="3GE5qa" value="editing.features" />
    <ref role="1XX52x" to="55s9:fN3qU6G$wA" resolve="AddFeatureStatement" />
    <node concept="3EZMnI" id="fN3qU6G$x4" role="2wV5jI">
      <node concept="3F0ifn" id="fN3qU6G$xb" role="3EZMnx">
        <property role="3F0ifm" value="add feature" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="3F0A7n" id="fN3qU6G$xw" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" to="wg1f:4fA_w_szsJz" resolve="item" />
      </node>
      <node concept="3F0ifn" id="zjcGs$Jo$r" role="3EZMnx">
        <property role="3F0ifm" value="from" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="3F1sOY" id="fN3qU6G$yp" role="3EZMnx">
        <ref role="1NtTu8" to="55s9:fN3qU6G$yn" resolve="initialization" />
      </node>
      <node concept="l2Vlx" id="4kZuEukX2_h" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="37IcDEOYvq3">
    <property role="3GE5qa" value="editing.features" />
    <ref role="1XX52x" to="55s9:3RQ8TRgFzZU" resolve="DeleteFeaturesStatement" />
    <node concept="3EZMnI" id="3RQ8TRgF$0t" role="2wV5jI">
      <node concept="1HlG4h" id="1o0JaC2yp$p" role="3EZMnx">
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
        <node concept="1HfYo3" id="1o0JaC2yp$r" role="1HlULh">
          <node concept="3TQlhw" id="1o0JaC2yp$t" role="1Hhtcw">
            <node concept="3clFbS" id="1o0JaC2yp$v" role="2VODD2">
              <node concept="3clFbJ" id="1o0JaC2yr71" role="3cqZAp">
                <node concept="22lmx$" id="1o0JaC2yu9P" role="3clFbw">
                  <node concept="3clFbC" id="1o0JaC2yDRu" role="3uHU7w">
                    <node concept="3cmrfG" id="1o0JaC2yEp6" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2OqwBi" id="1o0JaC2yyQd" role="3uHU7B">
                      <node concept="2OqwBi" id="1o0JaC2yvWg" role="2Oq$k0">
                        <node concept="2OqwBi" id="1o0JaC2yuDa" role="2Oq$k0">
                          <node concept="pncrf" id="1o0JaC2yunv" role="2Oq$k0" />
                          <node concept="3TrEf2" id="1o0JaC2yv9B" role="2OqNvi">
                            <ref role="3Tt5mk" to="55s9:3RQ8TRgFRdF" resolve="features" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="1o0JaC2ywro" role="2OqNvi">
                          <ref role="37wK5l" to="64zb:1IIUr1cItWr" resolve="getSelectedItems" />
                        </node>
                      </node>
                      <node concept="34oBXx" id="1o0JaC2yAUA" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1o0JaC2ysGk" role="3uHU7B">
                    <node concept="2OqwBi" id="1o0JaC2yrwX" role="2Oq$k0">
                      <node concept="pncrf" id="1o0JaC2yrfy" role="2Oq$k0" />
                      <node concept="3TrEf2" id="1o0JaC2yrWw" role="2OqNvi">
                        <ref role="3Tt5mk" to="55s9:3RQ8TRgFRdF" resolve="features" />
                      </node>
                    </node>
                    <node concept="3w_OXm" id="1o0JaC2ytqg" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3clFbS" id="1o0JaC2yr73" role="3clFbx">
                  <node concept="3cpWs6" id="1o0JaC2yEUt" role="3cqZAp">
                    <node concept="Xl_RD" id="1o0JaC2yFXh" role="3cqZAk">
                      <property role="Xl_RC" value="delete feature" />
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="1o0JaC2yH0n" role="9aQIa">
                  <node concept="3clFbS" id="1o0JaC2yH0o" role="9aQI4">
                    <node concept="3cpWs6" id="1o0JaC2yHxW" role="3cqZAp">
                      <node concept="Xl_RD" id="1o0JaC2yHxX" role="3cqZAk">
                        <property role="Xl_RC" value="delete features" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="3RQ8TRgFRdL" role="3EZMnx">
        <ref role="1NtTu8" to="55s9:3RQ8TRgFRdF" resolve="features" />
      </node>
      <node concept="2iRfu4" id="3RQ8TRgF$0w" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1o0JaC2_2D0">
    <property role="3GE5qa" value="editing.instances" />
    <ref role="1XX52x" to="55s9:1o0JaC2yjQQ" resolve="DeleteInstancesStatement" />
    <node concept="3EZMnI" id="1o0JaC2_2D2" role="2wV5jI">
      <node concept="3F0ifn" id="1o0JaC2_3aU" role="3EZMnx">
        <property role="3F0ifm" value="delete instances where:" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="3F1sOY" id="1o0JaC2_UaZ" role="3EZMnx">
        <ref role="1NtTu8" to="55s9:1o0JaC2_8h2" resolve="condition" />
      </node>
      <node concept="2iRfu4" id="1o0JaC2_2D5" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="yCGLuIzPgL">
    <property role="3GE5qa" value="editing.features" />
    <ref role="1XX52x" to="55s9:5TCgtqdzv5q" resolve="ReplaceFeatureStatement" />
    <node concept="3EZMnI" id="yCGLuIzPgN" role="2wV5jI">
      <node concept="3F0ifn" id="yCGLuIzPgU" role="3EZMnx">
        <property role="3F0ifm" value="replace feature" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="3F1sOY" id="yCGLuIzPhb" role="3EZMnx">
        <ref role="1NtTu8" to="55s9:yCGLuIzPh8" resolve="feature" />
      </node>
      <node concept="3F0ifn" id="yCGLuIzPhj" role="3EZMnx">
        <property role="3F0ifm" value="with" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="3F1sOY" id="yCGLuIzPht" role="3EZMnx">
        <ref role="1NtTu8" to="55s9:5TCgtqdzv5t" resolve="initialization" />
      </node>
      <node concept="l2Vlx" id="yCGLuIzPgQ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7bbTq028G9t">
    <property role="3GE5qa" value="editing" />
    <ref role="1XX52x" to="55s9:7bbTq028G91" resolve="SetIndexStatement" />
    <node concept="3EZMnI" id="7bbTq028G9v" role="2wV5jI">
      <node concept="3F0ifn" id="7bbTq028G9A" role="3EZMnx">
        <property role="3F0ifm" value="set" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="3F0ifn" id="7bbTq028G9G" role="3EZMnx">
        <property role="3F0ifm" value="index" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="3F1sOY" id="7bbTq028G9O" role="3EZMnx">
        <ref role="1k5W1q" to="wg1f:4fA_w_szsJz" resolve="item" />
        <ref role="1NtTu8" to="55s9:7bbTq028G92" resolve="feature" />
      </node>
      <node concept="2iRfu4" id="7bbTq028G9y" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7bbTq028G8_">
    <property role="3GE5qa" value="editing" />
    <ref role="1XX52x" to="55s9:7bbTq028G89" resolve="SetTruthStatement" />
    <node concept="3EZMnI" id="7bbTq028G8B" role="2wV5jI">
      <node concept="3F0ifn" id="7bbTq028G8I" role="3EZMnx">
        <property role="3F0ifm" value="set" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="3F0ifn" id="7bbTq028G8O" role="3EZMnx">
        <property role="3F0ifm" value="truth" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="3F1sOY" id="7bbTq028G8W" role="3EZMnx">
        <ref role="1k5W1q" to="wg1f:4fA_w_szsJz" resolve="item" />
        <ref role="1NtTu8" to="55s9:7bbTq028G8a" resolve="feature" />
      </node>
      <node concept="2iRfu4" id="7bbTq028G8E" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="55_guBAV8M3">
    <property role="3GE5qa" value="editing.instances.condense" />
    <ref role="1XX52x" to="55s9:5j1RGb7afpO" resolve="CondenseInstancesStatement" />
    <node concept="3EZMnI" id="55_guBAV8M5" role="2wV5jI">
      <node concept="3F0ifn" id="55_guBAV8Mc" role="3EZMnx">
        <property role="3F0ifm" value="condense instances on" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="3F1sOY" id="55_guBAV8Ms" role="3EZMnx">
        <ref role="1NtTu8" to="55s9:55_guBAV8Mq" resolve="method" />
      </node>
      <node concept="2iRfu4" id="55_guBAV8M8" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="55_guBAV8MV">
    <property role="3GE5qa" value="editing.instances.condense.method" />
    <ref role="1XX52x" to="55s9:55_guBAV8Mn" resolve="CondenseOnCondition" />
    <node concept="3EZMnI" id="55_guBAV8MX" role="2wV5jI">
      <node concept="3F0ifn" id="55_guBAV8N4" role="3EZMnx">
        <property role="3F0ifm" value="condition" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sHaIY" resolve="option" />
      </node>
      <node concept="3F0ifn" id="55_guBAV8Na" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sGOjD" resolve="colon" />
      </node>
      <node concept="3F1sOY" id="55_guBAV8Ni" role="3EZMnx">
        <ref role="1NtTu8" to="55s9:55_guBAV8Mw" resolve="condition" />
      </node>
      <node concept="2iRfu4" id="55_guBAV8N0" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="55_guBAVEw3">
    <property role="3GE5qa" value="editing.instances.condense.method" />
    <ref role="1XX52x" to="55s9:55_guBAV8Mo" resolve="CondenseOnFeatures" />
    <node concept="3EZMnI" id="55_guBAVEw5" role="2wV5jI">
      <node concept="3F0ifn" id="55_guBAVEwc" role="3EZMnx">
        <property role="3F0ifm" value="feature-values" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sHaIY" resolve="option" />
      </node>
      <node concept="3F0ifn" id="55_guBAVEwi" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sGOjD" resolve="colon" />
      </node>
      <node concept="3F2HdR" id="3WA_7dKRHVV" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="55s9:55_guBAVEwq" resolve="features" />
        <node concept="2iRfu4" id="3WA_7dKRHVX" role="2czzBx" />
      </node>
      <node concept="2iRfu4" id="55_guBAVEw8" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="zjcGs$CJLO">
    <property role="3GE5qa" value="editing.instances.sort" />
    <ref role="1XX52x" to="55s9:zjcGs$CJLq" resolve="SortAtRandom" />
    <node concept="3F0ifn" id="zjcGs$CJLQ" role="2wV5jI">
      <property role="3F0ifm" value="at random" />
    </node>
  </node>
  <node concept="24kQdi" id="zjcGs$CJMi">
    <property role="3GE5qa" value="editing.instances.sort" />
    <ref role="1XX52x" to="55s9:zjcGs$C_5z" resolve="SortInstancesStatement" />
    <node concept="3EZMnI" id="zjcGs$CJMk" role="2wV5jI">
      <node concept="3F0ifn" id="zjcGs$CJMr" role="3EZMnx">
        <property role="3F0ifm" value="sort instances" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="3F1sOY" id="zjcGs$CJM_" role="3EZMnx">
        <ref role="1NtTu8" to="55s9:zjcGs$C_8v" resolve="criterion" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sHaIY" resolve="option" />
      </node>
      <node concept="2iRfu4" id="zjcGs$CJMn" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="zjcGs$CJN2">
    <property role="3GE5qa" value="editing.instances.sort" />
    <ref role="1XX52x" to="55s9:zjcGs$C_8_" resolve="SortByIndex" />
    <node concept="3F0ifn" id="zjcGs$CJN4" role="2wV5jI">
      <property role="3F0ifm" value="by index" />
    </node>
  </node>
  <node concept="24kQdi" id="zjcGs$CJNy">
    <property role="3GE5qa" value="editing.instances.sort" />
    <ref role="1XX52x" to="55s9:zjcGs$C_8A" resolve="SortByFeature" />
    <node concept="3EZMnI" id="zjcGs$CJN$" role="2wV5jI">
      <node concept="3F0ifn" id="2efi5br7BCh" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sAgAS" resolve="leftBracket" />
      </node>
      <node concept="3F0ifn" id="zjcGs$CJNF" role="3EZMnx">
        <property role="3F0ifm" value="by-feature" />
      </node>
      <node concept="3F0ifn" id="zjcGs$CJNL" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sGOjD" resolve="colon" />
      </node>
      <node concept="3F1sOY" id="zjcGs$CJNT" role="3EZMnx">
        <ref role="1NtTu8" to="55s9:zjcGs$CJN7" resolve="feature" />
      </node>
      <node concept="3F0ifn" id="2efi5br7BC5" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sAgCG" resolve="rightBracket" />
      </node>
      <node concept="2iRfu4" id="zjcGs$CJNB" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="zjcGs$IBrn">
    <property role="3GE5qa" value="feature.extraction" />
    <ref role="1XX52x" to="55s9:zjcGs$E7Fx" resolve="ExtractFromExpression" />
    <node concept="3EZMnI" id="zjcGs$IBrs" role="2wV5jI">
      <node concept="3F0ifn" id="zjcGs$IBru" role="3EZMnx">
        <property role="3F0ifm" value="expression:" />
      </node>
      <node concept="PMmxH" id="zjcGs$IBrA" role="3EZMnx">
        <ref role="PMmxG" to="26nm:37IcDEOZgCT" resolve="RevealType" />
      </node>
      <node concept="3F1sOY" id="zjcGs$IBrM" role="3EZMnx">
        <ref role="1NtTu8" to="5frd:fN3qU6G$xL" resolve="expression" />
      </node>
      <node concept="2iRfu4" id="zjcGs$IBrv" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6Y$bjgGPPQf">
    <property role="3GE5qa" value="editing.instances.condense.method" />
    <ref role="1XX52x" to="55s9:55_guBAV8Mm" resolve="AbstractCondenseMethod" />
    <node concept="1xolST" id="6Y$bjgGPPQh" role="2wV5jI">
      <property role="1xolSY" value="&lt;no method&gt;" />
    </node>
  </node>
  <node concept="24kQdi" id="7$05xKP9tYq">
    <property role="3GE5qa" value="editing.features" />
    <ref role="1XX52x" to="55s9:7$05xKP9tUS" resolve="GroupFeaturesStatement" />
    <node concept="3EZMnI" id="7$05xKP9tYs" role="2wV5jI">
      <node concept="3F0ifn" id="7$05xKP9tYz" role="3EZMnx">
        <property role="3F0ifm" value="group features as" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="3F0A7n" id="7$05xKP9tYJ" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" to="wg1f:4fA_w_szsJz" resolve="item" />
      </node>
      <node concept="3F0ifn" id="7$05xKP9tYR" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sGOjD" resolve="colon" />
      </node>
      <node concept="3F1sOY" id="7$05xKP9tZ1" role="3EZMnx">
        <ref role="1NtTu8" to="55s9:7$05xKP9tUT" resolve="features" />
      </node>
      <node concept="2iRfu4" id="7$05xKP9tYv" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5QpNmQnSi6I">
    <property role="3GE5qa" value="editing.features.preprocess" />
    <ref role="1XX52x" to="55s9:5QpNmQnSi1G" resolve="PreprocessFeature" />
    <node concept="3EZMnI" id="5QpNmQnSi6K" role="2wV5jI">
      <node concept="3F0ifn" id="5QpNmQnSi6R" role="3EZMnx">
        <property role="3F0ifm" value="preprocess feature" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="3F1sOY" id="5QpNmQnSi6X" role="3EZMnx">
        <ref role="1NtTu8" to="55s9:5QpNmQnSi6j" resolve="feature" />
        <ref role="1k5W1q" to="wg1f:4fA_w_szsJz" resolve="item" />
      </node>
      <node concept="3F0ifn" id="5QpNmQnSi7x" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sGOjD" resolve="colon" />
      </node>
      <node concept="3F1sOY" id="5QpNmQnSi7F" role="3EZMnx">
        <ref role="1NtTu8" to="55s9:5QpNmQnSi7q" resolve="action" />
      </node>
      <node concept="2iRfu4" id="5QpNmQnSi6N" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5QpNmQnSoaW">
    <property role="3GE5qa" value="editing.features.preprocess.action" />
    <ref role="1XX52x" to="55s9:5QpNmQnSi7L" resolve="EncodeLabelsAction" />
    <node concept="3EZMnI" id="5QpNmQnSoaY" role="2wV5jI">
      <node concept="3F0ifn" id="5QpNmQnSob5" role="3EZMnx">
        <property role="3F0ifm" value="encode labels using" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="3F0A7n" id="5QpNmQnSobb" role="3EZMnx">
        <ref role="1NtTu8" to="55s9:5QpNmQnSoah" resolve="multi_column" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sHaIY" resolve="option" />
      </node>
      <node concept="2iRfu4" id="5QpNmQnSob1" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6kn8py6dVkh">
    <property role="3GE5qa" value="editing.features.preprocess.action" />
    <ref role="1XX52x" to="55s9:5QpNmQnTqsW" resolve="ReplaceOutliersAction" />
    <node concept="3EZMnI" id="6kn8py6dVkj" role="2wV5jI">
      <node concept="3F0ifn" id="6kn8py6dVkq" role="3EZMnx">
        <property role="3F0ifm" value="replace outliers" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="3F0A7n" id="6kn8py6gPCY" role="3EZMnx">
        <ref role="1NtTu8" to="55s9:6kn8py6gPCW" resolve="replacement" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sHaIY" resolve="option" />
      </node>
      <node concept="2iRfu4" id="6kn8py6dVkm" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6kn8py6euU3">
    <property role="3GE5qa" value="editing.features.preprocess.action" />
    <ref role="1XX52x" to="55s9:6kn8py6eu4_" resolve="StandardizeAction" />
    <node concept="3EZMnI" id="6kn8py6euU5" role="2wV5jI">
      <node concept="3F0ifn" id="6kn8py6euUc" role="3EZMnx">
        <property role="3F0ifm" value="standardize" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="3F0ifn" id="3KhNVPMZYZh" role="3EZMnx">
        <property role="3F0ifm" value="grouped by" />
        <ref role="1k5W1q" to="wg1f:55_guBAQ6Rv" resolve="optionalKey" />
        <node concept="pkWqt" id="3KhNVPMZYZy" role="pqm2j">
          <node concept="3clFbS" id="3KhNVPMZYZz" role="2VODD2">
            <node concept="3clFbF" id="3KhNVPN05_n" role="3cqZAp">
              <node concept="2OqwBi" id="3KhNVPN06S7" role="3clFbG">
                <node concept="2OqwBi" id="3KhNVPN05PX" role="2Oq$k0">
                  <node concept="pncrf" id="3KhNVPN05_m" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3KhNVPN06mL" role="2OqNvi">
                    <ref role="3Tt5mk" to="55s9:6kn8py6euUI" resolve="groupedBy" />
                  </node>
                </node>
                <node concept="3x8VRR" id="3KhNVPN07Iv" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="6kn8py6euUK" role="3EZMnx">
        <property role="1$x2rV" value="&lt;group by&gt;" />
        <ref role="1NtTu8" to="55s9:6kn8py6euUI" resolve="groupedBy" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sHaIY" resolve="option" />
      </node>
      <node concept="2iRfu4" id="6kn8py6euU8" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="n35csPgVC3">
    <property role="3GE5qa" value="editing.features" />
    <ref role="1XX52x" to="55s9:n35csPgFna" resolve="ExpandFeatureVectorStatement" />
    <node concept="3EZMnI" id="n35csPgVC5" role="2wV5jI">
      <node concept="3F0ifn" id="n35csPgVCc" role="3EZMnx">
        <property role="3F0ifm" value="expand feature-vector" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="3F1sOY" id="n35csPgVCi" role="3EZMnx">
        <ref role="1NtTu8" to="55s9:n35csPgQz0" resolve="feature" />
      </node>
      <node concept="2iRfu4" id="n35csPgVC8" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2qzUg86PdRw">
    <property role="3GE5qa" value="editing.features.preprocess.action.fill" />
    <ref role="1XX52x" to="55s9:2qzUg86P2kw" resolve="FillEmptyStringFeatureCellsAction" />
    <node concept="3EZMnI" id="2qzUg86PdRy" role="2wV5jI">
      <node concept="3F0ifn" id="2qzUg86PdRD" role="3EZMnx">
        <property role="3F0ifm" value="fill empty cells" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="3F0ifn" id="2qzUg86PmmF" role="3EZMnx">
        <property role="3F0ifm" value="with value" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="3F1sOY" id="2qzUg86PmmP" role="3EZMnx">
        <ref role="1NtTu8" to="55s9:2qzUg86PfN6" resolve="value" />
      </node>
      <node concept="2iRfu4" id="2qzUg86PdR_" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2qzUg86RhWE">
    <property role="3GE5qa" value="editing.features.preprocess.action.fill" />
    <ref role="1XX52x" to="55s9:2qzUg86Rget" resolve="FillEmptyNumberFeatureCellsAction" />
    <node concept="3EZMnI" id="2qzUg86RhWG" role="2wV5jI">
      <node concept="3F0ifn" id="2qzUg86RhWN" role="3EZMnx">
        <property role="3F0ifm" value="fill empty cells" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="3F0A7n" id="2qzUg86RhWT" role="3EZMnx">
        <ref role="1NtTu8" to="55s9:2qzUg86RhWf" resolve="replacement" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sHaIY" resolve="option" />
      </node>
      <node concept="3F1sOY" id="2qzUg86Ri2k" role="3EZMnx">
        <ref role="1NtTu8" to="55s9:2qzUg86Rgeu" resolve="value" />
        <node concept="pkWqt" id="2qzUg86Ri2p" role="pqm2j">
          <node concept="3clFbS" id="2qzUg86Ri2q" role="2VODD2">
            <node concept="3clFbF" id="2qzUg86RiHQ" role="3cqZAp">
              <node concept="2OqwBi" id="2qzUg86Rk8g" role="3clFbG">
                <node concept="2OqwBi" id="2qzUg86RiYs" role="2Oq$k0">
                  <node concept="pncrf" id="2qzUg86RiHP" role="2Oq$k0" />
                  <node concept="3TrcHB" id="2qzUg86Rjvg" role="2OqNvi">
                    <ref role="3TsBF5" to="55s9:2qzUg86RhWf" resolve="replacement" />
                  </node>
                </node>
                <node concept="liA8E" id="2qzUg86Rl1o" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="Xl_RD" id="2qzUg86Rlbm" role="37wK5m">
                    <property role="Xl_RC" value="value" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="2qzUg86RhWJ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2aoocML67bc">
    <property role="3GE5qa" value="editing.instances" />
    <ref role="1XX52x" to="55s9:2aoocML5R4R" resolve="EditInstances" />
    <node concept="3EZMnI" id="2aoocML67be" role="2wV5jI">
      <node concept="3F0ifn" id="2aoocML67bl" role="3EZMnx">
        <property role="3F0ifm" value="edit instances" />
      </node>
      <node concept="3F0ifn" id="2aoocML67br" role="3EZMnx">
        <property role="3F0ifm" value="on" />
      </node>
      <node concept="3F1sOY" id="2aoocML67bB" role="3EZMnx">
        <ref role="1NtTu8" to="55s9:2aoocML67bz" resolve="feature" />
      </node>
      <node concept="3F0ifn" id="2aoocML67bL" role="3EZMnx">
        <property role="3F0ifm" value="if" />
        <node concept="pkWqt" id="2aoocML67c4" role="pqm2j">
          <node concept="3clFbS" id="2aoocML67c5" role="2VODD2">
            <node concept="3clFbF" id="2aoocML6hW1" role="3cqZAp">
              <node concept="2OqwBi" id="2aoocML6jyp" role="3clFbG">
                <node concept="2OqwBi" id="2aoocML6idE" role="2Oq$k0">
                  <node concept="pncrf" id="2aoocML6hW0" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2aoocML6iHd" role="2OqNvi">
                    <ref role="3Tt5mk" to="55s9:2aoocML5R4S" resolve="condition" />
                  </node>
                </node>
                <node concept="3x8VRR" id="2aoocML6kp_" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="2aoocML67bX" role="3EZMnx">
        <ref role="1NtTu8" to="55s9:2aoocML5R4S" resolve="condition" />
      </node>
      <node concept="3F0ifn" id="2aoocML6kU6" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="2aoocML6lwh" role="3EZMnx">
        <ref role="1NtTu8" to="55s9:2aoocML5R4U" resolve="expression" />
      </node>
      <node concept="2iRfu4" id="2aoocML67bh" role="2iSdaV" />
    </node>
  </node>
</model>

