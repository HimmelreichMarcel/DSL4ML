<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c0654c8f-a7ed-4137-a6fa-db3cce3aee56(languageComposition.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
    <use id="1919c723-b60b-4592-9318-9ce96d91da44" name="de.itemis.mps.editor.celllayout" version="0" />
    <use id="b33d119e-196d-4497-977c-5c167b21fe33" name="com.mbeddr.mpsutil.framecell" version="0" />
    <use id="c73b17af-16a1-4490-8072-8a84937c5206" name="com.mbeddr.mpsutil.treenotation" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="epcs" ref="b33d119e-196d-4497-977c-5c167b21fe33/r:b7f325a3-1f57-46bc-8b14-d2d7c5ff6714(com.mbeddr.mpsutil.framecell/com.mbeddr.mpsutil.framecell.editor)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="5un2" ref="r:00d6ee44-268c-4818-b3e7-4eecf669c7ee(com.mbeddr.mpsutil.treenotation.styles.editor)" />
    <import index="fbzs" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.geom(JDK/)" />
    <import index="4io5" ref="b0f8641f-bd77-4421-8425-30d9088a82f7/java:org.apache.commons.math3.geometry.euclidean.twod(org.apache.commons/)" />
    <import index="uppb" ref="r:5d0a6785-dbcb-4f7f-8750-d549f6bd192c(languageComposition.structure)" />
    <import index="m961" ref="r:3f1d2eb5-9dde-41ef-998b-a3f2e0560a41(languageComposition.behavior)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1402906326895675325" name="jetbrains.mps.lang.editor.structure.CellActionMap_FunctionParm_selectedNode" flags="nn" index="0IXxy" />
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="1226339813308" name="jetbrains.mps.lang.editor.structure.PaddingBottomStyleClassItem" flags="ln" index="27z8qx" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186402211651" name="jetbrains.mps.lang.editor.structure.StyleSheet" flags="ng" index="V5hpn">
        <child id="1186402402630" name="styleClass" index="V601i" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
        <child id="1186403803051" name="query" index="VblUZ" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186404574412" name="jetbrains.mps.lang.editor.structure.BackgroundColorStyleClassItem" flags="ln" index="Veino" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1186415722038" name="jetbrains.mps.lang.editor.structure.FontSizeStyleClassItem" flags="ln" index="VSNWy">
        <property id="1221209241505" name="value" index="1lJzqX" />
      </concept>
      <concept id="3383245079137382180" name="jetbrains.mps.lang.editor.structure.StyleClass" flags="ig" index="14StLt" />
      <concept id="1235999440492" name="jetbrains.mps.lang.editor.structure.HorizontalAlign" flags="ln" index="37jFXN">
        <property id="1235999920262" name="align" index="37lx6p" />
      </concept>
      <concept id="1139535219966" name="jetbrains.mps.lang.editor.structure.CellActionMapDeclaration" flags="ig" index="1h_SRR">
        <reference id="1139535219968" name="applicableConcept" index="1h_SK9" />
        <child id="1139535219969" name="item" index="1h_SK8" />
      </concept>
      <concept id="1139535280617" name="jetbrains.mps.lang.editor.structure.CellActionMapItem" flags="lg" index="1hA7zw">
        <property id="1139535298778" name="actionId" index="1hAc7j" />
        <child id="1139535280620" name="executeFunction" index="1hA7z_" />
      </concept>
      <concept id="1139535439104" name="jetbrains.mps.lang.editor.structure.CellActionMap_ExecuteFunction" flags="in" index="1hAIg9" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1225456267680" name="jetbrains.mps.lang.editor.structure.RGBColor" flags="ng" index="1iSF2X">
        <property id="1225456424731" name="value" index="1iTho6" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1223387125302" name="jetbrains.mps.lang.editor.structure.QueryFunction_Boolean" flags="in" index="3nzxsE" />
      <concept id="3982520150125052579" name="jetbrains.mps.lang.editor.structure.QueryFunction_AttributeStyleParameter" flags="ig" index="3sjG9q" />
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="3982520150122341378" name="jetbrains.mps.lang.editor.structure.AttributeStyleClassItem" flags="lg" index="3tD6jV">
        <reference id="3982520150122346707" name="attribute" index="3tD7wE" />
        <child id="3982520150122341379" name="query" index="3tD6jU" />
      </concept>
      <concept id="9122903797336200704" name="jetbrains.mps.lang.editor.structure.ApplyStyleClassCondition" flags="lg" index="1uO$qF">
        <child id="9122903797336200706" name="query" index="1uO$qD" />
      </concept>
      <concept id="9122903797312246523" name="jetbrains.mps.lang.editor.structure.StyleReference" flags="ng" index="1wgc9g">
        <reference id="9122903797312247166" name="style" index="1wgcnl" />
      </concept>
      <concept id="1215007762405" name="jetbrains.mps.lang.editor.structure.FloatStyleClassItem" flags="ln" index="3$6MrZ">
        <property id="1215007802031" name="value" index="3$6WeP" />
      </concept>
      <concept id="1215007883204" name="jetbrains.mps.lang.editor.structure.PaddingLeftStyleClassItem" flags="ln" index="3$7fVu" />
      <concept id="1215007897487" name="jetbrains.mps.lang.editor.structure.PaddingRightStyleClassItem" flags="ln" index="3$7jql" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <property id="1130859485024" name="attractsFocus" index="1cu_pB" />
        <reference id="1139959269582" name="actionMap" index="1ERwB7" />
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
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR">
        <reference id="1173177718857" name="elementActionMap" index="APP_o" />
      </concept>
      <concept id="1161622981231" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1Q80Hx" />
      <concept id="1950447826681509042" name="jetbrains.mps.lang.editor.structure.ApplyStyleClass" flags="lg" index="3Xmtl4">
        <child id="1950447826683828796" name="target" index="3XvnJa" />
      </concept>
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
      <concept id="1176809959526" name="jetbrains.mps.lang.editor.structure.QueryFunction_Color" flags="in" index="3ZlJ5R" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534513062" name="jetbrains.mps.baseLanguage.structure.DoubleType" flags="in" index="10P55v" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1111509017652" name="jetbrains.mps.baseLanguage.structure.FloatingPointConstant" flags="nn" index="3b6qkQ">
        <property id="1113006610751" name="value" index="$nhwW" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
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
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
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
      <concept id="1068581242867" name="jetbrains.mps.baseLanguage.structure.LongType" flags="in" index="3cpWsb" />
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="c73b17af-16a1-4490-8072-8a84937c5206" name="com.mbeddr.mpsutil.treenotation">
      <concept id="134774857084556552" name="com.mbeddr.mpsutil.treenotation.structure.TreeCell" flags="ng" index="2SWKgc">
        <child id="134774857084558327" name="treeRoot" index="2SWKFN" />
        <child id="134774857084558329" name="treeChildren" index="2SWKFX" />
        <child id="8433232831282980026" name="outgoingShape" index="15K7wI" />
      </concept>
      <concept id="8433232831282901144" name="com.mbeddr.mpsutil.treenotation.structure.ShapeParameterReference" flags="ng" index="15NUKc">
        <reference id="8433232831282901145" name="declaration" index="15NUKd" />
      </concept>
      <concept id="8433232831282901106" name="com.mbeddr.mpsutil.treenotation.structure.ShapeParameterDeclaration" flags="ng" index="15NUNA">
        <child id="8433232831282901107" name="type" index="15NUNB" />
      </concept>
      <concept id="8796347991408045445" name="com.mbeddr.mpsutil.treenotation.structure.IncomingShapeStyle" flags="lg" index="3uywDx">
        <child id="8796347991408045465" name="shape" index="3uywDX" />
      </concept>
      <concept id="8877288515762046938" name="com.mbeddr.mpsutil.treenotation.structure.Parameter_edges" flags="ng" index="1X_b45" />
      <concept id="8877288515762041727" name="com.mbeddr.mpsutil.treenotation.structure.ShapeReference" flags="ng" index="1X_cmw">
        <reference id="8877288515762041730" name="shape" index="1X_clt" />
        <child id="8433232831282903903" name="actualParameters" index="15NUvb" />
      </concept>
      <concept id="8877288515762039493" name="com.mbeddr.mpsutil.treenotation.structure.Parameter_graphics" flags="ng" index="1X_dKq" />
      <concept id="8877288515762039490" name="com.mbeddr.mpsutil.treenotation.structure.ShapePaintFunction" flags="ig" index="1X_dKt" />
      <concept id="8877288515762039489" name="com.mbeddr.mpsutil.treenotation.structure.Shape" flags="ng" index="1X_dKu">
        <child id="8433232831282905030" name="parameters" index="15NUdi" />
        <child id="8877288515762039491" name="paintFunction" index="1X_dKs" />
      </concept>
    </language>
    <language id="b33d119e-196d-4497-977c-5c167b21fe33" name="com.mbeddr.mpsutil.framecell">
      <concept id="8760592470373336790" name="com.mbeddr.mpsutil.framecell.structure.CellModel_FrameCell" flags="ng" index="3j0QqT">
        <child id="8760592470373394508" name="child" index="3j0Cwz" />
      </concept>
    </language>
    <language id="1919c723-b60b-4592-9318-9ce96d91da44" name="de.itemis.mps.editor.celllayout">
      <concept id="4682418030829244851" name="de.itemis.mps.editor.celllayout.structure.StringStyle" flags="lg" index="2TzlJg">
        <property id="1238091709220" name="value" index="1413C4" />
      </concept>
      <concept id="4682418030829299311" name="de.itemis.mps.editor.celllayout.structure.FontFamilyStyle" flags="lg" index="2TzqKc" />
      <concept id="4682418030828844315" name="de.itemis.mps.editor.celllayout.structure.HorizontalLineColorStyle" flags="lg" index="2T_bXS" />
      <concept id="4682418030828725523" name="de.itemis.mps.editor.celllayout.structure.HorizontalLineCell" flags="ng" index="2T_mXK" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
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
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165595910856" name="jetbrains.mps.baseLanguage.collections.structure.GetLastOperation" flags="nn" index="1yVyf7" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="24kQdi" id="wb0I6Vb7Dv">
    <property role="3GE5qa" value="artifactDescription" />
    <ref role="1XX52x" to="uppb:wb0I6Vb7D5" resolve="ArtifactDescription" />
    <node concept="3EZMnI" id="wb0I6Vb7Dx" role="2wV5jI">
      <node concept="3j0QqT" id="wb0I6VdczF" role="3EZMnx">
        <node concept="3EZMnI" id="wb0I6Vdc$W" role="3j0Cwz">
          <node concept="3F0A7n" id="4T0MB1XbELZ" role="3EZMnx">
            <ref role="1NtTu8" to="uppb:4T0MB1XbEo9" resolve="path" />
            <node concept="37jFXN" id="4T0MB1XbGcG" role="3F10Kt">
              <property role="37lx6p" value="CENTER" />
            </node>
            <node concept="27z8qx" id="4T0MB1XcEGR" role="3F10Kt">
              <property role="3$6WeP" value="0.5" />
            </node>
            <node concept="VPM3Z" id="4x6uVBKxJVQ" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="VPxyj" id="4x6uVBKxJW0" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="2T_mXK" id="wb0I6Vd84r" role="3EZMnx">
            <node concept="2T_bXS" id="7OzZ9xI8LK7" role="3F10Kt">
              <node concept="3ZlJ5R" id="7OzZ9xI8LK9" role="VblUZ">
                <node concept="3clFbS" id="7OzZ9xI8LKa" role="2VODD2">
                  <node concept="3clFbF" id="7OzZ9xI8LR9" role="3cqZAp">
                    <node concept="2YIFZM" id="7OzZ9xI8M5j" role="3clFbG">
                      <ref role="37wK5l" to="z60i:~Color.decode(java.lang.String):java.awt.Color" resolve="decode" />
                      <ref role="1Pybhc" to="z60i:~Color" resolve="Color" />
                      <node concept="Xl_RD" id="7OzZ9xI8Me5" role="37wK5m">
                        <property role="Xl_RC" value="#000000" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3tD6jV" id="7OzZ9xI8MT1" role="3F10Kt">
              <ref role="3tD7wE" to="epcs:7AjS6YEz03y" resolve="frame-width" />
              <node concept="3sjG9q" id="7OzZ9xI8MT8" role="3tD6jU">
                <node concept="3clFbS" id="7OzZ9xI8MTf" role="2VODD2">
                  <node concept="3clFbF" id="7OzZ9xI8NfC" role="3cqZAp">
                    <node concept="3cmrfG" id="7OzZ9xI8NfB" role="3clFbG">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3F0ifn" id="4T0MB1XbT_0" role="3EZMnx">
            <property role="3F0ifm" value="Vertex" />
            <node concept="37jFXN" id="4T0MB1XbT_Z" role="3F10Kt">
              <property role="37lx6p" value="CENTER" />
            </node>
            <node concept="Vb9p2" id="4T0MB1XcfVC" role="3F10Kt">
              <property role="Vbekb" value="ITALIC" />
            </node>
            <node concept="VechU" id="4T0MB1XcfVM" role="3F10Kt">
              <property role="Vb096" value="gray" />
            </node>
            <node concept="VSNWy" id="4T0MB1Xccw4" role="3F10Kt">
              <property role="1lJzqX" value="10" />
            </node>
          </node>
          <node concept="3EZMnI" id="wb0I6Vdgyf" role="3EZMnx">
            <node concept="VPM3Z" id="wb0I6Vdgyh" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="3EZMnI" id="wb0I6VdgyH" role="3EZMnx">
              <node concept="VPM3Z" id="wb0I6VdgyJ" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="3F0ifn" id="wb0I6Vdb0A" role="3EZMnx">
                <property role="3F0ifm" value="name:" />
                <node concept="VPM3Z" id="wb0I6VdhkJ" role="3F10Kt">
                  <property role="VOm3f" value="false" />
                </node>
              </node>
              <node concept="3F0ifn" id="wb0I6Vdb02" role="3EZMnx">
                <property role="3F0ifm" value="parent:   " />
                <node concept="VPM3Z" id="wb0I6VdhkL" role="3F10Kt">
                  <property role="VOm3f" value="false" />
                </node>
              </node>
              <node concept="2iRkQZ" id="wb0I6VdgyM" role="2iSdaV" />
            </node>
            <node concept="3EZMnI" id="wb0I6VdgyX" role="3EZMnx">
              <node concept="3F0A7n" id="wb0I6Vdb0B" role="3EZMnx">
                <ref role="1NtTu8" to="uppb:XZk_44NpAT" resolve="shortname" />
              </node>
              <node concept="1iCGBv" id="4T0MB1XdTg8" role="3EZMnx">
                <ref role="1NtTu8" to="uppb:4T0MB1XdSHH" resolve="parent" />
                <node concept="1sVBvm" id="4T0MB1XdTga" role="1sWHZn">
                  <node concept="3F0A7n" id="4T0MB1XdTgi" role="2wV5jI">
                    <property role="1Intyy" value="true" />
                    <ref role="1NtTu8" to="uppb:XZk_44NpAT" resolve="shortname" />
                  </node>
                </node>
              </node>
              <node concept="VPM3Z" id="wb0I6VdgyZ" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="2iRkQZ" id="wb0I6Vdgz2" role="2iSdaV" />
            </node>
            <node concept="l2Vlx" id="wb0I6Vdgyk" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="4T0MB1Xdd$h" role="3EZMnx">
            <node concept="37jFXN" id="4T0MB1Xdd$i" role="3F10Kt">
              <property role="37lx6p" value="CENTER" />
            </node>
            <node concept="Vb9p2" id="4T0MB1Xdd$j" role="3F10Kt">
              <property role="Vbekb" value="ITALIC" />
            </node>
            <node concept="VechU" id="4T0MB1Xdd$k" role="3F10Kt">
              <property role="Vb096" value="WHITE" />
            </node>
            <node concept="VSNWy" id="4T0MB1Xdd$l" role="3F10Kt">
              <property role="1lJzqX" value="10" />
            </node>
          </node>
          <node concept="2T_mXK" id="4T0MB1XbDZ_" role="3EZMnx" />
          <node concept="3F0ifn" id="4T0MB1XcSHC" role="3EZMnx">
            <property role="3F0ifm" value="Children" />
            <node concept="37jFXN" id="4T0MB1XcSHD" role="3F10Kt">
              <property role="37lx6p" value="CENTER" />
            </node>
            <node concept="Vb9p2" id="4T0MB1XcSHE" role="3F10Kt">
              <property role="Vbekb" value="ITALIC" />
            </node>
            <node concept="VechU" id="4T0MB1XcSHF" role="3F10Kt">
              <property role="Vb096" value="gray" />
            </node>
            <node concept="VSNWy" id="4T0MB1XcSHG" role="3F10Kt">
              <property role="1lJzqX" value="10" />
            </node>
          </node>
          <node concept="3EZMnI" id="4T0MB1XbGdu" role="3EZMnx">
            <node concept="VPM3Z" id="4T0MB1XbGdv" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="3EZMnI" id="4T0MB1XbGdw" role="3EZMnx">
              <node concept="VPM3Z" id="4T0MB1XbGdx" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="3F0ifn" id="4T0MB1XbGdy" role="3EZMnx">
                <property role="3F0ifm" value="type:" />
                <node concept="VPM3Z" id="4T0MB1XbGdz" role="3F10Kt">
                  <property role="VOm3f" value="false" />
                </node>
              </node>
              <node concept="3F0ifn" id="4T0MB1XbGd$" role="3EZMnx">
                <property role="3F0ifm" value="mandatory:" />
                <node concept="VPM3Z" id="4T0MB1XbGd_" role="3F10Kt">
                  <property role="VOm3f" value="false" />
                </node>
              </node>
              <node concept="2iRkQZ" id="4T0MB1XbGdC" role="2iSdaV" />
            </node>
            <node concept="3EZMnI" id="4T0MB1XbGdD" role="3EZMnx">
              <node concept="3F0A7n" id="4T0MB1XbGdE" role="3EZMnx">
                <ref role="1NtTu8" to="uppb:wb0I6Vd19D" resolve="childrenType" />
              </node>
              <node concept="3F2HdR" id="4T0MB1XfaTB" role="3EZMnx">
                <ref role="1NtTu8" to="uppb:4T0MB1Xf65x" resolve="mandatory" />
                <node concept="2iRkQZ" id="4T0MB1XfaTD" role="2czzBx" />
              </node>
              <node concept="VPM3Z" id="4T0MB1XbGdG" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="2iRkQZ" id="4T0MB1XbGdI" role="2iSdaV" />
            </node>
            <node concept="l2Vlx" id="4T0MB1XbGdJ" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="4T0MB1XddCf" role="3EZMnx">
            <node concept="37jFXN" id="4T0MB1XddCg" role="3F10Kt">
              <property role="37lx6p" value="CENTER" />
            </node>
            <node concept="Vb9p2" id="4T0MB1XddCh" role="3F10Kt">
              <property role="Vbekb" value="ITALIC" />
            </node>
            <node concept="VechU" id="4T0MB1XddCi" role="3F10Kt">
              <property role="Vb096" value="gray" />
            </node>
            <node concept="VSNWy" id="4T0MB1XddCj" role="3F10Kt">
              <property role="1lJzqX" value="10" />
            </node>
          </node>
          <node concept="2T_mXK" id="4T0MB1XbE2i" role="3EZMnx" />
          <node concept="3F0ifn" id="4T0MB1XcSJZ" role="3EZMnx">
            <property role="3F0ifm" value="Dependencies" />
            <node concept="37jFXN" id="4T0MB1XcSK0" role="3F10Kt">
              <property role="37lx6p" value="CENTER" />
            </node>
            <node concept="Vb9p2" id="4T0MB1XcSK1" role="3F10Kt">
              <property role="Vbekb" value="ITALIC" />
            </node>
            <node concept="VechU" id="4T0MB1XcSK2" role="3F10Kt">
              <property role="Vb096" value="gray" />
            </node>
            <node concept="VSNWy" id="4T0MB1XcSK3" role="3F10Kt">
              <property role="1lJzqX" value="10" />
            </node>
          </node>
          <node concept="3EZMnI" id="4T0MB1XbEnj" role="3EZMnx">
            <node concept="VPM3Z" id="4T0MB1XbEnl" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="3EZMnI" id="4T0MB1XbHRk" role="3EZMnx">
              <node concept="VPM3Z" id="4T0MB1XbHRl" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="3F0ifn" id="4T0MB1XbHRm" role="3EZMnx">
                <property role="3F0ifm" value="requires: " />
                <node concept="VPM3Z" id="4T0MB1XbHRn" role="3F10Kt">
                  <property role="VOm3f" value="false" />
                </node>
              </node>
              <node concept="2iRkQZ" id="4T0MB1XbHRq" role="2iSdaV" />
            </node>
            <node concept="3EZMnI" id="4T0MB1XbHRr" role="3EZMnx">
              <node concept="VPM3Z" id="4T0MB1XbHRu" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="2iRkQZ" id="4T0MB1XbHRv" role="2iSdaV" />
              <node concept="3F2HdR" id="4x6uVBKxq4_" role="3EZMnx">
                <ref role="1NtTu8" to="uppb:4x6uVBKxmWb" resolve="required" />
                <node concept="2iRkQZ" id="4x6uVBKxq4A" role="2czzBx" />
              </node>
            </node>
            <node concept="l2Vlx" id="4T0MB1XbEno" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="4x6uVBKxq2U" role="3EZMnx">
            <node concept="VPM3Z" id="4x6uVBKxq2W" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="3EZMnI" id="4x6uVBKxq4r" role="3EZMnx">
              <node concept="VPM3Z" id="4x6uVBKxq4t" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="3F0ifn" id="4x6uVBKxq4v" role="3EZMnx">
                <property role="3F0ifm" value="excludes: " />
              </node>
              <node concept="2iRkQZ" id="4x6uVBKxq4w" role="2iSdaV" />
            </node>
            <node concept="3EZMnI" id="4x6uVBKxq4J" role="3EZMnx">
              <node concept="VPM3Z" id="4x6uVBKxq4L" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="3F2HdR" id="4x6uVBKxq4X" role="3EZMnx">
                <ref role="1NtTu8" to="uppb:4x6uVBKxmWx" resolve="excluded" />
                <node concept="2iRkQZ" id="4x6uVBKxq4Z" role="2czzBx" />
              </node>
              <node concept="2iRkQZ" id="4x6uVBKxq4O" role="2iSdaV" />
            </node>
            <node concept="l2Vlx" id="4x6uVBKxq2Z" role="2iSdaV" />
          </node>
          <node concept="2iRkQZ" id="wb0I6Vdc$Z" role="2iSdaV" />
          <node concept="VPM3Z" id="wb0I6Vdc_0" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3tD6jV" id="4T0MB1XcYsD" role="3F10Kt">
          <ref role="3tD7wE" to="epcs:7AjS6YEz03T" resolve="frame-padding" />
          <node concept="3sjG9q" id="4T0MB1XcYsE" role="3tD6jU">
            <node concept="3clFbS" id="4T0MB1XcYsF" role="2VODD2">
              <node concept="3clFbF" id="4T0MB1XcYHB" role="3cqZAp">
                <node concept="3cmrfG" id="4T0MB1XcYHA" role="3clFbG">
                  <property role="3cmrfH" value="8" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRkQZ" id="wb0I6Vb7D$" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4mwbOhsXrAQ">
    <property role="3GE5qa" value="artifactsTree" />
    <ref role="1XX52x" to="uppb:4mwbOhsXrAp" resolve="ArtifactsTree" />
    <node concept="3j0QqT" id="ww5GvfDHKw" role="2wV5jI">
      <node concept="3F1sOY" id="2RI3t9dUCxf" role="3j0Cwz">
        <ref role="1NtTu8" to="uppb:wb0I6Vg0al" resolve="root" />
        <ref role="1ERwB7" node="7Pq1P2G6zc4" resolve="FeatureVertex_Actions" />
      </node>
      <node concept="3tD6jV" id="ww5GvfDHKE" role="3F10Kt">
        <ref role="3tD7wE" to="epcs:7AjS6YEz03T" resolve="frame-padding" />
        <node concept="3sjG9q" id="ww5GvfDHKG" role="3tD6jU">
          <node concept="3clFbS" id="ww5GvfDHKI" role="2VODD2">
            <node concept="3clFbF" id="ww5GvfDI1G" role="3cqZAp">
              <node concept="3cmrfG" id="ww5GvfDI1F" role="3clFbG">
                <property role="3cmrfH" value="20" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3tD6jV" id="ww5GvfL_Gj" role="3F10Kt">
        <ref role="3tD7wE" to="epcs:7AjS6YEz03l" resolve="frame-color" />
        <node concept="3sjG9q" id="ww5GvfL_Gl" role="3tD6jU">
          <node concept="3clFbS" id="ww5GvfL_Gn" role="2VODD2">
            <node concept="3clFbF" id="ww5GvfL_Nl" role="3cqZAp">
              <node concept="10M0yZ" id="ww5GvfLAsE" role="3clFbG">
                <ref role="3cqZAo" to="z60i:~Color.WHITE" resolve="WHITE" />
                <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="wb0I6Vg0c5">
    <property role="3GE5qa" value="artifactsTree" />
    <ref role="1XX52x" to="uppb:wb0I6Vg0b4" resolve="ArtifactNodeNM" />
    <node concept="2SWKgc" id="wb0I6Vg0c7" role="2wV5jI">
      <ref role="1k5W1q" node="3WJqSL8HTQ$" resolve="tree" />
      <ref role="1ERwB7" node="7Pq1P2G6zc4" resolve="FeatureVertex_Actions" />
      <node concept="3F2HdR" id="wb0I6Vg0cg" role="2SWKFX">
        <ref role="1NtTu8" to="uppb:4x6uVBKzUAz" resolve="childNodes" />
        <ref role="APP_o" node="7Pq1P2G6zc4" resolve="FeatureVertex_Actions" />
        <ref role="1ERwB7" node="7Pq1P2G6zc4" resolve="FeatureVertex_Actions" />
        <node concept="pkWqt" id="5dzaEnaPVPM" role="pqm2j">
          <node concept="3clFbS" id="5dzaEnaPVPN" role="2VODD2">
            <node concept="3clFbF" id="5dzaEnaPWDR" role="3cqZAp">
              <node concept="2OqwBi" id="5dzaEnaPZbO" role="3clFbG">
                <node concept="2OqwBi" id="5dzaEnaPWUx" role="2Oq$k0">
                  <node concept="pncrf" id="5dzaEnaPWDQ" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="5dzaEnaPXkZ" role="2OqNvi">
                    <ref role="3TtcxE" to="uppb:4x6uVBKzUAz" resolve="childNodes" />
                  </node>
                </node>
                <node concept="3GX2aA" id="5dzaEnaQ2EJ" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1X_cmw" id="XZk_44OgPS" role="15K7wI">
        <ref role="1X_clt" node="7k8R9gKOHrW" resolve="Arc" />
        <node concept="3cmrfG" id="XZk_44OgPX" role="15NUvb">
          <property role="3cmrfH" value="15" />
        </node>
        <node concept="3clFbT" id="XZk_44OgZP" role="15NUvb">
          <property role="3clFbU" value="true" />
        </node>
      </node>
      <node concept="3j0QqT" id="7Pq1P2Gi0aB" role="2SWKFN">
        <ref role="1k5W1q" node="7Pq1P2GhWiC" resolve="vertexFrame" />
        <node concept="1uO$qF" id="7Pq1P2Gi0aE" role="3F10Kt">
          <node concept="3nzxsE" id="7Pq1P2Gi0aF" role="1uO$qD">
            <node concept="3clFbS" id="7Pq1P2Gi0aG" role="2VODD2">
              <node concept="3clFbF" id="7Pq1P2Gi0aH" role="3cqZAp">
                <node concept="3fqX7Q" id="7Pq1P2Gi0aI" role="3clFbG">
                  <node concept="2OqwBi" id="7Pq1P2Gi0aJ" role="3fr31v">
                    <node concept="pncrf" id="7Pq1P2Gi0aK" role="2Oq$k0" />
                    <node concept="2qgKlT" id="7Pq1P2Gi0aL" role="2OqNvi">
                      <ref role="37wK5l" to="m961:7Pq1P2G91Eb" resolve="isEditable" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1wgc9g" id="7Pq1P2Gi0aM" role="3XvnJa">
            <ref role="1wgcnl" node="7Pq1P2GhVZ$" resolve="unselectableVertexFrame" />
          </node>
        </node>
        <node concept="3F0A7n" id="7Pq1P2Gi0aN" role="3j0Cwz">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="uppb:2qK8RKECpCE" resolve="shortname" />
          <ref role="1k5W1q" node="7Pq1P2GjJMy" resolve="vertexLabel" />
          <ref role="1ERwB7" node="7Pq1P2G6zc4" resolve="FeatureVertex_Actions" />
        </node>
        <node concept="1uO$qF" id="7Pq1P2Gi0aO" role="3F10Kt">
          <node concept="3nzxsE" id="7Pq1P2Gi0aP" role="1uO$qD">
            <node concept="3clFbS" id="7Pq1P2Gi0aQ" role="2VODD2">
              <node concept="3clFbF" id="7Pq1P2Gi0aR" role="3cqZAp">
                <node concept="2OqwBi" id="7Pq1P2Gi0aS" role="3clFbG">
                  <node concept="pncrf" id="7Pq1P2Gi0aT" role="2Oq$k0" />
                  <node concept="3TrcHB" id="7Pq1P2Gi0aU" role="2OqNvi">
                    <ref role="3TsBF5" to="uppb:6I9RXT7Mc2" resolve="isSelected" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1wgc9g" id="7Pq1P2Gi0aV" role="3XvnJa">
            <ref role="1wgcnl" node="7Pq1P2GhVYY" resolve="selectedVertexFrame" />
          </node>
        </node>
      </node>
    </node>
    <node concept="PMmxH" id="7r$Cpd5QERK" role="6VMZX">
      <ref role="PMmxG" node="7r$Cpd5QD2E" resolve="ArtifactNodeInspectorView" />
    </node>
  </node>
  <node concept="24kQdi" id="wb0I6Vg0bv">
    <property role="3GE5qa" value="artifactsTree" />
    <ref role="1XX52x" to="uppb:wb0I6Vg0b5" resolve="ArtifactNode1M" />
    <node concept="2SWKgc" id="wb0I6Vg0bx" role="2wV5jI">
      <ref role="1k5W1q" node="3WJqSL8HTQ$" resolve="tree" />
      <ref role="1ERwB7" node="7Pq1P2G6zc4" resolve="FeatureVertex_Actions" />
      <node concept="1X_cmw" id="6I9RXSXAu6" role="15K7wI">
        <ref role="1X_clt" node="7k8R9gKOHrW" resolve="Arc" />
        <node concept="3cmrfG" id="6I9RXSXBdQ" role="15NUvb">
          <property role="3cmrfH" value="15" />
        </node>
        <node concept="3clFbT" id="6I9RXSXBkf" role="15NUvb" />
      </node>
      <node concept="3j0QqT" id="7Pq1P2GhWzW" role="2SWKFN">
        <ref role="1k5W1q" node="7Pq1P2GhWiC" resolve="vertexFrame" />
        <ref role="1ERwB7" node="7Pq1P2G6zc4" resolve="FeatureVertex_Actions" />
        <node concept="1uO$qF" id="7Pq1P2GhYuR" role="3F10Kt">
          <node concept="3nzxsE" id="7Pq1P2GhYuT" role="1uO$qD">
            <node concept="3clFbS" id="7Pq1P2GhYuV" role="2VODD2">
              <node concept="3clFbF" id="7Pq1P2GhYCS" role="3cqZAp">
                <node concept="3fqX7Q" id="7Pq1P2GhYCQ" role="3clFbG">
                  <node concept="2OqwBi" id="7Pq1P2GhZ4P" role="3fr31v">
                    <node concept="pncrf" id="7Pq1P2GhYRK" role="2Oq$k0" />
                    <node concept="2qgKlT" id="7Pq1P2GhZF_" role="2OqNvi">
                      <ref role="37wK5l" to="m961:7Pq1P2G91Eb" resolve="isEditable" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1wgc9g" id="7Pq1P2GhYCI" role="3XvnJa">
            <ref role="1wgcnl" node="7Pq1P2GhVZ$" resolve="unselectableVertexFrame" />
          </node>
        </node>
        <node concept="3F0A7n" id="7Pq1P2G3sBG" role="3j0Cwz">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="uppb:2qK8RKECpCE" resolve="shortname" />
          <ref role="1k5W1q" node="7Pq1P2GjJMy" resolve="vertexLabel" />
          <ref role="1ERwB7" node="7Pq1P2G6zc4" resolve="FeatureVertex_Actions" />
        </node>
        <node concept="1uO$qF" id="7Pq1P2GhW$1" role="3F10Kt">
          <node concept="3nzxsE" id="7Pq1P2GhW$2" role="1uO$qD">
            <node concept="3clFbS" id="7Pq1P2GhW$3" role="2VODD2">
              <node concept="3clFbF" id="7Pq1P2GhWFn" role="3cqZAp">
                <node concept="2OqwBi" id="7Pq1P2GhWSm" role="3clFbG">
                  <node concept="pncrf" id="7Pq1P2GhWFm" role="2Oq$k0" />
                  <node concept="3TrcHB" id="7Pq1P2GhXv$" role="2OqNvi">
                    <ref role="3TsBF5" to="uppb:6I9RXT7Mc2" resolve="isSelected" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1wgc9g" id="7Pq1P2GhWFe" role="3XvnJa">
            <ref role="1wgcnl" node="7Pq1P2GhVYY" resolve="selectedVertexFrame" />
          </node>
        </node>
      </node>
      <node concept="3F2HdR" id="wb0I6Vg0bE" role="2SWKFX">
        <ref role="1NtTu8" to="uppb:4x6uVBKzUAz" resolve="childNodes" />
        <ref role="APP_o" node="7Pq1P2G6zc4" resolve="FeatureVertex_Actions" />
        <ref role="1ERwB7" node="7Pq1P2G6zc4" resolve="FeatureVertex_Actions" />
        <node concept="pkWqt" id="ww5GvfFrMc" role="pqm2j">
          <node concept="3clFbS" id="ww5GvfFrMd" role="2VODD2">
            <node concept="3clFbF" id="ww5GvfFsBS" role="3cqZAp">
              <node concept="2OqwBi" id="ww5GvfFvnp" role="3clFbG">
                <node concept="2OqwBi" id="ww5GvfFsSw" role="2Oq$k0">
                  <node concept="pncrf" id="ww5GvfFsBR" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="ww5GvfFtwA" role="2OqNvi">
                    <ref role="3TtcxE" to="uppb:4x6uVBKzUAz" resolve="childNodes" />
                  </node>
                </node>
                <node concept="3GX2aA" id="ww5GvfFyQa" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="PMmxH" id="7r$Cpd5QDVC" role="6VMZX">
      <ref role="PMmxG" node="7r$Cpd5QD2E" resolve="ArtifactNodeInspectorView" />
    </node>
  </node>
  <node concept="24kQdi" id="wb0I6Vg0aR">
    <property role="3GE5qa" value="artifactsTree" />
    <ref role="1XX52x" to="uppb:wb0I6Vg0ar" resolve="ArtifactNodeIndep" />
    <node concept="2SWKgc" id="wb0I6Vg0aT" role="2wV5jI">
      <ref role="1k5W1q" node="3WJqSL8HTQ$" resolve="tree" />
      <ref role="1ERwB7" node="7Pq1P2G6zc4" resolve="FeatureVertex_Actions" />
      <node concept="3F2HdR" id="wb0I6Vg0b2" role="2SWKFX">
        <ref role="1NtTu8" to="uppb:4x6uVBKzUAz" resolve="childNodes" />
        <ref role="APP_o" node="7Pq1P2G6zc4" resolve="FeatureVertex_Actions" />
        <ref role="1ERwB7" node="7Pq1P2G6zc4" resolve="FeatureVertex_Actions" />
        <node concept="VPM3Z" id="7Pq1P2G7D6I" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPxyj" id="7Pq1P2G5tSS" role="3F10Kt" />
        <node concept="pkWqt" id="5dzaEnaQGkW" role="pqm2j">
          <node concept="3clFbS" id="5dzaEnaQGkX" role="2VODD2">
            <node concept="3clFbF" id="5dzaEnaQGkY" role="3cqZAp">
              <node concept="2OqwBi" id="5dzaEnaQGkZ" role="3clFbG">
                <node concept="2OqwBi" id="5dzaEnaQGl0" role="2Oq$k0">
                  <node concept="pncrf" id="5dzaEnaQGl1" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="5dzaEnaQGl2" role="2OqNvi">
                    <ref role="3TtcxE" to="uppb:4x6uVBKzUAz" resolve="childNodes" />
                  </node>
                </node>
                <node concept="3GX2aA" id="5dzaEnaQGl3" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3j0QqT" id="7Pq1P2Gi0mX" role="2SWKFN">
        <ref role="1k5W1q" node="7Pq1P2GhWiC" resolve="vertexFrame" />
        <ref role="1ERwB7" node="7Pq1P2G6zc4" resolve="FeatureVertex_Actions" />
        <node concept="1uO$qF" id="7Pq1P2Gi0n0" role="3F10Kt">
          <node concept="3nzxsE" id="7Pq1P2Gi0n1" role="1uO$qD">
            <node concept="3clFbS" id="7Pq1P2Gi0n2" role="2VODD2">
              <node concept="3clFbF" id="7Pq1P2Gi0n3" role="3cqZAp">
                <node concept="3fqX7Q" id="7Pq1P2Gi0n4" role="3clFbG">
                  <node concept="2OqwBi" id="7Pq1P2Gi0n5" role="3fr31v">
                    <node concept="pncrf" id="7Pq1P2Gi0n6" role="2Oq$k0" />
                    <node concept="2qgKlT" id="7Pq1P2Gi0n7" role="2OqNvi">
                      <ref role="37wK5l" to="m961:7Pq1P2G91Eb" resolve="isEditable" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1wgc9g" id="7Pq1P2Gi0n8" role="3XvnJa">
            <ref role="1wgcnl" node="7Pq1P2GhVZ$" resolve="unselectableVertexFrame" />
          </node>
        </node>
        <node concept="3F0A7n" id="7Pq1P2Gi0n9" role="3j0Cwz">
          <property role="1cu_pB" value="1" />
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="uppb:2qK8RKECpCE" resolve="shortname" />
          <ref role="1k5W1q" node="7Pq1P2GjJMy" resolve="vertexLabel" />
          <ref role="1ERwB7" node="7Pq1P2G6zc4" resolve="FeatureVertex_Actions" />
        </node>
        <node concept="1uO$qF" id="7Pq1P2Gi0na" role="3F10Kt">
          <node concept="3nzxsE" id="7Pq1P2Gi0nb" role="1uO$qD">
            <node concept="3clFbS" id="7Pq1P2Gi0nc" role="2VODD2">
              <node concept="3clFbF" id="7Pq1P2Gi0nd" role="3cqZAp">
                <node concept="2OqwBi" id="7Pq1P2Gi0ne" role="3clFbG">
                  <node concept="pncrf" id="7Pq1P2Gi0nf" role="2Oq$k0" />
                  <node concept="3TrcHB" id="7Pq1P2Gi0ng" role="2OqNvi">
                    <ref role="3TsBF5" to="uppb:6I9RXT7Mc2" resolve="isSelected" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1wgc9g" id="7Pq1P2Gi0nh" role="3XvnJa">
            <ref role="1wgcnl" node="7Pq1P2GhVYY" resolve="selectedVertexFrame" />
          </node>
        </node>
      </node>
    </node>
    <node concept="PMmxH" id="7r$Cpd5QEpJ" role="6VMZX">
      <ref role="PMmxG" node="7r$Cpd5QD2E" resolve="ArtifactNodeInspectorView" />
    </node>
  </node>
  <node concept="1X_dKu" id="7k8R9gKOHrW">
    <property role="TrG5h" value="Arc" />
    <property role="3GE5qa" value="shapes" />
    <node concept="15NUNA" id="7k8R9gKOHs9" role="15NUdi">
      <property role="TrG5h" value="size" />
      <node concept="10P55v" id="7k8R9gKOHsd" role="15NUNB" />
    </node>
    <node concept="15NUNA" id="wb0I6VhtQj" role="15NUdi">
      <property role="TrG5h" value="filled" />
      <node concept="10P_77" id="wb0I6VhtQq" role="15NUNB" />
    </node>
    <node concept="1X_dKt" id="7k8R9gKOHrX" role="1X_dKs">
      <node concept="3clFbS" id="7k8R9gKOHrY" role="2VODD2">
        <node concept="3clFbJ" id="7k8R9gKOHsu" role="3cqZAp">
          <node concept="3clFbS" id="7k8R9gKOHsv" role="3clFbx">
            <node concept="3cpWs6" id="7k8R9gKOIjE" role="3cqZAp" />
          </node>
          <node concept="3eOVzh" id="7k8R9gKOIhP" role="3clFbw">
            <node concept="3cmrfG" id="7k8R9gKOIhS" role="3uHU7w">
              <property role="3cmrfH" value="2" />
            </node>
            <node concept="2OqwBi" id="7k8R9gKOHAl" role="3uHU7B">
              <node concept="1X_b45" id="7k8R9gKOHsE" role="2Oq$k0" />
              <node concept="34oBXx" id="7k8R9gKOHSW" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7k8R9gKONXj" role="3cqZAp" />
        <node concept="3cpWs8" id="7k8R9gKOJaH" role="3cqZAp">
          <node concept="3cpWsn" id="7k8R9gKOJaI" role="3cpWs9">
            <property role="TrG5h" value="first" />
            <node concept="3uibUv" id="7k8R9gKOJaF" role="1tU5fm">
              <ref role="3uigEE" to="fbzs:~Line2D" resolve="Line2D" />
            </node>
            <node concept="2OqwBi" id="7k8R9gKOJaJ" role="33vP2m">
              <node concept="1X_b45" id="7k8R9gKOJaK" role="2Oq$k0" />
              <node concept="1uHKPH" id="7k8R9gKOJaL" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7k8R9gKOJcC" role="3cqZAp">
          <node concept="3cpWsn" id="7k8R9gKOJcD" role="3cpWs9">
            <property role="TrG5h" value="last" />
            <node concept="3uibUv" id="7k8R9gKOJcA" role="1tU5fm">
              <ref role="3uigEE" to="fbzs:~Line2D" resolve="Line2D" />
            </node>
            <node concept="2OqwBi" id="7k8R9gKOJcE" role="33vP2m">
              <node concept="1X_b45" id="7k8R9gKOJcF" role="2Oq$k0" />
              <node concept="1yVyf7" id="7k8R9gKOJcG" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7k8R9gKOK3T" role="3cqZAp">
          <node concept="3SKdUq" id="7k8R9gKOK3V" role="3SKWNk">
            <property role="3SKdUp" value="assumption: first.p2 == last.p2" />
          </node>
        </node>
        <node concept="3cpWs8" id="7k8R9gKOJwN" role="3cqZAp">
          <node concept="3cpWsn" id="7k8R9gKOJwO" role="3cpWs9">
            <property role="TrG5h" value="arc" />
            <node concept="3uibUv" id="7k8R9gKOJwM" role="1tU5fm">
              <ref role="3uigEE" to="fbzs:~Arc2D$Double" resolve="Arc2D.Double" />
            </node>
            <node concept="2ShNRf" id="7k8R9gKOJwP" role="33vP2m">
              <node concept="1pGfFk" id="7k8R9gKOJwQ" role="2ShVmc">
                <ref role="37wK5l" to="fbzs:~Arc2D$Double.&lt;init&gt;()" resolve="Arc2D.Double" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7k8R9gKOQpN" role="3cqZAp">
          <node concept="2OqwBi" id="7k8R9gKOQtq" role="3clFbG">
            <node concept="37vLTw" id="7k8R9gKOQpL" role="2Oq$k0">
              <ref role="3cqZAo" node="7k8R9gKOJwO" resolve="arc" />
            </node>
            <node concept="liA8E" id="7k8R9gKOQAv" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Arc2D.setArcByCenter(double,double,double,double,double,int):void" resolve="setArcByCenter" />
              <node concept="2OqwBi" id="7k8R9gKOQGo" role="37wK5m">
                <node concept="2OqwBi" id="7k8R9gKOQCb" role="2Oq$k0">
                  <node concept="37vLTw" id="7k8R9gKOQAO" role="2Oq$k0">
                    <ref role="3cqZAo" node="7k8R9gKOJaI" resolve="first" />
                  </node>
                  <node concept="liA8E" id="7k8R9gKOQF4" role="2OqNvi">
                    <ref role="37wK5l" to="fbzs:~Line2D.getP2():java.awt.geom.Point2D" resolve="getP2" />
                  </node>
                </node>
                <node concept="liA8E" id="7k8R9gKOQIO" role="2OqNvi">
                  <ref role="37wK5l" to="fbzs:~Point2D.getX():double" resolve="getX" />
                </node>
              </node>
              <node concept="2OqwBi" id="7k8R9gKOQJA" role="37wK5m">
                <node concept="2OqwBi" id="7k8R9gKOQJB" role="2Oq$k0">
                  <node concept="37vLTw" id="7k8R9gKOQJC" role="2Oq$k0">
                    <ref role="3cqZAo" node="7k8R9gKOJaI" resolve="first" />
                  </node>
                  <node concept="liA8E" id="7k8R9gKOQJD" role="2OqNvi">
                    <ref role="37wK5l" to="fbzs:~Line2D.getP2():java.awt.geom.Point2D" resolve="getP2" />
                  </node>
                </node>
                <node concept="liA8E" id="7k8R9gKOQJE" role="2OqNvi">
                  <ref role="37wK5l" to="fbzs:~Point2D.getY():double" resolve="getY" />
                </node>
              </node>
              <node concept="15NUKc" id="7k8R9gKOQNO" role="37wK5m">
                <ref role="15NUKd" node="7k8R9gKOHs9" resolve="size" />
              </node>
              <node concept="3cmrfG" id="7k8R9gKOQQZ" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="3cmrfG" id="7k8R9gKOQTE" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="10M0yZ" id="7k8R9gKOQWl" role="37wK5m">
                <ref role="3cqZAo" to="fbzs:~Arc2D.PIE" resolve="PIE" />
                <ref role="1PxDUh" to="fbzs:~Arc2D" resolve="Arc2D" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="ww5GvfAu3N" role="3cqZAp">
          <node concept="3cpWsn" id="ww5GvfAu3O" role="3cpWs9">
            <property role="TrG5h" value="p1" />
            <node concept="3uibUv" id="ww5GvfAu3P" role="1tU5fm">
              <ref role="3uigEE" to="fbzs:~Point2D" resolve="Point2D" />
            </node>
            <node concept="2OqwBi" id="ww5GvfAuld" role="33vP2m">
              <node concept="37vLTw" id="ww5GvfAule" role="2Oq$k0">
                <ref role="3cqZAo" node="7k8R9gKOJaI" resolve="first" />
              </node>
              <node concept="liA8E" id="ww5GvfAulf" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~Line2D.getP1():java.awt.geom.Point2D" resolve="getP1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="ww5GvfBckK" role="3cqZAp">
          <node concept="3cpWsn" id="ww5GvfBckL" role="3cpWs9">
            <property role="TrG5h" value="p2" />
            <node concept="3uibUv" id="ww5GvfBckM" role="1tU5fm">
              <ref role="3uigEE" to="fbzs:~Point2D" resolve="Point2D" />
            </node>
            <node concept="2OqwBi" id="ww5GvfBckN" role="33vP2m">
              <node concept="37vLTw" id="ww5GvfCoOG" role="2Oq$k0">
                <ref role="3cqZAo" node="7k8R9gKOJcD" resolve="last" />
              </node>
              <node concept="liA8E" id="ww5GvfBckP" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~Line2D.getP1():java.awt.geom.Point2D" resolve="getP1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="ww5GvfBcFb" role="3cqZAp" />
        <node concept="3clFbF" id="ww5GvfBeVd" role="3cqZAp">
          <node concept="2OqwBi" id="ww5GvfBeVe" role="3clFbG">
            <node concept="37vLTw" id="ww5GvfBeVf" role="2Oq$k0">
              <ref role="3cqZAo" node="ww5GvfAu3O" resolve="p1" />
            </node>
            <node concept="liA8E" id="ww5GvfBeVg" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Point2D.setLocation(double,double):void" resolve="setLocation" />
              <node concept="2OqwBi" id="ww5GvfBeVh" role="37wK5m">
                <node concept="37vLTw" id="ww5GvfBeVi" role="2Oq$k0">
                  <ref role="3cqZAo" node="ww5GvfAu3O" resolve="p1" />
                </node>
                <node concept="liA8E" id="ww5GvfBeVj" role="2OqNvi">
                  <ref role="37wK5l" to="fbzs:~Point2D.getX():double" resolve="getX" />
                </node>
              </node>
              <node concept="2OqwBi" id="ww5GvfBeVl" role="37wK5m">
                <node concept="37vLTw" id="ww5GvfBeVm" role="2Oq$k0">
                  <ref role="3cqZAo" node="ww5GvfAu3O" resolve="p1" />
                </node>
                <node concept="liA8E" id="ww5GvfBeVn" role="2OqNvi">
                  <ref role="37wK5l" to="fbzs:~Point2D.getY():double" resolve="getY" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ww5GvfAuHl" role="3cqZAp">
          <node concept="2OqwBi" id="ww5GvfAv3V" role="3clFbG">
            <node concept="37vLTw" id="ww5GvfBfVC" role="2Oq$k0">
              <ref role="3cqZAo" node="ww5GvfBckL" resolve="p2" />
            </node>
            <node concept="liA8E" id="ww5GvfAvsu" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Point2D.setLocation(double,double):void" resolve="setLocation" />
              <node concept="2OqwBi" id="ww5GvfAvE_" role="37wK5m">
                <node concept="37vLTw" id="ww5GvfBg73" role="2Oq$k0">
                  <ref role="3cqZAo" node="ww5GvfBckL" resolve="p2" />
                </node>
                <node concept="liA8E" id="ww5GvfAwa$" role="2OqNvi">
                  <ref role="37wK5l" to="fbzs:~Point2D.getX():double" resolve="getX" />
                </node>
              </node>
              <node concept="3cpWs3" id="ww5GvfCDWQ" role="37wK5m">
                <node concept="2OqwBi" id="ww5GvfAwBm" role="3uHU7B">
                  <node concept="37vLTw" id="ww5GvfBgiB" role="2Oq$k0">
                    <ref role="3cqZAo" node="ww5GvfBckL" resolve="p2" />
                  </node>
                  <node concept="liA8E" id="ww5GvfAxaj" role="2OqNvi">
                    <ref role="37wK5l" to="fbzs:~Point2D.getY():double" resolve="getY" />
                  </node>
                </node>
                <node concept="3b6qkQ" id="ww5GvfCWph" role="3uHU7w">
                  <property role="$nhwW" value="1.5" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="ww5GvfBfps" role="3cqZAp" />
        <node concept="3clFbF" id="7k8R9gKOJyH" role="3cqZAp">
          <node concept="2OqwBi" id="7k8R9gKOJ$v" role="3clFbG">
            <node concept="37vLTw" id="7k8R9gKOJyF" role="2Oq$k0">
              <ref role="3cqZAo" node="7k8R9gKOJwO" resolve="arc" />
            </node>
            <node concept="liA8E" id="7k8R9gKOR8w" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Arc2D.setAngles(java.awt.geom.Point2D,java.awt.geom.Point2D):void" resolve="setAngles" />
              <node concept="37vLTw" id="ww5GvfAur4" role="37wK5m">
                <ref role="3cqZAo" node="ww5GvfAu3O" resolve="p1" />
              </node>
              <node concept="37vLTw" id="ww5GvfCxy2" role="37wK5m">
                <ref role="3cqZAo" node="ww5GvfBckL" resolve="p2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="ww5GvfAbds" role="3cqZAp" />
        <node concept="3clFbJ" id="wb0I6ViIPa" role="3cqZAp">
          <node concept="3clFbS" id="wb0I6ViIPb" role="3clFbx">
            <node concept="3clFbF" id="wb0I6ViIPc" role="3cqZAp">
              <node concept="2OqwBi" id="wb0I6ViIPd" role="3clFbG">
                <node concept="1X_dKq" id="wb0I6ViIPe" role="2Oq$k0" />
                <node concept="liA8E" id="wb0I6ViIPf" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics2D.fill(java.awt.Shape):void" resolve="fill" />
                  <node concept="37vLTw" id="wb0I6ViIPg" role="37wK5m">
                    <ref role="3cqZAo" node="7k8R9gKOJwO" resolve="arc" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="15NUKc" id="wb0I6ViIPh" role="3clFbw">
            <ref role="15NUKd" node="wb0I6VhtQj" resolve="filled" />
          </node>
          <node concept="9aQIb" id="wb0I6VhKk3" role="9aQIa">
            <node concept="3clFbS" id="wb0I6VhKk4" role="9aQI4">
              <node concept="3clFbF" id="ww5GvfAbz8" role="3cqZAp">
                <node concept="2OqwBi" id="ww5GvfAbIC" role="3clFbG">
                  <node concept="1X_dKq" id="ww5GvfAbz6" role="2Oq$k0" />
                  <node concept="liA8E" id="ww5GvfAc5o" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color):void" resolve="setColor" />
                    <node concept="10M0yZ" id="ww5GvfAc6R" role="37wK5m">
                      <ref role="3cqZAo" to="z60i:~Color.WHITE" resolve="WHITE" />
                      <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="ww5GvfAlb3" role="3cqZAp">
                <node concept="2OqwBi" id="ww5GvfAlb4" role="3clFbG">
                  <node concept="1X_dKq" id="ww5GvfAlb5" role="2Oq$k0" />
                  <node concept="liA8E" id="ww5GvfAlb6" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics2D.fill(java.awt.Shape):void" resolve="fill" />
                    <node concept="37vLTw" id="ww5GvfAlb7" role="37wK5m">
                      <ref role="3cqZAo" node="7k8R9gKOJwO" resolve="arc" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="ww5GvfAcbK" role="3cqZAp">
                <node concept="2OqwBi" id="ww5GvfAcnz" role="3clFbG">
                  <node concept="1X_dKq" id="ww5GvfAcbI" role="2Oq$k0" />
                  <node concept="liA8E" id="ww5GvfAcIo" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color):void" resolve="setColor" />
                    <node concept="10M0yZ" id="ww5GvfAcJR" role="37wK5m">
                      <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
                      <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="wb0I6VhL1I" role="3cqZAp">
                <node concept="2OqwBi" id="wb0I6VhL1J" role="3clFbG">
                  <node concept="1X_dKq" id="wb0I6VhL1K" role="2Oq$k0" />
                  <node concept="liA8E" id="wb0I6VivtI" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics2D.draw(java.awt.Shape):void" resolve="draw" />
                    <node concept="37vLTw" id="wb0I6Vivuj" role="37wK5m">
                      <ref role="3cqZAo" node="7k8R9gKOJwO" resolve="arc" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7k8R9gKOJfB" role="3cqZAp" />
      </node>
    </node>
  </node>
  <node concept="1X_dKu" id="7k8R9gKN2ah">
    <property role="TrG5h" value="Circle" />
    <property role="3GE5qa" value="shapes" />
    <node concept="15NUNA" id="7k8R9gKNzLG" role="15NUdi">
      <property role="TrG5h" value="size" />
      <node concept="10P55v" id="7k8R9gKNzLN" role="15NUNB" />
    </node>
    <node concept="15NUNA" id="ww5GvfIzQk" role="15NUdi">
      <property role="TrG5h" value="filled" />
      <node concept="10P_77" id="ww5GvfIzQt" role="15NUNB" />
    </node>
    <node concept="1X_dKt" id="7k8R9gKN2ai" role="1X_dKs">
      <node concept="3clFbS" id="7k8R9gKN2aj" role="2VODD2">
        <node concept="3cpWs8" id="7k8R9gKNqGq" role="3cqZAp">
          <node concept="3cpWsn" id="7k8R9gKNqGt" role="3cpWs9">
            <property role="TrG5h" value="halfSize" />
            <node concept="10P55v" id="7k8R9gKNqGo" role="1tU5fm" />
            <node concept="FJ1c_" id="7k8R9gKNqUw" role="33vP2m">
              <node concept="3cmrfG" id="7k8R9gKNqUz" role="3uHU7w">
                <property role="3cmrfH" value="2" />
              </node>
              <node concept="15NUKc" id="7k8R9gKN$3m" role="3uHU7B">
                <ref role="15NUKd" node="7k8R9gKNzLG" resolve="size" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7k8R9gKNdsJ" role="3cqZAp">
          <node concept="2GrKxI" id="7k8R9gKNdsL" role="2Gsz3X">
            <property role="TrG5h" value="edge" />
          </node>
          <node concept="3clFbS" id="7k8R9gKNdsN" role="2LFqv$">
            <node concept="3cpWs8" id="7k8R9gKNh4U" role="3cqZAp">
              <node concept="3cpWsn" id="7k8R9gKNh4V" role="3cpWs9">
                <property role="TrG5h" value="start" />
                <node concept="3uibUv" id="7k8R9gKNh4W" role="1tU5fm">
                  <ref role="3uigEE" to="fbzs:~Point2D" resolve="Point2D" />
                </node>
                <node concept="2OqwBi" id="7k8R9gKNh4X" role="33vP2m">
                  <node concept="2GrUjf" id="7k8R9gKNh4Y" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="7k8R9gKNdsL" resolve="edge" />
                  </node>
                  <node concept="liA8E" id="7k8R9gKNh4Z" role="2OqNvi">
                    <ref role="37wK5l" to="fbzs:~Line2D.getP1():java.awt.geom.Point2D" resolve="getP1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7k8R9gKNdNX" role="3cqZAp">
              <node concept="3cpWsn" id="7k8R9gKNdNY" role="3cpWs9">
                <property role="TrG5h" value="end" />
                <node concept="3uibUv" id="7k8R9gKNdNV" role="1tU5fm">
                  <ref role="3uigEE" to="fbzs:~Point2D" resolve="Point2D" />
                </node>
                <node concept="2OqwBi" id="7k8R9gKNdNZ" role="33vP2m">
                  <node concept="2GrUjf" id="7k8R9gKNdO0" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="7k8R9gKNdsL" resolve="edge" />
                  </node>
                  <node concept="liA8E" id="7k8R9gKNdO1" role="2OqNvi">
                    <ref role="37wK5l" to="fbzs:~Line2D.getP2():java.awt.geom.Point2D" resolve="getP2" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="ww5GvfIF49" role="3cqZAp" />
            <node concept="3clFbH" id="ww5GvfIF5H" role="3cqZAp" />
            <node concept="3cpWs8" id="7k8R9gKNnfL" role="3cqZAp">
              <node concept="3cpWsn" id="7k8R9gKNnfM" role="3cpWs9">
                <property role="TrG5h" value="endVector" />
                <node concept="3uibUv" id="7k8R9gKNnfw" role="1tU5fm">
                  <ref role="3uigEE" to="4io5:~Vector2D" resolve="Vector2D" />
                </node>
                <node concept="2ShNRf" id="7k8R9gKNnfN" role="33vP2m">
                  <node concept="1pGfFk" id="7k8R9gKNnfO" role="2ShVmc">
                    <ref role="37wK5l" to="4io5:~Vector2D.&lt;init&gt;(double,double)" resolve="Vector2D" />
                    <node concept="2OqwBi" id="7k8R9gKNnfP" role="37wK5m">
                      <node concept="37vLTw" id="7k8R9gKNnfQ" role="2Oq$k0">
                        <ref role="3cqZAo" node="7k8R9gKNdNY" resolve="end" />
                      </node>
                      <node concept="liA8E" id="7k8R9gKNnfR" role="2OqNvi">
                        <ref role="37wK5l" to="fbzs:~Point2D.getX():double" resolve="getX" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7k8R9gKNnfS" role="37wK5m">
                      <node concept="37vLTw" id="7k8R9gKNnfT" role="2Oq$k0">
                        <ref role="3cqZAo" node="7k8R9gKNdNY" resolve="end" />
                      </node>
                      <node concept="liA8E" id="7k8R9gKNnfU" role="2OqNvi">
                        <ref role="37wK5l" to="fbzs:~Point2D.getY():double" resolve="getY" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7k8R9gKNnDz" role="3cqZAp">
              <node concept="3cpWsn" id="7k8R9gKNnD$" role="3cpWs9">
                <property role="TrG5h" value="startVector" />
                <node concept="3uibUv" id="7k8R9gKNnD1" role="1tU5fm">
                  <ref role="3uigEE" to="4io5:~Vector2D" resolve="Vector2D" />
                </node>
                <node concept="2ShNRf" id="7k8R9gKNnD_" role="33vP2m">
                  <node concept="1pGfFk" id="7k8R9gKNnDA" role="2ShVmc">
                    <ref role="37wK5l" to="4io5:~Vector2D.&lt;init&gt;(double,double)" resolve="Vector2D" />
                    <node concept="2OqwBi" id="7k8R9gKNnDB" role="37wK5m">
                      <node concept="37vLTw" id="7k8R9gKNnDC" role="2Oq$k0">
                        <ref role="3cqZAo" node="7k8R9gKNh4V" resolve="start" />
                      </node>
                      <node concept="liA8E" id="7k8R9gKNnDD" role="2OqNvi">
                        <ref role="37wK5l" to="fbzs:~Point2D.getX():double" resolve="getX" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7k8R9gKNnDE" role="37wK5m">
                      <node concept="37vLTw" id="7k8R9gKNnDF" role="2Oq$k0">
                        <ref role="3cqZAo" node="7k8R9gKNh4V" resolve="start" />
                      </node>
                      <node concept="liA8E" id="7k8R9gKNnDG" role="2OqNvi">
                        <ref role="37wK5l" to="fbzs:~Point2D.getY():double" resolve="getY" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7k8R9gKNomA" role="3cqZAp">
              <node concept="3cpWsn" id="7k8R9gKNomB" role="3cpWs9">
                <property role="TrG5h" value="center" />
                <node concept="3uibUv" id="7k8R9gKNomC" role="1tU5fm">
                  <ref role="3uigEE" to="4io5:~Vector2D" resolve="Vector2D" />
                </node>
                <node concept="2OqwBi" id="7k8R9gKNow2" role="33vP2m">
                  <node concept="37vLTw" id="7k8R9gKNotB" role="2Oq$k0">
                    <ref role="3cqZAo" node="7k8R9gKNnfM" resolve="endVector" />
                  </node>
                  <node concept="liA8E" id="7k8R9gKNoL$" role="2OqNvi">
                    <ref role="37wK5l" to="4io5:~Vector2D.add(double,org.apache.commons.math3.geometry.Vector):org.apache.commons.math3.geometry.euclidean.twod.Vector2D" resolve="add" />
                    <node concept="3cpWsd" id="7k8R9gKOTTr" role="37wK5m">
                      <node concept="3cmrfG" id="7k8R9gKOTTu" role="3uHU7w">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="37vLTw" id="7k8R9gKNr5p" role="3uHU7B">
                        <ref role="3cqZAo" node="7k8R9gKNqGt" resolve="halfSize" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7k8R9gKNpEh" role="37wK5m">
                      <node concept="2OqwBi" id="7k8R9gKNpdi" role="2Oq$k0">
                        <node concept="37vLTw" id="7k8R9gKNp7O" role="2Oq$k0">
                          <ref role="3cqZAo" node="7k8R9gKNnD$" resolve="startVector" />
                        </node>
                        <node concept="liA8E" id="7k8R9gKNpwn" role="2OqNvi">
                          <ref role="37wK5l" to="4io5:~Vector2D.subtract(org.apache.commons.math3.geometry.Vector):org.apache.commons.math3.geometry.euclidean.twod.Vector2D" resolve="subtract" />
                          <node concept="37vLTw" id="7k8R9gKNp$j" role="37wK5m">
                            <ref role="3cqZAo" node="7k8R9gKNnfM" resolve="endVector" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="7k8R9gKNpYn" role="2OqNvi">
                        <ref role="37wK5l" to="4io5:~Vector2D.normalize():org.apache.commons.math3.geometry.euclidean.twod.Vector2D" resolve="normalize" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="ww5GvfIBhp" role="3cqZAp" />
            <node concept="3cpWs8" id="ww5GvfIHnf" role="3cqZAp">
              <node concept="3cpWsn" id="ww5GvfIHng" role="3cpWs9">
                <property role="TrG5h" value="circle" />
                <node concept="3uibUv" id="ww5GvfIHnh" role="1tU5fm">
                  <ref role="3uigEE" to="fbzs:~Ellipse2D" resolve="Ellipse2D" />
                </node>
                <node concept="2ShNRf" id="7k8R9gKNelX" role="33vP2m">
                  <node concept="1pGfFk" id="7k8R9gKNeQM" role="2ShVmc">
                    <ref role="37wK5l" to="fbzs:~Ellipse2D$Double.&lt;init&gt;(double,double,double,double)" resolve="Ellipse2D.Double" />
                    <node concept="3cpWsd" id="7k8R9gKNrbh" role="37wK5m">
                      <node concept="37vLTw" id="7k8R9gKNrdl" role="3uHU7w">
                        <ref role="3cqZAo" node="7k8R9gKNqGt" resolve="halfSize" />
                      </node>
                      <node concept="2OqwBi" id="7k8R9gKNeT7" role="3uHU7B">
                        <node concept="37vLTw" id="7k8R9gKNqju" role="2Oq$k0">
                          <ref role="3cqZAo" node="7k8R9gKNomB" resolve="center" />
                        </node>
                        <node concept="liA8E" id="7k8R9gKNeVw" role="2OqNvi">
                          <ref role="37wK5l" to="4io5:~Vector2D.getX():double" resolve="getX" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWsd" id="7k8R9gKNrph" role="37wK5m">
                      <node concept="37vLTw" id="7k8R9gKNrrL" role="3uHU7w">
                        <ref role="3cqZAo" node="7k8R9gKNqGt" resolve="halfSize" />
                      </node>
                      <node concept="2OqwBi" id="7k8R9gKNeYz" role="3uHU7B">
                        <node concept="37vLTw" id="7k8R9gKNrgM" role="2Oq$k0">
                          <ref role="3cqZAo" node="7k8R9gKNomB" resolve="center" />
                        </node>
                        <node concept="liA8E" id="7k8R9gKNf1b" role="2OqNvi">
                          <ref role="37wK5l" to="4io5:~Vector2D.getY():double" resolve="getY" />
                        </node>
                      </node>
                    </node>
                    <node concept="15NUKc" id="7k8R9gKN$3q" role="37wK5m">
                      <ref role="15NUKd" node="7k8R9gKNzLG" resolve="size" />
                    </node>
                    <node concept="15NUKc" id="7k8R9gKN$3u" role="37wK5m">
                      <ref role="15NUKd" node="7k8R9gKNzLG" resolve="size" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="ww5GvfIGtz" role="3cqZAp" />
            <node concept="3clFbJ" id="ww5GvfIzSZ" role="3cqZAp">
              <node concept="3clFbS" id="ww5GvfIzT0" role="3clFbx">
                <node concept="3clFbF" id="ww5GvfIzT1" role="3cqZAp">
                  <node concept="2OqwBi" id="ww5GvfIzT2" role="3clFbG">
                    <node concept="1X_dKq" id="ww5GvfIzT3" role="2Oq$k0" />
                    <node concept="liA8E" id="ww5GvfIzT4" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Graphics2D.fill(java.awt.Shape):void" resolve="fill" />
                      <node concept="37vLTw" id="ww5GvfIJB1" role="37wK5m">
                        <ref role="3cqZAo" node="ww5GvfIHng" resolve="circle" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="15NUKc" id="ww5GvfIzT6" role="3clFbw">
                <ref role="15NUKd" node="ww5GvfIzQk" resolve="filled" />
              </node>
              <node concept="9aQIb" id="ww5GvfIzT7" role="9aQIa">
                <node concept="3clFbS" id="ww5GvfIzT8" role="9aQI4">
                  <node concept="3clFbF" id="ww5GvfIzT9" role="3cqZAp">
                    <node concept="2OqwBi" id="ww5GvfIzTa" role="3clFbG">
                      <node concept="1X_dKq" id="ww5GvfIzTb" role="2Oq$k0" />
                      <node concept="liA8E" id="ww5GvfIzTc" role="2OqNvi">
                        <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color):void" resolve="setColor" />
                        <node concept="10M0yZ" id="ww5GvfIzTd" role="37wK5m">
                          <ref role="3cqZAo" to="z60i:~Color.WHITE" resolve="WHITE" />
                          <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="ww5GvfIzTe" role="3cqZAp">
                    <node concept="2OqwBi" id="ww5GvfIzTf" role="3clFbG">
                      <node concept="1X_dKq" id="ww5GvfIzTg" role="2Oq$k0" />
                      <node concept="liA8E" id="ww5GvfIzTh" role="2OqNvi">
                        <ref role="37wK5l" to="z60i:~Graphics2D.fill(java.awt.Shape):void" resolve="fill" />
                        <node concept="37vLTw" id="ww5GvfILNz" role="37wK5m">
                          <ref role="3cqZAo" node="ww5GvfIHng" resolve="circle" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="ww5GvfIzTj" role="3cqZAp">
                    <node concept="2OqwBi" id="ww5GvfIzTk" role="3clFbG">
                      <node concept="1X_dKq" id="ww5GvfIzTl" role="2Oq$k0" />
                      <node concept="liA8E" id="ww5GvfIzTm" role="2OqNvi">
                        <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color):void" resolve="setColor" />
                        <node concept="10M0yZ" id="ww5GvfIzTn" role="37wK5m">
                          <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                          <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="ww5GvfIzTo" role="3cqZAp">
                    <node concept="2OqwBi" id="ww5GvfIzTp" role="3clFbG">
                      <node concept="1X_dKq" id="ww5GvfIzTq" role="2Oq$k0" />
                      <node concept="liA8E" id="ww5GvfIzTr" role="2OqNvi">
                        <ref role="37wK5l" to="z60i:~Graphics2D.draw(java.awt.Shape):void" resolve="draw" />
                        <node concept="37vLTw" id="ww5GvfILQK" role="37wK5m">
                          <ref role="3cqZAo" node="ww5GvfIHng" resolve="circle" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="ww5GvfIBiu" role="3cqZAp" />
          </node>
          <node concept="1X_b45" id="7k8R9gKNdwb" role="2GsD0m" />
        </node>
      </node>
    </node>
  </node>
  <node concept="V5hpn" id="3WJqSL8HTQr">
    <property role="3GE5qa" value="artifactsTree" />
    <property role="TrG5h" value="treeStyle" />
    <node concept="14StLt" id="3WJqSL8HTQ$" role="V601i">
      <property role="TrG5h" value="tree" />
      <node concept="3tD6jV" id="3WJqSL8HTQC" role="3F10Kt">
        <ref role="3tD7wE" to="5un2:7uOgiTdwyO" resolve="tree-left-to-right" />
        <node concept="3sjG9q" id="3WJqSL8HTQE" role="3tD6jU">
          <node concept="3clFbS" id="3WJqSL8HTQG" role="2VODD2">
            <node concept="3clFbF" id="3WJqSL8HTXJ" role="3cqZAp">
              <node concept="3clFbT" id="3WJqSL8HTXI" role="3clFbG">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="VPxyj" id="7Pq1P2GlWwW" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="1uO$qF" id="ww5GvfIQ1o" role="3F10Kt">
        <node concept="3nzxsE" id="ww5GvfIQ1q" role="1uO$qD">
          <node concept="3clFbS" id="ww5GvfIQ1s" role="2VODD2">
            <node concept="3cpWs6" id="ww5GvfIU6Y" role="3cqZAp">
              <node concept="2OqwBi" id="ww5GvfJCmy" role="3cqZAk">
                <node concept="2OqwBi" id="ww5GvfJBCT" role="2Oq$k0">
                  <node concept="pncrf" id="ww5GvfJBto" role="2Oq$k0" />
                  <node concept="1mfA1w" id="ww5GvfJBZH" role="2OqNvi" />
                </node>
                <node concept="1mIQ4w" id="ww5GvfJCHC" role="2OqNvi">
                  <node concept="chp4Y" id="ww5GvfJCQG" role="cj9EA">
                    <ref role="cht4Q" to="uppb:wb0I6Vg0ar" resolve="ArtifactNodeIndep" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1wgc9g" id="ww5GvfJBbT" role="3XvnJa">
          <ref role="1wgcnl" node="ww5GvfJAak" resolve="optional" />
        </node>
      </node>
      <node concept="1uO$qF" id="ww5GvfJACN" role="3F10Kt">
        <node concept="3nzxsE" id="ww5GvfJACO" role="1uO$qD">
          <node concept="3clFbS" id="ww5GvfJACP" role="2VODD2">
            <node concept="3cpWs6" id="ww5GvfJACQ" role="3cqZAp">
              <node concept="2OqwBi" id="ww5GvfJACR" role="3cqZAk">
                <node concept="1PxgMI" id="ww5GvfJACS" role="2Oq$k0">
                  <node concept="chp4Y" id="ww5GvfJACT" role="3oSUPX">
                    <ref role="cht4Q" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
                  </node>
                  <node concept="pncrf" id="ww5GvfJACU" role="1m5AlR" />
                </node>
                <node concept="3TrcHB" id="ww5GvfJACV" role="2OqNvi">
                  <ref role="3TsBF5" to="uppb:ww5GvfIUTN" resolve="isMandatoryChild" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1wgc9g" id="ww5GvfJACW" role="3XvnJa">
          <ref role="1wgcnl" node="ww5GvfJzXu" resolve="mandatory" />
        </node>
      </node>
    </node>
    <node concept="14StLt" id="ww5GvfJzXu" role="V601i">
      <property role="TrG5h" value="mandatory" />
      <node concept="3uywDx" id="ww5GvfJ_FS" role="3F10Kt">
        <node concept="1X_cmw" id="ww5GvfJ_FX" role="3uywDX">
          <ref role="1X_clt" node="7k8R9gKN2ah" resolve="Circle" />
          <node concept="3cmrfG" id="ww5GvfKVLD" role="15NUvb">
            <property role="3cmrfH" value="7" />
          </node>
          <node concept="3clFbT" id="ww5GvfJ_SG" role="15NUvb">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="14StLt" id="ww5GvfJAak" role="V601i">
      <property role="TrG5h" value="optional" />
      <node concept="3uywDx" id="ww5GvfJAlA" role="3F10Kt">
        <node concept="1X_cmw" id="ww5GvfJAlF" role="3uywDX">
          <ref role="1X_clt" node="7k8R9gKN2ah" resolve="Circle" />
          <node concept="3cmrfG" id="ww5GvfJAlI" role="15NUvb">
            <property role="3cmrfH" value="7" />
          </node>
          <node concept="3clFbT" id="ww5GvfJAyq" role="15NUvb">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="14StLt" id="7Pq1P2GjJMy" role="V601i">
      <property role="TrG5h" value="vertexLabel" />
      <node concept="3$7fVu" id="7Pq1P2GjJNC" role="3F10Kt">
        <property role="3$6WeP" value="1" />
      </node>
      <node concept="3$7jql" id="7Pq1P2GjJNI" role="3F10Kt">
        <property role="3$6WeP" value="1" />
      </node>
      <node concept="VPxyj" id="7Pq1P2Gmj_f" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
    </node>
    <node concept="14StLt" id="7Pq1P2GhWiC" role="V601i">
      <property role="TrG5h" value="vertexFrame" />
      <node concept="3tD6jV" id="7Pq1P2G4ilh" role="3F10Kt">
        <ref role="3tD7wE" to="epcs:7AjS6YEz03T" resolve="frame-padding" />
        <node concept="3sjG9q" id="7Pq1P2G4ilj" role="3tD6jU">
          <node concept="3clFbS" id="7Pq1P2G4ill" role="2VODD2">
            <node concept="3clFbF" id="7Pq1P2G4iAj" role="3cqZAp">
              <node concept="3cmrfG" id="7Pq1P2GjoiE" role="3clFbG">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2TzqKc" id="7Pq1P2G46je" role="3F10Kt">
        <property role="1413C4" value="Arial" />
      </node>
      <node concept="VSNWy" id="7Pq1P2G7f9r" role="3F10Kt">
        <property role="1lJzqX" value="11" />
      </node>
      <node concept="3tD6jV" id="7Pq1P2GiJpH" role="3F10Kt">
        <ref role="3tD7wE" to="epcs:7AjS6YEz03l" resolve="frame-color" />
        <node concept="3sjG9q" id="7Pq1P2GiJpJ" role="3tD6jU">
          <node concept="3clFbS" id="7Pq1P2GiJpL" role="2VODD2">
            <node concept="3clFbF" id="7Pq1P2GiJIF" role="3cqZAp">
              <node concept="2YIFZM" id="7Pq1P2GiJPG" role="3clFbG">
                <ref role="37wK5l" to="z60i:~Color.decode(java.lang.String):java.awt.Color" resolve="decode" />
                <ref role="1Pybhc" to="z60i:~Color" resolve="Color" />
                <node concept="Xl_RD" id="7Pq1P2GiJY2" role="37wK5m">
                  <property role="Xl_RC" value="#555555" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="Veino" id="7Pq1P2GiCb0" role="3F10Kt">
        <node concept="1iSF2X" id="7Pq1P2GiCb3" role="VblUZ">
          <property role="1iTho6" value="EFEFEF" />
        </node>
      </node>
      <node concept="VPxyj" id="7Pq1P2Gmz6_" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
    </node>
    <node concept="14StLt" id="7Pq1P2GhVYY" role="V601i">
      <property role="TrG5h" value="selectedVertexFrame" />
      <node concept="3tD6jV" id="7Pq1P2GjozH" role="3F10Kt">
        <ref role="3tD7wE" to="epcs:7AjS6YEz03l" resolve="frame-color" />
        <node concept="3sjG9q" id="7Pq1P2GjozI" role="3tD6jU">
          <node concept="3clFbS" id="7Pq1P2GjozJ" role="2VODD2">
            <node concept="3clFbF" id="7Pq1P2GjozK" role="3cqZAp">
              <node concept="2YIFZM" id="7Pq1P2GjozL" role="3clFbG">
                <ref role="1Pybhc" to="z60i:~Color" resolve="Color" />
                <ref role="37wK5l" to="z60i:~Color.decode(java.lang.String):java.awt.Color" resolve="decode" />
                <node concept="Xl_RD" id="7Pq1P2GjozM" role="37wK5m">
                  <property role="Xl_RC" value="#857000" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="Veino" id="7Pq1P2GjozN" role="3F10Kt">
        <node concept="1iSF2X" id="7Pq1P2GjozO" role="VblUZ">
          <property role="1iTho6" value="FFF6BF" />
        </node>
      </node>
      <node concept="VPxyj" id="7Pq1P2Gmz70" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
    </node>
    <node concept="14StLt" id="7Pq1P2GhVZ$" role="V601i">
      <property role="TrG5h" value="unselectableVertexFrame" />
      <node concept="3tD6jV" id="7Pq1P2GkgC$" role="3F10Kt">
        <ref role="3tD7wE" to="epcs:7AjS6YEz03l" resolve="frame-color" />
        <node concept="3sjG9q" id="7Pq1P2GkgC_" role="3tD6jU">
          <node concept="3clFbS" id="7Pq1P2GkgCA" role="2VODD2">
            <node concept="3clFbF" id="7Pq1P2GkgCB" role="3cqZAp">
              <node concept="2YIFZM" id="7Pq1P2GkgCC" role="3clFbG">
                <ref role="37wK5l" to="z60i:~Color.decode(java.lang.String):java.awt.Color" resolve="decode" />
                <ref role="1Pybhc" to="z60i:~Color" resolve="Color" />
                <node concept="Xl_RD" id="7Pq1P2GkgCD" role="37wK5m">
                  <property role="Xl_RC" value="#777777" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="VechU" id="7Pq1P2GkgUd" role="3F10Kt">
        <node concept="1iSF2X" id="7Pq1P2GkgUf" role="VblUZ">
          <property role="1iTho6" value="A9A9A9" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2qK8RKEBS63">
    <property role="3GE5qa" value="artifactsTree" />
    <ref role="1XX52x" to="uppb:2qK8RKEBS5B" resolve="ArtifactNodeRef" />
    <node concept="1iCGBv" id="2qK8RKEBS65" role="2wV5jI">
      <ref role="1NtTu8" to="uppb:2qK8RKEBS5C" resolve="ref" />
      <node concept="1sVBvm" id="2qK8RKEBS67" role="1sWHZn">
        <node concept="3F0A7n" id="2qK8RKEBS6e" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="uppb:2qK8RKECpCE" resolve="shortname" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2qK8RKEIZFf">
    <property role="3GE5qa" value="artifactDescription" />
    <ref role="1XX52x" to="uppb:4T0MB1Xf65_" resolve="DirectChildRef" />
    <node concept="1iCGBv" id="2qK8RKEIZFh" role="2wV5jI">
      <ref role="1NtTu8" to="uppb:2qK8RKEIZEL" resolve="ref" />
      <node concept="1sVBvm" id="2qK8RKEIZFj" role="1sWHZn">
        <node concept="3F0A7n" id="2qK8RKEIZFq" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="uppb:XZk_44NpAT" resolve="shortname" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2qK8RKEIZFS">
    <property role="3GE5qa" value="artifactDescription" />
    <ref role="1XX52x" to="uppb:4x6uVBKx3sp" resolve="NoDescendentRef" />
    <node concept="1iCGBv" id="2qK8RKEIZFU" role="2wV5jI">
      <ref role="1NtTu8" to="uppb:2qK8RKEIZFt" resolve="ref" />
      <node concept="1sVBvm" id="2qK8RKEIZFW" role="1sWHZn">
        <node concept="3F0A7n" id="2qK8RKEIZG3" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="uppb:XZk_44NpAT" resolve="shortname" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2qK8RKEPjGw">
    <property role="3GE5qa" value="artifactsTree" />
    <ref role="1XX52x" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
    <node concept="3EZMnI" id="2qK8RKEPjGy" role="2wV5jI">
      <node concept="l2Vlx" id="2qK8RKEPjG_" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="2qK8RKEPjGM" role="6VMZX">
      <node concept="2iRkQZ" id="2qK8RKEPjGN" role="2iSdaV" />
      <node concept="3EZMnI" id="2qK8RKEPjGS" role="3EZMnx">
        <node concept="3F0ifn" id="2qK8RKEPjLO" role="3EZMnx">
          <property role="3F0ifm" value="alias:    " />
        </node>
        <node concept="VPM3Z" id="2qK8RKEPjGU" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0A7n" id="2qK8RKEPjH3" role="3EZMnx">
          <ref role="1NtTu8" to="uppb:2qK8RKECpCE" resolve="shortname" />
        </node>
        <node concept="l2Vlx" id="2qK8RKEPjGX" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="2qK8RKEPjHu" role="3EZMnx">
        <node concept="3F0ifn" id="2qK8RKEPjLH" role="3EZMnx">
          <property role="3F0ifm" value="path:     " />
        </node>
        <node concept="VPM3Z" id="2qK8RKEPjHv" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0A7n" id="2qK8RKEPjHw" role="3EZMnx">
          <ref role="1NtTu8" to="uppb:2qK8RKECpC$" resolve="path" />
        </node>
        <node concept="l2Vlx" id="2qK8RKEPjHx" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="7Pq1P2GipMe" role="3EZMnx">
        <node concept="VPM3Z" id="7Pq1P2GipMg" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="7Pq1P2GipMi" role="3EZMnx">
          <property role="3F0ifm" value="selected: " />
        </node>
        <node concept="3F0A7n" id="7Pq1P2GipMT" role="3EZMnx">
          <ref role="1NtTu8" to="uppb:6I9RXT7Mc2" resolve="isSelected" />
        </node>
        <node concept="l2Vlx" id="7Pq1P2GipMj" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="2qK8RKEPjLe" role="3EZMnx" />
      <node concept="3EZMnI" id="2qK8RKEPjHc" role="3EZMnx">
        <node concept="3F0ifn" id="2qK8RKEPjKR" role="3EZMnx">
          <property role="3F0ifm" value="mandatory: " />
        </node>
        <node concept="VPM3Z" id="2qK8RKEPjHe" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="l2Vlx" id="2qK8RKEPjHh" role="2iSdaV" />
        <node concept="3F2HdR" id="2qK8RKEPjKk" role="3EZMnx">
          <ref role="1NtTu8" to="uppb:2qK8RKEC3$n" resolve="mandatory" />
          <node concept="l2Vlx" id="2qK8RKEPjKl" role="2czzBx" />
        </node>
      </node>
      <node concept="3EZMnI" id="2qK8RKEPjIg" role="3EZMnx">
        <node concept="3F0ifn" id="2qK8RKEPjL0" role="3EZMnx">
          <property role="3F0ifm" value="required:  " />
        </node>
        <node concept="VPM3Z" id="2qK8RKEPjIh" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F2HdR" id="2qK8RKEPjKq" role="3EZMnx">
          <ref role="1NtTu8" to="uppb:2qK8RKEC3$o" resolve="required" />
          <node concept="l2Vlx" id="2qK8RKEPjKs" role="2czzBx" />
        </node>
        <node concept="l2Vlx" id="2qK8RKEPjIj" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="2qK8RKEPjIU" role="3EZMnx">
        <node concept="3F0ifn" id="2qK8RKEPjL9" role="3EZMnx">
          <property role="3F0ifm" value="excluded:  " />
        </node>
        <node concept="VPM3Z" id="2qK8RKEPjIV" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F2HdR" id="2qK8RKEPjK$" role="3EZMnx">
          <ref role="1NtTu8" to="uppb:2qK8RKEC3$p" resolve="excluded" />
          <node concept="l2Vlx" id="2qK8RKEPjKA" role="2czzBx" />
        </node>
        <node concept="l2Vlx" id="2qK8RKEPjIX" role="2iSdaV" />
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="7Pq1P2G6zc4">
    <property role="3GE5qa" value="artifactsTree" />
    <property role="TrG5h" value="FeatureVertex_Actions" />
    <ref role="1h_SK9" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
    <node concept="1hA7zw" id="2SikScA3a3F" role="1h_SK8">
      <property role="1hAc7j" value="delete_action_id" />
      <node concept="1hAIg9" id="2SikScA3a3G" role="1hA7z_">
        <node concept="3clFbS" id="2SikScA3a3H" role="2VODD2" />
      </node>
    </node>
    <node concept="1hA7zw" id="2SikScA661u" role="1h_SK8">
      <property role="1hAc7j" value="click_action_id" />
      <node concept="1hAIg9" id="2SikScA661v" role="1hA7z_">
        <node concept="3clFbS" id="2SikScA661w" role="2VODD2">
          <node concept="3clFbJ" id="2SikScA661x" role="3cqZAp">
            <node concept="2YIFZM" id="2SikScA661y" role="3clFbw">
              <ref role="1Pybhc" node="2SikScA58Eh" resolve="DoubleClick" />
              <ref role="37wK5l" node="2SikScA5rIr" resolve="isDoubleClick" />
            </node>
            <node concept="3clFbS" id="2SikScA661z" role="3clFbx">
              <node concept="3clFbJ" id="2SikScA9bqs" role="3cqZAp">
                <node concept="3clFbS" id="2SikScA9bqu" role="3clFbx">
                  <node concept="3clFbF" id="2SikScA661B" role="3cqZAp">
                    <node concept="37vLTI" id="2SikScA661C" role="3clFbG">
                      <node concept="2OqwBi" id="2SikScA661D" role="37vLTJ">
                        <node concept="0IXxy" id="2SikScA661E" role="2Oq$k0" />
                        <node concept="3TrcHB" id="2SikScA661F" role="2OqNvi">
                          <ref role="3TsBF5" to="uppb:6I9RXT7Mc2" resolve="isSelected" />
                        </node>
                      </node>
                      <node concept="3fqX7Q" id="2SikScA661G" role="37vLTx">
                        <node concept="2OqwBi" id="2SikScA661H" role="3fr31v">
                          <node concept="0IXxy" id="2SikScA661I" role="2Oq$k0" />
                          <node concept="3TrcHB" id="2SikScA661J" role="2OqNvi">
                            <ref role="3TsBF5" to="uppb:6I9RXT7Mc2" resolve="isSelected" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="2SikScA9bA_" role="3clFbw">
                  <node concept="0IXxy" id="2SikScA9bte" role="2Oq$k0" />
                  <node concept="2qgKlT" id="2SikScA9bLX" role="2OqNvi">
                    <ref role="37wK5l" to="m961:7Pq1P2G91Eb" resolve="isEditable" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="ww5Gvfzbsu" role="1h_SK8">
      <property role="1hAc7j" value="insert_action_id" />
      <node concept="1hAIg9" id="ww5Gvfzbsv" role="1hA7z_">
        <node concept="3clFbS" id="ww5Gvfzbsw" role="2VODD2">
          <node concept="3cpWs8" id="5dzaEnaRoEQ" role="3cqZAp">
            <node concept="3cpWsn" id="5dzaEnaRoER" role="3cpWs9">
              <property role="TrG5h" value="curNode" />
              <node concept="3Tqbb2" id="5dzaEnaRoES" role="1tU5fm">
                <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
              </node>
              <node concept="2OqwBi" id="5dzaEnaRoET" role="33vP2m">
                <node concept="1PxgMI" id="5dzaEnaRoEU" role="2Oq$k0">
                  <node concept="chp4Y" id="5dzaEnaRoEV" role="3oSUPX">
                    <ref role="cht4Q" to="tpck:gw2VY9q" resolve="BaseConcept" />
                  </node>
                  <node concept="2OqwBi" id="5dzaEnaRoEW" role="1m5AlR">
                    <node concept="1Q80Hx" id="5dzaEnaRoEX" role="2Oq$k0" />
                    <node concept="liA8E" id="5dzaEnaRoEY" role="2OqNvi">
                      <ref role="37wK5l" to="cj4x:~EditorContext.getSelectedNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSelectedNode" />
                    </node>
                  </node>
                </node>
                <node concept="2Xjw5R" id="5dzaEnaRoEZ" role="2OqNvi">
                  <node concept="1xMEDy" id="5dzaEnaRoF0" role="1xVPHs">
                    <node concept="chp4Y" id="5dzaEnaRoF1" role="ri$Ld">
                      <ref role="cht4Q" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="5dzaEnaRoF2" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="ww5GvfLKLk" role="3cqZAp">
            <node concept="3clFbS" id="ww5GvfLKLl" role="3clFbx">
              <node concept="3clFbF" id="ww5GvfLKLm" role="3cqZAp">
                <node concept="37vLTI" id="ww5GvfLKLn" role="3clFbG">
                  <node concept="2OqwBi" id="ww5GvfLKLo" role="37vLTJ">
                    <node concept="37vLTw" id="ww5GvfLKYl" role="2Oq$k0">
                      <ref role="3cqZAo" node="5dzaEnaRoER" resolve="curNode" />
                    </node>
                    <node concept="3TrcHB" id="ww5GvfLKLq" role="2OqNvi">
                      <ref role="3TsBF5" to="uppb:6I9RXT7Mc2" resolve="isSelected" />
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="ww5GvfLKLr" role="37vLTx">
                    <node concept="2OqwBi" id="ww5GvfLKLs" role="3fr31v">
                      <node concept="37vLTw" id="5dzaEnaVeYi" role="2Oq$k0">
                        <ref role="3cqZAo" node="5dzaEnaRoER" resolve="curNode" />
                      </node>
                      <node concept="3TrcHB" id="ww5GvfLKLu" role="2OqNvi">
                        <ref role="3TsBF5" to="uppb:6I9RXT7Mc2" resolve="isSelected" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="ww5GvfLKLv" role="3clFbw">
              <node concept="37vLTw" id="ww5GvfLKRc" role="2Oq$k0">
                <ref role="3cqZAo" node="5dzaEnaRoER" resolve="curNode" />
              </node>
              <node concept="2qgKlT" id="ww5GvfLKLx" role="2OqNvi">
                <ref role="37wK5l" to="m961:7Pq1P2G91Eb" resolve="isEditable" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1hA7zw" id="ww5GvfzbsM" role="1h_SK8">
      <property role="1hAc7j" value="insert_before_action_id" />
      <node concept="1hAIg9" id="ww5GvfzbsN" role="1hA7z_">
        <node concept="3clFbS" id="ww5GvfzbsO" role="2VODD2">
          <node concept="3cpWs8" id="ww5GvfzbsP" role="3cqZAp">
            <node concept="3cpWsn" id="ww5GvfzbsQ" role="3cpWs9">
              <property role="TrG5h" value="curNode" />
              <node concept="3Tqbb2" id="ww5GvfzbsR" role="1tU5fm">
                <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
              </node>
              <node concept="2OqwBi" id="5dzaEnaRnYP" role="33vP2m">
                <node concept="1PxgMI" id="5dzaEnaRnGt" role="2Oq$k0">
                  <node concept="chp4Y" id="5dzaEnaRnMh" role="3oSUPX">
                    <ref role="cht4Q" to="tpck:gw2VY9q" resolve="BaseConcept" />
                  </node>
                  <node concept="2OqwBi" id="ww5GvfzbsU" role="1m5AlR">
                    <node concept="1Q80Hx" id="ww5GvfzbsV" role="2Oq$k0" />
                    <node concept="liA8E" id="ww5GvfzbsW" role="2OqNvi">
                      <ref role="37wK5l" to="cj4x:~EditorContext.getSelectedNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSelectedNode" />
                    </node>
                  </node>
                </node>
                <node concept="2Xjw5R" id="5dzaEnaRolI" role="2OqNvi">
                  <node concept="1xMEDy" id="5dzaEnaRolK" role="1xVPHs">
                    <node concept="chp4Y" id="5dzaEnaRoqT" role="ri$Ld">
                      <ref role="cht4Q" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="5dzaEnaRo_L" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="ww5GvfLL7y" role="3cqZAp">
            <node concept="3clFbS" id="ww5GvfLL7z" role="3clFbx">
              <node concept="3clFbF" id="ww5GvfLL7$" role="3cqZAp">
                <node concept="37vLTI" id="ww5GvfLL7_" role="3clFbG">
                  <node concept="2OqwBi" id="ww5GvfLL7A" role="37vLTJ">
                    <node concept="37vLTw" id="ww5GvfLL7B" role="2Oq$k0">
                      <ref role="3cqZAo" node="ww5GvfzbsQ" resolve="curNode" />
                    </node>
                    <node concept="3TrcHB" id="ww5GvfLL7C" role="2OqNvi">
                      <ref role="3TsBF5" to="uppb:6I9RXT7Mc2" resolve="isSelected" />
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="ww5GvfLL7D" role="37vLTx">
                    <node concept="2OqwBi" id="ww5GvfLL7E" role="3fr31v">
                      <node concept="37vLTw" id="5dzaEnaVq53" role="2Oq$k0">
                        <ref role="3cqZAo" node="ww5GvfzbsQ" resolve="curNode" />
                      </node>
                      <node concept="3TrcHB" id="ww5GvfLL7G" role="2OqNvi">
                        <ref role="3TsBF5" to="uppb:6I9RXT7Mc2" resolve="isSelected" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="ww5GvfLL7H" role="3clFbw">
              <node concept="37vLTw" id="ww5GvfLL7I" role="2Oq$k0">
                <ref role="3cqZAo" node="ww5GvfzbsQ" resolve="curNode" />
              </node>
              <node concept="2qgKlT" id="ww5GvfLL7J" role="2OqNvi">
                <ref role="37wK5l" to="m961:7Pq1P2G91Eb" resolve="isEditable" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2SikScA58Eh">
    <property role="TrG5h" value="DoubleClick" />
    <node concept="Wx3nA" id="2SikScA5iZP" role="jymVt">
      <property role="TrG5h" value="lastClick" />
      <property role="3TUv4t" value="false" />
      <node concept="3cpWsb" id="2SikScA5fTw" role="1tU5fm" />
      <node concept="3Tm6S6" id="2SikScA58GD" role="1B3o_S" />
      <node concept="3cmrfG" id="2SikScA5jbi" role="33vP2m">
        <property role="3cmrfH" value="0" />
      </node>
    </node>
    <node concept="2tJIrI" id="2SikScA5dh8" role="jymVt" />
    <node concept="2YIFZL" id="2SikScA5rIr" role="jymVt">
      <property role="TrG5h" value="isDoubleClick" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="2SikScA5iTl" role="3clF47">
        <node concept="3cpWs8" id="2SikScA5jrc" role="3cqZAp">
          <node concept="3cpWsn" id="2SikScA5jrf" role="3cpWs9">
            <property role="TrG5h" value="now" />
            <node concept="3cpWsb" id="2SikScA5jrb" role="1tU5fm" />
            <node concept="2YIFZM" id="2SikScA5jxy" role="33vP2m">
              <ref role="37wK5l" to="wyt6:~System.currentTimeMillis():long" resolve="currentTimeMillis" />
              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2SikScA5jKy" role="3cqZAp">
          <node concept="3cpWsn" id="2SikScA5jK_" role="3cpWs9">
            <property role="TrG5h" value="diff" />
            <node concept="3cpWsb" id="2SikScA5jKw" role="1tU5fm" />
            <node concept="3cpWsd" id="2SikScA5kuA" role="33vP2m">
              <node concept="37vLTw" id="2SikScA5nPt" role="3uHU7w">
                <ref role="3cqZAo" node="2SikScA5iZP" resolve="lastClick" />
              </node>
              <node concept="37vLTw" id="2SikScA5jQ_" role="3uHU7B">
                <ref role="3cqZAo" node="2SikScA5jrf" resolve="now" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2SikScA5o5$" role="3cqZAp">
          <node concept="37vLTI" id="2SikScA5qnY" role="3clFbG">
            <node concept="37vLTw" id="2SikScA5q$q" role="37vLTx">
              <ref role="3cqZAo" node="2SikScA5jrf" resolve="now" />
            </node>
            <node concept="37vLTw" id="2SikScA5o5y" role="37vLTJ">
              <ref role="3cqZAo" node="2SikScA5iZP" resolve="lastClick" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2SikScA5jyk" role="3cqZAp" />
        <node concept="3cpWs6" id="2SikScA5jDs" role="3cqZAp">
          <node concept="3eOVzh" id="2SikScA5rrR" role="3cqZAk">
            <node concept="37vLTw" id="2SikScA5qFx" role="3uHU7B">
              <ref role="3cqZAo" node="2SikScA5jK_" resolve="diff" />
            </node>
            <node concept="3cmrfG" id="2SikScA5zZ8" role="3uHU7w">
              <property role="3cmrfH" value="300" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="2SikScA5iTc" role="3clF45" />
      <node concept="3Tm1VV" id="2SikScA5ina" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="2SikScA58Ei" role="1B3o_S" />
  </node>
  <node concept="PKFIW" id="7r$Cpd5QD2E">
    <property role="3GE5qa" value="artifactsTree" />
    <property role="TrG5h" value="ArtifactNodeInspectorView" />
    <ref role="1XX52x" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
    <node concept="3EZMnI" id="ww5GvfKAzk" role="2wV5jI">
      <node concept="2iRkQZ" id="ww5GvfKAzl" role="2iSdaV" />
      <node concept="3EZMnI" id="ww5GvfKAzm" role="3EZMnx">
        <node concept="3F0ifn" id="ww5GvfKAzn" role="3EZMnx">
          <property role="3F0ifm" value="alias: " />
        </node>
        <node concept="VPM3Z" id="ww5GvfKAzo" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0A7n" id="ww5GvfKAzp" role="3EZMnx">
          <ref role="1NtTu8" to="uppb:2qK8RKECpCE" resolve="shortname" />
        </node>
        <node concept="l2Vlx" id="ww5GvfKAzq" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="ww5GvfKAzr" role="3EZMnx">
        <node concept="3F0ifn" id="ww5GvfKAzs" role="3EZMnx">
          <property role="3F0ifm" value="path:  " />
        </node>
        <node concept="VPM3Z" id="ww5GvfKAzt" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0A7n" id="ww5GvfKAzu" role="3EZMnx">
          <ref role="1NtTu8" to="uppb:2qK8RKECpC$" resolve="path" />
        </node>
        <node concept="l2Vlx" id="ww5GvfKAzv" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="ww5GvfKAzw" role="3EZMnx" />
      <node concept="3EZMnI" id="ww5GvfKAzx" role="3EZMnx">
        <node concept="VPM3Z" id="ww5GvfKAzy" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="ww5GvfKAzz" role="3EZMnx">
          <property role="3F0ifm" value="is selected: " />
        </node>
        <node concept="3F0A7n" id="ww5GvfKAz$" role="3EZMnx">
          <ref role="1NtTu8" to="uppb:6I9RXT7Mc2" resolve="isSelected" />
        </node>
        <node concept="l2Vlx" id="ww5GvfKAz_" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="ww5GvfKAzA" role="3EZMnx">
        <node concept="VPM3Z" id="ww5GvfKAzB" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="ww5GvfKAzC" role="3EZMnx">
          <property role="3F0ifm" value="is mandatory:" />
        </node>
        <node concept="3F0A7n" id="ww5GvfKAzD" role="3EZMnx">
          <ref role="1NtTu8" to="uppb:ww5GvfIUTN" resolve="isMandatoryChild" />
        </node>
        <node concept="l2Vlx" id="ww5GvfKAzE" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="ww5GvfKAzF" role="3EZMnx" />
      <node concept="3EZMnI" id="ww5GvfKAzG" role="3EZMnx">
        <node concept="3F0ifn" id="ww5GvfKAzH" role="3EZMnx">
          <property role="3F0ifm" value="mandatory: " />
        </node>
        <node concept="VPM3Z" id="ww5GvfKAzI" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="l2Vlx" id="ww5GvfKAzJ" role="2iSdaV" />
        <node concept="3EZMnI" id="7r$Cpd5QF50" role="3EZMnx">
          <node concept="2iRkQZ" id="7r$Cpd5QF51" role="2iSdaV" />
          <node concept="3F2HdR" id="ww5GvfKAzK" role="3EZMnx">
            <ref role="1NtTu8" to="uppb:2qK8RKEC3$n" resolve="mandatory" />
            <node concept="l2Vlx" id="ww5GvfKAzL" role="2czzBx" />
            <node concept="pj6Ft" id="7r$Cpd5QMAm" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="ww5GvfKAzM" role="3EZMnx">
        <node concept="3F0ifn" id="ww5GvfKAzN" role="3EZMnx">
          <property role="3F0ifm" value="required:  " />
        </node>
        <node concept="VPM3Z" id="ww5GvfKAzO" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3EZMnI" id="7r$Cpd5QF4I" role="3EZMnx">
          <node concept="2iRkQZ" id="7r$Cpd5QF4J" role="2iSdaV" />
          <node concept="3F2HdR" id="ww5GvfKAzP" role="3EZMnx">
            <ref role="1NtTu8" to="uppb:2qK8RKEC3$o" resolve="required" />
            <node concept="l2Vlx" id="ww5GvfKAzQ" role="2czzBx" />
            <node concept="pj6Ft" id="7r$Cpd5QMAk" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
        </node>
        <node concept="l2Vlx" id="ww5GvfKAzR" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="ww5GvfKAzS" role="3EZMnx">
        <node concept="3F0ifn" id="ww5GvfKAzT" role="3EZMnx">
          <property role="3F0ifm" value="excluded:  " />
        </node>
        <node concept="VPM3Z" id="ww5GvfKAzU" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3EZMnI" id="7r$Cpd5QF4R" role="3EZMnx">
          <node concept="2iRkQZ" id="7r$Cpd5QF4S" role="2iSdaV" />
          <node concept="3F2HdR" id="ww5GvfKAzV" role="3EZMnx">
            <ref role="1NtTu8" to="uppb:2qK8RKEC3$p" resolve="excluded" />
            <node concept="l2Vlx" id="ww5GvfKAzW" role="2czzBx" />
            <node concept="pj6Ft" id="7r$Cpd5QMAi" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
        </node>
        <node concept="l2Vlx" id="ww5GvfKAzX" role="2iSdaV" />
      </node>
    </node>
  </node>
</model>

