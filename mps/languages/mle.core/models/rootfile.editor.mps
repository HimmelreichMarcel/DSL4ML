<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00f9bb1b-55b4-4779-85b7-20858121b8dd(rootfile.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
    <use id="b33d119e-196d-4497-977c-5c167b21fe33" name="com.mbeddr.mpsutil.framecell" version="0" />
    <use id="1919c723-b60b-4592-9318-9ce96d91da44" name="de.itemis.mps.editor.celllayout" version="0" />
    <use id="9d69e719-78c8-4286-90db-fb19c107d049" name="com.mbeddr.mpsutil.grammarcells" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="epcs" ref="b33d119e-196d-4497-977c-5c167b21fe33/r:b7f325a3-1f57-46bc-8b14-d2d7c5ff6714(com.mbeddr.mpsutil.framecell/com.mbeddr.mpsutil.framecell.editor)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="kcid" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cellLayout(MPS.Editor/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="oqcp" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.imageio(JDK/)" />
    <import index="jan3" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.image(JDK/)" />
    <import index="7skk" ref="r:c33d3b05-6327-4bd1-91f0-9c47a8de45f7(rootfile.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="zzzn" ref="r:af0af2e7-f7e1-4536-83b5-6bf010d4afd2(org.iets3.core.expr.lambda.structure)" implicit="true" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" implicit="true" />
    <import index="yv47" ref="r:da65683e-ff6f-430d-ab68-32a77df72c93(org.iets3.core.expr.toplevel.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="rzzn" ref="r:76ee21ab-cfc8-4c27-9a60-7dd5562f12aa(rootfile.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
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
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1186415722038" name="jetbrains.mps.lang.editor.structure.FontSizeStyleClassItem" flags="ln" index="VSNWy">
        <property id="1221209241505" name="value" index="1lJzqX" />
        <child id="1221064706952" name="query" index="1d8cEk" />
      </concept>
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="3383245079137382180" name="jetbrains.mps.lang.editor.structure.StyleClass" flags="ig" index="14StLt" />
      <concept id="1221057094638" name="jetbrains.mps.lang.editor.structure.QueryFunction_Integer" flags="in" index="1cFabM" />
      <concept id="1103016434866" name="jetbrains.mps.lang.editor.structure.CellModel_JComponent" flags="sg" stub="8104358048506731196" index="3gTLQM">
        <child id="1176475119347" name="componentProvider" index="3FoqZy" />
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
      <concept id="1236443640684" name="jetbrains.mps.lang.editor.structure.QueryFunction_String" flags="in" index="3xMb9N" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
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
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1176474535556" name="jetbrains.mps.lang.editor.structure.QueryFunction_JComponent" flags="in" index="3Fmcul" />
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
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="5279705229678483897" name="jetbrains.mps.baseLanguage.structure.FloatingPointFloatConstant" flags="nn" index="2$xPTn">
        <property id="5279705229678483899" name="value" index="2$xPTl" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1153952380246" name="jetbrains.mps.baseLanguage.structure.TryStatement" flags="nn" index="2GUZhq">
        <child id="1153952416686" name="body" index="2GV8ay" />
        <child id="1153952429843" name="finallyBody" index="2GVbov" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534513062" name="jetbrains.mps.baseLanguage.structure.DoubleType" flags="in" index="10P55v" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
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
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
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
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="9d69e719-78c8-4286-90db-fb19c107d049" name="com.mbeddr.mpsutil.grammarcells">
      <concept id="7363578995839435357" name="com.mbeddr.mpsutil.grammarcells.structure.WrapperCell" flags="ng" index="1kIj98">
        <property id="484443907677193054" name="focusWrapped" index="3g2DhO" />
        <child id="7363578995839435358" name="wrapped" index="1kIj9b" />
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
        <child id="1236443321503" name="query" index="3xKXm0" />
      </concept>
      <concept id="4682418030829299311" name="de.itemis.mps.editor.celllayout.structure.FontFamilyStyle" flags="lg" index="2TzqKc" />
      <concept id="4682418030828844315" name="de.itemis.mps.editor.celllayout.structure.HorizontalLineColorStyle" flags="lg" index="2T_bXS" />
      <concept id="4682418030828725523" name="de.itemis.mps.editor.celllayout.structure.HorizontalLineCell" flags="ng" index="2T_mXK" />
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="1167227138527" name="jetbrains.mps.baseLanguage.logging.structure.LogStatement" flags="nn" index="34ab3g">
        <property id="1167228628751" name="hasException" index="34fQS0" />
        <property id="1167245565795" name="severity" index="35gtTG" />
        <child id="1167227463056" name="logExpression" index="34bqiv" />
        <child id="1167227561449" name="exception" index="34bMjA" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
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
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="linkRole" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="7_89nJti8OI">
    <property role="3GE5qa" value="section" />
    <ref role="1XX52x" to="7skk:7OzZ9xI8qFl" resolve="Section" />
    <node concept="3EZMnI" id="7OzZ9xI8qGE" role="2wV5jI">
      <node concept="2iRkQZ" id="7OzZ9xI8qGF" role="2iSdaV" />
      <node concept="3j0QqT" id="5U8d23QobMD" role="3EZMnx">
        <node concept="3EZMnI" id="7OzZ9xI8KMW" role="3j0Cwz">
          <node concept="2iRkQZ" id="7OzZ9xI8KMX" role="2iSdaV" />
          <node concept="3F0A7n" id="7OzZ9xI8qG$" role="3EZMnx">
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
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
          <node concept="3EZMnI" id="7OzZ9xI8RfS" role="3EZMnx">
            <node concept="VPM3Z" id="7OzZ9xI8RfU" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="3F0ifn" id="7OzZ9xI8RfW" role="3EZMnx">
              <property role="3F0ifm" value="in" />
            </node>
            <node concept="3EZMnI" id="2phmoMaEhXY" role="3EZMnx">
              <node concept="3F0ifn" id="2phmoMaEhYd" role="3EZMnx" />
              <node concept="2iRkQZ" id="2phmoMaEhXZ" role="2iSdaV" />
              <node concept="3F2HdR" id="7OzZ9xI8Rh4" role="3EZMnx">
                <ref role="1NtTu8" to="7skk:7OzZ9xI8RgX" resolve="inports" />
                <node concept="2iRkQZ" id="7OzZ9xI8RHw" role="2czzBx" />
              </node>
            </node>
            <node concept="2iRfu4" id="7OzZ9xI8RfX" role="2iSdaV" />
            <node concept="3XFhqQ" id="7OzZ9xI8RHC" role="3EZMnx" />
            <node concept="3XFhqQ" id="5uNOSklhURJ" role="3EZMnx" />
            <node concept="3XFhqQ" id="7OzZ9xI8RHI" role="3EZMnx" />
            <node concept="3F0ifn" id="7OzZ9xI8RHV" role="3EZMnx">
              <property role="3F0ifm" value="out" />
            </node>
            <node concept="3EZMnI" id="2phmoMaEhYh" role="3EZMnx">
              <node concept="3F0ifn" id="2phmoMaEhYz" role="3EZMnx" />
              <node concept="2iRkQZ" id="2phmoMaEhYi" role="2iSdaV" />
              <node concept="3F2HdR" id="7OzZ9xI8RIb" role="3EZMnx">
                <ref role="1NtTu8" to="7skk:7OzZ9xI8Rh0" resolve="outports" />
                <node concept="2iRkQZ" id="7OzZ9xI8RIm" role="2czzBx" />
              </node>
            </node>
          </node>
          <node concept="2T_mXK" id="7OzZ9xI8QMj" role="3EZMnx">
            <node concept="2T_bXS" id="7OzZ9xI8QMk" role="3F10Kt">
              <node concept="1iSF2X" id="38ogk7FPLs4" role="VblUZ">
                <property role="1iTho6" value="4E4D4C" />
              </node>
            </node>
            <node concept="3tD6jV" id="7OzZ9xI8QMq" role="3F10Kt">
              <ref role="3tD7wE" to="epcs:7AjS6YEz03y" resolve="frame-width" />
              <node concept="3sjG9q" id="7OzZ9xI8QMr" role="3tD6jU">
                <node concept="3clFbS" id="7OzZ9xI8QMs" role="2VODD2">
                  <node concept="3clFbF" id="7OzZ9xI8QMt" role="3cqZAp">
                    <node concept="3cmrfG" id="7OzZ9xI8QMu" role="3clFbG">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3F1sOY" id="fN3qU6G8aP" role="3EZMnx">
            <ref role="1NtTu8" to="7skk:7OzZ9xI8qH5" resolve="block" />
            <ref role="1k5W1q" node="38ogk7FQpJU" resolve="code" />
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
                  <ref role="1Pybhc" to="z60i:~Color" resolve="Color" />
                  <ref role="37wK5l" to="z60i:~Color.decode(java.lang.String):java.awt.Color" resolve="decode" />
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
        <ref role="1NtTu8" to="7skk:54xAiUPY0t2" resolve="results" />
        <node concept="2iRkQZ" id="5dzaEnaOT1y" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="4TFMgV42o0G" role="3EZMnx" />
    </node>
  </node>
  <node concept="24kQdi" id="HP8CeVFdOz">
    <property role="3GE5qa" value="section.codeblock" />
    <ref role="1XX52x" to="7skk:4flHrhnC3AH" resolve="CodeBlock" />
    <node concept="3EZMnI" id="4flHrhnC3B9" role="2wV5jI">
      <node concept="3F0ifn" id="4flHrhnC3Bg" role="3EZMnx">
        <property role="3F0ifm" value="code" />
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
      </node>
      <node concept="l2Vlx" id="4flHrhnC3Bc" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="HP8CeVGkgp">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="7skk:5uNOSkli4V2" resolve="ProvideOutportExpr" />
    <node concept="3EZMnI" id="5uNOSkli4Xi" role="2wV5jI">
      <ref role="1k5W1q" node="38ogk7FQpJU" resolve="code" />
      <node concept="3F0ifn" id="5uNOSkli4Xp" role="3EZMnx">
        <property role="3F0ifm" value="provide" />
        <ref role="1k5W1q" node="38ogk7FQpJU" resolve="code" />
      </node>
      <node concept="1iCGBv" id="1EO_bV9HAt$" role="3EZMnx">
        <ref role="1NtTu8" to="7skk:5uKjkG1enxG" resolve="varRef" />
        <ref role="1k5W1q" node="38ogk7FQG9l" resolve="varname" />
        <node concept="1sVBvm" id="1EO_bV9HAtA" role="1sWHZn">
          <node concept="1iCGBv" id="1EO_bV9HAtQ" role="2wV5jI">
            <ref role="1NtTu8" to="zzzn:49WTic8iI9_" resolve="val" />
            <node concept="1sVBvm" id="1EO_bV9HAtS" role="1sWHZn">
              <node concept="3F0A7n" id="1EO_bV9HAu2" role="2wV5jI">
                <property role="1Intyy" value="true" />
                <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="5uKjkG1dSYf" role="3EZMnx">
        <property role="3F0ifm" value="as" />
        <ref role="1k5W1q" node="38ogk7FQpJU" resolve="code" />
      </node>
      <node concept="3F1sOY" id="5uKjkG1fFgH" role="3EZMnx">
        <ref role="1NtTu8" to="7skk:2Zea4aYoPaX" resolve="outport" />
      </node>
      <node concept="l2Vlx" id="5uNOSkli4Xl" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="HP8CeVGyr5">
    <property role="3GE5qa" value="section.ports" />
    <ref role="1XX52x" to="7skk:7OzZ9xI9f2I" resolve="OutPortRef" />
    <node concept="1iCGBv" id="6cffu2pGjn_" role="2wV5jI">
      <ref role="1NtTu8" to="7skk:7OzZ9xI9f2J" resolve="outport" />
      <node concept="1sVBvm" id="6cffu2pGjnB" role="1sWHZn">
        <node concept="1kIj98" id="6cffu2pGjnN" role="2wV5jI">
          <node concept="3F0A7n" id="6cffu2pGjnT" role="1kIj9b">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="54xAiUPVsOj">
    <property role="3GE5qa" value="section.ports" />
    <ref role="1XX52x" to="7skk:7OzZ9xI8RgQ" resolve="OutPort" />
    <node concept="3EZMnI" id="5uNOSkle9G2" role="2wV5jI">
      <node concept="1kIj98" id="5uNOSkle9Gc" role="3EZMnx">
        <node concept="3F0A7n" id="5uNOSkle9Gi" role="1kIj9b">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
      <node concept="l2Vlx" id="5uNOSkle9G5" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="54xAiUPWHe4">
    <property role="3GE5qa" value="section.ports" />
    <ref role="1XX52x" to="7skk:7OzZ9xI8RgJ" resolve="InPort" />
    <node concept="3EZMnI" id="5uNOSkle9EU" role="2wV5jI">
      <node concept="1kIj98" id="5uNOSkle9F1" role="3EZMnx">
        <property role="3g2DhO" value="true" />
        <node concept="3F0A7n" id="5uNOSkle9F7" role="1kIj9b">
          <property role="1cu_pB" value="0" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
      <node concept="3F0ifn" id="5uNOSklfm6Z" role="3EZMnx">
        <property role="3F0ifm" value="&lt;&lt;" />
        <node concept="lj46D" id="2phmoMaHh2V" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="5uNOSklfm7g" role="3EZMnx">
        <ref role="1NtTu8" to="7skk:5uNOSklffsJ" resolve="from" />
        <node concept="1sVBvm" id="5uNOSklfm7i" role="1sWHZn">
          <node concept="3F0A7n" id="5uNOSklfm7u" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="5uNOSklekB_" role="3EZMnx">
        <property role="3F0ifm" value="." />
        <node concept="11L4FC" id="6vzDuv9877_" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="6vzDuv9877H" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="5uKjkG1h67h" role="3EZMnx">
        <ref role="1NtTu8" to="7skk:5uKjkG1gJZO" resolve="outport" />
        <node concept="1sVBvm" id="5uKjkG1h67j" role="1sWHZn">
          <node concept="3F0A7n" id="5uKjkG1h67L" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="5uNOSkle9EX" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="1lXEU5vn5R_" role="6VMZX">
      <node concept="l2Vlx" id="1lXEU5vn5RC" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4$X4DeKJYRT">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="7skk:7OzZ9xI8gnb" resolve="LoadExpr" />
    <node concept="3EZMnI" id="7OzZ9xI8gnG" role="2wV5jI">
      <ref role="1k5W1q" node="38ogk7FQpJU" resolve="code" />
      <node concept="2iRfu4" id="7OzZ9xI8gnH" role="2iSdaV" />
      <node concept="3F0ifn" id="7OzZ9xI8gnD" role="3EZMnx">
        <property role="3F0ifm" value="load" />
        <ref role="1k5W1q" node="38ogk7FQpJU" resolve="code" />
      </node>
      <node concept="3F1sOY" id="1lXEU5viLjz" role="3EZMnx">
        <ref role="1k5W1q" node="38ogk7FP07x" resolve="typename" />
        <ref role="1NtTu8" to="hm2y:69zaTr1EKHX" resolve="type" />
      </node>
      <node concept="3F0A7n" id="38ogk7FP05N" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" node="38ogk7FQG9l" resolve="varname" />
      </node>
      <node concept="3F0ifn" id="38ogk7FP069" role="3EZMnx">
        <property role="3F0ifm" value="from" />
        <ref role="1k5W1q" node="38ogk7FQpJU" resolve="code" />
      </node>
      <node concept="3F1sOY" id="1lXEU5vjFYp" role="3EZMnx">
        <ref role="1NtTu8" to="zzzn:49WTic8ix6L" resolve="expr" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4$X4DeKJZcz">
    <property role="3GE5qa" value="types" />
    <ref role="1XX52x" to="7skk:7OzZ9xI8jbt" resolve="FeaturesetType" />
    <node concept="3F0ifn" id="4$X4DeKK16h" role="2wV5jI">
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
            <ref role="1NtTu8" to="7skk:2sVpZP$wqZX" resolve="name" />
          </node>
          <node concept="3F0A7n" id="1lXEU5vmEAf" role="3EZMnx">
            <ref role="1NtTu8" to="7skk:2sVpZP$Em_h" resolve="numRows" />
          </node>
          <node concept="3F2HdR" id="1lXEU5vmEAn" role="3EZMnx">
            <ref role="1NtTu8" to="7skk:5c6KWTiqlNT" resolve="coll" />
            <node concept="2iRkQZ" id="1lXEU5vmEAp" role="2czzBx" />
          </node>
          <node concept="2iRkQZ" id="1lXEU5vmE_T" role="2iSdaV" />
        </node>
        <node concept="2iRfu4" id="1lXEU5vmE_v" role="2iSdaV" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5syS6lAeU_R">
    <ref role="1XX52x" to="7skk:5syS6lAeTjb" resolve="MLE_File" />
    <node concept="3EZMnI" id="ub9nkyK63c" role="2wV5jI">
      <node concept="2iRkQZ" id="ub9nkyK63d" role="2iSdaV" />
      <node concept="3EZMnI" id="ub9nkyK62L" role="3EZMnx">
        <node concept="2iRfu4" id="ub9nkyK62M" role="2iSdaV" />
        <node concept="3F0ifn" id="ub9nkyK62I" role="3EZMnx">
          <property role="3F0ifm" value="Machine Learning Evolves" />
          <node concept="VSNWy" id="4tXyFaWyy6J" role="3F10Kt">
            <node concept="1cFabM" id="4tXyFaWyy6K" role="1d8cEk">
              <node concept="3clFbS" id="4tXyFaWyy6L" role="2VODD2">
                <node concept="3cpWs8" id="45f0X_IZciu" role="3cqZAp">
                  <node concept="3cpWsn" id="45f0X_IZcix" role="3cpWs9">
                    <property role="TrG5h" value="f" />
                    <node concept="10P55v" id="45f0X_IZekp" role="1tU5fm" />
                    <node concept="3K4zz7" id="45f0X_IZdxt" role="33vP2m">
                      <node concept="3b6qkQ" id="45f0X_IZd_W" role="3K4E3e">
                        <property role="$nhwW" value="1.4" />
                      </node>
                      <node concept="3cmrfG" id="45f0X_IZdLA" role="3K4GZi">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="3clFbC" id="45f0X_IZdop" role="3K4Cdx">
                        <node concept="10Nm6u" id="45f0X_IZdsW" role="3uHU7w" />
                        <node concept="2OqwBi" id="45f0X_IZcG0" role="3uHU7B">
                          <node concept="pncrf" id="45f0X_IZcwK" role="2Oq$k0" />
                          <node concept="1mfA1w" id="45f0X_IZd2r" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4tXyFaWyy6M" role="3cqZAp">
                  <node concept="1eOMI4" id="4tXyFaWyy6N" role="3clFbG">
                    <node concept="10QFUN" id="4tXyFaWyy6O" role="1eOMHV">
                      <node concept="1eOMI4" id="4tXyFaWyy6P" role="10QFUP">
                        <node concept="17qRlL" id="4tXyFaWyy6Q" role="1eOMHV">
                          <node concept="37vLTw" id="45f0X_IZdZN" role="3uHU7w">
                            <ref role="3cqZAo" node="45f0X_IZcix" resolve="f" />
                          </node>
                          <node concept="2OqwBi" id="4tXyFaWyy6S" role="3uHU7B">
                            <node concept="2YIFZM" id="4tXyFaWyy6T" role="2Oq$k0">
                              <ref role="37wK5l" to="exr9:~EditorSettings.getInstance():jetbrains.mps.nodeEditor.EditorSettings" resolve="getInstance" />
                              <ref role="1Pybhc" to="exr9:~EditorSettings" resolve="EditorSettings" />
                            </node>
                            <node concept="liA8E" id="4tXyFaWyy6U" role="2OqNvi">
                              <ref role="37wK5l" to="exr9:~EditorSettings.getFontSize():int" resolve="getFontSize" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="10Oyi0" id="4tXyFaWyy6V" role="10QFUM" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0A7n" id="ub9nkyK638" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VSNWy" id="5VEHrQd2Zi5" role="3F10Kt">
            <node concept="1cFabM" id="5VEHrQd2Zi6" role="1d8cEk">
              <node concept="3clFbS" id="5VEHrQd2Zi7" role="2VODD2">
                <node concept="3cpWs8" id="5VEHrQd2Zi8" role="3cqZAp">
                  <node concept="3cpWsn" id="5VEHrQd2Zi9" role="3cpWs9">
                    <property role="TrG5h" value="f" />
                    <node concept="10P55v" id="5VEHrQd2Zia" role="1tU5fm" />
                    <node concept="3K4zz7" id="5VEHrQd2Zib" role="33vP2m">
                      <node concept="3b6qkQ" id="5VEHrQd2Zic" role="3K4E3e">
                        <property role="$nhwW" value="1.4" />
                      </node>
                      <node concept="3cmrfG" id="5VEHrQd2Zid" role="3K4GZi">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="3clFbC" id="5VEHrQd2Zie" role="3K4Cdx">
                        <node concept="10Nm6u" id="5VEHrQd2Zif" role="3uHU7w" />
                        <node concept="2OqwBi" id="5VEHrQd2Zig" role="3uHU7B">
                          <node concept="pncrf" id="5VEHrQd2Zih" role="2Oq$k0" />
                          <node concept="1mfA1w" id="5VEHrQd2Zii" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5VEHrQd2Zij" role="3cqZAp">
                  <node concept="1eOMI4" id="5VEHrQd2Zik" role="3clFbG">
                    <node concept="10QFUN" id="5VEHrQd2Zil" role="1eOMHV">
                      <node concept="1eOMI4" id="5VEHrQd2Zim" role="10QFUP">
                        <node concept="17qRlL" id="5VEHrQd2Zin" role="1eOMHV">
                          <node concept="37vLTw" id="5VEHrQd2Zio" role="3uHU7w">
                            <ref role="3cqZAo" node="5VEHrQd2Zi9" resolve="f" />
                          </node>
                          <node concept="2OqwBi" id="5VEHrQd2Zip" role="3uHU7B">
                            <node concept="2YIFZM" id="5VEHrQd2Ziq" role="2Oq$k0">
                              <ref role="1Pybhc" to="exr9:~EditorSettings" resolve="EditorSettings" />
                              <ref role="37wK5l" to="exr9:~EditorSettings.getInstance():jetbrains.mps.nodeEditor.EditorSettings" resolve="getInstance" />
                            </node>
                            <node concept="liA8E" id="5VEHrQd2Zir" role="2OqNvi">
                              <ref role="37wK5l" to="exr9:~EditorSettings.getFontSize():int" resolve="getFontSize" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="10Oyi0" id="5VEHrQd2Zis" role="10QFUM" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2T_mXK" id="3CJpga9FlgW" role="3EZMnx" />
      <node concept="3F0ifn" id="5syS6lAgylp" role="3EZMnx">
        <property role="3F0ifm" value="Define feature set:" />
      </node>
      <node concept="3F1sOY" id="5syS6lAf22t" role="3EZMnx">
        <ref role="1NtTu8" to="7skk:5syS6lAf00R" resolve="features" />
      </node>
      <node concept="3F0ifn" id="1_nK1g6jC1q" role="3EZMnx" />
      <node concept="3F2HdR" id="1_nK1g6jD7O" role="3EZMnx">
        <ref role="1NtTu8" to="yv47:ub9nkyK62i" resolve="contents" />
        <node concept="2iRkQZ" id="1_nK1g6jD7Q" role="2czzBx" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3CJpga9DF$D">
    <property role="3GE5qa" value="section.ports" />
    <ref role="1XX52x" to="7skk:7OzZ9xI99S_" resolve="InPortRef" />
    <node concept="1iCGBv" id="3CJpga9DF$F" role="2wV5jI">
      <ref role="1NtTu8" to="7skk:7OzZ9xI99SG" resolve="inport" />
      <node concept="1sVBvm" id="3CJpga9DF$H" role="1sWHZn">
        <node concept="3F0A7n" id="3CJpga9DF$O" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="7aZP7HhDYHM">
    <property role="TrG5h" value="customSectionTest" />
    <property role="3GE5qa" value="section" />
    <ref role="1XX52x" to="7skk:4BgJq$2a0EF" resolve="TestSection" />
    <node concept="gc7cB" id="7aZP7HhDYHN" role="2wV5jI">
      <node concept="3VJUX4" id="7aZP7HhDYHO" role="3YsKMw">
        <node concept="3clFbS" id="7aZP7HhDYHP" role="2VODD2">
          <node concept="3cpWs6" id="7aZP7HhDYIU" role="3cqZAp">
            <node concept="2ShNRf" id="7aZP7HhDYOU" role="3cqZAk">
              <node concept="YeOm9" id="7aZP7HhEbdb" role="2ShVmc">
                <node concept="1Y3b0j" id="7aZP7HhEbde" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="exr9:~AbstractCellProvider" resolve="AbstractCellProvider" />
                  <ref role="37wK5l" to="exr9:~AbstractCellProvider.&lt;init&gt;()" resolve="AbstractCellProvider" />
                  <node concept="3Tm1VV" id="7aZP7HhEbdf" role="1B3o_S" />
                  <node concept="3clFb_" id="7aZP7HhEbdg" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="createEditorCell" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <node concept="3Tm1VV" id="7aZP7HhEbdh" role="1B3o_S" />
                    <node concept="3uibUv" id="7aZP7HhEbdj" role="3clF45">
                      <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                    </node>
                    <node concept="37vLTG" id="7aZP7HhEbdk" role="3clF46">
                      <property role="TrG5h" value="p0" />
                      <node concept="3uibUv" id="7aZP7HhEbdl" role="1tU5fm">
                        <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="7aZP7HhEbdm" role="3clF47">
                      <node concept="3cpWs8" id="7aZP7HhEqI4" role="3cqZAp">
                        <node concept="3cpWsn" id="7aZP7HhEqI5" role="3cpWs9">
                          <property role="TrG5h" value="sc" />
                          <node concept="3uibUv" id="7aZP7HhEqI6" role="1tU5fm">
                            <ref role="3uigEE" node="7AjS6YEyF5e" resolve="SectionCell" />
                          </node>
                          <node concept="2ShNRf" id="7aZP7HhEqP_" role="33vP2m">
                            <node concept="1pGfFk" id="7aZP7HhEr16" role="2ShVmc">
                              <ref role="37wK5l" node="7AjS6YEz6kh" resolve="SectionCell" />
                              <node concept="37vLTw" id="7aZP7HhEr6g" role="37wK5m">
                                <ref role="3cqZAo" node="7aZP7HhEbdk" resolve="p0" />
                              </node>
                              <node concept="pncrf" id="27PF720_ud0" role="37wK5m" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="7aZP7HhErli" role="3cqZAp">
                        <node concept="37vLTw" id="7aZP7HhErsT" role="3cqZAk">
                          <ref role="3cqZAo" node="7aZP7HhEqI5" resolve="sc" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7AjS6YEyF5e">
    <property role="TrG5h" value="SectionCell" />
    <node concept="2tJIrI" id="7AjS6YEyQMV" role="jymVt" />
    <node concept="3clFbW" id="7AjS6YEz6kh" role="jymVt">
      <node concept="3cqZAl" id="7AjS6YEz6ki" role="3clF45" />
      <node concept="3Tm1VV" id="7AjS6YEz6kj" role="1B3o_S" />
      <node concept="3clFbS" id="7AjS6YEz6kl" role="3clF47">
        <node concept="XkiVB" id="7AjS6YEz6kn" role="3cqZAp">
          <ref role="37wK5l" to="g51k:~EditorCell_Collection.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.nodeEditor.cellLayout.CellLayout,jetbrains.mps.nodeEditor.cellProviders.AbstractCellListHandler)" resolve="EditorCell_Collection" />
          <node concept="37vLTw" id="7AjS6YEz6kr" role="37wK5m">
            <ref role="3cqZAo" node="7AjS6YEz6ko" resolve="editorContext" />
          </node>
          <node concept="37vLTw" id="7AjS6YEz6kv" role="37wK5m">
            <ref role="3cqZAo" node="7AjS6YEz6ks" resolve="node" />
          </node>
          <node concept="2ShNRf" id="7AjS6YEzd0T" role="37wK5m">
            <node concept="HV5vD" id="7CiTYi$__rC" role="2ShVmc">
              <ref role="HV5vE" node="7CiTYi$_u5r" resolve="SectionCellLayout" />
            </node>
          </node>
          <node concept="10Nm6u" id="7AjS6YEzcZH" role="37wK5m" />
        </node>
        <node concept="3clFbH" id="73oScrKcdDn" role="3cqZAp" />
      </node>
      <node concept="37vLTG" id="7AjS6YEz6ko" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <node concept="3uibUv" id="7AjS6YEz6kq" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="37vLTG" id="7AjS6YEz6ks" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="7AjS6YEz6ku" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7AjS6YEz3P4" role="jymVt" />
    <node concept="3clFb_" id="58xH_U7uDHn" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="paintDecorations" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="27wZW$Io9AP" role="1B3o_S" />
      <node concept="3cqZAl" id="58xH_U7uDHq" role="3clF45" />
      <node concept="37vLTG" id="58xH_U7uDHr" role="3clF46">
        <property role="TrG5h" value="g_" />
        <node concept="3uibUv" id="58xH_U7uDHs" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="3clFbS" id="58xH_U7uDHx" role="3clF47">
        <node concept="3clFbF" id="58xH_U7uDH_" role="3cqZAp">
          <node concept="3nyPlj" id="58xH_U7uDH$" role="3clFbG">
            <ref role="37wK5l" to="g51k:~EditorCell_Collection.paintDecorations(java.awt.Graphics):void" resolve="paintDecorations" />
            <node concept="37vLTw" id="58xH_U7uDHz" role="37wK5m">
              <ref role="3cqZAo" node="58xH_U7uDHr" resolve="g_" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="58xH_U7uDXC" role="3cqZAp" />
        <node concept="3SKdUt" id="4BgJq$29ZDl" role="3cqZAp">
          <node concept="3SKdUq" id="4BgJq$29ZDn" role="3SKWNk">
            <property role="3SKdUp" value="draw rect" />
          </node>
        </node>
        <node concept="3cpWs8" id="58xH_U7uE1A" role="3cqZAp">
          <node concept="3cpWsn" id="58xH_U7uE1B" role="3cpWs9">
            <property role="TrG5h" value="frame" />
            <node concept="3uibUv" id="58xH_U7uE1C" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
            </node>
            <node concept="2ShNRf" id="58xH_U7uE4O" role="33vP2m">
              <node concept="1pGfFk" id="58xH_U7uE4H" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~Rectangle.&lt;init&gt;()" resolve="Rectangle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="58xH_U7uE7q" role="3cqZAp">
          <node concept="37vLTI" id="58xH_U7uF6V" role="3clFbG">
            <node concept="1rXfSq" id="7CiTYi$_C7U" role="37vLTx">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.getX():int" resolve="getX" />
            </node>
            <node concept="2OqwBi" id="58xH_U7uEbj" role="37vLTJ">
              <node concept="37vLTw" id="58xH_U7uE7o" role="2Oq$k0">
                <ref role="3cqZAo" node="58xH_U7uE1B" resolve="frame" />
              </node>
              <node concept="2OwXpG" id="58xH_U7uEqM" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~Rectangle.x" resolve="x" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="58xH_U7uHuu" role="3cqZAp">
          <node concept="37vLTI" id="58xH_U7uHuv" role="3clFbG">
            <node concept="1rXfSq" id="58xH_U7uKyr" role="37vLTx">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.getY():int" resolve="getY" />
            </node>
            <node concept="2OqwBi" id="58xH_U7uHuz" role="37vLTJ">
              <node concept="37vLTw" id="58xH_U7uHu$" role="2Oq$k0">
                <ref role="3cqZAo" node="58xH_U7uE1B" resolve="frame" />
              </node>
              <node concept="2OwXpG" id="58xH_U7uI7S" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~Rectangle.y" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="58xH_U7uKYx" role="3cqZAp">
          <node concept="37vLTI" id="58xH_U7uMj2" role="3clFbG">
            <node concept="2OqwBi" id="58xH_U7uLlQ" role="37vLTJ">
              <node concept="37vLTw" id="58xH_U7uKYv" role="2Oq$k0">
                <ref role="3cqZAo" node="58xH_U7uE1B" resolve="frame" />
              </node>
              <node concept="2OwXpG" id="58xH_U7uLLl" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~Rectangle.width" resolve="width" />
              </node>
            </node>
            <node concept="1rXfSq" id="7CiTYi$_Ctu" role="37vLTx">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth():int" resolve="getWidth" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="58xH_U7uOgw" role="3cqZAp">
          <node concept="37vLTI" id="58xH_U7uPGV" role="3clFbG">
            <node concept="1rXfSq" id="58xH_U7uPY1" role="37vLTx">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.getHeight():int" resolve="getHeight" />
            </node>
            <node concept="2OqwBi" id="58xH_U7uOEB" role="37vLTJ">
              <node concept="37vLTw" id="58xH_U7uOgu" role="2Oq$k0">
                <ref role="3cqZAo" node="58xH_U7uE1B" resolve="frame" />
              </node>
              <node concept="2OwXpG" id="58xH_U7uP66" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~Rectangle.height" resolve="height" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="58xH_U7uQkq" role="3cqZAp" />
        <node concept="3SKdUt" id="4BgJq$2a0kE" role="3cqZAp">
          <node concept="3SKdUq" id="4BgJq$2a0kG" role="3SKWNk">
            <property role="3SKdUp" value="draw colorful bar" />
          </node>
        </node>
        <node concept="3cpWs8" id="5dzaEnaHKUO" role="3cqZAp">
          <node concept="3cpWsn" id="5dzaEnaHKUP" role="3cpWs9">
            <property role="TrG5h" value="leftBar" />
            <node concept="3uibUv" id="5dzaEnaHKUQ" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
            </node>
            <node concept="2ShNRf" id="5dzaEnaHLnW" role="33vP2m">
              <node concept="HV5vD" id="5dzaEnaI66F" role="2ShVmc">
                <ref role="HV5vE" to="z60i:~Rectangle" resolve="Rectangle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5dzaEnaI6GA" role="3cqZAp">
          <node concept="37vLTI" id="5dzaEnaI96P" role="3clFbG">
            <node concept="3cpWs3" id="5dzaEnaIdkl" role="37vLTx">
              <node concept="1rXfSq" id="5dzaEnaI9$l" role="3uHU7B">
                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getX():int" resolve="getX" />
              </node>
              <node concept="3cmrfG" id="5dzaEnaJZpa" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
            <node concept="2OqwBi" id="5dzaEnaI7qZ" role="37vLTJ">
              <node concept="37vLTw" id="5dzaEnaI6G$" role="2Oq$k0">
                <ref role="3cqZAo" node="5dzaEnaHKUP" resolve="leftBar" />
              </node>
              <node concept="2OwXpG" id="5dzaEnaI7Vq" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~Rectangle.x" resolve="x" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5dzaEnaIeJI" role="3cqZAp">
          <node concept="37vLTI" id="5dzaEnaIhNa" role="3clFbG">
            <node concept="3cpWs3" id="5dzaEnaIjqV" role="37vLTx">
              <node concept="1rXfSq" id="5dzaEnaIiur" role="3uHU7B">
                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getY():int" resolve="getY" />
              </node>
              <node concept="3cmrfG" id="5dzaEnaK0bP" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
            <node concept="2OqwBi" id="5dzaEnaIfFY" role="37vLTJ">
              <node concept="37vLTw" id="5dzaEnaIeJG" role="2Oq$k0">
                <ref role="3cqZAo" node="5dzaEnaHKUP" resolve="leftBar" />
              </node>
              <node concept="2OwXpG" id="5dzaEnaIgw5" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~Rectangle.y" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5dzaEnaIkQU" role="3cqZAp">
          <node concept="37vLTI" id="5dzaEnaIomw" role="3clFbG">
            <node concept="3cmrfG" id="5dzaEnaIoTS" role="37vLTx">
              <property role="3cmrfH" value="10" />
            </node>
            <node concept="2OqwBi" id="5dzaEnaIlNM" role="37vLTJ">
              <node concept="37vLTw" id="5dzaEnaIkQS" role="2Oq$k0">
                <ref role="3cqZAo" node="5dzaEnaHKUP" resolve="leftBar" />
              </node>
              <node concept="2OwXpG" id="5dzaEnaIn3r" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~Rectangle.width" resolve="width" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5dzaEnaIpMD" role="3cqZAp">
          <node concept="37vLTI" id="5dzaEnaItil" role="3clFbG">
            <node concept="3cpWsd" id="5dzaEnaIvct" role="37vLTx">
              <node concept="1rXfSq" id="5dzaEnaIu7$" role="3uHU7B">
                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getHeight():int" resolve="getHeight" />
              </node>
              <node concept="3cmrfG" id="5dzaEnaKFMV" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
            <node concept="2OqwBi" id="5dzaEnaIqJB" role="37vLTJ">
              <node concept="37vLTw" id="5dzaEnaIpMB" role="2Oq$k0">
                <ref role="3cqZAo" node="5dzaEnaHKUP" resolve="leftBar" />
              </node>
              <node concept="2OwXpG" id="5dzaEnaIrZg" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~Rectangle.height" resolve="height" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4BgJq$29ZTR" role="3cqZAp" />
        <node concept="3cpWs8" id="58xH_U7uUYu" role="3cqZAp">
          <node concept="3cpWsn" id="58xH_U7uUYv" role="3cpWs9">
            <property role="TrG5h" value="g" />
            <node concept="3uibUv" id="58xH_U7uUYw" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
            </node>
            <node concept="10QFUN" id="58xH_U7uVMT" role="33vP2m">
              <node concept="2OqwBi" id="58xH_U7uVuK" role="10QFUP">
                <node concept="37vLTw" id="58xH_U7uVqG" role="2Oq$k0">
                  <ref role="3cqZAo" node="58xH_U7uDHr" resolve="g_" />
                </node>
                <node concept="liA8E" id="58xH_U7uVHh" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.create():java.awt.Graphics" resolve="create" />
                </node>
              </node>
              <node concept="3uibUv" id="58xH_U7uVMU" role="10QFUM">
                <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2GUZhq" id="58xH_U7uTCy" role="3cqZAp">
          <node concept="3clFbS" id="58xH_U7uTC$" role="2GV8ay">
            <node concept="3clFbF" id="5dzaEnaI$_Z" role="3cqZAp">
              <node concept="2OqwBi" id="5dzaEnaI$OQ" role="3clFbG">
                <node concept="37vLTw" id="5dzaEnaI$_X" role="2Oq$k0">
                  <ref role="3cqZAo" node="58xH_U7uUYv" resolve="g" />
                </node>
                <node concept="liA8E" id="5dzaEnaI_eK" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color):void" resolve="setColor" />
                  <node concept="2YIFZM" id="5dzaEnaI_uZ" role="37wK5m">
                    <ref role="37wK5l" to="z60i:~Color.decode(java.lang.String):java.awt.Color" resolve="decode" />
                    <ref role="1Pybhc" to="z60i:~Color" resolve="Color" />
                    <node concept="Xl_RD" id="5dzaEnaI_J5" role="37wK5m">
                      <property role="Xl_RC" value="#F4F2F1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5dzaEnaIw3T" role="3cqZAp">
              <node concept="2OqwBi" id="5dzaEnaIwge" role="3clFbG">
                <node concept="37vLTw" id="5dzaEnaIw3R" role="2Oq$k0">
                  <ref role="3cqZAo" node="58xH_U7uUYv" resolve="g" />
                </node>
                <node concept="liA8E" id="5dzaEnaIwCG" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics2D.fill(java.awt.Shape):void" resolve="fill" />
                  <node concept="37vLTw" id="5dzaEnaIwNG" role="37wK5m">
                    <ref role="3cqZAo" node="58xH_U7uE1B" resolve="frame" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5dzaEnaJi5i" role="3cqZAp" />
            <node concept="1X3_iC" id="5dzaEnaKmy5" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3clFbF" id="58xH_U7uWrG" role="8Wnug">
                <node concept="2OqwBi" id="58xH_U7uWt1" role="3clFbG">
                  <node concept="37vLTw" id="58xH_U7uWrE" role="2Oq$k0">
                    <ref role="3cqZAo" node="58xH_U7uUYv" resolve="g" />
                  </node>
                  <node concept="liA8E" id="58xH_U7uWHi" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics2D.setStroke(java.awt.Stroke):void" resolve="setStroke" />
                    <node concept="2ShNRf" id="58xH_U7uWIo" role="37wK5m">
                      <node concept="1pGfFk" id="58xH_U7uXn2" role="2ShVmc">
                        <ref role="37wK5l" to="z60i:~BasicStroke.&lt;init&gt;(float)" resolve="BasicStroke" />
                        <node concept="3cmrfG" id="60aziVaJc5I" role="37wK5m">
                          <property role="3cmrfH" value="2" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="58xH_U7uXAk" role="3cqZAp">
              <node concept="2OqwBi" id="58xH_U7uXCh" role="3clFbG">
                <node concept="37vLTw" id="58xH_U7uXAi" role="2Oq$k0">
                  <ref role="3cqZAo" node="58xH_U7uUYv" resolve="g" />
                </node>
                <node concept="liA8E" id="58xH_U7uXMs" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color):void" resolve="setColor" />
                  <node concept="2YIFZM" id="7Pq1P2GjozL" role="37wK5m">
                    <ref role="37wK5l" to="z60i:~Color.decode(java.lang.String):java.awt.Color" resolve="decode" />
                    <ref role="1Pybhc" to="z60i:~Color" resolve="Color" />
                    <node concept="Xl_RD" id="7Pq1P2GjozM" role="37wK5m">
                      <property role="Xl_RC" value="#3D3D3D" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="58xH_U7uW6G" role="3cqZAp">
              <node concept="2OqwBi" id="58xH_U7uW7u" role="3clFbG">
                <node concept="37vLTw" id="58xH_U7uW6E" role="2Oq$k0">
                  <ref role="3cqZAo" node="58xH_U7uUYv" resolve="g" />
                </node>
                <node concept="liA8E" id="58xH_U7uWmF" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics2D.draw(java.awt.Shape):void" resolve="draw" />
                  <node concept="37vLTw" id="58xH_U7uWnL" role="37wK5m">
                    <ref role="3cqZAo" node="58xH_U7uE1B" resolve="frame" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5dzaEnaJBiZ" role="3cqZAp" />
            <node concept="3clFbF" id="5dzaEnaJBGD" role="3cqZAp">
              <node concept="2OqwBi" id="5dzaEnaJBTP" role="3clFbG">
                <node concept="37vLTw" id="5dzaEnaJBGB" role="2Oq$k0">
                  <ref role="3cqZAo" node="58xH_U7uUYv" resolve="g" />
                </node>
                <node concept="liA8E" id="5dzaEnaJC8m" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color):void" resolve="setColor" />
                  <node concept="2YIFZM" id="5dzaEnaJCoL" role="37wK5m">
                    <ref role="37wK5l" to="z60i:~Color.decode(java.lang.String):java.awt.Color" resolve="decode" />
                    <ref role="1Pybhc" to="z60i:~Color" resolve="Color" />
                    <node concept="Xl_RD" id="5dzaEnaJCCS" role="37wK5m">
                      <property role="Xl_RC" value="#5B7DA6" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5dzaEnaJD3i" role="3cqZAp">
              <node concept="2OqwBi" id="5dzaEnaJDgT" role="3clFbG">
                <node concept="37vLTw" id="5dzaEnaJD3g" role="2Oq$k0">
                  <ref role="3cqZAo" node="58xH_U7uUYv" resolve="g" />
                </node>
                <node concept="liA8E" id="5dzaEnaJDvx" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics2D.fill(java.awt.Shape):void" resolve="fill" />
                  <node concept="37vLTw" id="5dzaEnaJDUo" role="37wK5m">
                    <ref role="3cqZAo" node="5dzaEnaHKUP" resolve="leftBar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="58xH_U7uTC_" role="2GVbov">
            <node concept="3clFbF" id="58xH_U7uVWt" role="3cqZAp">
              <node concept="2OqwBi" id="58xH_U7uVXf" role="3clFbG">
                <node concept="37vLTw" id="58xH_U7uVWs" role="2Oq$k0">
                  <ref role="3cqZAo" node="58xH_U7uUYv" resolve="g" />
                </node>
                <node concept="liA8E" id="58xH_U7uW59" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.dispose():void" resolve="dispose" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="58xH_U7uDHy" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7AjS6YEyIGH" role="jymVt" />
    <node concept="3Tm1VV" id="7AjS6YEyF5f" role="1B3o_S" />
    <node concept="3uibUv" id="7AjS6YEyF8b" role="1zkMxy">
      <ref role="3uigEE" to="g51k:~EditorCell_Collection" resolve="EditorCell_Collection" />
    </node>
  </node>
  <node concept="312cEu" id="7CiTYi$_u5r">
    <property role="TrG5h" value="SectionCellLayout" />
    <node concept="3Tm1VV" id="7CiTYi$_u5s" role="1B3o_S" />
    <node concept="3uibUv" id="7CiTYi$_A1B" role="1zkMxy">
      <ref role="3uigEE" to="kcid:~AbstractCellLayout" resolve="AbstractCellLayout" />
    </node>
    <node concept="3clFb_" id="7CiTYi$_u7S" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="doLayout" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="7CiTYi$_u7T" role="1B3o_S" />
      <node concept="3cqZAl" id="7CiTYi$_u7V" role="3clF45" />
      <node concept="37vLTG" id="7CiTYi$_u7W" role="3clF46">
        <property role="TrG5h" value="collection" />
        <node concept="3uibUv" id="7CiTYi$_u7X" role="1tU5fm">
          <ref role="3uigEE" to="f4zo:~EditorCell_Collection" resolve="EditorCell_Collection" />
        </node>
      </node>
      <node concept="3clFbS" id="7CiTYi$_u7Y" role="3clF47">
        <node concept="3clFbF" id="4BgJq$28JSI" role="3cqZAp">
          <node concept="2OqwBi" id="4BgJq$28Kxv" role="3clFbG">
            <node concept="37vLTw" id="4BgJq$28JSG" role="2Oq$k0">
              <ref role="3cqZAo" node="7CiTYi$_u7W" resolve="collection" />
            </node>
            <node concept="liA8E" id="4BgJq$28L$l" role="2OqNvi">
              <ref role="37wK5l" to="f4zo:~EditorCell.setWidth(int):void" resolve="setWidth" />
              <node concept="3cmrfG" id="4BgJq$28NZn" role="37wK5m">
                <property role="3cmrfH" value="940" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4BgJq$28Osp" role="3cqZAp">
          <node concept="2OqwBi" id="4BgJq$28P6f" role="3clFbG">
            <node concept="37vLTw" id="4BgJq$28Osn" role="2Oq$k0">
              <ref role="3cqZAo" node="7CiTYi$_u7W" resolve="collection" />
            </node>
            <node concept="liA8E" id="4BgJq$28QaE" role="2OqNvi">
              <ref role="37wK5l" to="f4zo:~EditorCell.setHeight(int):void" resolve="setHeight" />
              <node concept="3cpWs3" id="4BgJq$28T95" role="37wK5m">
                <node concept="3cmrfG" id="4BgJq$28ThH" role="3uHU7w">
                  <property role="3cmrfH" value="150" />
                </node>
                <node concept="2OqwBi" id="4BgJq$28Q_C" role="3uHU7B">
                  <node concept="37vLTw" id="4BgJq$28Qda" role="2Oq$k0">
                    <ref role="3cqZAo" node="7CiTYi$_u7W" resolve="collection" />
                  </node>
                  <node concept="liA8E" id="4BgJq$28R1G" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getHeight():int" resolve="getHeight" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7CiTYi$_u7Z" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4BgJq$28Vsw" role="jymVt" />
    <node concept="3clFb_" id="7CiTYi$_A4K" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="doLayoutText" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="7CiTYi$_A4L" role="1B3o_S" />
      <node concept="3uibUv" id="7CiTYi$_A4N" role="3clF45">
        <ref role="3uigEE" to="cj4x:~TextBuilder" resolve="TextBuilder" />
      </node>
      <node concept="37vLTG" id="7CiTYi$_A4O" role="3clF46">
        <property role="TrG5h" value="iterable" />
        <node concept="3uibUv" id="7CiTYi$_A4P" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="7CiTYi$_A4Q" role="11_B2D">
            <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="7CiTYi$_A4T" role="3clF47">
        <node concept="3clFbF" id="7CiTYi$_Ayq" role="3cqZAp">
          <node concept="10Nm6u" id="7CiTYi$_Ayp" role="3clFbG" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4BgJq$2a0UY">
    <ref role="1XX52x" to="7skk:4BgJq$2a0EF" resolve="TestSection" />
    <node concept="PMmxH" id="5dzaEnaL3uf" role="2wV5jI">
      <ref role="PMmxG" node="7aZP7HhDYHM" resolve="customSectionTest" />
    </node>
  </node>
  <node concept="24kQdi" id="74vMKqQrVo3">
    <property role="3GE5qa" value="output" />
    <ref role="1XX52x" to="7skk:74vMKqQrVnB" resolve="FeaturesTypeOutput" />
    <node concept="3EZMnI" id="74vMKqQrVo5" role="2wV5jI">
      <node concept="3EZMnI" id="6Iu9bl6v9V1" role="3EZMnx">
        <node concept="2iRfu4" id="6Iu9bl6v9V2" role="2iSdaV" />
        <node concept="1iCGBv" id="1lS2_My1PSQ" role="3EZMnx">
          <ref role="1NtTu8" to="7skk:74vMKqQrVnC" resolve="features" />
          <node concept="1sVBvm" id="1lS2_My1PSS" role="1sWHZn">
            <node concept="3F0A7n" id="1lS2_My1PT9" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="7skk:2sVpZP$wqZX" resolve="name" />
              <node concept="Vb9p2" id="1lS2_My3Bwu" role="3F10Kt">
                <property role="Vbekb" value="BOLD" />
              </node>
            </node>
          </node>
        </node>
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
          <ref role="1NtTu8" to="7skk:7ietByWNa2_" resolve="dimensions" />
        </node>
        <node concept="3F0ifn" id="6Iu9bl6v9VY" role="3EZMnx">
          <property role="3F0ifm" value="dimensions," />
        </node>
        <node concept="1iCGBv" id="7ietByWM5ia" role="3EZMnx">
          <ref role="1NtTu8" to="7skk:74vMKqQrVnC" resolve="features" />
          <node concept="1sVBvm" id="7ietByWM5ic" role="1sWHZn">
            <node concept="3F0A7n" id="7ietByWM5iw" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="7skk:2sVpZP$Em_h" resolve="numRows" />
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
  <node concept="24kQdi" id="Kxvd2syfWt">
    <property role="3GE5qa" value="output" />
    <ref role="1XX52x" to="7skk:Kxvd2sycuM" resolve="ImageOutput" />
    <node concept="3EZMnI" id="Kxvd2syfWv" role="2wV5jI">
      <node concept="PMmxH" id="Kxvd2syg7F" role="3EZMnx">
        <ref role="PMmxG" node="Kxvd2syg7B" resolve="img" />
      </node>
      <node concept="l2Vlx" id="Kxvd2syfWy" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6Iu9bl6MC_W">
    <property role="3GE5qa" value="output" />
    <ref role="1XX52x" to="7skk:6Iu9bl6MC_2" resolve="SimpleMessageOutput" />
    <node concept="3F0A7n" id="6Iu9bl6MC_Y" role="2wV5jI">
      <ref role="1NtTu8" to="7skk:6Iu9bl6MC_x" resolve="message" />
    </node>
  </node>
  <node concept="PKFIW" id="6Iu9bl68YAc">
    <property role="TrG5h" value="SwgFeatureList" />
    <property role="3GE5qa" value="output" />
    <ref role="1XX52x" to="7skk:74vMKqQrVnB" resolve="FeaturesTypeOutput" />
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
                  <ref role="35c_gD" to="7skk:pBV22SHHup" resolve="IFeatureType" />
                </node>
                <node concept="2qgKlT" id="pBV22SJlNZ" role="2OqNvi">
                  <ref role="37wK5l" to="rzzn:pBV22SHHN8" resolve="getHead" />
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
              <node concept="2OqwBi" id="6Iu9bl6fWhP" role="33vP2m">
                <node concept="2OqwBi" id="6Iu9bl6fUlp" role="2Oq$k0">
                  <node concept="pncrf" id="5dzaEnaNhyu" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5dzaEnaNjtA" role="2OqNvi">
                    <ref role="3Tt5mk" to="7skk:74vMKqQrVnC" resolve="features" />
                  </node>
                </node>
                <node concept="2qgKlT" id="5dzaEnaOdil" role="2OqNvi">
                  <ref role="37wK5l" to="rzzn:6Iu9bl6fuej" resolve="getTable" />
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
  <node concept="24kQdi" id="7ietByWP7Qu">
    <property role="3GE5qa" value="output" />
    <ref role="1XX52x" to="7skk:7ietByWP7Q0" resolve="TextPipeOutput" />
    <node concept="3EZMnI" id="7ietByWP7Qw" role="2wV5jI">
      <node concept="3F0A7n" id="7ietByWP7QB" role="3EZMnx">
        <ref role="1NtTu8" to="7skk:7ietByWP7Q1" resolve="intro" />
        <node concept="ljvvj" id="7ietByWP7QE" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="7ietByWP7QM" role="3EZMnx">
        <ref role="1NtTu8" to="7skk:7ietByWP7Q3" resolve="extractors" />
        <node concept="l2Vlx" id="7ietByWP7QP" role="2czzBx" />
        <node concept="lj46D" id="7ietByWP7QU" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pj6Ft" id="7ietByWP7QW" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="7ietByWP7Qz" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="Kxvd2syg7B">
    <property role="TrG5h" value="img" />
    <property role="3GE5qa" value="output" />
    <ref role="1XX52x" to="7skk:Kxvd2sycuM" resolve="ImageOutput" />
    <node concept="3gTLQM" id="Kxvd2syg7C" role="2wV5jI">
      <node concept="3Fmcul" id="Kxvd2syg7D" role="3FoqZy">
        <node concept="3clFbS" id="Kxvd2syg7E" role="2VODD2">
          <node concept="SfApY" id="6Iu9bl6xg8P" role="3cqZAp">
            <node concept="3clFbS" id="6Iu9bl6xg8R" role="SfCbr">
              <node concept="3cpWs8" id="6Iu9bl6x3zE" role="3cqZAp">
                <node concept="3cpWsn" id="6Iu9bl6x3zF" role="3cpWs9">
                  <property role="TrG5h" value="pic" />
                  <node concept="3uibUv" id="6Iu9bl6x3zG" role="1tU5fm">
                    <ref role="3uigEE" to="jan3:~BufferedImage" resolve="BufferedImage" />
                  </node>
                  <node concept="2YIFZM" id="6Iu9bl6x4Xt" role="33vP2m">
                    <ref role="1Pybhc" to="oqcp:~ImageIO" resolve="ImageIO" />
                    <ref role="37wK5l" to="oqcp:~ImageIO.read(java.io.File):java.awt.image.BufferedImage" resolve="read" />
                    <node concept="2ShNRf" id="6Iu9bl6x58z" role="37wK5m">
                      <node concept="1pGfFk" id="6Iu9bl6xPfi" role="2ShVmc">
                        <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                        <node concept="3cpWs3" id="Kxvd2syif6" role="37wK5m">
                          <node concept="2OqwBi" id="Kxvd2sykrq" role="3uHU7w">
                            <node concept="pncrf" id="Kxvd2syjXx" role="2Oq$k0" />
                            <node concept="3TrcHB" id="Kxvd2sykQ5" role="2OqNvi">
                              <ref role="3TsBF5" to="7skk:Kxvd2syhG5" resolve="img" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="6Iu9bl6x6F1" role="3uHU7B">
                            <property role="Xl_RC" value="C:/Workspaces/Git/dsl4ml/Data/Results/" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="6Iu9bl6xaZZ" role="3cqZAp">
                <node concept="2ShNRf" id="6Iu9bl6xbmN" role="3cqZAk">
                  <node concept="1pGfFk" id="6Iu9bl6xdSL" role="2ShVmc">
                    <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(javax.swing.Icon)" resolve="JLabel" />
                    <node concept="2ShNRf" id="6Iu9bl6xc3X" role="37wK5m">
                      <node concept="1pGfFk" id="6Iu9bl6xc_E" role="2ShVmc">
                        <ref role="37wK5l" to="dxuu:~ImageIcon.&lt;init&gt;(java.awt.Image)" resolve="ImageIcon" />
                        <node concept="37vLTw" id="6Iu9bl6xcLZ" role="37wK5m">
                          <ref role="3cqZAo" node="6Iu9bl6x3zF" resolve="pic" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="6Iu9bl6xg8Q" role="3cqZAp" />
            </node>
            <node concept="TDmWw" id="6Iu9bl6xg8S" role="TEbGg">
              <node concept="3cpWsn" id="6Iu9bl6xg8U" role="TDEfY">
                <property role="TrG5h" value="e" />
                <node concept="3uibUv" id="6Iu9bl6xgPY" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                </node>
              </node>
              <node concept="3clFbS" id="6Iu9bl6xg8Y" role="TDEfX">
                <node concept="34ab3g" id="6Iu9bl6xhol" role="3cqZAp">
                  <property role="35gtTG" value="info" />
                  <property role="34fQS0" value="true" />
                  <node concept="37vLTw" id="6Iu9bl6xhop" role="34bMjA">
                    <ref role="3cqZAo" node="6Iu9bl6xg8U" resolve="e" />
                  </node>
                  <node concept="2OqwBi" id="6Iu9bl6xie2" role="34bqiv">
                    <node concept="37vLTw" id="6Iu9bl6xhRA" role="2Oq$k0">
                      <ref role="3cqZAo" node="6Iu9bl6xg8U" resolve="e" />
                    </node>
                    <node concept="liA8E" id="6Iu9bl6xj3H" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Throwable.getMessage():java.lang.String" resolve="getMessage" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="6Iu9bl6xjyM" role="3cqZAp">
            <node concept="2ShNRf" id="6Iu9bl6xjMs" role="3cqZAk">
              <node concept="1pGfFk" id="6Iu9bl6xkni" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                <node concept="Xl_RD" id="6Iu9bl6xkQ1" role="37wK5m">
                  <property role="Xl_RC" value="failed" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="V5hpn" id="38ogk7FP07j">
    <property role="TrG5h" value="MLESyntax" />
    <node concept="14StLt" id="38ogk7FQpJU" role="V601i">
      <property role="TrG5h" value="code" />
      <node concept="Vb9p2" id="38ogk7FQpK3" role="3F10Kt">
        <property role="Vbekb" value="PLAIN" />
      </node>
      <node concept="VSNWy" id="38ogk7FSzNf" role="3F10Kt">
        <property role="1lJzqX" value="14" />
      </node>
      <node concept="VechU" id="38ogk7FQpK9" role="3F10Kt">
        <node concept="1iSF2X" id="38ogk7FQpKd" role="VblUZ">
          <property role="1iTho6" value="404040" />
        </node>
      </node>
      <node concept="2TzqKc" id="38ogk7FR0nj" role="3F10Kt">
        <property role="1413C4" value="Andale Mono" />
        <node concept="3xMb9N" id="38ogk7FRiIP" role="3xKXm0">
          <node concept="3clFbS" id="38ogk7FRiIQ" role="2VODD2">
            <node concept="3clFbF" id="38ogk7FRiRf" role="3cqZAp">
              <node concept="Xl_RD" id="38ogk7FRiRe" role="3clFbG">
                <property role="Xl_RC" value="Consolas" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="14StLt" id="38ogk7FP07x" role="V601i">
      <property role="TrG5h" value="typename" />
      <node concept="Vb9p2" id="38ogk7FP07A" role="3F10Kt">
        <property role="Vbekb" value="ITALIC" />
      </node>
      <node concept="VechU" id="38ogk7FP07G" role="3F10Kt">
        <node concept="1iSF2X" id="38ogk7FP07K" role="VblUZ">
          <property role="1iTho6" value="296E95" />
        </node>
      </node>
    </node>
    <node concept="14StLt" id="38ogk7FQG9l" role="V601i">
      <property role="TrG5h" value="varname" />
      <node concept="3Xmtl4" id="pBV22SLio7" role="3F10Kt">
        <node concept="1wgc9g" id="pBV22SLiog" role="3XvnJa">
          <ref role="1wgcnl" node="38ogk7FQpJU" resolve="code" />
        </node>
      </node>
      <node concept="Vb9p2" id="38ogk7FQG9y" role="3F10Kt">
        <property role="Vbekb" value="BOLD" />
      </node>
      <node concept="VechU" id="38ogk7FQG9C" role="3F10Kt">
        <node concept="1iSF2X" id="38ogk7FQG9G" role="VblUZ">
          <property role="1iTho6" value="B59B00" />
        </node>
      </node>
    </node>
    <node concept="14StLt" id="38ogk7FTaNh" role="V601i">
      <property role="TrG5h" value="filepath" />
      <node concept="Vb9p2" id="38ogk7FTaNC" role="3F10Kt" />
      <node concept="VechU" id="38ogk7FTaNI" role="3F10Kt">
        <node concept="1iSF2X" id="38ogk7FTaNM" role="VblUZ">
          <property role="1iTho6" value="606060" />
        </node>
      </node>
      <node concept="VSNWy" id="38ogk7FTaNT" role="3F10Kt">
        <property role="1lJzqX" value="12" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5uKjkG1hsPD">
    <property role="3GE5qa" value="types.feature" />
    <ref role="1XX52x" to="7skk:4O6zKM3EyR8" resolve="FeatureRef" />
    <node concept="1iCGBv" id="4O6zKM3EyRJ" role="2wV5jI">
      <ref role="1NtTu8" to="7skk:4O6zKM3EyR9" resolve="ref" />
      <node concept="1sVBvm" id="4O6zKM3EyRL" role="1sWHZn">
        <node concept="3F0A7n" id="4O6zKM3EyRS" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <ref role="1k5W1q" node="38ogk7FQG9l" resolve="varname" />
          <node concept="Vb9p2" id="1zQNQW5kZGI" role="3F10Kt">
            <property role="Vbekb" value="PLAIN" />
          </node>
          <node concept="VechU" id="1zQNQW5lVNa" role="3F10Kt">
            <node concept="1iSF2X" id="1zQNQW5lVNg" role="VblUZ">
              <property role="1iTho6" value="C46627" />
            </node>
          </node>
          <node concept="Veino" id="1zQNQW5ljKE" role="3F10Kt">
            <node concept="1iSF2X" id="1zQNQW5ljKI" role="VblUZ">
              <property role="1iTho6" value="EAEAEA" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1EO_bV9G$Gl">
    <property role="3GE5qa" value="section.codeblock" />
    <ref role="1XX52x" to="7skk:1EO_bV9G$FR" resolve="MLEVariableReference" />
    <node concept="1iCGBv" id="1EO_bV9G$Gn" role="2wV5jI">
      <ref role="1NtTu8" to="zzzn:49WTic8iI9_" resolve="val" />
      <node concept="1sVBvm" id="1EO_bV9G$Gp" role="1sWHZn">
        <node concept="3F0A7n" id="1EO_bV9G$Gw" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1lXEU5viLiM">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="7skk:1lXEU5viLin" resolve="LoadFeaturesetFile" />
    <node concept="3EZMnI" id="1lXEU5viLiO" role="2wV5jI">
      <node concept="3F0ifn" id="1lXEU5viLiY" role="3EZMnx">
        <property role="3F0ifm" value="file" />
        <ref role="1k5W1q" node="38ogk7FQpJU" resolve="code" />
      </node>
      <node concept="3F0ifn" id="1lXEU5viLiZ" role="3EZMnx">
        <property role="3F0ifm" value="[" />
        <node concept="11L4FC" id="1lXEU5viLj0" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="1lXEU5viLj1" role="3EZMnx">
        <ref role="1k5W1q" node="38ogk7FTaNh" resolve="filepath" />
        <ref role="1NtTu8" to="7skk:1lXEU5viLio" resolve="file" />
        <node concept="11L4FC" id="1lXEU5viLj2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="1lXEU5viLj3" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="1lXEU5viLj4" role="3EZMnx">
        <property role="3F0ifm" value="]" />
      </node>
      <node concept="2iRfu4" id="1lXEU5viLiR" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1lXEU5vpA9L">
    <property role="3GE5qa" value="expressions" />
    <ref role="1XX52x" to="7skk:5c6KWTiqUTB" resolve="PrintExpr" />
    <node concept="3EZMnI" id="5c6KWTiqUVm" role="2wV5jI">
      <ref role="1k5W1q" node="38ogk7FQpJU" resolve="code" />
      <node concept="3F0ifn" id="5c6KWTiqUVt" role="3EZMnx">
        <property role="3F0ifm" value="print" />
        <ref role="1k5W1q" node="38ogk7FQpJU" resolve="code" />
      </node>
      <node concept="3F1sOY" id="1lXEU5vsLOA" role="3EZMnx">
        <ref role="1NtTu8" to="7skk:1lXEU5vsLOo" resolve="expr" />
        <ref role="1k5W1q" node="38ogk7FQG9l" resolve="varname" />
      </node>
      <node concept="l2Vlx" id="5c6KWTiqUVp" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="pBV22SPa$w" role="6VMZX">
      <node concept="3F0ifn" id="pBV22SPa$B" role="3EZMnx">
        <property role="3F0ifm" value="expr" />
      </node>
      <node concept="3F0ifn" id="pBV22SPa$H" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="1iCGBv" id="pBV22SPa$P" role="3EZMnx">
        <ref role="1NtTu8" to="7skk:1lXEU5vsLOo" resolve="expr" />
        <node concept="1sVBvm" id="pBV22SPa$R" role="1sWHZn">
          <node concept="3F1sOY" id="pBV22SPa_0" role="2wV5jI">
            <ref role="1NtTu8" to="hm2y:7D7uZV2iYAD" resolve="type" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="pBV22SPa$z" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="pBV22SHHuY">
    <property role="3GE5qa" value="types.feature" />
    <ref role="1XX52x" to="7skk:pBV22SHHup" resolve="IFeatureType" />
    <node concept="3EZMnI" id="pBV22SHHv0" role="2wV5jI">
      <node concept="l2Vlx" id="pBV22SHHv1" role="2iSdaV" />
      <node concept="3F0A7n" id="pBV22SHHv2" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="pBV22SHHv3" role="3EZMnx">
        <property role="3F0ifm" value=": " />
      </node>
      <node concept="3F0A7n" id="pBV22SHHv4" role="3EZMnx">
        <ref role="1NtTu8" to="7skk:pBV22SHHuu" resolve="scale" />
      </node>
    </node>
  </node>
</model>

