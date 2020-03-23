<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5f789227-cc37-435d-bca4-a01b7fc701eb(core.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="1" />
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="4" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="5qo5" ref="r:6d93ddb1-b0b0-4eee-8079-51303666672a(org.iets3.core.expr.simpleTypes.structure)" />
    <import index="zzzn" ref="r:af0af2e7-f7e1-4536-83b5-6bf010d4afd2(org.iets3.core.expr.lambda.structure)" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" />
    <import index="5s8v" ref="r:06389a24-a77a-450d-bc88-bccec0aae7d8(org.iets3.core.expr.lambda.behavior)" />
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
    <import index="ja9q" ref="r:fc597f30-d1d1-4d82-975e-209a1fdb1f96(statements.structure)" implicit="true" />
    <import index="w8ws" ref="r:371ff547-5eea-4440-a0bb-93d0be22bfcb(statements.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
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
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1207055528241" name="jetbrains.mps.lang.typesystem.structure.WarningStatement" flags="nn" index="a7r0C">
        <child id="1207055552304" name="warningText" index="a7wSD" />
      </concept>
      <concept id="1766949807893567867" name="jetbrains.mps.lang.typesystem.structure.OverridesConceptFunction" flags="ig" index="bXqS6" />
      <concept id="1185788614172" name="jetbrains.mps.lang.typesystem.structure.NormalTypeClause" flags="ng" index="mw_s8">
        <child id="1185788644032" name="normalType" index="mwGJk" />
      </concept>
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1227096774658" name="jetbrains.mps.lang.typesystem.structure.MessageStatement" flags="ng" index="2OEH$v">
        <child id="1227096802790" name="nodeToReport" index="2OEOjV" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <property id="1195213689297" name="overrides" index="18ip37" />
        <child id="1766949807893591548" name="overridesFun" index="bX4a1" />
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="1176544042499" name="jetbrains.mps.lang.typesystem.structure.Node_TypeOperation" flags="nn" index="3JvlWi" />
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174643105530" name="jetbrains.mps.lang.typesystem.structure.InferenceRule" flags="ig" index="1YbPZF" />
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
      <concept id="1174657487114" name="jetbrains.mps.lang.typesystem.structure.TypeOfExpression" flags="nn" index="1Z2H0r">
        <child id="1174657509053" name="term" index="1Z2MuG" />
      </concept>
      <concept id="1174658326157" name="jetbrains.mps.lang.typesystem.structure.CreateEquationStatement" flags="nn" index="1Z5TYs" />
      <concept id="1174660718586" name="jetbrains.mps.lang.typesystem.structure.AbstractEquationStatement" flags="nn" index="1Zf1VF">
        <property id="1206359757216" name="checkOnly" index="3wDh2S" />
        <child id="1174660783413" name="leftExpression" index="1ZfhK$" />
        <child id="1174660783414" name="rightExpression" index="1ZfhKB" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179168000618" name="jetbrains.mps.lang.smodel.structure.Node_GetIndexInParentOperation" flags="nn" index="2bSWHS" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1173122760281" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation" flags="nn" index="z$bX8" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS" />
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
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
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1171391069720" name="jetbrains.mps.baseLanguage.collections.structure.GetIndexOfOperation" flags="nn" index="2WmjW8" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1165595910856" name="jetbrains.mps.baseLanguage.collections.structure.GetLastOperation" flags="nn" index="1yVyf7" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="1YbPZF" id="1qp0740lA58">
    <property role="TrG5h" value="typeof_InportRef" />
    <property role="3GE5qa" value="section.ports" />
    <node concept="3clFbS" id="1qp0740lA59" role="18ibNy">
      <node concept="1Z5TYs" id="1qp0740lAg2" role="3cqZAp">
        <node concept="mw_s8" id="1qp0740lAgu" role="1ZfhKB">
          <node concept="1Z2H0r" id="1qp0740lAgq" role="mwGJk">
            <node concept="2OqwBi" id="1qp0740lAsc" role="1Z2MuG">
              <node concept="1YBJjd" id="1qp0740lAgM" role="2Oq$k0">
                <ref role="1YBMHb" node="1qp0740lA5b" resolve="ir" />
              </node>
              <node concept="2qgKlT" id="1qp0740lAQz" role="2OqNvi">
                <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="1qp0740lAg5" role="1ZfhK$">
          <node concept="1Z2H0r" id="1qp0740lA5i" role="mwGJk">
            <node concept="1YBJjd" id="1qp0740lA75" role="1Z2MuG">
              <ref role="1YBMHb" node="1qp0740lA5b" resolve="ir" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1qp0740lA5b" role="1YuTPh">
      <property role="TrG5h" value="ir" />
      <ref role="1YaFvo" to="5frd:2$uHlqTwKhA" resolve="InportRef" />
    </node>
  </node>
  <node concept="1YbPZF" id="1qp0740lDS6">
    <property role="TrG5h" value="typeof_Inport" />
    <property role="3GE5qa" value="section.ports" />
    <node concept="3clFbS" id="1qp0740lDS7" role="18ibNy">
      <node concept="1Z5TYs" id="1qp0740lE1u" role="3cqZAp">
        <node concept="mw_s8" id="1qp0740lE1U" role="1ZfhKB">
          <node concept="1Z2H0r" id="1qp0740lE1Q" role="mwGJk">
            <node concept="2OqwBi" id="1qp0740lEcg" role="1Z2MuG">
              <node concept="1YBJjd" id="1qp0740lE2e" role="2Oq$k0">
                <ref role="1YBMHb" node="1qp0740lDS9" resolve="i" />
              </node>
              <node concept="3TrEf2" id="1qp0740lExx" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:26bEYU6$gdM" resolve="outport" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="1qp0740lE1x" role="1ZfhK$">
          <node concept="1Z2H0r" id="1qp0740lDSg" role="mwGJk">
            <node concept="1YBJjd" id="1qp0740lDU3" role="1Z2MuG">
              <ref role="1YBMHb" node="1qp0740lDS9" resolve="i" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1Z5TYs" id="7Xt0Sm$2HDU" role="3cqZAp">
        <property role="3wDh2S" value="false" />
        <node concept="mw_s8" id="7Xt0Sm$2HDW" role="1ZfhK$">
          <node concept="1Z2H0r" id="7Xt0Sm$2HDX" role="mwGJk">
            <node concept="2OqwBi" id="7Xt0Sm$2HDY" role="1Z2MuG">
              <node concept="1YBJjd" id="7Xt0Sm$2HDZ" role="2Oq$k0">
                <ref role="1YBMHb" node="1qp0740lDS9" resolve="i" />
              </node>
              <node concept="3TrEf2" id="7g3NvkvXd9G" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:7g3NvkvSCOn" resolve="type" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="7Xt0Sm$2HE1" role="1ZfhKB">
          <node concept="1Z2H0r" id="7Xt0Sm$2HE2" role="mwGJk">
            <node concept="2OqwBi" id="7Xt0Sm$2HE3" role="1Z2MuG">
              <node concept="1YBJjd" id="7Xt0Sm$2HE4" role="2Oq$k0">
                <ref role="1YBMHb" node="1qp0740lDS9" resolve="i" />
              </node>
              <node concept="3TrEf2" id="7Xt0Sm$2HE5" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:26bEYU6$gdM" resolve="outport" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1qp0740lDS9" role="1YuTPh">
      <property role="TrG5h" value="i" />
      <ref role="1YaFvo" to="5frd:2$uHlqTwKh_" resolve="Inport" />
    </node>
  </node>
  <node concept="1YbPZF" id="1qp0740lEAK">
    <property role="TrG5h" value="typeof_Outport" />
    <property role="3GE5qa" value="section.ports" />
    <node concept="3clFbS" id="1qp0740lEAL" role="18ibNy">
      <node concept="1Z5TYs" id="1qp0740omVl" role="3cqZAp">
        <node concept="mw_s8" id="1qp0740omVL" role="1ZfhKB">
          <node concept="1Z2H0r" id="1qp0740omVH" role="mwGJk">
            <node concept="2OqwBi" id="2kN28RP2QJR" role="1Z2MuG">
              <node concept="1YBJjd" id="2kN28RP2Q_7" role="2Oq$k0">
                <ref role="1YBMHb" node="1qp0740lEAN" resolve="o" />
              </node>
              <node concept="3TrEf2" id="4m9Cn7c$cQw" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:2kN28RP0pXq" resolve="object" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="1qp0740omVo" role="1ZfhK$">
          <node concept="1Z2H0r" id="1qp0740omKx" role="mwGJk">
            <node concept="1YBJjd" id="1qp0740omNU" role="1Z2MuG">
              <ref role="1YBMHb" node="1qp0740lEAN" resolve="o" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="4rZ4tH4A1N1" role="3cqZAp">
        <node concept="3SKdUq" id="4rZ4tH4A1N3" role="3SKWNk">
          <property role="3SKdUp" value="typeof(o.type) :==: typeof(o.object);" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1qp0740lEAN" role="1YuTPh">
      <property role="TrG5h" value="o" />
      <ref role="1YaFvo" to="5frd:2$uHlqTwKhB" resolve="Outport" />
    </node>
  </node>
  <node concept="1YbPZF" id="1qp0740of6a">
    <property role="TrG5h" value="typeof_ProvideOutportExpr" />
    <property role="3GE5qa" value="section.ports" />
    <node concept="3clFbS" id="1qp0740of6b" role="18ibNy">
      <node concept="1Z5TYs" id="1qp0740ofhf" role="3cqZAp">
        <node concept="mw_s8" id="1qp0740ofoY" role="1ZfhKB">
          <node concept="2pJPEk" id="1qp0740ofpi" role="mwGJk">
            <node concept="2pJPED" id="1qp0740ofpA" role="2pJPEn">
              <ref role="2pJxaS" to="5qo5:6sdnDbSlcHm" resolve="BooleanLiteral" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="1qp0740ofhi" role="1ZfhK$">
          <node concept="1Z2H0r" id="1qp0740of6w" role="mwGJk">
            <node concept="1YBJjd" id="1qp0740of8j" role="1Z2MuG">
              <ref role="1YBMHb" node="1qp0740of6d" resolve="poe" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1qp0740of6d" role="1YuTPh">
      <property role="TrG5h" value="poe" />
      <ref role="1YaFvo" to="5frd:5uNOSkli4V2" resolve="ProvideOutportExpr" />
    </node>
  </node>
  <node concept="18kY7G" id="3HjnGQtW6EU">
    <property role="TrG5h" value="check_Inport" />
    <property role="3GE5qa" value="section.ports" />
    <node concept="3clFbS" id="3HjnGQtW6EV" role="18ibNy">
      <node concept="3clFbJ" id="3HjnGQtW6F1" role="3cqZAp">
        <node concept="2OqwBi" id="3HjnGQtW6WL" role="3clFbw">
          <node concept="1YBJjd" id="3HjnGQtW6Fg" role="2Oq$k0">
            <ref role="1YBMHb" node="3HjnGQtW6EX" resolve="in" />
          </node>
          <node concept="3TrcHB" id="3HjnGQtW7tk" role="2OqNvi">
            <ref role="3TsBF5" to="5frd:3HjnGQtW3ZY" resolve="isOutdated" />
          </node>
        </node>
        <node concept="3clFbS" id="3HjnGQtW6F3" role="3clFbx">
          <node concept="a7r0C" id="3HjnGQtW7wr" role="3cqZAp">
            <node concept="Xl_RD" id="3HjnGQtW7y4" role="a7wSD">
              <property role="Xl_RC" value="The used variable has been changed. Rerun this section to imply changes into computations or manually reload inports (Alt+Enter)" />
            </node>
            <node concept="1YBJjd" id="3HjnGQtW7wH" role="2OEOjV">
              <ref role="1YBMHb" node="3HjnGQtW6EX" resolve="in" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3HjnGQtW6EX" role="1YuTPh">
      <property role="TrG5h" value="in" />
      <ref role="1YaFvo" to="5frd:2$uHlqTwKh_" resolve="Inport" />
    </node>
  </node>
  <node concept="1YbPZF" id="7Xt0Sm$2$$D">
    <property role="TrG5h" value="typeof_VariableRef" />
    <property role="3GE5qa" value="variables" />
    <node concept="3clFbS" id="7Xt0Sm$2$$E" role="18ibNy">
      <node concept="1Z5TYs" id="7Xt0Sm$2Gsr" role="3cqZAp">
        <property role="3wDh2S" value="false" />
        <node concept="mw_s8" id="7Xt0Sm$2Gst" role="1ZfhK$">
          <node concept="1Z2H0r" id="7Xt0Sm$2Gsu" role="mwGJk">
            <node concept="1YBJjd" id="7Xt0Sm$2Gsv" role="1Z2MuG">
              <ref role="1YBMHb" node="7Xt0Sm$2$$G" resolve="ref" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="7Xt0Sm$2Gsw" role="1ZfhKB">
          <node concept="1Z2H0r" id="7Xt0Sm$2Gsx" role="mwGJk">
            <node concept="2OqwBi" id="7Xt0Sm$2Gsy" role="1Z2MuG">
              <node concept="1YBJjd" id="7Xt0Sm$2Gsz" role="2Oq$k0">
                <ref role="1YBMHb" node="7Xt0Sm$2$$G" resolve="ref" />
              </node>
              <node concept="3TrEf2" id="7Xt0Sm$2Gs$" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:1UULepNKcNI" resolve="val" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7Xt0Sm$2$$G" role="1YuTPh">
      <property role="TrG5h" value="ref" />
      <ref role="1YaFvo" to="5frd:1EO_bV9G$FR" resolve="VariableReference" />
    </node>
    <node concept="bXqS6" id="7Xt0Sm$2CQo" role="bX4a1">
      <node concept="3clFbS" id="7Xt0Sm$2CQp" role="2VODD2">
        <node concept="3clFbF" id="7Xt0Sm$2CXv" role="3cqZAp">
          <node concept="3clFbT" id="7Xt0Sm$2CXu" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="6Quy7yTO9Mx">
    <property role="TrG5h" value="check_ItemSelection" />
    <property role="3GE5qa" value="util.items.selection" />
    <node concept="3clFbS" id="6Quy7yTO9My" role="18ibNy">
      <node concept="3cpWs8" id="6MKNUaQHeGG" role="3cqZAp">
        <node concept="3cpWsn" id="6MKNUaQHeGJ" role="3cpWs9">
          <property role="TrG5h" value="selectors" />
          <node concept="_YKpA" id="6MKNUaQHeGC" role="1tU5fm">
            <node concept="3Tqbb2" id="6MKNUaQHeZN" role="_ZDj9">
              <ref role="ehGHo" to="5frd:6MKNUaQDNDz" resolve="ItemSelector" />
            </node>
          </node>
          <node concept="2ShNRf" id="6MKNUaQHgIA" role="33vP2m">
            <node concept="Tc6Ow" id="6MKNUaQHgIy" role="2ShVmc">
              <node concept="3Tqbb2" id="6MKNUaQHgIz" role="HW$YZ">
                <ref role="ehGHo" to="5frd:6MKNUaQDNDz" resolve="ItemSelector" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2Gpval" id="6MKNUaQHhAx" role="3cqZAp">
        <node concept="2GrKxI" id="6MKNUaQHhAz" role="2Gsz3X">
          <property role="TrG5h" value="curSelector" />
        </node>
        <node concept="2OqwBi" id="6MKNUaQHik0" role="2GsD0m">
          <node concept="1YBJjd" id="6MKNUaQHibi" role="2Oq$k0">
            <ref role="1YBMHb" node="6Quy7yTO9M$" resolve="is" />
          </node>
          <node concept="3Tsc0h" id="6Quy7yTOeSU" role="2OqNvi">
            <ref role="3TtcxE" to="5frd:6MKNUaQDNDD" resolve="selectors" />
          </node>
        </node>
        <node concept="3clFbS" id="6MKNUaQHhAB" role="2LFqv$">
          <node concept="2Gpval" id="6MKNUaQHmmH" role="3cqZAp">
            <node concept="2GrKxI" id="6MKNUaQHmmI" role="2Gsz3X">
              <property role="TrG5h" value="prevSelector" />
            </node>
            <node concept="37vLTw" id="6MKNUaQHoQV" role="2GsD0m">
              <ref role="3cqZAo" node="6MKNUaQHeGJ" resolve="selectors" />
            </node>
            <node concept="3clFbS" id="6MKNUaQHmmK" role="2LFqv$">
              <node concept="3clFbJ" id="6MKNUaQIUHJ" role="3cqZAp">
                <node concept="3fqX7Q" id="6MKNUaQIVfH" role="3clFbw">
                  <node concept="2OqwBi" id="6MKNUaQIVfJ" role="3fr31v">
                    <node concept="2GrUjf" id="6MKNUaQIVfK" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="6MKNUaQHhAz" resolve="curSelector" />
                    </node>
                    <node concept="2qgKlT" id="6MKNUaQIVfL" role="2OqNvi">
                      <ref role="37wK5l" to="64zb:6MKNUaQHpm1" resolve="isCompatible" />
                      <node concept="2GrUjf" id="6Quy7yTOgh0" role="37wK5m">
                        <ref role="2Gs0qQ" node="6MKNUaQHmmI" resolve="prevSelector" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="6MKNUaQIUHL" role="3clFbx">
                  <node concept="a7r0C" id="6MKNUaQJcBX" role="3cqZAp">
                    <node concept="1YBJjd" id="6MKNUaQJf0h" role="2OEOjV">
                      <ref role="1YBMHb" node="6Quy7yTO9M$" resolve="is" />
                    </node>
                    <node concept="3cpWs3" id="6MKNUaQJeR8" role="a7wSD">
                      <node concept="Xl_RD" id="6MKNUaQJeR9" role="3uHU7w">
                        <property role="Xl_RC" value=" overlap" />
                      </node>
                      <node concept="3cpWs3" id="6MKNUaQJeRa" role="3uHU7B">
                        <node concept="3cpWs3" id="6MKNUaQJeRb" role="3uHU7B">
                          <node concept="3cpWs3" id="6MKNUaQJeRc" role="3uHU7B">
                            <node concept="Xl_RD" id="6MKNUaQJeRd" role="3uHU7B">
                              <property role="Xl_RC" value="arg" />
                            </node>
                            <node concept="2OqwBi" id="6MKNUaQJeRe" role="3uHU7w">
                              <node concept="2OqwBi" id="6MKNUaQJeRf" role="2Oq$k0">
                                <node concept="1YBJjd" id="6MKNUaQJeRg" role="2Oq$k0">
                                  <ref role="1YBMHb" node="6Quy7yTO9M$" resolve="is" />
                                </node>
                                <node concept="3Tsc0h" id="6Quy7yTOf$Z" role="2OqNvi">
                                  <ref role="3TtcxE" to="5frd:6MKNUaQDNDD" resolve="selectors" />
                                </node>
                              </node>
                              <node concept="2WmjW8" id="6MKNUaQJeRi" role="2OqNvi">
                                <node concept="2GrUjf" id="6MKNUaQJeRj" role="25WWJ7">
                                  <ref role="2Gs0qQ" node="6MKNUaQHmmI" resolve="prevSelector" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Xl_RD" id="6MKNUaQJeRk" role="3uHU7w">
                            <property role="Xl_RC" value=" and arg" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="6MKNUaQJeRl" role="3uHU7w">
                          <node concept="2OqwBi" id="6MKNUaQJeRm" role="2Oq$k0">
                            <node concept="1YBJjd" id="6MKNUaQJeRn" role="2Oq$k0">
                              <ref role="1YBMHb" node="6Quy7yTO9M$" resolve="is" />
                            </node>
                            <node concept="3Tsc0h" id="6Quy7yTOfWB" role="2OqNvi">
                              <ref role="3TtcxE" to="5frd:6MKNUaQDNDD" resolve="selectors" />
                            </node>
                          </node>
                          <node concept="2WmjW8" id="6MKNUaQJeRp" role="2OqNvi">
                            <node concept="2GrUjf" id="6MKNUaQJeRq" role="25WWJ7">
                              <ref role="2Gs0qQ" node="6MKNUaQHhAz" resolve="curSelector" />
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
          <node concept="3clFbF" id="6MKNUaQJ6Bj" role="3cqZAp">
            <node concept="2OqwBi" id="6MKNUaQJ8cn" role="3clFbG">
              <node concept="37vLTw" id="6MKNUaQJ6Bh" role="2Oq$k0">
                <ref role="3cqZAo" node="6MKNUaQHeGJ" resolve="selectors" />
              </node>
              <node concept="TSZUe" id="6MKNUaQJarG" role="2OqNvi">
                <node concept="2GrUjf" id="6MKNUaQJaxv" role="25WWJ7">
                  <ref role="2Gs0qQ" node="6MKNUaQHhAz" resolve="curSelector" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="6MKNUaQHhju" role="3cqZAp" />
    </node>
    <node concept="1YaCAy" id="6Quy7yTO9M$" role="1YuTPh">
      <property role="TrG5h" value="is" />
      <ref role="1YaFvo" to="5frd:6Quy7yTNPCI" resolve="ItemSelection" />
    </node>
  </node>
  <node concept="18kY7G" id="6Quy7yTP9HX">
    <property role="TrG5h" value="check_ItemSelector" />
    <property role="3GE5qa" value="util.items.selection" />
    <node concept="3clFbS" id="6Quy7yTP9HY" role="18ibNy">
      <node concept="3SKdUt" id="6MKNUaQGh5e" role="3cqZAp">
        <node concept="3SKdUq" id="6MKNUaQGh5f" role="3SKWNk">
          <property role="3SKdUp" value="get collection" />
        </node>
      </node>
      <node concept="3cpWs8" id="6MKNUaQGh5g" role="3cqZAp">
        <node concept="3cpWsn" id="6MKNUaQGh5h" role="3cpWs9">
          <property role="TrG5h" value="collNode" />
          <node concept="2OqwBi" id="6MKNUaQGh5l" role="33vP2m">
            <node concept="1PxgMI" id="6MKNUaQGh5m" role="2Oq$k0">
              <node concept="chp4Y" id="6Quy7yTPc4K" role="3oSUPX">
                <ref role="cht4Q" to="5frd:6Quy7yTNPCI" resolve="ItemSelection" />
              </node>
              <node concept="2OqwBi" id="6MKNUaQGh5o" role="1m5AlR">
                <node concept="1YBJjd" id="6MKNUaQGice" role="2Oq$k0">
                  <ref role="1YBMHb" node="6Quy7yTP9I0" resolve="is" />
                </node>
                <node concept="1mfA1w" id="6MKNUaQGh5q" role="2OqNvi" />
              </node>
            </node>
            <node concept="2qgKlT" id="6Quy7yTPcU0" role="2OqNvi">
              <ref role="37wK5l" to="64zb:6Quy7yTNRC2" resolve="getCollection" />
            </node>
          </node>
          <node concept="2I9FWS" id="6Quy7yTPbna" role="1tU5fm" />
        </node>
      </node>
      <node concept="3clFbH" id="6MKNUaQGh5s" role="3cqZAp" />
      <node concept="3SKdUt" id="6MKNUaQGh5t" role="3cqZAp">
        <node concept="3SKdUq" id="6MKNUaQGh5u" role="3SKWNk">
          <property role="3SKdUp" value="get index of item" />
        </node>
      </node>
      <node concept="3cpWs8" id="6MKNUaQGh5v" role="3cqZAp">
        <node concept="3cpWsn" id="6MKNUaQGh5w" role="3cpWs9">
          <property role="TrG5h" value="i" />
          <node concept="10Oyi0" id="6MKNUaQGh5x" role="1tU5fm" />
          <node concept="2OqwBi" id="6MKNUaQGh5y" role="33vP2m">
            <node concept="37vLTw" id="6MKNUaQGh5$" role="2Oq$k0">
              <ref role="3cqZAo" node="6MKNUaQGh5h" resolve="collNode" />
            </node>
            <node concept="2WmjW8" id="6MKNUaQGh5A" role="2OqNvi">
              <node concept="2OqwBi" id="6MKNUaQGh5B" role="25WWJ7">
                <node concept="2OqwBi" id="6MKNUaQGh5C" role="2Oq$k0">
                  <node concept="1YBJjd" id="6MKNUaQGih4" role="2Oq$k0">
                    <ref role="1YBMHb" node="6Quy7yTP9I0" resolve="is" />
                  </node>
                  <node concept="3TrEf2" id="6MKNUaQGh5E" role="2OqNvi">
                    <ref role="3Tt5mk" to="5frd:6MKNUaQDND$" resolve="item" />
                  </node>
                </node>
                <node concept="3TrEf2" id="4x_I0npTVv1" role="2OqNvi">
                  <ref role="3Tt5mk" to="5frd:4x_I0npP4pL" resolve="val" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="6MKNUaQGh5G" role="3cqZAp">
        <node concept="3cpWsn" id="6MKNUaQGh5H" role="3cpWs9">
          <property role="TrG5h" value="j" />
          <node concept="10Oyi0" id="6MKNUaQGh5I" role="1tU5fm" />
          <node concept="2OqwBi" id="6MKNUaQGh5J" role="33vP2m">
            <node concept="37vLTw" id="6MKNUaQGh5L" role="2Oq$k0">
              <ref role="3cqZAo" node="6MKNUaQGh5h" resolve="collNode" />
            </node>
            <node concept="2WmjW8" id="6MKNUaQGh5N" role="2OqNvi">
              <node concept="2OqwBi" id="6MKNUaQGh5O" role="25WWJ7">
                <node concept="2OqwBi" id="6MKNUaQGiUZ" role="2Oq$k0">
                  <node concept="1YBJjd" id="6MKNUaQGiEz" role="2Oq$k0">
                    <ref role="1YBMHb" node="6Quy7yTP9I0" resolve="is" />
                  </node>
                  <node concept="3TrEf2" id="6MKNUaQGjmV" role="2OqNvi">
                    <ref role="3Tt5mk" to="5frd:6MKNUaQDNDA" resolve="other" />
                  </node>
                </node>
                <node concept="3TrEf2" id="4x_I0npTUld" role="2OqNvi">
                  <ref role="3Tt5mk" to="5frd:4x_I0npP4pL" resolve="val" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="6MKNUaQGlNt" role="3cqZAp" />
      <node concept="3SKdUt" id="6Quy7yTPD56" role="3cqZAp">
        <node concept="3SKdUq" id="6Quy7yTPD58" role="3SKWNk">
          <property role="3SKdUp" value="TODO: Extract condition to behavior?" />
        </node>
      </node>
      <node concept="3SKdUt" id="6Quy7yTPE4h" role="3cqZAp">
        <node concept="3SKdUq" id="6Quy7yTPE4j" role="3SKWNk">
          <property role="3SKdUp" value="TODO: Make error message understandable!" />
        </node>
      </node>
      <node concept="3clFbH" id="6Quy7yTPC_z" role="3cqZAp" />
      <node concept="3clFbJ" id="6MKNUaQGmf1" role="3cqZAp">
        <node concept="3clFbS" id="6MKNUaQGmf3" role="3clFbx">
          <node concept="2MkqsV" id="6MKNUaQGmoF" role="3cqZAp">
            <node concept="Xl_RD" id="6MKNUaQGmoU" role="2MkJ7o">
              <property role="Xl_RC" value="The first index of a range must be lower as the last index." />
            </node>
            <node concept="1YBJjd" id="6MKNUaQGmr3" role="2OEOjV">
              <ref role="1YBMHb" node="6Quy7yTP9I0" resolve="is" />
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="6MKNUaQH6ow" role="3clFbw">
          <node concept="3fqX7Q" id="6MKNUaQH6tn" role="3uHU7w">
            <node concept="1eOMI4" id="6MKNUaQH960" role="3fr31v">
              <node concept="3clFbC" id="6MKNUaQH7pe" role="1eOMHV">
                <node concept="37vLTw" id="6MKNUaQH6yc" role="3uHU7B">
                  <ref role="3cqZAo" node="6MKNUaQGh5H" resolve="j" />
                </node>
                <node concept="3cmrfG" id="6MKNUaQH7Hk" role="3uHU7w">
                  <property role="3cmrfH" value="-1" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2d3UOw" id="6MKNUaQGLFs" role="3uHU7B">
            <node concept="37vLTw" id="6MKNUaQGh65" role="3uHU7B">
              <ref role="3cqZAo" node="6MKNUaQGh5w" resolve="i" />
            </node>
            <node concept="37vLTw" id="6MKNUaQGh64" role="3uHU7w">
              <ref role="3cqZAo" node="6MKNUaQGh5H" resolve="j" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="6Quy7yTP9I0" role="1YuTPh">
      <property role="TrG5h" value="is" />
      <ref role="1YaFvo" to="5frd:6MKNUaQDNDz" resolve="ItemSelector" />
    </node>
  </node>
  <node concept="18kY7G" id="1UULepNJtRb">
    <property role="TrG5h" value="check_VariableDeclaration" />
    <property role="3GE5qa" value="variables" />
    <node concept="3clFbS" id="1UULepNJtRc" role="18ibNy">
      <node concept="3clFbJ" id="3pe7Y2RWElv" role="3cqZAp">
        <node concept="3clFbS" id="3pe7Y2RWElx" role="3clFbx">
          <node concept="3clFbJ" id="4fxn4ASslTW" role="3cqZAp">
            <node concept="3clFbS" id="4fxn4ASslTY" role="3clFbx">
              <node concept="3cpWs6" id="4fxn4ASspJR" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="4fxn4ASsotf" role="3clFbw">
              <node concept="2OqwBi" id="4fxn4ASsmRs" role="2Oq$k0">
                <node concept="1YBJjd" id="4fxn4ASsmAj" role="2Oq$k0">
                  <ref role="1YBMHb" node="1UULepNJtRe" resolve="vd" />
                </node>
                <node concept="2Xjw5R" id="4fxn4ASso9R" role="2OqNvi">
                  <node concept="1xMEDy" id="4fxn4ASso9T" role="1xVPHs">
                    <node concept="chp4Y" id="4fxn4ASsoc8" role="ri$Ld">
                      <ref role="cht4Q" to="5frd:4rZ4tH4lGwS" resolve="HiddenContent" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3x8VRR" id="4fxn4ASspGv" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbH" id="4fxn4ASsldZ" role="3cqZAp" />
          <node concept="3cpWs8" id="22hm_0zqUS3" role="3cqZAp">
            <node concept="3cpWsn" id="22hm_0zqUS4" role="3cpWs9">
              <property role="TrG5h" value="block" />
              <node concept="3Tqbb2" id="22hm_0zqURY" role="1tU5fm">
                <ref role="ehGHo" to="zzzn:49WTic8ig5D" resolve="BlockExpression" />
              </node>
              <node concept="1PxgMI" id="22hm_0zqUS5" role="33vP2m">
                <node concept="2OqwBi" id="22hm_0zqUS6" role="1m5AlR">
                  <node concept="1YBJjd" id="1UULepNJyiG" role="2Oq$k0">
                    <ref role="1YBMHb" node="1UULepNJtRe" resolve="vd" />
                  </node>
                  <node concept="1mfA1w" id="22hm_0zqUS8" role="2OqNvi" />
                </node>
                <node concept="chp4Y" id="6b_jefnKyDb" role="3oSUPX">
                  <ref role="cht4Q" to="zzzn:49WTic8ig5D" resolve="BlockExpression" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="KaZMgydRvt" role="3cqZAp">
            <node concept="3cpWsn" id="KaZMgydRvu" role="3cpWs9">
              <property role="TrG5h" value="valueIsReferencedLocally" />
              <node concept="10P_77" id="KaZMgydRuY" role="1tU5fm" />
              <node concept="2OqwBi" id="KaZMgydRvw" role="33vP2m">
                <node concept="2OqwBi" id="KaZMgydRvx" role="2Oq$k0">
                  <node concept="37vLTw" id="KaZMgydRvy" role="2Oq$k0">
                    <ref role="3cqZAo" node="22hm_0zqUS4" resolve="block" />
                  </node>
                  <node concept="3Tsc0h" id="KaZMgydRvz" role="2OqNvi">
                    <ref role="3TtcxE" to="zzzn:49WTic8ig5E" resolve="expressions" />
                  </node>
                </node>
                <node concept="2HwmR7" id="KaZMgydRv$" role="2OqNvi">
                  <node concept="1bVj0M" id="KaZMgydRv_" role="23t8la">
                    <node concept="3clFbS" id="KaZMgydRvA" role="1bW5cS">
                      <node concept="3clFbF" id="KaZMgydRvB" role="3cqZAp">
                        <node concept="2OqwBi" id="KaZMgydRvC" role="3clFbG">
                          <node concept="2OqwBi" id="KaZMgydRvD" role="2Oq$k0">
                            <node concept="37vLTw" id="KaZMgydRvE" role="2Oq$k0">
                              <ref role="3cqZAo" node="KaZMgydRvU" resolve="e" />
                            </node>
                            <node concept="2Rf3mk" id="KaZMgydRvF" role="2OqNvi">
                              <node concept="1xMEDy" id="KaZMgydRvG" role="1xVPHs">
                                <node concept="chp4Y" id="1UULepNK89l" role="ri$Ld">
                                  <ref role="cht4Q" to="5frd:1EO_bV9G$FR" resolve="VariableReference" />
                                </node>
                              </node>
                              <node concept="1xIGOp" id="KaZMgydRvI" role="1xVPHs" />
                            </node>
                          </node>
                          <node concept="2HwmR7" id="KaZMgydRvJ" role="2OqNvi">
                            <node concept="1bVj0M" id="KaZMgydRvK" role="23t8la">
                              <node concept="3clFbS" id="KaZMgydRvL" role="1bW5cS">
                                <node concept="3clFbF" id="KaZMgydRvM" role="3cqZAp">
                                  <node concept="3clFbC" id="KaZMgydRvN" role="3clFbG">
                                    <node concept="1YBJjd" id="1UULepNJyUb" role="3uHU7w">
                                      <ref role="1YBMHb" node="1UULepNJtRe" resolve="vd" />
                                    </node>
                                    <node concept="2OqwBi" id="KaZMgydRvP" role="3uHU7B">
                                      <node concept="37vLTw" id="1UULepNK2Tw" role="2Oq$k0">
                                        <ref role="3cqZAo" node="KaZMgydRvS" resolve="it" />
                                      </node>
                                      <node concept="3TrEf2" id="1UULepNK9Ih" role="2OqNvi">
                                        <ref role="3Tt5mk" to="5frd:1UULepNKcNI" resolve="val" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="KaZMgydRvS" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="KaZMgydRvT" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="KaZMgydRvU" role="1bW2Oz">
                      <property role="TrG5h" value="e" />
                      <node concept="2jxLKc" id="KaZMgydRvV" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="5ipapt3xGOT" role="3cqZAp">
            <node concept="3clFbS" id="5ipapt3xGOV" role="3clFbx">
              <node concept="3cpWs6" id="5ipapt3xHhQ" role="3cqZAp" />
            </node>
            <node concept="37vLTw" id="5ipapt3xHfH" role="3clFbw">
              <ref role="3cqZAo" node="KaZMgydRvu" resolve="valueIsReferencedLocally" />
            </node>
          </node>
          <node concept="3clFbH" id="5ipapt3xI7p" role="3cqZAp" />
          <node concept="3cpWs8" id="5ipapt3xKcC" role="3cqZAp">
            <node concept="3cpWsn" id="5ipapt3xKcD" role="3cpWs9">
              <property role="TrG5h" value="joiner" />
              <node concept="3Tqbb2" id="5ipapt3xKcB" role="1tU5fm">
                <ref role="ehGHo" to="zzzn:5ipapt3mzbM" resolve="IJoinedBlockContext" />
              </node>
              <node concept="2OqwBi" id="5ipapt3xKcE" role="33vP2m">
                <node concept="1YBJjd" id="1UULepNJzBm" role="2Oq$k0">
                  <ref role="1YBMHb" node="1UULepNJtRe" resolve="vd" />
                </node>
                <node concept="2Xjw5R" id="5ipapt3xKcG" role="2OqNvi">
                  <node concept="1xMEDy" id="5ipapt3xKcH" role="1xVPHs">
                    <node concept="chp4Y" id="5ipapt3xKcI" role="ri$Ld">
                      <ref role="cht4Q" to="zzzn:5ipapt3mzbM" resolve="IJoinedBlockContext" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5ipapt3xMjL" role="3cqZAp">
            <node concept="3cpWsn" id="5ipapt3xMjM" role="3cpWs9">
              <property role="TrG5h" value="otherLocs" />
              <node concept="A3Dl8" id="5ipapt3xMj_" role="1tU5fm">
                <node concept="3Tqbb2" id="5ipapt3xMjC" role="A3Ik2">
                  <ref role="ehGHo" to="hm2y:6sdnDbSla17" resolve="Expression" />
                </node>
              </node>
              <node concept="2OqwBi" id="5ipapt3xMjN" role="33vP2m">
                <node concept="37vLTw" id="5ipapt3xMjO" role="2Oq$k0">
                  <ref role="3cqZAo" node="5ipapt3xKcD" resolve="joiner" />
                </node>
                <node concept="2qgKlT" id="5ipapt3xMjP" role="2OqNvi">
                  <ref role="37wK5l" to="5s8v:5ipapt3mzcn" resolve="otherLocationsForRefsToMe" />
                  <node concept="1YBJjd" id="1UULepNJAtq" role="37wK5m">
                    <ref role="1YBMHb" node="1UULepNJtRe" resolve="vd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5ipapt3xRFW" role="3cqZAp">
            <node concept="3cpWsn" id="5ipapt3xRFX" role="3cpWs9">
              <property role="TrG5h" value="otherRefs" />
              <node concept="A3Dl8" id="5ipapt3xRFl" role="1tU5fm">
                <node concept="3Tqbb2" id="5ipapt3xRFo" role="A3Ik2">
                  <ref role="ehGHo" to="5frd:1EO_bV9G$FR" resolve="VariableReference" />
                </node>
              </node>
              <node concept="2OqwBi" id="5ipapt3xRFY" role="33vP2m">
                <node concept="2OqwBi" id="5ipapt3xRFZ" role="2Oq$k0">
                  <node concept="37vLTw" id="5ipapt3xRG0" role="2Oq$k0">
                    <ref role="3cqZAo" node="5ipapt3xMjM" resolve="otherLocs" />
                  </node>
                  <node concept="3goQfb" id="5ipapt3xRG1" role="2OqNvi">
                    <node concept="1bVj0M" id="5ipapt3xRG2" role="23t8la">
                      <node concept="3clFbS" id="5ipapt3xRG3" role="1bW5cS">
                        <node concept="3clFbF" id="5ipapt3xRG4" role="3cqZAp">
                          <node concept="2OqwBi" id="5ipapt3xRG5" role="3clFbG">
                            <node concept="37vLTw" id="5ipapt3xRG6" role="2Oq$k0">
                              <ref role="3cqZAo" node="5ipapt3xRGa" resolve="it" />
                            </node>
                            <node concept="2Rf3mk" id="5ipapt3xRG7" role="2OqNvi">
                              <node concept="1xMEDy" id="5ipapt3xRG8" role="1xVPHs">
                                <node concept="chp4Y" id="1UULepNKs$e" role="ri$Ld">
                                  <ref role="cht4Q" to="5frd:1EO_bV9G$FR" resolve="VariableReference" />
                                </node>
                              </node>
                              <node concept="1xIGOp" id="5ipapt3BUcH" role="1xVPHs" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="5ipapt3xRGa" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5ipapt3xRGb" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3zZkjj" id="5ipapt3xRGc" role="2OqNvi">
                  <node concept="1bVj0M" id="5ipapt3xRGd" role="23t8la">
                    <node concept="3clFbS" id="5ipapt3xRGe" role="1bW5cS">
                      <node concept="3clFbF" id="5ipapt3xRGf" role="3cqZAp">
                        <node concept="3clFbC" id="5ipapt3xRGg" role="3clFbG">
                          <node concept="1YBJjd" id="1UULepNJ_Jo" role="3uHU7w">
                            <ref role="1YBMHb" node="1UULepNJtRe" resolve="vd" />
                          </node>
                          <node concept="2OqwBi" id="5ipapt3xRGi" role="3uHU7B">
                            <node concept="37vLTw" id="5ipapt3xRGj" role="2Oq$k0">
                              <ref role="3cqZAo" node="5ipapt3xRGl" resolve="it" />
                            </node>
                            <node concept="3TrEf2" id="5ipapt3xRGk" role="2OqNvi">
                              <ref role="3Tt5mk" to="5frd:1UULepNKcNI" resolve="val" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="5ipapt3xRGl" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5ipapt3xRGm" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5ipapt3xT5j" role="3cqZAp" />
          <node concept="3clFbJ" id="5ipapt3xUoG" role="3cqZAp">
            <node concept="3clFbS" id="5ipapt3xUoI" role="3clFbx">
              <node concept="3cpWs6" id="5ipapt3xVQ$" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="5ipapt3xVBd" role="3clFbw">
              <node concept="37vLTw" id="5ipapt3xVq9" role="2Oq$k0">
                <ref role="3cqZAo" node="5ipapt3xRFX" resolve="otherRefs" />
              </node>
              <node concept="3GX2aA" id="5ipapt3xVQo" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbH" id="5ipapt3xI_Y" role="3cqZAp" />
          <node concept="3clFbH" id="5ipapt3xIb9" role="3cqZAp" />
          <node concept="3clFbJ" id="22hm_0zqYup" role="3cqZAp">
            <node concept="3clFbS" id="22hm_0zqYur" role="3clFbx">
              <node concept="a7r0C" id="sflsE7lTYD" role="3cqZAp">
                <node concept="1YBJjd" id="1UULepNJ$ko" role="2OEOjV">
                  <ref role="1YBMHb" node="1UULepNJtRe" resolve="vd" />
                </node>
                <node concept="Xl_RD" id="22hm_0zqY_p" role="a7wSD">
                  <property role="Xl_RC" value="value never used" />
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="KaZMgydRSv" role="3clFbw">
              <node concept="3y3z36" id="KaZMgydUJI" role="3uHU7w">
                <node concept="1YBJjd" id="1UULepNJ_1p" role="3uHU7w">
                  <ref role="1YBMHb" node="1UULepNJtRe" resolve="vd" />
                </node>
                <node concept="2OqwBi" id="KaZMgydSMz" role="3uHU7B">
                  <node concept="2OqwBi" id="KaZMgydS3G" role="2Oq$k0">
                    <node concept="37vLTw" id="KaZMgydS0_" role="2Oq$k0">
                      <ref role="3cqZAo" node="22hm_0zqUS4" resolve="block" />
                    </node>
                    <node concept="3Tsc0h" id="KaZMgydS9F" role="2OqNvi">
                      <ref role="3TtcxE" to="zzzn:49WTic8ig5E" resolve="expressions" />
                    </node>
                  </node>
                  <node concept="1yVyf7" id="KaZMgydTJ1" role="2OqNvi" />
                </node>
              </node>
              <node concept="3fqX7Q" id="KaZMgydRJ0" role="3uHU7B">
                <node concept="37vLTw" id="KaZMgydRJ2" role="3fr31v">
                  <ref role="3cqZAo" node="KaZMgydRvu" resolve="valueIsReferencedLocally" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="3pe7Y2RWEQy" role="3clFbw">
          <node concept="2OqwBi" id="3pe7Y2RWExu" role="2Oq$k0">
            <node concept="1YBJjd" id="1UULepNJxFr" role="2Oq$k0">
              <ref role="1YBMHb" node="1UULepNJtRe" resolve="vd" />
            </node>
            <node concept="2Xjw5R" id="3pe7Y2RWEGA" role="2OqNvi">
              <node concept="1xMEDy" id="3pe7Y2RWEGC" role="1xVPHs">
                <node concept="chp4Y" id="3pe7Y2RWEIF" role="ri$Ld">
                  <ref role="cht4Q" to="hm2y:3pe7Y2RWByP" resolve="IIgnoreTrivialErrorsContext" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3w_OXm" id="3pe7Y2RWF35" role="2OqNvi" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1UULepNJtRe" role="1YuTPh">
      <property role="TrG5h" value="vd" />
      <ref role="1YaFvo" to="5frd:1UULepNJ9io" resolve="VariableDeclaration" />
    </node>
  </node>
  <node concept="18kY7G" id="1UULepNKj5$">
    <property role="TrG5h" value="check_VariableReference" />
    <property role="3GE5qa" value="variables" />
    <node concept="3clFbS" id="1UULepNKj5_" role="18ibNy">
      <node concept="3clFbJ" id="5ipapt3sE4E" role="3cqZAp">
        <node concept="3clFbS" id="5ipapt3sE4G" role="3clFbx">
          <node concept="3cpWs8" id="49WTic8jtdR" role="3cqZAp">
            <node concept="3cpWsn" id="49WTic8jtdS" role="3cpWs9">
              <property role="TrG5h" value="top" />
              <node concept="3Tqbb2" id="49WTic8jtdJ" role="1tU5fm">
                <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
              </node>
              <node concept="2OqwBi" id="49WTic8jtdT" role="33vP2m">
                <node concept="2OqwBi" id="49WTic8jtdU" role="2Oq$k0">
                  <node concept="1YBJjd" id="49WTic8jtdV" role="2Oq$k0">
                    <ref role="1YBMHb" node="1UULepNKj5B" resolve="vr" />
                  </node>
                  <node concept="z$bX8" id="49WTic8jtdW" role="2OqNvi">
                    <node concept="1xIGOp" id="49WTic8jtdX" role="1xVPHs" />
                  </node>
                </node>
                <node concept="1z4cxt" id="49WTic8jtdY" role="2OqNvi">
                  <node concept="1bVj0M" id="49WTic8jtdZ" role="23t8la">
                    <node concept="3clFbS" id="49WTic8jte0" role="1bW5cS">
                      <node concept="3clFbF" id="49WTic8jte1" role="3cqZAp">
                        <node concept="2OqwBi" id="49WTic8jte2" role="3clFbG">
                          <node concept="2OqwBi" id="49WTic8jte3" role="2Oq$k0">
                            <node concept="37vLTw" id="49WTic8jte4" role="2Oq$k0">
                              <ref role="3cqZAo" node="49WTic8jte8" resolve="it" />
                            </node>
                            <node concept="1mfA1w" id="49WTic8jte5" role="2OqNvi" />
                          </node>
                          <node concept="1mIQ4w" id="49WTic8jte6" role="2OqNvi">
                            <node concept="chp4Y" id="49WTic8jte7" role="cj9EA">
                              <ref role="cht4Q" to="zzzn:49WTic8ig5D" resolve="BlockExpression" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="49WTic8jte8" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="49WTic8jte9" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="49WTic8jgLi" role="3cqZAp">
            <node concept="3clFbS" id="49WTic8jgLj" role="3clFbx">
              <node concept="2MkqsV" id="49WTic8jhF9" role="3cqZAp">
                <node concept="Xl_RD" id="49WTic8jhFo" role="2MkJ7o">
                  <property role="Xl_RC" value="only previously defined variables can be referenced" />
                </node>
                <node concept="1YBJjd" id="49WTic8jhGK" role="2OEOjV">
                  <ref role="1YBMHb" node="1UULepNKj5B" resolve="vr" />
                </node>
              </node>
            </node>
            <node concept="2dkUwp" id="49WTic8jheJ" role="3clFbw">
              <node concept="2OqwBi" id="49WTic8jhxp" role="3uHU7w">
                <node concept="2OqwBi" id="49WTic8jhjO" role="2Oq$k0">
                  <node concept="1YBJjd" id="49WTic8jhfl" role="2Oq$k0">
                    <ref role="1YBMHb" node="1UULepNKj5B" resolve="vr" />
                  </node>
                  <node concept="3TrEf2" id="49WTic8jhnQ" role="2OqNvi">
                    <ref role="3Tt5mk" to="5frd:1UULepNKcNI" resolve="val" />
                  </node>
                </node>
                <node concept="2bSWHS" id="49WTic8jhD6" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="49WTic8jtqH" role="3uHU7B">
                <node concept="37vLTw" id="49WTic8jtnN" role="2Oq$k0">
                  <ref role="3cqZAo" node="49WTic8jtdS" resolve="top" />
                </node>
                <node concept="2bSWHS" id="49WTic8jtsL" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbC" id="5ipapt3sINN" role="3clFbw">
          <node concept="2OqwBi" id="5ipapt3sKBE" role="3uHU7w">
            <node concept="2OqwBi" id="5ipapt3sJp1" role="2Oq$k0">
              <node concept="1YBJjd" id="5ipapt3sJ9z" role="2Oq$k0">
                <ref role="1YBMHb" node="1UULepNKj5B" resolve="vr" />
              </node>
              <node concept="3TrEf2" id="5ipapt3sJVM" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:1UULepNKcNI" resolve="val" />
              </node>
            </node>
            <node concept="2Xjw5R" id="5ipapt3sLjd" role="2OqNvi">
              <node concept="1xMEDy" id="5ipapt3sLjf" role="1xVPHs">
                <node concept="chp4Y" id="5ipapt3sLCN" role="ri$Ld">
                  <ref role="cht4Q" to="zzzn:49WTic8ig5D" resolve="BlockExpression" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5ipapt3sI6D" role="3uHU7B">
            <node concept="1YBJjd" id="5ipapt3sHIo" role="2Oq$k0">
              <ref role="1YBMHb" node="1UULepNKj5B" resolve="vr" />
            </node>
            <node concept="2Xjw5R" id="5ipapt3sI$J" role="2OqNvi">
              <node concept="1xMEDy" id="5ipapt3sI$L" role="1xVPHs">
                <node concept="chp4Y" id="5ipapt3sIB8" role="ri$Ld">
                  <ref role="cht4Q" to="zzzn:49WTic8ig5D" resolve="BlockExpression" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1UULepNKj5B" role="1YuTPh">
      <property role="TrG5h" value="vr" />
      <ref role="1YaFvo" to="5frd:1EO_bV9G$FR" resolve="VariableReference" />
    </node>
  </node>
  <node concept="1YbPZF" id="1UULepNU6H2">
    <property role="TrG5h" value="typeof_VariableDeclaration" />
    <property role="3GE5qa" value="variables" />
    <node concept="3clFbS" id="1UULepNU6H3" role="18ibNy">
      <node concept="1Z5TYs" id="1UULepNU6P$" role="3cqZAp">
        <node concept="mw_s8" id="1UULepNU6PS" role="1ZfhKB">
          <node concept="1Z2H0r" id="1UULepNU6PO" role="mwGJk">
            <node concept="2OqwBi" id="1UULepNU723" role="1Z2MuG">
              <node concept="1YBJjd" id="1UULepNU6Q9" role="2Oq$k0">
                <ref role="1YBMHb" node="1UULepNU6H5" resolve="vd" />
              </node>
              <node concept="3TrEf2" id="1UULepNU7hM" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:1UULepNU6GA" resolve="type" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="1UULepNU6PB" role="1ZfhK$">
          <node concept="1Z2H0r" id="1UULepNU6H9" role="mwGJk">
            <node concept="1YBJjd" id="1UULepNU6IW" role="1Z2MuG">
              <ref role="1YBMHb" node="1UULepNU6H5" resolve="vd" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1UULepNU6H5" role="1YuTPh">
      <property role="TrG5h" value="vd" />
      <ref role="1YaFvo" to="5frd:1UULepNJ9io" resolve="VariableDeclaration" />
    </node>
  </node>
  <node concept="1YbPZF" id="4k$35jYdxva">
    <property role="TrG5h" value="typeof_ItemDependentExpression" />
    <property role="3GE5qa" value="util.items.expression" />
    <node concept="3clFbS" id="4k$35jYdxvb" role="18ibNy">
      <node concept="1Z5TYs" id="4k$35jYdxDt" role="3cqZAp">
        <node concept="mw_s8" id="4k$35jYdxDL" role="1ZfhKB">
          <node concept="1Z2H0r" id="4k$35jYdxDH" role="mwGJk">
            <node concept="2OqwBi" id="4k$35jYdxOT" role="1Z2MuG">
              <node concept="1YBJjd" id="4k$35jYdxE2" role="2Oq$k0">
                <ref role="1YBMHb" node="4k$35jYdxvd" resolve="ide" />
              </node>
              <node concept="3TrEf2" id="4k$35jYdy2n" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:fN3qU6G$xL" resolve="expression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="4k$35jYdxDw" role="1ZfhK$">
          <node concept="1Z2H0r" id="4k$35jYdxvh" role="mwGJk">
            <node concept="1YBJjd" id="4k$35jYdxx4" role="1Z2MuG">
              <ref role="1YBMHb" node="4k$35jYdxvd" resolve="ide" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="4k$35jYdxvd" role="1YuTPh">
      <property role="TrG5h" value="ide" />
      <ref role="1YaFvo" to="5frd:fN3qU6G$xK" resolve="ItemDependentExpression" />
    </node>
  </node>
  <node concept="1YbPZF" id="49oIsx4tTkw">
    <property role="TrG5h" value="typeof_ItemRef" />
    <property role="3GE5qa" value="util.items.selection" />
    <node concept="3clFbS" id="49oIsx4tTkx" role="18ibNy">
      <node concept="1Z5TYs" id="49oIsx4tTrp" role="3cqZAp">
        <node concept="mw_s8" id="49oIsx4tTrH" role="1ZfhKB">
          <node concept="1Z2H0r" id="49oIsx4tTrD" role="mwGJk">
            <node concept="2OqwBi" id="49oIsx4tT_7" role="1Z2MuG">
              <node concept="1YBJjd" id="49oIsx4tTrY" role="2Oq$k0">
                <ref role="1YBMHb" node="49oIsx4tTkz" resolve="ir" />
              </node>
              <node concept="3TrEf2" id="49oIsx4tUe0" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:4x_I0npP4pL" resolve="val" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="49oIsx4tTrs" role="1ZfhK$">
          <node concept="1Z2H0r" id="49oIsx4tTkE" role="mwGJk">
            <node concept="1YBJjd" id="49oIsx4tTkU" role="1Z2MuG">
              <ref role="1YBMHb" node="49oIsx4tTkz" resolve="ir" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="49oIsx4tTkz" role="1YuTPh">
      <property role="TrG5h" value="ir" />
      <ref role="1YaFvo" to="5frd:4x_I0npP4pK" resolve="ItemRef" />
    </node>
  </node>
  <node concept="1YbPZF" id="1o0JaC2__Y0">
    <property role="TrG5h" value="typeof_ItemDependentCondition" />
    <property role="3GE5qa" value="util.items.expression" />
    <node concept="3clFbS" id="1o0JaC2__Y1" role="18ibNy">
      <node concept="1Z5TYs" id="1pFVOLkCTGH" role="3cqZAp">
        <property role="3wDh2S" value="true" />
        <node concept="mw_s8" id="1pFVOLkCTGJ" role="1ZfhK$">
          <node concept="1YBJjd" id="1pFVOLkCTGK" role="mwGJk">
            <ref role="1YBMHb" node="1o0JaC2__Y3" resolve="idc" />
          </node>
        </node>
        <node concept="mw_s8" id="1pFVOLkCTGL" role="1ZfhKB">
          <node concept="1Z2H0r" id="1pFVOLkDmSP" role="mwGJk">
            <node concept="2ShNRf" id="1pFVOLkDmT5" role="1Z2MuG">
              <node concept="3zrR0B" id="1pFVOLkDmZn" role="2ShVmc">
                <node concept="3Tqbb2" id="1pFVOLkDmZp" role="3zrR0E">
                  <ref role="ehGHo" to="5qo5:6sdnDbSlaon" resolve="BooleanType" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1o0JaC2__Y3" role="1YuTPh">
      <property role="TrG5h" value="idc" />
      <ref role="1YaFvo" to="5frd:1o0JaC2_8i8" resolve="ItemDependentCondition" />
    </node>
  </node>
  <node concept="18kY7G" id="1pFVOLkEwEM">
    <property role="TrG5h" value="check_ICannotBeFurtherEdited" />
    <property role="3GE5qa" value="util.items.expression" />
    <node concept="3clFbS" id="1pFVOLkEwEN" role="18ibNy">
      <node concept="3clFbJ" id="1pFVOLkEwKx" role="3cqZAp">
        <node concept="3clFbS" id="1pFVOLkEwKz" role="3clFbx">
          <node concept="2MkqsV" id="1pFVOLkEyB3" role="3cqZAp">
            <node concept="3cpWs3" id="1pFVOLkEyT0" role="2MkJ7o">
              <node concept="2OqwBi" id="1pFVOLkEzE$" role="3uHU7w">
                <node concept="2OqwBi" id="1pFVOLkEz9f" role="2Oq$k0">
                  <node concept="1YBJjd" id="1pFVOLkEyTF" role="2Oq$k0">
                    <ref role="1YBMHb" node="1pFVOLkEwEP" resolve="icbfe" />
                  </node>
                  <node concept="2yIwOk" id="1pFVOLkEzjK" role="2OqNvi" />
                </node>
                <node concept="liA8E" id="1pFVOLkE$0R" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getName():java.lang.String" resolve="getName" />
                </node>
              </node>
              <node concept="Xl_RD" id="1pFVOLkEyBi" role="3uHU7B">
                <property role="Xl_RC" value="Expressions must not be further edited after " />
              </node>
            </node>
            <node concept="1YBJjd" id="1pFVOLkE$tk" role="2OEOjV">
              <ref role="1YBMHb" node="1pFVOLkEwEP" resolve="icbfe" />
            </node>
          </node>
        </node>
        <node concept="3fqX7Q" id="1pFVOLkEPKj" role="3clFbw">
          <node concept="2OqwBi" id="1pFVOLkEPKl" role="3fr31v">
            <node concept="2OqwBi" id="1pFVOLkEPKm" role="2Oq$k0">
              <node concept="2OqwBi" id="1pFVOLkEPKn" role="2Oq$k0">
                <node concept="1YBJjd" id="1pFVOLkEPKo" role="2Oq$k0">
                  <ref role="1YBMHb" node="1pFVOLkEwEP" resolve="icbfe" />
                </node>
                <node concept="1mfA1w" id="1pFVOLkEPKp" role="2OqNvi" />
              </node>
              <node concept="1mfA1w" id="1pFVOLkEPKq" role="2OqNvi" />
            </node>
            <node concept="1mIQ4w" id="1pFVOLkEPKr" role="2OqNvi">
              <node concept="chp4Y" id="1pFVOLkEPKs" role="cj9EA">
                <ref role="cht4Q" to="5frd:fN3qU6G$xK" resolve="ItemDependentExpression" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1pFVOLkEwEP" role="1YuTPh">
      <property role="TrG5h" value="icbfe" />
      <ref role="1YaFvo" to="5frd:1pFVOLkE9h9" resolve="ICannotBeFurtherEdited" />
    </node>
  </node>
  <node concept="18kY7G" id="4fA_w_sKz$C">
    <property role="TrG5h" value="check_ItemDependentExpression" />
    <property role="3GE5qa" value="util.items.expression" />
    <node concept="3clFbS" id="4fA_w_sKz$D" role="18ibNy">
      <node concept="3clFbJ" id="4fA_w_sKz$M" role="3cqZAp">
        <node concept="3clFbC" id="4fA_w_sKHQN" role="3clFbw">
          <node concept="3cmrfG" id="4fA_w_sKIdK" role="3uHU7w">
            <property role="3cmrfH" value="0" />
          </node>
          <node concept="2OqwBi" id="4fA_w_sKAWR" role="3uHU7B">
            <node concept="2OqwBi" id="4fA_w_sKzMd" role="2Oq$k0">
              <node concept="1YBJjd" id="4fA_w_sKz$Y" role="2Oq$k0">
                <ref role="1YBMHb" node="4fA_w_sKz$F" resolve="ide" />
              </node>
              <node concept="2qgKlT" id="4fA_w_sK$09" role="2OqNvi">
                <ref role="37wK5l" to="64zb:58ojJcwm06b" resolve="getFeatureRefsInside" />
                <node concept="2OqwBi" id="4fA_w_sKIME" role="37wK5m">
                  <node concept="1YBJjd" id="4fA_w_sKI_e" role="2Oq$k0">
                    <ref role="1YBMHb" node="4fA_w_sKz$F" resolve="ide" />
                  </node>
                  <node concept="3TrEf2" id="4fA_w_sKJng" role="2OqNvi">
                    <ref role="3Tt5mk" to="5frd:fN3qU6G$xL" resolve="expression" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="34oBXx" id="4fA_w_sKEZU" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbS" id="4fA_w_sKz$O" role="3clFbx">
          <node concept="a7r0C" id="2aoocMLanJ8" role="3cqZAp">
            <node concept="3cpWs3" id="2aoocMLanJa" role="a7wSD">
              <node concept="Xl_RD" id="2aoocMLanJb" role="3uHU7w">
                <property role="Xl_RC" value="'s items. The value will be constant for all instances." />
              </node>
              <node concept="3cpWs3" id="2aoocMLanJc" role="3uHU7B">
                <node concept="Xl_RD" id="2aoocMLanJd" role="3uHU7B">
                  <property role="Xl_RC" value="The expression does not depend on any of " />
                </node>
                <node concept="2OqwBi" id="2aoocMLanJe" role="3uHU7w">
                  <node concept="2OqwBi" id="2aoocMLanJf" role="2Oq$k0">
                    <node concept="2OqwBi" id="2aoocMLanJg" role="2Oq$k0">
                      <node concept="1YBJjd" id="2aoocMLanJh" role="2Oq$k0">
                        <ref role="1YBMHb" node="4fA_w_sKz$F" resolve="ide" />
                      </node>
                      <node concept="2Xjw5R" id="2aoocMLanJi" role="2OqNvi">
                        <node concept="1xMEDy" id="2aoocMLanJj" role="1xVPHs">
                          <node concept="chp4Y" id="2aoocMLanJk" role="ri$Ld">
                            <ref role="cht4Q" to="ja9q:2t3FM7fJm6J" resolve="TypeRelatedStatement" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2qgKlT" id="2aoocMLanJl" role="2OqNvi">
                      <ref role="37wK5l" to="w8ws:2t3FM7fWBTc" resolve="getRelatedNode" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="2aoocMLanJm" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1YBJjd" id="2aoocMLanJn" role="2OEOjV">
              <ref role="1YBMHb" node="4fA_w_sKz$F" resolve="ide" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="4fA_w_sKz$F" role="1YuTPh">
      <property role="TrG5h" value="ide" />
      <ref role="1YaFvo" to="5frd:fN3qU6G$xK" resolve="ItemDependentExpression" />
    </node>
  </node>
  <node concept="18kY7G" id="55_guBB3X0h">
    <property role="TrG5h" value="check_ItemDependentCondition" />
    <property role="3GE5qa" value="util.items.expression" />
    <property role="18ip37" value="true" />
    <node concept="3clFbS" id="55_guBB3X0i" role="18ibNy">
      <node concept="3clFbJ" id="2aoocMLaCny" role="3cqZAp">
        <node concept="3clFbC" id="2aoocMLaCnz" role="3clFbw">
          <node concept="3cmrfG" id="2aoocMLaCn$" role="3uHU7w">
            <property role="3cmrfH" value="0" />
          </node>
          <node concept="2OqwBi" id="2aoocMLaCn_" role="3uHU7B">
            <node concept="2OqwBi" id="2aoocMLaCnA" role="2Oq$k0">
              <node concept="1YBJjd" id="2aoocMLaCYh" role="2Oq$k0">
                <ref role="1YBMHb" node="55_guBB3X0k" resolve="idc" />
              </node>
              <node concept="2qgKlT" id="2aoocMLaCnC" role="2OqNvi">
                <ref role="37wK5l" to="64zb:58ojJcwm06b" resolve="getFeatureRefsInside" />
                <node concept="2OqwBi" id="2aoocMLaCnD" role="37wK5m">
                  <node concept="1YBJjd" id="2aoocMLaEax" role="2Oq$k0">
                    <ref role="1YBMHb" node="55_guBB3X0k" resolve="idc" />
                  </node>
                  <node concept="3TrEf2" id="2aoocMLaCnF" role="2OqNvi">
                    <ref role="3Tt5mk" to="5frd:fN3qU6G$xL" resolve="expression" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="34oBXx" id="2aoocMLaCnG" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbS" id="2aoocMLaCnH" role="3clFbx">
          <node concept="a7r0C" id="2aoocMLaCnI" role="3cqZAp">
            <node concept="3cpWs3" id="2aoocMLaCnJ" role="a7wSD">
              <node concept="Xl_RD" id="2aoocMLaCnK" role="3uHU7w">
                <property role="Xl_RC" value="'s items. The condition has the same outcome for all instances." />
              </node>
              <node concept="3cpWs3" id="2aoocMLaCnL" role="3uHU7B">
                <node concept="Xl_RD" id="2aoocMLaCnM" role="3uHU7B">
                  <property role="Xl_RC" value="The expression does not depend on any of " />
                </node>
                <node concept="2OqwBi" id="2aoocMLaCnN" role="3uHU7w">
                  <node concept="2OqwBi" id="2aoocMLaCnO" role="2Oq$k0">
                    <node concept="2OqwBi" id="2aoocMLaCnP" role="2Oq$k0">
                      <node concept="1YBJjd" id="2aoocMLaD$n" role="2Oq$k0">
                        <ref role="1YBMHb" node="55_guBB3X0k" resolve="idc" />
                      </node>
                      <node concept="2Xjw5R" id="2aoocMLaCnR" role="2OqNvi">
                        <node concept="1xMEDy" id="2aoocMLaCnS" role="1xVPHs">
                          <node concept="chp4Y" id="2aoocMLaCnT" role="ri$Ld">
                            <ref role="cht4Q" to="ja9q:2t3FM7fJm6J" resolve="TypeRelatedStatement" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2qgKlT" id="2aoocMLaCnU" role="2OqNvi">
                      <ref role="37wK5l" to="w8ws:2t3FM7fWBTc" resolve="getRelatedNode" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="2aoocMLaCnV" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1YBJjd" id="2aoocMLaEId" role="2OEOjV">
              <ref role="1YBMHb" node="55_guBB3X0k" resolve="idc" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="2aoocMLaCnf" role="3cqZAp" />
      <node concept="3clFbJ" id="55_guBB3X0o" role="3cqZAp">
        <node concept="17QLQc" id="55_guBB42w_" role="3clFbw">
          <node concept="Xl_RD" id="55_guBB42B8" role="3uHU7w">
            <property role="Xl_RC" value="boolean" />
          </node>
          <node concept="1eOMI4" id="55_guBB3Zcx" role="3uHU7B">
            <node concept="3cpWs3" id="55_guBB402B" role="1eOMHV">
              <node concept="2OqwBi" id="55_guBB3XU5" role="3uHU7B">
                <node concept="2OqwBi" id="55_guBB3XeP" role="2Oq$k0">
                  <node concept="1YBJjd" id="55_guBB3X0H" role="2Oq$k0">
                    <ref role="1YBMHb" node="55_guBB3X0k" resolve="idc" />
                  </node>
                  <node concept="3TrEf2" id="55_guBB3Xuh" role="2OqNvi">
                    <ref role="3Tt5mk" to="5frd:fN3qU6G$xL" resolve="expression" />
                  </node>
                </node>
                <node concept="3JvlWi" id="55_guBB3Y7h" role="2OqNvi" />
              </node>
              <node concept="Xl_RD" id="55_guBB3Ypg" role="3uHU7w">
                <property role="Xl_RC" value="" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="55_guBB3X0q" role="3clFbx">
          <node concept="2MkqsV" id="55_guBB42Ik" role="3cqZAp">
            <node concept="Xl_RD" id="55_guBB42Iw" role="2MkJ7o">
              <property role="Xl_RC" value="The expression does not resolve as boolean-value" />
            </node>
            <node concept="2OqwBi" id="55_guBB4dct" role="2OEOjV">
              <node concept="1YBJjd" id="55_guBB42KD" role="2Oq$k0">
                <ref role="1YBMHb" node="55_guBB3X0k" resolve="idc" />
              </node>
              <node concept="3TrEf2" id="55_guBB4dLa" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:fN3qU6G$xL" resolve="expression" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="55_guBB3X0k" role="1YuTPh">
      <property role="TrG5h" value="idc" />
      <ref role="1YaFvo" to="5frd:1o0JaC2_8i8" resolve="ItemDependentCondition" />
    </node>
  </node>
  <node concept="18kY7G" id="crj2MTMfPE">
    <property role="TrG5h" value="check_SublevelVariableDeclaration" />
    <property role="18ip37" value="true" />
    <property role="3GE5qa" value="variables" />
    <node concept="3clFbS" id="crj2MTMfPF" role="18ibNy">
      <node concept="3clFbJ" id="crj2MTQ3gf" role="3cqZAp">
        <node concept="3clFbS" id="crj2MTQ3gg" role="3clFbx">
          <node concept="3cpWs8" id="crj2MTQ3gh" role="3cqZAp">
            <node concept="3cpWsn" id="crj2MTQ3gi" role="3cpWs9">
              <property role="TrG5h" value="block" />
              <node concept="3Tqbb2" id="crj2MTQ3gj" role="1tU5fm">
                <ref role="ehGHo" to="zzzn:49WTic8ig5D" resolve="BlockExpression" />
              </node>
              <node concept="1PxgMI" id="crj2MTQ3gk" role="33vP2m">
                <node concept="2OqwBi" id="crj2MTMhjC" role="1m5AlR">
                  <node concept="2OqwBi" id="crj2MTQ3gl" role="2Oq$k0">
                    <node concept="1YBJjd" id="crj2MTMrEq" role="2Oq$k0">
                      <ref role="1YBMHb" node="crj2MTMfPH" resolve="svd" />
                    </node>
                    <node concept="1mfA1w" id="crj2MTQ3gm" role="2OqNvi" />
                  </node>
                  <node concept="1mfA1w" id="crj2MTMi17" role="2OqNvi" />
                </node>
                <node concept="chp4Y" id="crj2MTQ3gn" role="3oSUPX">
                  <ref role="cht4Q" to="zzzn:49WTic8ig5D" resolve="BlockExpression" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="crj2MTQ3go" role="3cqZAp">
            <node concept="3cpWsn" id="crj2MTQ3gp" role="3cpWs9">
              <property role="TrG5h" value="valueIsReferencedLocally" />
              <node concept="10P_77" id="crj2MTQ3gq" role="1tU5fm" />
              <node concept="2OqwBi" id="crj2MTQ3gr" role="33vP2m">
                <node concept="2OqwBi" id="crj2MTQ3gs" role="2Oq$k0">
                  <node concept="37vLTw" id="crj2MTQ3gt" role="2Oq$k0">
                    <ref role="3cqZAo" node="crj2MTQ3gi" resolve="block" />
                  </node>
                  <node concept="3Tsc0h" id="crj2MTQ3gu" role="2OqNvi">
                    <ref role="3TtcxE" to="zzzn:49WTic8ig5E" resolve="expressions" />
                  </node>
                </node>
                <node concept="2HwmR7" id="crj2MTQ3gv" role="2OqNvi">
                  <node concept="1bVj0M" id="crj2MTQ3gw" role="23t8la">
                    <node concept="3clFbS" id="crj2MTQ3gx" role="1bW5cS">
                      <node concept="3clFbF" id="crj2MTQ3gy" role="3cqZAp">
                        <node concept="2OqwBi" id="crj2MTQ3gz" role="3clFbG">
                          <node concept="2OqwBi" id="crj2MTQ3g$" role="2Oq$k0">
                            <node concept="37vLTw" id="crj2MTQ3g_" role="2Oq$k0">
                              <ref role="3cqZAo" node="crj2MTQ3gO" resolve="e" />
                            </node>
                            <node concept="2Rf3mk" id="crj2MTQ3gA" role="2OqNvi">
                              <node concept="1xMEDy" id="crj2MTQ3gB" role="1xVPHs">
                                <node concept="chp4Y" id="crj2MTQ3gC" role="ri$Ld">
                                  <ref role="cht4Q" to="5frd:1EO_bV9G$FR" resolve="VariableReference" />
                                </node>
                              </node>
                              <node concept="1xIGOp" id="crj2MTQ3gD" role="1xVPHs" />
                            </node>
                          </node>
                          <node concept="2HwmR7" id="crj2MTQ3gE" role="2OqNvi">
                            <node concept="1bVj0M" id="crj2MTQ3gF" role="23t8la">
                              <node concept="3clFbS" id="crj2MTQ3gG" role="1bW5cS">
                                <node concept="3clFbF" id="crj2MTQ3gH" role="3cqZAp">
                                  <node concept="3clFbC" id="crj2MTQ3gI" role="3clFbG">
                                    <node concept="1YBJjd" id="crj2MTMuRs" role="3uHU7w">
                                      <ref role="1YBMHb" node="crj2MTMfPH" resolve="svd" />
                                    </node>
                                    <node concept="2OqwBi" id="crj2MTQ3gJ" role="3uHU7B">
                                      <node concept="37vLTw" id="crj2MTQ3gK" role="2Oq$k0">
                                        <ref role="3cqZAo" node="crj2MTQ3gM" resolve="it" />
                                      </node>
                                      <node concept="3TrEf2" id="crj2MTQ3gL" role="2OqNvi">
                                        <ref role="3Tt5mk" to="5frd:1UULepNKcNI" resolve="val" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="crj2MTQ3gM" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="crj2MTQ3gN" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="crj2MTQ3gO" role="1bW2Oz">
                      <property role="TrG5h" value="e" />
                      <node concept="2jxLKc" id="crj2MTQ3gP" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="crj2MTQ3gQ" role="3cqZAp">
            <node concept="3clFbS" id="crj2MTQ3gR" role="3clFbx">
              <node concept="3cpWs6" id="crj2MTQ3gS" role="3cqZAp" />
            </node>
            <node concept="37vLTw" id="crj2MTQ3gT" role="3clFbw">
              <ref role="3cqZAo" node="crj2MTQ3gp" resolve="valueIsReferencedLocally" />
            </node>
          </node>
          <node concept="3clFbH" id="crj2MTQ3gU" role="3cqZAp" />
          <node concept="3cpWs8" id="crj2MTQ3gV" role="3cqZAp">
            <node concept="3cpWsn" id="crj2MTQ3gW" role="3cpWs9">
              <property role="TrG5h" value="joiner" />
              <node concept="3Tqbb2" id="crj2MTQ3gX" role="1tU5fm">
                <ref role="ehGHo" to="zzzn:5ipapt3mzbM" resolve="IJoinedBlockContext" />
              </node>
              <node concept="2OqwBi" id="crj2MTQ3gY" role="33vP2m">
                <node concept="1YBJjd" id="crj2MTMsjq" role="2Oq$k0">
                  <ref role="1YBMHb" node="crj2MTMfPH" resolve="svd" />
                </node>
                <node concept="2Xjw5R" id="crj2MTQ3gZ" role="2OqNvi">
                  <node concept="1xMEDy" id="crj2MTQ3h0" role="1xVPHs">
                    <node concept="chp4Y" id="crj2MTQ3h1" role="ri$Ld">
                      <ref role="cht4Q" to="zzzn:5ipapt3mzbM" resolve="IJoinedBlockContext" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="crj2MTQ3h2" role="3cqZAp">
            <node concept="3cpWsn" id="crj2MTQ3h3" role="3cpWs9">
              <property role="TrG5h" value="otherLocs" />
              <node concept="A3Dl8" id="crj2MTQ3h4" role="1tU5fm">
                <node concept="3Tqbb2" id="crj2MTQ3h5" role="A3Ik2">
                  <ref role="ehGHo" to="hm2y:6sdnDbSla17" resolve="Expression" />
                </node>
              </node>
              <node concept="2OqwBi" id="crj2MTQ3h6" role="33vP2m">
                <node concept="37vLTw" id="crj2MTQ3h7" role="2Oq$k0">
                  <ref role="3cqZAo" node="crj2MTQ3gW" resolve="joiner" />
                </node>
                <node concept="2qgKlT" id="crj2MTQ3h8" role="2OqNvi">
                  <ref role="37wK5l" to="5s8v:5ipapt3mzcn" resolve="otherLocationsForRefsToMe" />
                  <node concept="1YBJjd" id="crj2MTMueo" role="37wK5m">
                    <ref role="1YBMHb" node="crj2MTMfPH" resolve="svd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="crj2MTQ3h9" role="3cqZAp">
            <node concept="3cpWsn" id="crj2MTQ3ha" role="3cpWs9">
              <property role="TrG5h" value="otherRefs" />
              <node concept="A3Dl8" id="crj2MTQ3hb" role="1tU5fm">
                <node concept="3Tqbb2" id="crj2MTQ3hc" role="A3Ik2">
                  <ref role="ehGHo" to="5frd:1EO_bV9G$FR" resolve="VariableReference" />
                </node>
              </node>
              <node concept="2OqwBi" id="crj2MTQ3hd" role="33vP2m">
                <node concept="2OqwBi" id="crj2MTQ3he" role="2Oq$k0">
                  <node concept="37vLTw" id="crj2MTQ3hf" role="2Oq$k0">
                    <ref role="3cqZAo" node="crj2MTQ3h3" resolve="otherLocs" />
                  </node>
                  <node concept="3goQfb" id="crj2MTQ3hg" role="2OqNvi">
                    <node concept="1bVj0M" id="crj2MTQ3hh" role="23t8la">
                      <node concept="3clFbS" id="crj2MTQ3hi" role="1bW5cS">
                        <node concept="3clFbF" id="crj2MTQ3hj" role="3cqZAp">
                          <node concept="2OqwBi" id="crj2MTQ3hk" role="3clFbG">
                            <node concept="37vLTw" id="crj2MTQ3hl" role="2Oq$k0">
                              <ref role="3cqZAo" node="crj2MTQ3hq" resolve="it" />
                            </node>
                            <node concept="2Rf3mk" id="crj2MTQ3hm" role="2OqNvi">
                              <node concept="1xMEDy" id="crj2MTQ3hn" role="1xVPHs">
                                <node concept="chp4Y" id="crj2MTQ3ho" role="ri$Ld">
                                  <ref role="cht4Q" to="5frd:1EO_bV9G$FR" resolve="VariableReference" />
                                </node>
                              </node>
                              <node concept="1xIGOp" id="crj2MTQ3hp" role="1xVPHs" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="crj2MTQ3hq" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="crj2MTQ3hr" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3zZkjj" id="crj2MTQ3hs" role="2OqNvi">
                  <node concept="1bVj0M" id="crj2MTQ3ht" role="23t8la">
                    <node concept="3clFbS" id="crj2MTQ3hu" role="1bW5cS">
                      <node concept="3clFbF" id="crj2MTQ3hv" role="3cqZAp">
                        <node concept="3clFbC" id="crj2MTQ3hw" role="3clFbG">
                          <node concept="1YBJjd" id="crj2MTMv$$" role="3uHU7w">
                            <ref role="1YBMHb" node="crj2MTMfPH" resolve="svd" />
                          </node>
                          <node concept="2OqwBi" id="crj2MTQ3hx" role="3uHU7B">
                            <node concept="37vLTw" id="crj2MTQ3hy" role="2Oq$k0">
                              <ref role="3cqZAo" node="crj2MTQ3h$" resolve="it" />
                            </node>
                            <node concept="3TrEf2" id="crj2MTQ3hz" role="2OqNvi">
                              <ref role="3Tt5mk" to="5frd:1UULepNKcNI" resolve="val" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="crj2MTQ3h$" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="crj2MTQ3h_" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="crj2MTQ3hA" role="3cqZAp" />
          <node concept="3clFbJ" id="crj2MTQ3hB" role="3cqZAp">
            <node concept="3clFbS" id="crj2MTQ3hC" role="3clFbx">
              <node concept="3cpWs6" id="crj2MTQ3hD" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="crj2MTQ3hE" role="3clFbw">
              <node concept="37vLTw" id="crj2MTQ3hF" role="2Oq$k0">
                <ref role="3cqZAo" node="crj2MTQ3ha" resolve="otherRefs" />
              </node>
              <node concept="3GX2aA" id="crj2MTQ3hG" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbH" id="crj2MTQ3hH" role="3cqZAp" />
          <node concept="3clFbH" id="crj2MTQ3hI" role="3cqZAp" />
          <node concept="3clFbJ" id="crj2MTQ3hJ" role="3cqZAp">
            <node concept="3clFbS" id="crj2MTQ3hK" role="3clFbx">
              <node concept="a7r0C" id="crj2MTQ3hL" role="3cqZAp">
                <node concept="1YBJjd" id="crj2MTMt_e" role="2OEOjV">
                  <ref role="1YBMHb" node="crj2MTMfPH" resolve="svd" />
                </node>
                <node concept="Xl_RD" id="crj2MTQ3hM" role="a7wSD">
                  <property role="Xl_RC" value="value never used" />
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="crj2MTQ3hN" role="3clFbw">
              <node concept="3y3z36" id="crj2MTQ3hO" role="3uHU7w">
                <node concept="1YBJjd" id="crj2MTMsWh" role="3uHU7w">
                  <ref role="1YBMHb" node="crj2MTMfPH" resolve="svd" />
                </node>
                <node concept="2OqwBi" id="crj2MTQ3hP" role="3uHU7B">
                  <node concept="2OqwBi" id="crj2MTQ3hQ" role="2Oq$k0">
                    <node concept="37vLTw" id="crj2MTQ3hR" role="2Oq$k0">
                      <ref role="3cqZAo" node="crj2MTQ3gi" resolve="block" />
                    </node>
                    <node concept="3Tsc0h" id="crj2MTQ3hS" role="2OqNvi">
                      <ref role="3TtcxE" to="zzzn:49WTic8ig5E" resolve="expressions" />
                    </node>
                  </node>
                  <node concept="1yVyf7" id="crj2MTQ3hT" role="2OqNvi" />
                </node>
              </node>
              <node concept="3fqX7Q" id="crj2MTQ3hU" role="3uHU7B">
                <node concept="37vLTw" id="crj2MTQ3hV" role="3fr31v">
                  <ref role="3cqZAo" node="crj2MTQ3gp" resolve="valueIsReferencedLocally" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="crj2MTQ3hW" role="3clFbw">
          <node concept="2OqwBi" id="crj2MTQ3hX" role="2Oq$k0">
            <node concept="1YBJjd" id="crj2MTMr1D" role="2Oq$k0">
              <ref role="1YBMHb" node="crj2MTMfPH" resolve="svd" />
            </node>
            <node concept="2Xjw5R" id="crj2MTQ3hY" role="2OqNvi">
              <node concept="1xMEDy" id="crj2MTQ3hZ" role="1xVPHs">
                <node concept="chp4Y" id="crj2MTQ3i0" role="ri$Ld">
                  <ref role="cht4Q" to="hm2y:3pe7Y2RWByP" resolve="IIgnoreTrivialErrorsContext" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3w_OXm" id="crj2MTQ3i1" role="2OqNvi" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="crj2MTMfPH" role="1YuTPh">
      <property role="TrG5h" value="svd" />
      <ref role="1YaFvo" to="5frd:crj2MTMfPg" resolve="SublevelVariableDeclaration" />
    </node>
  </node>
  <node concept="18kY7G" id="4fxn4ASsEEo">
    <property role="TrG5h" value="check_AbstractItemGrabber" />
    <property role="3GE5qa" value="util.items.item" />
    <node concept="3clFbS" id="4fxn4ASsEEp" role="18ibNy">
      <node concept="3clFbJ" id="4fxn4ASsEEy" role="3cqZAp">
        <node concept="17QLQc" id="4fxn4ASsHfs" role="3clFbw">
          <node concept="2OqwBi" id="4fxn4ASsFuu" role="3uHU7B">
            <node concept="2OqwBi" id="4fxn4ASsGSr" role="2Oq$k0">
              <node concept="2OqwBi" id="4fxn4ASsERX" role="2Oq$k0">
                <node concept="1YBJjd" id="4fxn4ASsEEI" role="2Oq$k0">
                  <ref role="1YBMHb" node="4fxn4ASsEEr" resolve="aig" />
                </node>
                <node concept="3TrEf2" id="4fxn4ASsF5T" role="2OqNvi">
                  <ref role="3Tt5mk" to="5frd:4fxn4ASqs2n" resolve="container" />
                </node>
              </node>
              <node concept="2qgKlT" id="4fxn4ASsH5v" role="2OqNvi">
                <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
              </node>
            </node>
            <node concept="2yIwOk" id="4fxn4ASsFCJ" role="2OqNvi" />
          </node>
          <node concept="2OqwBi" id="4fxn4ASsGd6" role="3uHU7w">
            <node concept="1YBJjd" id="4fxn4ASsFXF" role="2Oq$k0">
              <ref role="1YBMHb" node="4fxn4ASsEEr" resolve="aig" />
            </node>
            <node concept="2qgKlT" id="4fxn4ASsGtT" role="2OqNvi">
              <ref role="37wK5l" to="64zb:4fxn4ASsB$V" resolve="getContainerConcept" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="4fxn4ASsEE$" role="3clFbx">
          <node concept="2MkqsV" id="4fxn4ASsHpK" role="3cqZAp">
            <node concept="Xl_RD" id="4fxn4ASsHpW" role="2MkJ7o">
              <property role="Xl_RC" value="THIS IS WRONG" />
            </node>
            <node concept="1YBJjd" id="4fxn4ASsHqs" role="2OEOjV">
              <ref role="1YBMHb" node="4fxn4ASsEEr" resolve="aig" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="4fxn4ASsEEr" role="1YuTPh">
      <property role="TrG5h" value="aig" />
      <ref role="1YaFvo" to="5frd:4fxn4ASqs2m" resolve="AbstractItemGrabber" />
    </node>
  </node>
</model>

