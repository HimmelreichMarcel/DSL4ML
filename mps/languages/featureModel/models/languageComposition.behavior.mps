<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3f1d2eb5-9dde-41ef-998b-a3f2e0560a41(languageComposition.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="1" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="uppb" ref="r:5d0a6785-dbcb-4f7f-8750-d549f6bd192c(languageComposition.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" implicit="true" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="6496299201655527393" name="jetbrains.mps.lang.behavior.structure.LocalBehaviorMethodCall" flags="nn" index="BsUDl" />
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="5864038008284099149" name="isStatic" index="2Ki8OM" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1239709250944" name="jetbrains.mps.baseLanguage.structure.PrefixIncrementExpression" flags="nn" index="2$rviw" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
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
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
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
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
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
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="6332851714983831325" name="jetbrains.mps.baseLanguage.logging.structure.MsgStatement" flags="ng" index="2xdQw9">
        <property id="6332851714983843871" name="severity" index="2xdLsb" />
        <child id="5721587534047265374" name="message" index="9lYJi" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="427659576753752243" name="jetbrains.mps.lang.smodel.structure.ModulePointer" flags="ng" index="20RdaH">
        <property id="427659576753753627" name="moduleId" index="20Rdg5" />
        <property id="427659576753753625" name="moduleName" index="20Rdg7" />
      </concept>
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="4497478346159780083" name="jetbrains.mps.lang.smodel.structure.LanguageRefExpression" flags="ng" index="pHN19">
        <child id="3542851458883491298" name="languageId" index="2V$M_3" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="2469893808086079682" name="jetbrains.mps.lang.smodel.structure.LanguageIdentityBySourceModule" flags="ng" index="PFCIn">
        <child id="2469893808086079721" name="moduleReference" index="PFCIW" />
      </concept>
      <concept id="1145573345940" name="jetbrains.mps.lang.smodel.structure.Node_GetAllSiblingsOperation" flags="nn" index="2TvwIu" />
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6973815483243445083" name="jetbrains.mps.lang.smodel.structure.EnumMemberValueRefExpression" flags="nn" index="3f7Wdw">
        <reference id="6973815483243565416" name="member" index="3f7u_j" />
        <reference id="6973815483243564601" name="enum" index="3f7vo2" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="4040588429969021681" name="jetbrains.mps.lang.smodel.structure.ModuleReferenceExpression" flags="nn" index="3rM5sP">
        <property id="4040588429969021683" name="moduleId" index="3rM5sR" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
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
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1227008614712" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListCreator" flags="nn" index="2Jqq0_" />
      <concept id="1227022179634" name="jetbrains.mps.baseLanguage.collections.structure.AddLastElementOperation" flags="nn" index="2Ke9KJ" />
      <concept id="1227026082377" name="jetbrains.mps.baseLanguage.collections.structure.RemoveFirstElementOperation" flags="nn" index="2Kt2Hk" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1165595910856" name="jetbrains.mps.baseLanguage.collections.structure.GetLastOperation" flags="nn" index="1yVyf7" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
      <concept id="5686963296372475025" name="jetbrains.mps.baseLanguage.collections.structure.QueueType" flags="in" index="3O6Q9H" />
    </language>
  </registry>
  <node concept="13h7C7" id="4mwbOhsYo8x">
    <property role="3GE5qa" value="artifactsTree" />
    <ref role="13h7C2" to="uppb:4mwbOhsXrAp" resolve="ArtifactsTree" />
    <node concept="13i0hz" id="7r$Cpd5VaNt" role="13h7CS">
      <property role="TrG5h" value="checkComposition" />
      <node concept="3Tm1VV" id="7r$Cpd5VaNu" role="1B3o_S" />
      <node concept="10P_77" id="7r$Cpd5VbaC" role="3clF45" />
      <node concept="3clFbS" id="7r$Cpd5VaNw" role="3clF47">
        <node concept="3cpWs8" id="7r$Cpd5VHBM" role="3cqZAp">
          <node concept="3cpWsn" id="7r$Cpd5VHBP" role="3cpWs9">
            <property role="TrG5h" value="erronenousNodes" />
            <node concept="_YKpA" id="7r$Cpd5VHBI" role="1tU5fm">
              <node concept="17QB3L" id="5Xcftn9ONBB" role="_ZDj9" />
            </node>
            <node concept="2ShNRf" id="7r$Cpd5VHQq" role="33vP2m">
              <node concept="Tc6Ow" id="7r$Cpd5VHQm" role="2ShVmc">
                <node concept="17QB3L" id="5Xcftn9OQEa" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7r$Cpd5VbbW" role="3cqZAp">
          <node concept="2GrKxI" id="7r$Cpd5VbbX" role="2Gsz3X">
            <property role="TrG5h" value="node" />
          </node>
          <node concept="2OqwBi" id="7r$Cpd5Vbu7" role="2GsD0m">
            <node concept="35c_gC" id="7r$Cpd5Vbcw" role="2Oq$k0">
              <ref role="35c_gD" to="uppb:4mwbOhsXrAp" resolve="ArtifactsTree" />
            </node>
            <node concept="2qgKlT" id="7r$Cpd5VbK9" role="2OqNvi">
              <ref role="37wK5l" node="ww5GvfMd9I" resolve="getAllNodesOfTree" />
              <node concept="2OqwBi" id="7r$Cpd5Vc62" role="37wK5m">
                <node concept="13iPFW" id="7r$Cpd5VbQW" role="2Oq$k0" />
                <node concept="3TrEf2" id="7r$Cpd5Vcm7" role="2OqNvi">
                  <ref role="3Tt5mk" to="uppb:wb0I6Vg0al" resolve="root" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7r$Cpd5VbbZ" role="2LFqv$">
            <node concept="3clFbJ" id="7r$Cpd5VI37" role="3cqZAp">
              <node concept="3clFbS" id="7r$Cpd5VI39" role="3clFbx">
                <node concept="3clFbF" id="7r$Cpd5VIoz" role="3cqZAp">
                  <node concept="2OqwBi" id="7r$Cpd5VJT2" role="3clFbG">
                    <node concept="37vLTw" id="7r$Cpd5VIoy" role="2Oq$k0">
                      <ref role="3cqZAo" node="7r$Cpd5VHBP" resolve="erronenousNodes" />
                    </node>
                    <node concept="TSZUe" id="7r$Cpd5VNGt" role="2OqNvi">
                      <node concept="2OqwBi" id="7r$Cpd5WgMw" role="25WWJ7">
                        <node concept="2GrUjf" id="7r$Cpd5VNJ_" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="7r$Cpd5VbbX" resolve="node" />
                        </node>
                        <node concept="3TrcHB" id="7r$Cpd5WhyG" role="2OqNvi">
                          <ref role="3TsBF5" to="uppb:2qK8RKECpC$" resolve="path" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="7r$Cpd5VIce" role="3clFbw">
                <node concept="2OqwBi" id="7r$Cpd5VIcg" role="3fr31v">
                  <node concept="2GrUjf" id="7r$Cpd5VIch" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="7r$Cpd5VbbX" resolve="node" />
                  </node>
                  <node concept="2qgKlT" id="7r$Cpd5VIci" role="2OqNvi">
                    <ref role="37wK5l" node="7r$Cpd5Vd$l" resolve="isValid" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7r$Cpd5VQga" role="3cqZAp">
          <node concept="3SKdUq" id="7r$Cpd5VQgc" role="3SKWNk">
            <property role="3SKdUp" value="set message" />
          </node>
        </node>
        <node concept="3clFbJ" id="7r$Cpd5W4Ja" role="3cqZAp">
          <node concept="3clFbS" id="7r$Cpd5W4Jc" role="3clFbx">
            <node concept="3clFbF" id="7r$Cpd5Wi$W" role="3cqZAp">
              <node concept="37vLTI" id="7r$Cpd5Wjvg" role="3clFbG">
                <node concept="2OqwBi" id="7r$Cpd5WiFW" role="37vLTJ">
                  <node concept="13iPFW" id="7r$Cpd5Wi$V" role="2Oq$k0" />
                  <node concept="3TrcHB" id="7r$Cpd5WiZ1" role="2OqNvi">
                    <ref role="3TsBF5" to="uppb:7r$Cpd5VOh_" resolve="error" />
                  </node>
                </node>
                <node concept="3cpWs3" id="7r$Cpd5WdMY" role="37vLTx">
                  <node concept="2YIFZM" id="7r$Cpd5WdRW" role="3uHU7w">
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <ref role="37wK5l" to="wyt6:~String.join(java.lang.CharSequence,java.lang.Iterable):java.lang.String" resolve="join" />
                    <node concept="Xl_RD" id="7r$Cpd5WhSv" role="37wK5m">
                      <property role="Xl_RC" value="\n - " />
                    </node>
                    <node concept="37vLTw" id="7r$Cpd5XczT" role="37wK5m">
                      <ref role="3cqZAo" node="7r$Cpd5VHBP" resolve="erronenousNodes" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="7r$Cpd5WdqY" role="3uHU7B">
                    <property role="Xl_RC" value="The requirements for the following selected language artifacts are not fulfilled: \n - " />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7r$Cpd5WjOl" role="3cqZAp">
              <node concept="3clFbT" id="7r$Cpd5WjO$" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3eOSWO" id="7r$Cpd5WcRx" role="3clFbw">
            <node concept="2OqwBi" id="7r$Cpd5W6WR" role="3uHU7B">
              <node concept="37vLTw" id="7r$Cpd5W5eB" role="2Oq$k0">
                <ref role="3cqZAo" node="7r$Cpd5VHBP" resolve="erronenousNodes" />
              </node>
              <node concept="34oBXx" id="7r$Cpd5WaqD" role="2OqNvi" />
            </node>
            <node concept="3cmrfG" id="7r$Cpd5WdjO" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7r$Cpd5VQsP" role="3cqZAp" />
        <node concept="3cpWs6" id="7r$Cpd5VcB6" role="3cqZAp">
          <node concept="3clFbT" id="7r$Cpd5WmmH" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="ww5GvfMd9I" role="13h7CS">
      <property role="TrG5h" value="getAllNodesOfTree" />
      <property role="2Ki8OM" value="true" />
      <node concept="3Tm1VV" id="ww5GvfMd9J" role="1B3o_S" />
      <node concept="_YKpA" id="ww5GvfMd9K" role="3clF45">
        <node concept="3Tqbb2" id="ww5GvfMd9L" role="_ZDj9">
          <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
        </node>
      </node>
      <node concept="3clFbS" id="ww5GvfMd9M" role="3clF47">
        <node concept="3cpWs8" id="ww5GvfMd9N" role="3cqZAp">
          <node concept="3cpWsn" id="ww5GvfMd9O" role="3cpWs9">
            <property role="TrG5h" value="allVertices" />
            <node concept="_YKpA" id="ww5GvfMd9P" role="1tU5fm">
              <node concept="3Tqbb2" id="ww5GvfMd9Q" role="_ZDj9">
                <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
              </node>
            </node>
            <node concept="2ShNRf" id="ww5GvfMd9R" role="33vP2m">
              <node concept="Tc6Ow" id="ww5GvfMd9S" role="2ShVmc">
                <node concept="3Tqbb2" id="ww5GvfMd9T" role="HW$YZ">
                  <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="ww5GvfMd9U" role="3cqZAp">
          <node concept="3cpWsn" id="ww5GvfMd9V" role="3cpWs9">
            <property role="TrG5h" value="children" />
            <node concept="_YKpA" id="ww5GvfMd9W" role="1tU5fm">
              <node concept="3Tqbb2" id="ww5GvfMd9X" role="_ZDj9">
                <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
              </node>
            </node>
            <node concept="2ShNRf" id="ww5GvfMd9Y" role="33vP2m">
              <node concept="Tc6Ow" id="ww5GvfMd9Z" role="2ShVmc">
                <node concept="3Tqbb2" id="ww5GvfMda0" role="HW$YZ">
                  <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ww5GvfMda1" role="3cqZAp">
          <node concept="2OqwBi" id="ww5GvfMda2" role="3clFbG">
            <node concept="37vLTw" id="ww5GvfMda3" role="2Oq$k0">
              <ref role="3cqZAo" node="ww5GvfMd9V" resolve="children" />
            </node>
            <node concept="2Ke9KJ" id="ww5GvfMda4" role="2OqNvi">
              <node concept="37vLTw" id="ww5GvfMda5" role="25WWJ7">
                <ref role="3cqZAo" node="ww5GvfMdaB" resolve="root" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="ww5GvfMda6" role="3cqZAp" />
        <node concept="2$JKZl" id="ww5GvfMda7" role="3cqZAp">
          <node concept="3clFbS" id="ww5GvfMda8" role="2LFqv$">
            <node concept="3cpWs8" id="ww5GvfMda9" role="3cqZAp">
              <node concept="3cpWsn" id="ww5GvfMdaa" role="3cpWs9">
                <property role="TrG5h" value="child" />
                <node concept="3Tqbb2" id="ww5GvfMdab" role="1tU5fm">
                  <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
                </node>
                <node concept="2OqwBi" id="ww5GvfMdac" role="33vP2m">
                  <node concept="37vLTw" id="ww5GvfMdad" role="2Oq$k0">
                    <ref role="3cqZAo" node="ww5GvfMd9V" resolve="children" />
                  </node>
                  <node concept="liA8E" id="ww5GvfMdae" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                    <node concept="3cmrfG" id="ww5GvfMdaf" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="ww5GvfMdag" role="3cqZAp">
              <node concept="2OqwBi" id="ww5GvfMdah" role="3clFbG">
                <node concept="37vLTw" id="ww5GvfMdai" role="2Oq$k0">
                  <ref role="3cqZAo" node="ww5GvfMd9V" resolve="children" />
                </node>
                <node concept="3dhRuq" id="ww5GvfMdaj" role="2OqNvi">
                  <node concept="37vLTw" id="ww5GvfMdak" role="25WWJ7">
                    <ref role="3cqZAo" node="ww5GvfMdaa" resolve="child" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="ww5GvfMdal" role="3cqZAp">
              <node concept="2OqwBi" id="ww5GvfMdam" role="3clFbG">
                <node concept="37vLTw" id="ww5GvfMdan" role="2Oq$k0">
                  <ref role="3cqZAo" node="ww5GvfMd9O" resolve="allVertices" />
                </node>
                <node concept="TSZUe" id="ww5GvfMdao" role="2OqNvi">
                  <node concept="37vLTw" id="ww5GvfMdap" role="25WWJ7">
                    <ref role="3cqZAo" node="ww5GvfMdaa" resolve="child" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="ww5GvfMdaq" role="3cqZAp">
              <node concept="2OqwBi" id="ww5GvfMdar" role="3clFbG">
                <node concept="37vLTw" id="ww5GvfMdas" role="2Oq$k0">
                  <ref role="3cqZAo" node="ww5GvfMd9V" resolve="children" />
                </node>
                <node concept="X8dFx" id="ww5GvfMdat" role="2OqNvi">
                  <node concept="2OqwBi" id="ww5GvfMdau" role="25WWJ7">
                    <node concept="37vLTw" id="ww5GvfMdav" role="2Oq$k0">
                      <ref role="3cqZAo" node="ww5GvfMdaa" resolve="child" />
                    </node>
                    <node concept="3Tsc0h" id="ww5GvfMdaw" role="2OqNvi">
                      <ref role="3TtcxE" to="uppb:4x6uVBKzUAz" resolve="childNodes" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="ww5GvfMdax" role="2$JKZa">
            <node concept="37vLTw" id="ww5GvfMday" role="2Oq$k0">
              <ref role="3cqZAo" node="ww5GvfMd9V" resolve="children" />
            </node>
            <node concept="3GX2aA" id="ww5GvfMdaz" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="ww5GvfMda$" role="3cqZAp" />
        <node concept="3cpWs6" id="ww5GvfMda_" role="3cqZAp">
          <node concept="37vLTw" id="ww5GvfMdaA" role="3cqZAk">
            <ref role="3cqZAo" node="ww5GvfMd9O" resolve="allVertices" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="ww5GvfMdaB" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="ww5GvfMdaC" role="1tU5fm">
          <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5dzaEnaXTkQ" role="13h7CS">
      <property role="TrG5h" value="getLanguageId" />
      <node concept="3Tm1VV" id="5dzaEnaXTkR" role="1B3o_S" />
      <node concept="3uibUv" id="5dzaEnaXTHF" role="3clF45">
        <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
      </node>
      <node concept="3clFbS" id="5dzaEnaXTkT" role="3clF47">
        <node concept="2Gpval" id="5dzaEnaWa0g" role="3cqZAp">
          <node concept="2GrKxI" id="5dzaEnaWa0h" role="2Gsz3X">
            <property role="TrG5h" value="lang" />
          </node>
          <node concept="3clFbS" id="5dzaEnaWa0j" role="2LFqv$">
            <node concept="3clFbJ" id="5dzaEnaXUur" role="3cqZAp">
              <node concept="3clFbS" id="5dzaEnaXUut" role="3clFbx">
                <node concept="3cpWs6" id="5dzaEnaXYZf" role="3cqZAp">
                  <node concept="2GrUjf" id="5dzaEnaXZ5D" role="3cqZAk">
                    <ref role="2Gs0qQ" node="5dzaEnaWa0h" resolve="lang" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5dzaEnaXVZ3" role="3clFbw">
                <node concept="2OqwBi" id="5dzaEnaXU_E" role="2Oq$k0">
                  <node concept="2GrUjf" id="5dzaEnaXUuS" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="5dzaEnaWa0h" resolve="lang" />
                  </node>
                  <node concept="liA8E" id="5dzaEnaXV7Z" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SLanguage.getQualifiedName():java.lang.String" resolve="getQualifiedName" />
                  </node>
                </node>
                <node concept="liA8E" id="5dzaEnaXYd_" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="37vLTw" id="5dzaEnaXYzX" role="37wK5m">
                    <ref role="3cqZAo" node="5dzaEnaXUlm" resolve="target" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5dzaEnaW6wD" role="2GsD0m">
            <node concept="37vLTw" id="5dzaEnaXUhb" role="2Oq$k0">
              <ref role="3cqZAo" node="5dzaEnaXUcN" resolve="model" />
            </node>
            <node concept="liA8E" id="5dzaEnaW7ei" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~SModelInternal.importedLanguageIds():java.util.Collection" resolve="importedLanguageIds" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5dzaEnaXZUs" role="3cqZAp" />
        <node concept="3SKdUt" id="5dzaEnaXZNt" role="3cqZAp">
          <node concept="3SKdUq" id="5dzaEnaXZNv" role="3SKWNk">
            <property role="3SKdUp" value="TODO: EXCEPTION" />
          </node>
        </node>
        <node concept="3cpWs6" id="5dzaEnaXZp4" role="3cqZAp">
          <node concept="10Nm6u" id="5dzaEnaXZAa" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="5dzaEnaXUcN" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="5dzaEnaXUcM" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~SModelInternal" resolve="SModelInternal" />
        </node>
      </node>
      <node concept="37vLTG" id="5dzaEnaXUlm" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="17QB3L" id="5dzaEnaXUpv" role="1tU5fm" />
      </node>
    </node>
    <node concept="13i0hz" id="ww5GvfM6Oq" role="13h7CS">
      <property role="TrG5h" value="loadFeatures" />
      <node concept="3Tm1VV" id="ww5GvfM6Or" role="1B3o_S" />
      <node concept="3cqZAl" id="ww5GvfM78f" role="3clF45" />
      <node concept="3clFbS" id="ww5GvfM6Ot" role="3clF47">
        <node concept="3SKdUt" id="ww5GvfOUu_" role="3cqZAp">
          <node concept="3SKdUq" id="ww5GvfOUuB" role="3SKWNk">
            <property role="3SKdUp" value="get model to which features are added" />
          </node>
        </node>
        <node concept="3cpWs8" id="ww5GvfOTNf" role="3cqZAp">
          <node concept="3cpWsn" id="ww5GvfOTNg" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <node concept="3uibUv" id="ww5GvfOTRD" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
            <node concept="2OqwBi" id="ww5GvfOU0U" role="33vP2m">
              <node concept="13iPFW" id="ww5GvfOTSi" role="2Oq$k0" />
              <node concept="I4A8Y" id="ww5GvfOVgT" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="ww5GvfOXvz" role="3cqZAp">
          <node concept="3cpWsn" id="ww5GvfOXv$" role="3cpWs9">
            <property role="TrG5h" value="internalModel" />
            <node concept="3uibUv" id="ww5GvfOXv_" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~SModelInternal" resolve="SModelInternal" />
            </node>
            <node concept="10QFUN" id="ww5GvfOXK_" role="33vP2m">
              <node concept="3uibUv" id="ww5GvfOXMk" role="10QFUM">
                <ref role="3uigEE" to="w1kc:~SModelInternal" resolve="SModelInternal" />
              </node>
              <node concept="37vLTw" id="ww5GvfOXKg" role="10QFUP">
                <ref role="3cqZAo" node="ww5GvfOTNg" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="ww5GvfOUeS" role="3cqZAp" />
        <node concept="2Gpval" id="ww5GvfNUhg" role="3cqZAp">
          <node concept="2GrKxI" id="ww5GvfNUhh" role="2Gsz3X">
            <property role="TrG5h" value="feature" />
          </node>
          <node concept="3clFbS" id="ww5GvfNUhj" role="2LFqv$">
            <node concept="3cpWs8" id="5dzaEnaXQ$L" role="3cqZAp">
              <node concept="3cpWsn" id="5dzaEnaXQ$M" role="3cpWs9">
                <property role="TrG5h" value="lang" />
                <node concept="3uibUv" id="5dzaEnaXQ$N" role="1tU5fm">
                  <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                </node>
                <node concept="2OqwBi" id="5dzaEnaXRNK" role="33vP2m">
                  <node concept="2OqwBi" id="5dzaEnaXQWH" role="2Oq$k0">
                    <node concept="2GrUjf" id="5dzaEnaXQMu" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="ww5GvfNUhh" resolve="feature" />
                    </node>
                    <node concept="2qgKlT" id="5dzaEnaXRAM" role="2OqNvi">
                      <ref role="37wK5l" node="ww5GvfNVL0" resolve="getArtifactDescription" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="5dzaEnaXStV" role="2OqNvi">
                    <ref role="37wK5l" node="ww5GvfP0Os" resolve="getLanguage" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5dzaEnaW4IV" role="3cqZAp">
              <node concept="3clFbS" id="5dzaEnaW4IX" role="3clFbx">
                <node concept="3clFbF" id="ww5GvfOZCr" role="3cqZAp">
                  <node concept="2OqwBi" id="ww5GvfOZQb" role="3clFbG">
                    <node concept="37vLTw" id="ww5GvfOZCp" role="2Oq$k0">
                      <ref role="3cqZAo" node="ww5GvfOXv$" resolve="internalModel" />
                    </node>
                    <node concept="liA8E" id="ww5GvfP0db" role="2OqNvi">
                      <ref role="37wK5l" to="w1kc:~SModelInternal.addLanguage(jetbrains.mps.smodel.Language):void" resolve="addLanguage" />
                      <node concept="37vLTw" id="5dzaEnaXTcw" role="37wK5m">
                        <ref role="3cqZAo" node="5dzaEnaXQ$M" resolve="lang" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2xdQw9" id="5Xcftn9QSiF" role="3cqZAp">
                  <property role="2xdLsb" value="info" />
                  <node concept="3cpWs3" id="5dzaEnaYAN4" role="9lYJi">
                    <node concept="Xl_RD" id="5dzaEnaYFav" role="3uHU7w">
                      <property role="Xl_RC" value=" added" />
                    </node>
                    <node concept="3cpWs3" id="5dzaEnaY$LW" role="3uHU7B">
                      <node concept="Xl_RD" id="5dzaEnaY$vi" role="3uHU7B">
                        <property role="Xl_RC" value="feature " />
                      </node>
                      <node concept="2OqwBi" id="5dzaEnaY_kD" role="3uHU7w">
                        <node concept="37vLTw" id="5dzaEnaY$Mu" role="2Oq$k0">
                          <ref role="3cqZAo" node="5dzaEnaXQ$M" resolve="lang" />
                        </node>
                        <node concept="liA8E" id="5dzaEnaY_Td" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleName():java.lang.String" resolve="getModuleName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5dzaEnaW506" role="3clFbw">
                <node concept="2GrUjf" id="5dzaEnaW4Ro" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="ww5GvfNUhh" resolve="feature" />
                </node>
                <node concept="3TrcHB" id="5dzaEnaW5_L" role="2OqNvi">
                  <ref role="3TsBF5" to="uppb:6I9RXT7Mc2" resolve="isSelected" />
                </node>
              </node>
              <node concept="9aQIb" id="5dzaEnaW65e" role="9aQIa">
                <node concept="3clFbS" id="5dzaEnaW65f" role="9aQI4">
                  <node concept="3cpWs8" id="5dzaEnaY036" role="3cqZAp">
                    <node concept="3cpWsn" id="5dzaEnaY037" role="3cpWs9">
                      <property role="TrG5h" value="rmv" />
                      <node concept="3uibUv" id="5dzaEnaY038" role="1tU5fm">
                        <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                      </node>
                      <node concept="BsUDl" id="5dzaEnaY047" role="33vP2m">
                        <ref role="37wK5l" node="5dzaEnaXTkQ" resolve="getLanguageId" />
                        <node concept="37vLTw" id="5dzaEnaY04$" role="37wK5m">
                          <ref role="3cqZAo" node="ww5GvfOXv$" resolve="internalModel" />
                        </node>
                        <node concept="2OqwBi" id="5dzaEnaY0zz" role="37wK5m">
                          <node concept="37vLTw" id="5dzaEnaY05z" role="2Oq$k0">
                            <ref role="3cqZAo" node="5dzaEnaXQ$M" resolve="lang" />
                          </node>
                          <node concept="liA8E" id="5dzaEnaY18a" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleName():java.lang.String" resolve="getModuleName" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="5dzaEnaY1ur" role="3cqZAp">
                    <node concept="3clFbS" id="5dzaEnaY1ut" role="3clFbx">
                      <node concept="3clFbF" id="5dzaEnaY3TJ" role="3cqZAp">
                        <node concept="2OqwBi" id="5dzaEnaY440" role="3clFbG">
                          <node concept="37vLTw" id="5dzaEnaY3TH" role="2Oq$k0">
                            <ref role="3cqZAo" node="ww5GvfOXv$" resolve="internalModel" />
                          </node>
                          <node concept="liA8E" id="5dzaEnaY4rd" role="2OqNvi">
                            <ref role="37wK5l" to="w1kc:~SModelInternal.deleteLanguageId(org.jetbrains.mps.openapi.language.SLanguage):void" resolve="deleteLanguageId" />
                            <node concept="37vLTw" id="5dzaEnaY4tw" role="37wK5m">
                              <ref role="3cqZAo" node="5dzaEnaY037" resolve="rmv" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2xdQw9" id="5Xcftn9QT0_" role="3cqZAp">
                        <property role="2xdLsb" value="info" />
                        <node concept="3cpWs3" id="5dzaEnaYz7O" role="9lYJi">
                          <node concept="3cpWs3" id="5dzaEnaYz8m" role="3uHU7B">
                            <node concept="2OqwBi" id="5dzaEnaYzk8" role="3uHU7w">
                              <node concept="37vLTw" id="5dzaEnaYza5" role="2Oq$k0">
                                <ref role="3cqZAo" node="5dzaEnaY037" resolve="rmv" />
                              </node>
                              <node concept="liA8E" id="5dzaEnaYz$l" role="2OqNvi">
                                <ref role="37wK5l" to="c17a:~SLanguage.getQualifiedName():java.lang.String" resolve="getQualifiedName" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="5dzaEnaYz8S" role="3uHU7B">
                              <property role="Xl_RC" value="feature " />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="5dzaEnaY4_4" role="3uHU7w">
                            <property role="Xl_RC" value=" removed" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="5dzaEnaY3SR" role="3clFbw">
                      <node concept="10Nm6u" id="5dzaEnaY3Tk" role="3uHU7w" />
                      <node concept="37vLTw" id="5dzaEnaY1wv" role="3uHU7B">
                        <ref role="3cqZAo" node="5dzaEnaY037" resolve="rmv" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="ww5GvfN7QZ" role="2GsD0m">
            <node concept="35c_gC" id="ww5GvfN7Ct" role="2Oq$k0">
              <ref role="35c_gD" to="uppb:4mwbOhsXrAp" resolve="ArtifactsTree" />
            </node>
            <node concept="2qgKlT" id="ww5GvfN88Z" role="2OqNvi">
              <ref role="37wK5l" node="ww5GvfMd9I" resolve="getAllNodesOfTree" />
              <node concept="2OqwBi" id="ww5GvfN8mZ" role="37wK5m">
                <node concept="13iPFW" id="ww5GvfN8e0" role="2Oq$k0" />
                <node concept="3TrEf2" id="ww5GvfN8_r" role="2OqNvi">
                  <ref role="3Tt5mk" to="uppb:wb0I6Vg0al" resolve="root" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4x6uVBKBQtN" role="13h7CS">
      <property role="TrG5h" value="preselectNode" />
      <node concept="3Tm1VV" id="4x6uVBKBQtO" role="1B3o_S" />
      <node concept="3cqZAl" id="4x6uVBKBQCM" role="3clF45" />
      <node concept="3clFbS" id="4x6uVBKBQtQ" role="3clF47">
        <node concept="3clFbJ" id="4x6uVBKBQD_" role="3cqZAp">
          <node concept="2OqwBi" id="4x6uVBKBRjW" role="3clFbw">
            <node concept="37vLTw" id="5dzaEnaV_Ve" role="2Oq$k0">
              <ref role="3cqZAo" node="5dzaEnaV$sT" resolve="node" />
            </node>
            <node concept="3x8VRR" id="4x6uVBKBRMt" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="4x6uVBKBQDB" role="3clFbx">
            <node concept="3clFbF" id="4x6uVBKBRUB" role="3cqZAp">
              <node concept="37vLTI" id="4x6uVBKBTlB" role="3clFbG">
                <node concept="3clFbT" id="4x6uVBKBTpW" role="37vLTx">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="2OqwBi" id="4x6uVBKBSuN" role="37vLTJ">
                  <node concept="37vLTw" id="5dzaEnaVA83" role="2Oq$k0">
                    <ref role="3cqZAo" node="5dzaEnaV$sT" resolve="node" />
                  </node>
                  <node concept="3TrcHB" id="4x6uVBKBSJb" role="2OqNvi">
                    <ref role="3TsBF5" to="uppb:6I9RXT7Mc2" resolve="isSelected" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2SikScA77WY" role="3cqZAp">
              <node concept="37vLTI" id="2SikScA79zp" role="3clFbG">
                <node concept="3clFbT" id="2SikScA79Bu" role="37vLTx">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="2OqwBi" id="2SikScA78CE" role="37vLTJ">
                  <node concept="37vLTw" id="5dzaEnaVAot" role="2Oq$k0">
                    <ref role="3cqZAo" node="5dzaEnaV$sT" resolve="node" />
                  </node>
                  <node concept="3TrcHB" id="2SikScA790v" role="2OqNvi">
                    <ref role="3TsBF5" to="uppb:2SikScA6xUZ" resolve="isPrerequisited" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="4x6uVBKBWn_" role="3cqZAp">
              <node concept="2GrKxI" id="4x6uVBKBWnB" role="2Gsz3X">
                <property role="TrG5h" value="reqChild" />
              </node>
              <node concept="2OqwBi" id="4x6uVBKBX4x" role="2GsD0m">
                <node concept="37vLTw" id="5dzaEnaVAuH" role="2Oq$k0">
                  <ref role="3cqZAo" node="5dzaEnaV$sT" resolve="node" />
                </node>
                <node concept="3Tsc0h" id="4x6uVBKDHM7" role="2OqNvi">
                  <ref role="3TtcxE" to="uppb:2qK8RKEC3$n" resolve="mandatory" />
                </node>
              </node>
              <node concept="3clFbS" id="4x6uVBKBWnF" role="2LFqv$">
                <node concept="2Gpval" id="4x6uVBKDI39" role="3cqZAp">
                  <node concept="2GrKxI" id="4x6uVBKDI3a" role="2Gsz3X">
                    <property role="TrG5h" value="child" />
                  </node>
                  <node concept="2OqwBi" id="4x6uVBKDIEd" role="2GsD0m">
                    <node concept="37vLTw" id="5dzaEnaVAEB" role="2Oq$k0">
                      <ref role="3cqZAo" node="5dzaEnaV$sT" resolve="node" />
                    </node>
                    <node concept="3Tsc0h" id="4x6uVBKDJ8C" role="2OqNvi">
                      <ref role="3TtcxE" to="uppb:4x6uVBKzUAz" resolve="childNodes" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="4x6uVBKDI3c" role="2LFqv$">
                    <node concept="3clFbJ" id="4x6uVBKDJcX" role="3cqZAp">
                      <node concept="2OqwBi" id="4x6uVBKDKqF" role="3clFbw">
                        <node concept="2OqwBi" id="4x6uVBKDJny" role="2Oq$k0">
                          <node concept="2GrUjf" id="4x6uVBKDJdh" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="4x6uVBKDI3a" resolve="child" />
                          </node>
                          <node concept="3TrcHB" id="4x6uVBKDJQt" role="2OqNvi">
                            <ref role="3TsBF5" to="uppb:2qK8RKECpC$" resolve="path" />
                          </node>
                        </node>
                        <node concept="liA8E" id="4x6uVBKDKPs" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                          <node concept="2OqwBi" id="4x6uVBKDMAN" role="37wK5m">
                            <node concept="2OqwBi" id="4x6uVBKDLvL" role="2Oq$k0">
                              <node concept="2GrUjf" id="4x6uVBKDLct" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="4x6uVBKBWnB" resolve="reqChild" />
                              </node>
                              <node concept="3TrEf2" id="4x6uVBKDLPJ" role="2OqNvi">
                                <ref role="3Tt5mk" to="uppb:2qK8RKEBS5C" resolve="ref" />
                              </node>
                            </node>
                            <node concept="3TrcHB" id="4x6uVBKDNdK" role="2OqNvi">
                              <ref role="3TsBF5" to="uppb:2qK8RKECpC$" resolve="path" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="4x6uVBKDJcZ" role="3clFbx">
                        <node concept="3clFbF" id="5dzaEnaVAMy" role="3cqZAp">
                          <node concept="BsUDl" id="5dzaEnaVAMx" role="3clFbG">
                            <ref role="37wK5l" node="4x6uVBKBQtN" resolve="preselectNode" />
                            <node concept="2GrUjf" id="5dzaEnaVAMX" role="37wK5m">
                              <ref role="2Gs0qQ" node="4x6uVBKDI3a" resolve="child" />
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
        <node concept="3SKdUt" id="5dzaEnaW48e" role="3cqZAp">
          <node concept="3SKdUq" id="5dzaEnaW48g" role="3SKWNk">
            <property role="3SKdUp" value="TODO: (?) CHECK ALSO FOR REQUIRED FEATURES?" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5dzaEnaV$sT" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5dzaEnaV$sS" role="1tU5fm">
          <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="4mwbOhsYo8y" role="13h7CW">
      <node concept="3clFbS" id="4mwbOhsYo8z" role="2VODD2">
        <node concept="3clFbF" id="7Pq1P2GgK8S" role="3cqZAp">
          <node concept="37vLTI" id="7Pq1P2GgKHp" role="3clFbG">
            <node concept="2YIFZM" id="7Pq1P2GgKZM" role="37vLTx">
              <ref role="37wK5l" node="7Pq1P2GghJR" resolve="create" />
              <ref role="1Pybhc" node="7Pq1P2GckM$" resolve="ArtifactsTree" />
            </node>
            <node concept="2OqwBi" id="7Pq1P2GgKfQ" role="37vLTJ">
              <node concept="13iPFW" id="7Pq1P2GgK8R" role="2Oq$k0" />
              <node concept="3TrEf2" id="7Pq1P2GgKp$" role="2OqNvi">
                <ref role="3Tt5mk" to="uppb:wb0I6Vg0al" resolve="root" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Pq1P2GhVPc" role="3cqZAp">
          <node concept="BsUDl" id="7Pq1P2GhVPa" role="3clFbG">
            <ref role="37wK5l" node="4x6uVBKBQtN" resolve="preselectNode" />
            <node concept="2OqwBi" id="5dzaEnaV_GI" role="37wK5m">
              <node concept="13iPFW" id="5dzaEnaV_zT" role="2Oq$k0" />
              <node concept="3TrEf2" id="5dzaEnaV_QA" role="2OqNvi">
                <ref role="3Tt5mk" to="uppb:wb0I6Vg0al" resolve="root" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="6I9RXT28Uv">
    <property role="3GE5qa" value="artifactsTree" />
    <ref role="13h7C2" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
    <node concept="13i0hz" id="2qK8RKED0t4" role="13h7CS">
      <property role="TrG5h" value="copyFrom" />
      <node concept="3Tm1VV" id="2qK8RKED0t5" role="1B3o_S" />
      <node concept="3cqZAl" id="2qK8RKEM9Dt" role="3clF45" />
      <node concept="3clFbS" id="2qK8RKED0t7" role="3clF47">
        <node concept="3clFbF" id="2qK8RKED0t8" role="3cqZAp">
          <node concept="37vLTI" id="2qK8RKED0t9" role="3clFbG">
            <node concept="2OqwBi" id="2qK8RKED0ta" role="37vLTx">
              <node concept="37vLTw" id="2qK8RKED0tb" role="2Oq$k0">
                <ref role="3cqZAo" node="2qK8RKED0tr" resolve="node" />
              </node>
              <node concept="3TrcHB" id="2qK8RKED0tc" role="2OqNvi">
                <ref role="3TsBF5" to="uppb:2qK8RKECpC$" resolve="path" />
              </node>
            </node>
            <node concept="2OqwBi" id="2qK8RKED0td" role="37vLTJ">
              <node concept="13iPFW" id="2qK8RKED0te" role="2Oq$k0" />
              <node concept="3TrcHB" id="2qK8RKED0tf" role="2OqNvi">
                <ref role="3TsBF5" to="uppb:2qK8RKECpC$" resolve="path" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2qK8RKED0tg" role="3cqZAp">
          <node concept="37vLTI" id="2qK8RKED0th" role="3clFbG">
            <node concept="2OqwBi" id="2qK8RKED0ti" role="37vLTx">
              <node concept="37vLTw" id="2qK8RKED0tj" role="2Oq$k0">
                <ref role="3cqZAo" node="2qK8RKED0tr" resolve="node" />
              </node>
              <node concept="3TrcHB" id="2m90CjkEkn$" role="2OqNvi">
                <ref role="3TsBF5" to="uppb:2qK8RKECpCE" resolve="shortname" />
              </node>
            </node>
            <node concept="2OqwBi" id="2qK8RKED0tl" role="37vLTJ">
              <node concept="13iPFW" id="2qK8RKED0tm" role="2Oq$k0" />
              <node concept="3TrcHB" id="2m90CjkEjlR" role="2OqNvi">
                <ref role="3TsBF5" to="uppb:2qK8RKECpCE" resolve="shortname" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2qK8RKED0to" role="3cqZAp" />
        <node concept="3clFbF" id="2qK8RKELd11" role="3cqZAp">
          <node concept="2OqwBi" id="2qK8RKELhot" role="3clFbG">
            <node concept="2OqwBi" id="2qK8RKELd8V" role="2Oq$k0">
              <node concept="13iPFW" id="2qK8RKELd0Z" role="2Oq$k0" />
              <node concept="3Tsc0h" id="2qK8RKELdPJ" role="2OqNvi">
                <ref role="3TtcxE" to="uppb:2qK8RKEC3$n" resolve="mandatory" />
              </node>
            </node>
            <node concept="X8dFx" id="2qK8RKELkGq" role="2OqNvi">
              <node concept="2OqwBi" id="2qK8RKELnjD" role="25WWJ7">
                <node concept="37vLTw" id="2qK8RKELm12" role="2Oq$k0">
                  <ref role="3cqZAo" node="2qK8RKED0tr" resolve="node" />
                </node>
                <node concept="3Tsc0h" id="2qK8RKELoQV" role="2OqNvi">
                  <ref role="3TtcxE" to="uppb:2qK8RKEC3$n" resolve="mandatory" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2qK8RKELrQW" role="3cqZAp">
          <node concept="2OqwBi" id="2qK8RKELtWq" role="3clFbG">
            <node concept="2OqwBi" id="2qK8RKELsdU" role="2Oq$k0">
              <node concept="13iPFW" id="2qK8RKELrQU" role="2Oq$k0" />
              <node concept="3Tsc0h" id="2qK8RKELsnG" role="2OqNvi">
                <ref role="3TtcxE" to="uppb:2qK8RKEC3$o" resolve="required" />
              </node>
            </node>
            <node concept="X8dFx" id="2qK8RKELxgn" role="2OqNvi">
              <node concept="2OqwBi" id="2qK8RKELypH" role="25WWJ7">
                <node concept="37vLTw" id="2qK8RKELy5Z" role="2Oq$k0">
                  <ref role="3cqZAo" node="2qK8RKED0tr" resolve="node" />
                </node>
                <node concept="3Tsc0h" id="2qK8RKELz1X" role="2OqNvi">
                  <ref role="3TtcxE" to="uppb:2qK8RKEC3$o" resolve="required" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2qK8RKELBhw" role="3cqZAp">
          <node concept="2OqwBi" id="2qK8RKELHem" role="3clFbG">
            <node concept="2OqwBi" id="2qK8RKELFeD" role="2Oq$k0">
              <node concept="13iPFW" id="2qK8RKELBhu" role="2Oq$k0" />
              <node concept="3Tsc0h" id="2qK8RKELFDC" role="2OqNvi">
                <ref role="3TtcxE" to="uppb:2qK8RKEC3$p" resolve="excluded" />
              </node>
            </node>
            <node concept="X8dFx" id="2qK8RKELKyj" role="2OqNvi">
              <node concept="2OqwBi" id="2qK8RKELNaK" role="25WWJ7">
                <node concept="37vLTw" id="2qK8RKELMou" role="2Oq$k0">
                  <ref role="3cqZAo" node="2qK8RKED0tr" resolve="node" />
                </node>
                <node concept="3Tsc0h" id="2qK8RKELNB4" role="2OqNvi">
                  <ref role="3TtcxE" to="uppb:2qK8RKEC3$p" resolve="excluded" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2qK8RKED0tr" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="2qK8RKED0ts" role="1tU5fm">
          <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="7r$Cpd5RRlx" role="13h7CS">
      <property role="TrG5h" value="forceDeselect" />
      <node concept="3Tm1VV" id="7r$Cpd5RRly" role="1B3o_S" />
      <node concept="3cqZAl" id="7r$Cpd5RWZ0" role="3clF45" />
      <node concept="3clFbS" id="7r$Cpd5RRl$" role="3clF47">
        <node concept="3clFbJ" id="7r$Cpd5THJj" role="3cqZAp">
          <node concept="3clFbS" id="7r$Cpd5THJl" role="3clFbx">
            <node concept="3SKdUt" id="7r$Cpd5TIPj" role="3cqZAp">
              <node concept="3SKdUq" id="7r$Cpd5TIPl" role="3SKWNk">
                <property role="3SKdUp" value="TODO: this can only happen with invalid artifact descriptionis --&gt; THROW EXCEPTION" />
              </node>
            </node>
            <node concept="2xdQw9" id="5Xcftn9Q5N0" role="3cqZAp">
              <property role="2xdLsb" value="info" />
              <node concept="Xl_RD" id="7r$Cpd5TIOB" role="9lYJi">
                <property role="Xl_RC" value="exception thrown!!!!!!!!!!!!!!!!!!!!!!!!" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7r$Cpd5THXO" role="3clFbw">
            <node concept="13iPFW" id="7r$Cpd5THJS" role="2Oq$k0" />
            <node concept="3TrcHB" id="7r$Cpd5TIll" role="2OqNvi">
              <ref role="3TsBF5" to="uppb:2SikScA6xUZ" resolve="isPrerequisited" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7r$Cpd5THDA" role="3cqZAp" />
        <node concept="2Gpval" id="7r$Cpd5S5oK" role="3cqZAp">
          <node concept="2GrKxI" id="7r$Cpd5S5oL" role="2Gsz3X">
            <property role="TrG5h" value="child" />
          </node>
          <node concept="2OqwBi" id="7r$Cpd5S5yE" role="2GsD0m">
            <node concept="13iPFW" id="7r$Cpd5S5pK" role="2Oq$k0" />
            <node concept="3Tsc0h" id="7r$Cpd5S5PJ" role="2OqNvi">
              <ref role="3TtcxE" to="uppb:4x6uVBKzUAz" resolve="childNodes" />
            </node>
          </node>
          <node concept="3clFbS" id="7r$Cpd5S5oN" role="2LFqv$">
            <node concept="3clFbF" id="7r$Cpd5S5Sa" role="3cqZAp">
              <node concept="2OqwBi" id="7r$Cpd5S5Z7" role="3clFbG">
                <node concept="2GrUjf" id="7r$Cpd5S5S9" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="7r$Cpd5S5oL" resolve="child" />
                </node>
                <node concept="2qgKlT" id="7r$Cpd5S6lH" role="2OqNvi">
                  <ref role="37wK5l" node="7r$Cpd5RRlx" resolve="forceDeselect" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7r$Cpd5S7rk" role="3cqZAp">
          <node concept="2GrKxI" id="7r$Cpd5S7rm" role="2Gsz3X">
            <property role="TrG5h" value="dependentNode" />
          </node>
          <node concept="3clFbS" id="7r$Cpd5S7rq" role="2LFqv$">
            <node concept="3clFbF" id="7r$Cpd5SV1x" role="3cqZAp">
              <node concept="2OqwBi" id="7r$Cpd5SVae" role="3clFbG">
                <node concept="2GrUjf" id="7r$Cpd5SV1w" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="7r$Cpd5S7rm" resolve="dependentNode" />
                </node>
                <node concept="2qgKlT" id="7r$Cpd5SV$c" role="2OqNvi">
                  <ref role="37wK5l" node="7r$Cpd5RRlx" resolve="forceDeselect" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7r$Cpd5SUA0" role="2GsD0m">
            <node concept="13iPFW" id="7r$Cpd5SUt8" role="2Oq$k0" />
            <node concept="2qgKlT" id="7r$Cpd5SUW$" role="2OqNvi">
              <ref role="37wK5l" node="7r$Cpd5Sne1" resolve="getDependentNodes" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7r$Cpd5S7mC" role="3cqZAp" />
        <node concept="3clFbF" id="7r$Cpd5S6FH" role="3cqZAp">
          <node concept="37vLTI" id="7r$Cpd5S6FI" role="3clFbG">
            <node concept="3clFbT" id="7r$Cpd5S6FJ" role="37vLTx" />
            <node concept="2OqwBi" id="7r$Cpd5S6FK" role="37vLTJ">
              <node concept="13iPFW" id="7r$Cpd5S6FL" role="2Oq$k0" />
              <node concept="3TrcHB" id="7r$Cpd5S6FM" role="2OqNvi">
                <ref role="3TsBF5" to="uppb:6I9RXT7Mc2" resolve="isSelected" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="7r$Cpd5RJQ$" role="13h7CS">
      <property role="TrG5h" value="forceSelect" />
      <node concept="3Tm1VV" id="7r$Cpd5RJQ_" role="1B3o_S" />
      <node concept="3cqZAl" id="7r$Cpd5RPz1" role="3clF45" />
      <node concept="3clFbS" id="7r$Cpd5RJQB" role="3clF47">
        <node concept="3clFbJ" id="7r$Cpd5RPzO" role="3cqZAp">
          <node concept="3fqX7Q" id="7r$Cpd5RRiu" role="3clFbw">
            <node concept="2OqwBi" id="7r$Cpd5RRiw" role="3fr31v">
              <node concept="1PxgMI" id="7r$Cpd5RRix" role="2Oq$k0">
                <node concept="chp4Y" id="7r$Cpd5RRiy" role="3oSUPX">
                  <ref role="cht4Q" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
                </node>
                <node concept="2OqwBi" id="7r$Cpd5RRiz" role="1m5AlR">
                  <node concept="13iPFW" id="7r$Cpd5RRi$" role="2Oq$k0" />
                  <node concept="1mfA1w" id="7r$Cpd5RRi_" role="2OqNvi" />
                </node>
              </node>
              <node concept="3TrcHB" id="7r$Cpd5RRiA" role="2OqNvi">
                <ref role="3TsBF5" to="uppb:6I9RXT7Mc2" resolve="isSelected" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7r$Cpd5RPzQ" role="3clFbx">
            <node concept="3clFbF" id="7r$Cpd5RX04" role="3cqZAp">
              <node concept="2OqwBi" id="7r$Cpd5RY37" role="3clFbG">
                <node concept="1PxgMI" id="7r$Cpd5RXUp" role="2Oq$k0">
                  <node concept="chp4Y" id="7r$Cpd5RXVh" role="3oSUPX">
                    <ref role="cht4Q" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
                  </node>
                  <node concept="2OqwBi" id="7r$Cpd5RX72" role="1m5AlR">
                    <node concept="13iPFW" id="7r$Cpd5RX03" role="2Oq$k0" />
                    <node concept="1mfA1w" id="7r$Cpd5RXgK" role="2OqNvi" />
                  </node>
                </node>
                <node concept="2qgKlT" id="7r$Cpd5RYeo" role="2OqNvi">
                  <ref role="37wK5l" node="7r$Cpd5RRlx" resolve="forceDeselect" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7r$Cpd5RYt0" role="3cqZAp">
          <node concept="2GrKxI" id="7r$Cpd5RYt2" role="2Gsz3X">
            <property role="TrG5h" value="requiredNode" />
          </node>
          <node concept="2OqwBi" id="7r$Cpd5RYT4" role="2GsD0m">
            <node concept="13iPFW" id="7r$Cpd5RYJx" role="2Oq$k0" />
            <node concept="3Tsc0h" id="7r$Cpd5RZ70" role="2OqNvi">
              <ref role="3TtcxE" to="uppb:2qK8RKEC3$o" resolve="required" />
            </node>
          </node>
          <node concept="3clFbS" id="7r$Cpd5RYt6" role="2LFqv$">
            <node concept="3clFbF" id="7r$Cpd5RZbQ" role="3cqZAp">
              <node concept="2OqwBi" id="7r$Cpd5S03s" role="3clFbG">
                <node concept="2OqwBi" id="7r$Cpd5S0QM" role="2Oq$k0">
                  <node concept="2GrUjf" id="7r$Cpd5RZbP" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="7r$Cpd5RYt2" resolve="requiredNode" />
                  </node>
                  <node concept="3TrEf2" id="7r$Cpd5S1he" role="2OqNvi">
                    <ref role="3Tt5mk" to="uppb:2qK8RKEBS5C" resolve="ref" />
                  </node>
                </node>
                <node concept="2qgKlT" id="7r$Cpd5S0xq" role="2OqNvi">
                  <ref role="37wK5l" node="7r$Cpd5RJQ$" resolve="forceSelect" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7r$Cpd5S1vM" role="3cqZAp">
          <node concept="2GrKxI" id="7r$Cpd5S1vO" role="2Gsz3X">
            <property role="TrG5h" value="excludedNode" />
          </node>
          <node concept="2OqwBi" id="7r$Cpd5S2uL" role="2GsD0m">
            <node concept="13iPFW" id="7r$Cpd5S2l7" role="2Oq$k0" />
            <node concept="3Tsc0h" id="7r$Cpd5S2Qa" role="2OqNvi">
              <ref role="3TtcxE" to="uppb:2qK8RKEC3$p" resolve="excluded" />
            </node>
          </node>
          <node concept="3clFbS" id="7r$Cpd5S1vS" role="2LFqv$">
            <node concept="3clFbF" id="7r$Cpd5S303" role="3cqZAp">
              <node concept="2OqwBi" id="7r$Cpd5S3uU" role="3clFbG">
                <node concept="2OqwBi" id="7r$Cpd5S38K" role="2Oq$k0">
                  <node concept="2GrUjf" id="7r$Cpd5S302" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="7r$Cpd5S1vO" resolve="excludedNode" />
                  </node>
                  <node concept="3TrEf2" id="7r$Cpd5S3nW" role="2OqNvi">
                    <ref role="3Tt5mk" to="uppb:2qK8RKEBS5C" resolve="ref" />
                  </node>
                </node>
                <node concept="2qgKlT" id="7r$Cpd5S3V$" role="2OqNvi">
                  <ref role="37wK5l" node="7r$Cpd5RRlx" resolve="forceDeselect" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7r$Cpd5S3Zm" role="3cqZAp" />
        <node concept="3clFbF" id="7r$Cpd5S4gH" role="3cqZAp">
          <node concept="37vLTI" id="7r$Cpd5S5aI" role="3clFbG">
            <node concept="3clFbT" id="7r$Cpd5S5ja" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="2OqwBi" id="7r$Cpd5S4qN" role="37vLTJ">
              <node concept="13iPFW" id="7r$Cpd5S4gF" role="2Oq$k0" />
              <node concept="3TrcHB" id="7r$Cpd5S4EV" role="2OqNvi">
                <ref role="3TsBF5" to="uppb:6I9RXT7Mc2" resolve="isSelected" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="ww5GvfNVL0" role="13h7CS">
      <property role="TrG5h" value="getArtifactDescription" />
      <node concept="3Tm1VV" id="ww5GvfNVL1" role="1B3o_S" />
      <node concept="3Tqbb2" id="ww5GvfO02H" role="3clF45">
        <ref role="ehGHo" to="uppb:wb0I6Vb7D5" resolve="ArtifactDescription" />
      </node>
      <node concept="3clFbS" id="ww5GvfNVL3" role="3clF47">
        <node concept="3cpWs8" id="ww5GvfOa07" role="3cqZAp">
          <node concept="3cpWsn" id="ww5GvfOa0a" role="3cpWs9">
            <property role="TrG5h" value="description" />
            <node concept="A3Dl8" id="ww5GvfOa0U" role="1tU5fm">
              <node concept="3Tqbb2" id="ww5GvfOa0W" role="A3Ik2">
                <ref role="ehGHo" to="uppb:wb0I6Vb7D5" resolve="ArtifactDescription" />
              </node>
            </node>
            <node concept="2OqwBi" id="ww5GvfO2AS" role="33vP2m">
              <node concept="2OqwBi" id="ww5GvfO0rO" role="2Oq$k0">
                <node concept="35c_gC" id="ww5GvfO07C" role="2Oq$k0">
                  <ref role="35c_gD" to="uppb:wb0I6Vb7D5" resolve="ArtifactDescription" />
                </node>
                <node concept="2qgKlT" id="ww5GvfO0IH" role="2OqNvi">
                  <ref role="37wK5l" node="4T0MB1Xdo34" resolve="getAllFeatures" />
                </node>
              </node>
              <node concept="3zZkjj" id="ww5GvfO4AO" role="2OqNvi">
                <node concept="1bVj0M" id="ww5GvfO4AQ" role="23t8la">
                  <node concept="3clFbS" id="ww5GvfO4AR" role="1bW5cS">
                    <node concept="3clFbF" id="ww5GvfO4O5" role="3cqZAp">
                      <node concept="2OqwBi" id="ww5GvfO7vq" role="3clFbG">
                        <node concept="2OqwBi" id="ww5GvfO55C" role="2Oq$k0">
                          <node concept="37vLTw" id="ww5GvfO4O4" role="2Oq$k0">
                            <ref role="3cqZAo" node="ww5GvfO4AS" resolve="it" />
                          </node>
                          <node concept="3TrcHB" id="ww5GvfO5vV" role="2OqNvi">
                            <ref role="3TsBF5" to="uppb:4T0MB1XbEo9" resolve="path" />
                          </node>
                        </node>
                        <node concept="liA8E" id="ww5GvfO8oX" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                          <node concept="2OqwBi" id="ww5GvfO9bW" role="37wK5m">
                            <node concept="13iPFW" id="ww5GvfO8FE" role="2Oq$k0" />
                            <node concept="3TrcHB" id="ww5GvfO9GC" role="2OqNvi">
                              <ref role="3TsBF5" to="uppb:2qK8RKECpC$" resolve="path" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="ww5GvfO4AS" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="ww5GvfO4AT" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="ww5GvfOaBO" role="3cqZAp">
          <node concept="3clFbS" id="ww5GvfOaBQ" role="3clFbx">
            <node concept="3cpWs6" id="ww5GvfOgqk" role="3cqZAp">
              <node concept="2OqwBi" id="ww5GvfOjmM" role="3cqZAk">
                <node concept="37vLTw" id="ww5GvfOgUB" role="2Oq$k0">
                  <ref role="3cqZAo" node="ww5GvfOa0a" resolve="description" />
                </node>
                <node concept="1uHKPH" id="ww5GvfOkdW" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="ww5GvfOfCT" role="3clFbw">
            <node concept="3cmrfG" id="ww5GvfOg8W" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="ww5GvfObiS" role="3uHU7B">
              <node concept="37vLTw" id="ww5GvfOaR6" role="2Oq$k0">
                <ref role="3cqZAo" node="ww5GvfOa0a" resolve="description" />
              </node>
              <node concept="34oBXx" id="ww5GvfObHp" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="ww5GvfOkIm" role="3cqZAp" />
        <node concept="3SKdUt" id="ww5GvfOlfO" role="3cqZAp">
          <node concept="3SKdUq" id="ww5GvfOlfQ" role="3SKWNk">
            <property role="3SKdUp" value="TODO: THROW EXCEPTION HERE" />
          </node>
        </node>
        <node concept="2xdQw9" id="5Xcftn9Q4Og" role="3cqZAp">
          <property role="2xdLsb" value="info" />
          <node concept="Xl_RD" id="5Xcftn9Q4Oi" role="9lYJi">
            <property role="Xl_RC" value="THIS SHOULD NEVER HAPPEN: path not found in descriptoins in AFV&gt;getFeatureDescription" />
          </node>
        </node>
        <node concept="3clFbH" id="ww5GvfOp7A" role="3cqZAp" />
        <node concept="3cpWs6" id="ww5GvfOn__" role="3cqZAp">
          <node concept="10Nm6u" id="ww5GvfOoB5" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="7r$Cpd5Sne1" role="13h7CS">
      <property role="TrG5h" value="getDependentNodes" />
      <node concept="3Tm1VV" id="7r$Cpd5Sne2" role="1B3o_S" />
      <node concept="A3Dl8" id="7r$Cpd5S_Ps" role="3clF45">
        <node concept="3Tqbb2" id="7r$Cpd5S_Pu" role="A3Ik2">
          <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
        </node>
      </node>
      <node concept="3clFbS" id="7r$Cpd5Sne4" role="3clF47">
        <node concept="3SKdUt" id="7r$Cpd5STSz" role="3cqZAp">
          <node concept="3SKdUq" id="7r$Cpd5STS_" role="3SKWNk">
            <property role="3SKdUp" value="all nodes where the number of requiredNodes which reference this node is one" />
          </node>
        </node>
        <node concept="3cpWs6" id="7r$Cpd5SsAe" role="3cqZAp">
          <node concept="2OqwBi" id="7r$Cpd5SlcT" role="3cqZAk">
            <node concept="2OqwBi" id="7r$Cpd5ScYS" role="2Oq$k0">
              <node concept="35c_gC" id="7r$Cpd5ScAj" role="2Oq$k0">
                <ref role="35c_gD" to="uppb:4mwbOhsXrAp" resolve="ArtifactsTree" />
              </node>
              <node concept="2qgKlT" id="7r$Cpd5SdVf" role="2OqNvi">
                <ref role="37wK5l" node="ww5GvfMd9I" resolve="getAllNodesOfTree" />
                <node concept="2OqwBi" id="7r$Cpd5Sjnf" role="37wK5m">
                  <node concept="13iPFW" id="7r$Cpd5Si0I" role="2Oq$k0" />
                  <node concept="2qgKlT" id="7r$Cpd5SjKB" role="2OqNvi">
                    <ref role="37wK5l" node="ww5GvfMdaD" resolve="getRoot" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3zZkjj" id="7r$Cpd5SmZw" role="2OqNvi">
              <node concept="1bVj0M" id="7r$Cpd5SmZy" role="23t8la">
                <node concept="3clFbS" id="7r$Cpd5SmZz" role="1bW5cS">
                  <node concept="3clFbF" id="7r$Cpd5Std5" role="3cqZAp">
                    <node concept="3clFbC" id="7r$Cpd5SOGN" role="3clFbG">
                      <node concept="3cmrfG" id="7r$Cpd5SP4G" role="3uHU7w">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="2OqwBi" id="7r$Cpd5SPUe" role="3uHU7B">
                        <node concept="2OqwBi" id="7r$Cpd5SweI" role="2Oq$k0">
                          <node concept="2OqwBi" id="7r$Cpd5StA5" role="2Oq$k0">
                            <node concept="37vLTw" id="7r$Cpd5Std4" role="2Oq$k0">
                              <ref role="3cqZAo" node="7r$Cpd5SmZ$" resolve="node" />
                            </node>
                            <node concept="3Tsc0h" id="7r$Cpd5SueE" role="2OqNvi">
                              <ref role="3TtcxE" to="uppb:2qK8RKEC3$o" resolve="required" />
                            </node>
                          </node>
                          <node concept="3zZkjj" id="7r$Cpd5SKBi" role="2OqNvi">
                            <node concept="1bVj0M" id="7r$Cpd5SKBk" role="23t8la">
                              <node concept="3clFbS" id="7r$Cpd5SKBl" role="1bW5cS">
                                <node concept="3clFbF" id="7r$Cpd5SM85" role="3cqZAp">
                                  <node concept="3clFbC" id="7r$Cpd5SNGX" role="3clFbG">
                                    <node concept="13iPFW" id="7r$Cpd5SO7w" role="3uHU7w" />
                                    <node concept="2OqwBi" id="7r$Cpd5SMsS" role="3uHU7B">
                                      <node concept="37vLTw" id="7r$Cpd5SM84" role="2Oq$k0">
                                        <ref role="3cqZAo" node="7r$Cpd5SKBm" resolve="req" />
                                      </node>
                                      <node concept="3TrEf2" id="7r$Cpd5SN3F" role="2OqNvi">
                                        <ref role="3Tt5mk" to="uppb:2qK8RKEBS5C" resolve="ref" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="7r$Cpd5SKBm" role="1bW2Oz">
                                <property role="TrG5h" value="req" />
                                <node concept="2jxLKc" id="7r$Cpd5SKBn" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="34oBXx" id="7r$Cpd5SQqu" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="7r$Cpd5SmZ$" role="1bW2Oz">
                  <property role="TrG5h" value="node" />
                  <node concept="2jxLKc" id="7r$Cpd5SmZ_" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="ww5GvfMdaD" role="13h7CS">
      <property role="TrG5h" value="getRoot" />
      <node concept="3Tm1VV" id="ww5GvfMdaE" role="1B3o_S" />
      <node concept="3Tqbb2" id="ww5GvfMdaF" role="3clF45">
        <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
      </node>
      <node concept="3clFbS" id="ww5GvfMdaG" role="3clF47">
        <node concept="3cpWs8" id="ww5GvfMdaH" role="3cqZAp">
          <node concept="3cpWsn" id="ww5GvfMdaI" role="3cpWs9">
            <property role="TrG5h" value="root" />
            <node concept="3Tqbb2" id="ww5GvfMdaJ" role="1tU5fm">
              <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
            </node>
            <node concept="13iPFW" id="ww5GvfMdaK" role="33vP2m" />
          </node>
        </node>
        <node concept="2$JKZl" id="ww5GvfMdaL" role="3cqZAp">
          <node concept="3clFbS" id="ww5GvfMdaM" role="2LFqv$">
            <node concept="3clFbF" id="ww5GvfMdaN" role="3cqZAp">
              <node concept="37vLTI" id="ww5GvfMdaO" role="3clFbG">
                <node concept="37vLTw" id="ww5GvfMdaP" role="37vLTJ">
                  <ref role="3cqZAo" node="ww5GvfMdaI" resolve="root" />
                </node>
                <node concept="1PxgMI" id="ww5GvfMdaQ" role="37vLTx">
                  <node concept="chp4Y" id="ww5GvfMdaR" role="3oSUPX">
                    <ref role="cht4Q" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
                  </node>
                  <node concept="2OqwBi" id="ww5GvfMdaS" role="1m5AlR">
                    <node concept="37vLTw" id="ww5GvfMdaT" role="2Oq$k0">
                      <ref role="3cqZAo" node="ww5GvfMdaI" resolve="root" />
                    </node>
                    <node concept="1mfA1w" id="ww5GvfMdaU" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="ww5GvfMdaV" role="2$JKZa">
            <node concept="2OqwBi" id="ww5GvfMdaW" role="2Oq$k0">
              <node concept="37vLTw" id="ww5GvfMdaX" role="2Oq$k0">
                <ref role="3cqZAo" node="ww5GvfMdaI" resolve="root" />
              </node>
              <node concept="1mfA1w" id="ww5GvfMdaY" role="2OqNvi" />
            </node>
            <node concept="1mIQ4w" id="ww5GvfMdaZ" role="2OqNvi">
              <node concept="chp4Y" id="ww5GvfMdb0" role="cj9EA">
                <ref role="cht4Q" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="ww5GvfMdb1" role="3cqZAp">
          <node concept="37vLTw" id="ww5GvfMdb2" role="3cqZAk">
            <ref role="3cqZAo" node="ww5GvfMdaI" resolve="root" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4x6uVBKyRMa" role="13h7CS">
      <property role="TrG5h" value="initFromArtifactDescription" />
      <node concept="3Tm1VV" id="4x6uVBKyRMb" role="1B3o_S" />
      <node concept="3cqZAl" id="2qK8RKEMefH" role="3clF45" />
      <node concept="3clFbS" id="4x6uVBKyRMd" role="3clF47">
        <node concept="3clFbF" id="4x6uVBKyUqN" role="3cqZAp">
          <node concept="37vLTI" id="4x6uVBKyVlA" role="3clFbG">
            <node concept="2OqwBi" id="4x6uVBKyVRg" role="37vLTx">
              <node concept="37vLTw" id="4x6uVBKyVw9" role="2Oq$k0">
                <ref role="3cqZAo" node="4x6uVBKySFW" resolve="node" />
              </node>
              <node concept="3TrcHB" id="4x6uVBKyW8I" role="2OqNvi">
                <ref role="3TsBF5" to="uppb:4T0MB1XbEo9" resolve="path" />
              </node>
            </node>
            <node concept="2OqwBi" id="4x6uVBKyU_5" role="37vLTJ">
              <node concept="13iPFW" id="4x6uVBKyUqM" role="2Oq$k0" />
              <node concept="3TrcHB" id="4x6uVBKyUM1" role="2OqNvi">
                <ref role="3TsBF5" to="uppb:2qK8RKECpC$" resolve="path" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4x6uVBKyWH2" role="3cqZAp">
          <node concept="37vLTI" id="4x6uVBKyXA8" role="3clFbG">
            <node concept="2OqwBi" id="4x6uVBKyXQe" role="37vLTx">
              <node concept="37vLTw" id="4x6uVBKyXGF" role="2Oq$k0">
                <ref role="3cqZAo" node="4x6uVBKySFW" resolve="node" />
              </node>
              <node concept="3TrcHB" id="2m90CjkElvJ" role="2OqNvi">
                <ref role="3TsBF5" to="uppb:XZk_44NpAT" resolve="shortname" />
              </node>
            </node>
            <node concept="2OqwBi" id="4x6uVBKyWT_" role="37vLTJ">
              <node concept="13iPFW" id="4x6uVBKyWH0" role="2Oq$k0" />
              <node concept="3TrcHB" id="4x6uVBKyX6z" role="2OqNvi">
                <ref role="3TsBF5" to="uppb:2qK8RKECpCE" resolve="shortname" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4x6uVBKySFW" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="4x6uVBKySFV" role="1tU5fm">
          <ref role="ehGHo" to="uppb:wb0I6Vb7D5" resolve="ArtifactDescription" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="7Pq1P2G91Eb" role="13h7CS">
      <property role="TrG5h" value="isEditable" />
      <node concept="3Tm1VV" id="7Pq1P2G91Ec" role="1B3o_S" />
      <node concept="10P_77" id="7Pq1P2G93GL" role="3clF45" />
      <node concept="3clFbS" id="7Pq1P2G91Ee" role="3clF47">
        <node concept="3SKdUt" id="ww5Gvf$h9H" role="3cqZAp">
          <node concept="3SKdUq" id="ww5Gvf$h9J" role="3SKWNk">
            <property role="3SKdUp" value="prerequisited or parent not selected" />
          </node>
        </node>
        <node concept="3clFbJ" id="2SikScA73Iq" role="3cqZAp">
          <node concept="3clFbS" id="2SikScA73Is" role="3clFbx">
            <node concept="3cpWs6" id="2SikScA7eP4" role="3cqZAp">
              <node concept="3clFbT" id="2SikScA7fdL" role="3cqZAk" />
            </node>
          </node>
          <node concept="22lmx$" id="ww5GvfxNPa" role="3clFbw">
            <node concept="2OqwBi" id="2SikScA74rZ" role="3uHU7B">
              <node concept="13iPFW" id="2SikScA747J" role="2Oq$k0" />
              <node concept="3TrcHB" id="2SikScA7eMX" role="2OqNvi">
                <ref role="3TsBF5" to="uppb:2SikScA6xUZ" resolve="isPrerequisited" />
              </node>
            </node>
            <node concept="3fqX7Q" id="2SikScA6x59" role="3uHU7w">
              <node concept="2OqwBi" id="2SikScA6x5b" role="3fr31v">
                <node concept="1PxgMI" id="2SikScA6x5c" role="2Oq$k0">
                  <node concept="chp4Y" id="2SikScA6x5d" role="3oSUPX">
                    <ref role="cht4Q" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
                  </node>
                  <node concept="2OqwBi" id="2SikScA6x5e" role="1m5AlR">
                    <node concept="13iPFW" id="2SikScA6x5f" role="2Oq$k0" />
                    <node concept="1mfA1w" id="2SikScA6x5g" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3TrcHB" id="2SikScA7hPE" role="2OqNvi">
                  <ref role="3TsBF5" to="uppb:6I9RXT7Mc2" resolve="isSelected" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2SikScA6oUa" role="3cqZAp" />
        <node concept="3clFbJ" id="7r$Cpd5YCGY" role="3cqZAp">
          <node concept="3clFbS" id="7r$Cpd5YCH0" role="3clFbx">
            <node concept="3SKdUt" id="7r$Cpd5YJEx" role="3cqZAp">
              <node concept="3SKdUq" id="7r$Cpd5YJEz" role="3SKWNk">
                <property role="3SKdUp" value="children selected" />
              </node>
            </node>
            <node concept="2Gpval" id="7r$Cpd5YH_X" role="3cqZAp">
              <node concept="2GrKxI" id="7r$Cpd5YH_Z" role="2Gsz3X">
                <property role="TrG5h" value="child" />
              </node>
              <node concept="2OqwBi" id="7r$Cpd5YHKf" role="2GsD0m">
                <node concept="13iPFW" id="7r$Cpd5YHBj" role="2Oq$k0" />
                <node concept="3Tsc0h" id="7r$Cpd5YI3u" role="2OqNvi">
                  <ref role="3TtcxE" to="uppb:4x6uVBKzUAz" resolve="childNodes" />
                </node>
              </node>
              <node concept="3clFbS" id="7r$Cpd5YHA3" role="2LFqv$">
                <node concept="3clFbJ" id="7r$Cpd5YI62" role="3cqZAp">
                  <node concept="2OqwBi" id="7r$Cpd5YIfn" role="3clFbw">
                    <node concept="2GrUjf" id="7r$Cpd5YI6w" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="7r$Cpd5YH_Z" resolve="child" />
                    </node>
                    <node concept="3TrcHB" id="7r$Cpd5YIA9" role="2OqNvi">
                      <ref role="3TsBF5" to="uppb:6I9RXT7Mc2" resolve="isSelected" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="7r$Cpd5YI64" role="3clFbx">
                    <node concept="3cpWs6" id="7r$Cpd5YICn" role="3cqZAp">
                      <node concept="3clFbT" id="7r$Cpd5YICK" role="3cqZAk">
                        <property role="3clFbU" value="false" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7r$Cpd5YKGC" role="3cqZAp" />
            <node concept="3SKdUt" id="7r$Cpd5YKb$" role="3cqZAp">
              <node concept="3SKdUq" id="7r$Cpd5YKbA" role="3SKWNk">
                <property role="3SKdUp" value="dependend nodes selected" />
              </node>
            </node>
            <node concept="2Gpval" id="7r$Cpd5YLIJ" role="3cqZAp">
              <node concept="2GrKxI" id="7r$Cpd5YLIL" role="2Gsz3X">
                <property role="TrG5h" value="dependendNode" />
              </node>
              <node concept="2OqwBi" id="7r$Cpd5YMr3" role="2GsD0m">
                <node concept="13iPFW" id="7r$Cpd5YMi5" role="2Oq$k0" />
                <node concept="2qgKlT" id="7r$Cpd5YMIk" role="2OqNvi">
                  <ref role="37wK5l" node="7r$Cpd5Sne1" resolve="getDependentNodes" />
                </node>
              </node>
              <node concept="3clFbS" id="7r$Cpd5YLIP" role="2LFqv$">
                <node concept="3clFbJ" id="7r$Cpd5YNvv" role="3cqZAp">
                  <node concept="3clFbS" id="7r$Cpd5YNvx" role="3clFbx">
                    <node concept="3cpWs6" id="7r$Cpd5YNzh" role="3cqZAp">
                      <node concept="3clFbT" id="7r$Cpd5YO5x" role="3cqZAk">
                        <property role="3clFbU" value="false" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7r$Cpd5YMUG" role="3clFbw">
                    <node concept="2GrUjf" id="7r$Cpd5YMNq" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="7r$Cpd5YLIL" resolve="dependendNode" />
                    </node>
                    <node concept="3TrcHB" id="7r$Cpd5YNkG" role="2OqNvi">
                      <ref role="3TsBF5" to="uppb:6I9RXT7Mc2" resolve="isSelected" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7r$Cpd5YH_B" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="7r$Cpd5YD$B" role="3clFbw">
            <node concept="13iPFW" id="7r$Cpd5YDeV" role="2Oq$k0" />
            <node concept="3TrcHB" id="7r$Cpd5YEgQ" role="2OqNvi">
              <ref role="3TsBF5" to="uppb:6I9RXT7Mc2" resolve="isSelected" />
            </node>
          </node>
          <node concept="9aQIb" id="7r$Cpd5YEj9" role="9aQIa">
            <node concept="3clFbS" id="7r$Cpd5YEja" role="9aQI4">
              <node concept="3SKdUt" id="ww5Gvf$gJk" role="3cqZAp">
                <node concept="3SKdUq" id="ww5Gvf$gJm" role="3SKWNk">
                  <property role="3SKdUp" value="requirements not fullfilled" />
                </node>
              </node>
              <node concept="2Gpval" id="ww5Gvf$6q2" role="3cqZAp">
                <node concept="2GrKxI" id="ww5Gvf$6q4" role="2Gsz3X">
                  <property role="TrG5h" value="req" />
                </node>
                <node concept="2OqwBi" id="ww5Gvf$8l3" role="2GsD0m">
                  <node concept="13iPFW" id="ww5Gvf$7Qa" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="ww5Gvf$8QG" role="2OqNvi">
                    <ref role="3TtcxE" to="uppb:2qK8RKEC3$o" resolve="required" />
                  </node>
                </node>
                <node concept="3clFbS" id="ww5Gvf$6q8" role="2LFqv$">
                  <node concept="3clFbJ" id="ww5Gvf$9Uu" role="3cqZAp">
                    <node concept="3fqX7Q" id="ww5Gvf$c1a" role="3clFbw">
                      <node concept="2OqwBi" id="ww5Gvf$c1c" role="3fr31v">
                        <node concept="2OqwBi" id="ww5Gvf$c1d" role="2Oq$k0">
                          <node concept="2GrUjf" id="ww5Gvf$c1e" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="ww5Gvf$6q4" resolve="req" />
                          </node>
                          <node concept="3TrEf2" id="ww5Gvf$c1f" role="2OqNvi">
                            <ref role="3Tt5mk" to="uppb:2qK8RKEBS5C" resolve="ref" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="ww5Gvf$c1g" role="2OqNvi">
                          <ref role="3TsBF5" to="uppb:6I9RXT7Mc2" resolve="isSelected" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="ww5Gvf$9Uw" role="3clFbx">
                      <node concept="3cpWs6" id="ww5Gvf$cok" role="3cqZAp">
                        <node concept="3clFbT" id="ww5Gvf$coD" role="3cqZAk">
                          <property role="3clFbU" value="false" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="ww5GvfMPwX" role="3cqZAp" />
              <node concept="3SKdUt" id="ww5Gvf$ioU" role="3cqZAp">
                <node concept="3SKdUq" id="ww5Gvf$ioW" role="3SKWNk">
                  <property role="3SKdUp" value="excluded by another feature" />
                </node>
              </node>
              <node concept="3cpWs8" id="2SikScA8g0q" role="3cqZAp">
                <node concept="3cpWsn" id="2SikScA8g0t" role="3cpWs9">
                  <property role="TrG5h" value="excludors" />
                  <node concept="A3Dl8" id="2SikScA8DDe" role="1tU5fm">
                    <node concept="3Tqbb2" id="2SikScA8DDg" role="A3Ik2">
                      <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2SikScA8hJC" role="33vP2m">
                    <node concept="3zZkjj" id="2SikScA8joh" role="2OqNvi">
                      <node concept="1bVj0M" id="2SikScA8joj" role="23t8la">
                        <node concept="3clFbS" id="2SikScA8jok" role="1bW5cS">
                          <node concept="3clFbF" id="2SikScA8juT" role="3cqZAp">
                            <node concept="1Wc70l" id="ww5Gvfzpii" role="3clFbG">
                              <node concept="2OqwBi" id="ww5GvfzpZT" role="3uHU7B">
                                <node concept="37vLTw" id="ww5GvfzpD7" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2SikScA8jol" resolve="it" />
                                </node>
                                <node concept="3TrcHB" id="ww5GvfzqNE" role="2OqNvi">
                                  <ref role="3TsBF5" to="uppb:6I9RXT7Mc2" resolve="isSelected" />
                                </node>
                              </node>
                              <node concept="3eOSWO" id="2SikScA8wF9" role="3uHU7w">
                                <node concept="3cmrfG" id="2SikScA8wTW" role="3uHU7w">
                                  <property role="3cmrfH" value="0" />
                                </node>
                                <node concept="2OqwBi" id="2SikScA8v1n" role="3uHU7B">
                                  <node concept="2OqwBi" id="2SikScA8lM_" role="2Oq$k0">
                                    <node concept="2OqwBi" id="2SikScA8jH$" role="2Oq$k0">
                                      <node concept="37vLTw" id="2SikScA8juS" role="2Oq$k0">
                                        <ref role="3cqZAo" node="2SikScA8jol" resolve="it" />
                                      </node>
                                      <node concept="3Tsc0h" id="2SikScA8jX6" role="2OqNvi">
                                        <ref role="3TtcxE" to="uppb:2qK8RKEC3$p" resolve="excluded" />
                                      </node>
                                    </node>
                                    <node concept="3zZkjj" id="2SikScA8nyb" role="2OqNvi">
                                      <node concept="1bVj0M" id="2SikScA8nyd" role="23t8la">
                                        <node concept="3clFbS" id="2SikScA8nye" role="1bW5cS">
                                          <node concept="3clFbF" id="2SikScA8o$r" role="3cqZAp">
                                            <node concept="3clFbC" id="2SikScA8uaH" role="3clFbG">
                                              <node concept="13iPFW" id="2SikScA8uwF" role="3uHU7w" />
                                              <node concept="2OqwBi" id="2SikScA8oUh" role="3uHU7B">
                                                <node concept="37vLTw" id="ww5Gvfzmb9" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="2SikScA8nyf" resolve="excluded" />
                                                </node>
                                                <node concept="3TrEf2" id="2SikScA8ph2" role="2OqNvi">
                                                  <ref role="3Tt5mk" to="uppb:2qK8RKEBS5C" resolve="ref" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="Rh6nW" id="2SikScA8nyf" role="1bW2Oz">
                                          <property role="TrG5h" value="excluded" />
                                          <node concept="2jxLKc" id="2SikScA8nyg" role="1tU5fm" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="34oBXx" id="2SikScA8vkA" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="2SikScA8jol" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="2SikScA8jom" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="ww5GvfMR9Y" role="2Oq$k0">
                      <node concept="35c_gC" id="ww5GvfMQpE" role="2Oq$k0">
                        <ref role="35c_gD" to="uppb:4mwbOhsXrAp" resolve="ArtifactsTree" />
                      </node>
                      <node concept="2qgKlT" id="ww5GvfN907" role="2OqNvi">
                        <ref role="37wK5l" node="ww5GvfMd9I" resolve="getAllNodesOfTree" />
                        <node concept="2OqwBi" id="ww5GvfN9iL" role="37wK5m">
                          <node concept="13iPFW" id="ww5GvfN95a" role="2Oq$k0" />
                          <node concept="2qgKlT" id="ww5GvfN9Gq" role="2OqNvi">
                            <ref role="37wK5l" node="ww5GvfMdaD" resolve="getRoot" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="2SikScA8EeC" role="3cqZAp">
                <node concept="3clFbS" id="2SikScA8EeE" role="3clFbx">
                  <node concept="3cpWs6" id="2SikScA8H4M" role="3cqZAp">
                    <node concept="3clFbT" id="2SikScA8Hop" role="3cqZAk">
                      <property role="3clFbU" value="false" />
                    </node>
                  </node>
                </node>
                <node concept="3eOSWO" id="2SikScA8GMz" role="3clFbw">
                  <node concept="3cmrfG" id="2SikScA8GMA" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="2SikScA8FbD" role="3uHU7B">
                    <node concept="37vLTw" id="2SikScA8Eyo" role="2Oq$k0">
                      <ref role="3cqZAo" node="2SikScA8g0t" resolve="excludors" />
                    </node>
                    <node concept="34oBXx" id="2SikScA8FOk" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2SikScA8DjE" role="3cqZAp" />
              <node concept="3SKdUt" id="ww5Gvf$ETw" role="3cqZAp">
                <node concept="3SKdUq" id="ww5Gvf$ETy" role="3SKWNk">
                  <property role="3SKdUp" value="1-m already selected" />
                </node>
              </node>
              <node concept="3clFbJ" id="ww5Gvf$FIs" role="3cqZAp">
                <node concept="3clFbS" id="ww5Gvf$FIu" role="3clFbx">
                  <node concept="2Gpval" id="ww5Gvf$N$C" role="3cqZAp">
                    <node concept="2GrKxI" id="ww5Gvf$N$E" role="2Gsz3X">
                      <property role="TrG5h" value="sib" />
                    </node>
                    <node concept="2OqwBi" id="ww5Gvf$NIS" role="2GsD0m">
                      <node concept="13iPFW" id="ww5Gvf$N_Q" role="2Oq$k0" />
                      <node concept="2TvwIu" id="ww5Gvf$O25" role="2OqNvi" />
                    </node>
                    <node concept="3clFbS" id="ww5Gvf$N$I" role="2LFqv$">
                      <node concept="3clFbJ" id="ww5Gvf$O5v" role="3cqZAp">
                        <node concept="2OqwBi" id="ww5Gvf$Pfr" role="3clFbw">
                          <node concept="1PxgMI" id="ww5Gvf$OYH" role="2Oq$k0">
                            <node concept="chp4Y" id="ww5Gvf$P4Q" role="3oSUPX">
                              <ref role="cht4Q" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
                            </node>
                            <node concept="2GrUjf" id="ww5Gvf$OqC" role="1m5AlR">
                              <ref role="2Gs0qQ" node="ww5Gvf$N$E" resolve="sib" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="ww5Gvf$PAR" role="2OqNvi">
                            <ref role="3TsBF5" to="uppb:6I9RXT7Mc2" resolve="isSelected" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="ww5Gvf$O5x" role="3clFbx">
                          <node concept="3cpWs6" id="ww5Gvf$PD3" role="3cqZAp">
                            <node concept="3clFbT" id="ww5Gvf$PDq" role="3cqZAk">
                              <property role="3clFbU" value="false" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="ww5Gvf$Hhr" role="3clFbw">
                  <node concept="2OqwBi" id="ww5Gvf$Gw2" role="2Oq$k0">
                    <node concept="13iPFW" id="ww5Gvf$G96" role="2Oq$k0" />
                    <node concept="1mfA1w" id="ww5Gvf$GZP" role="2OqNvi" />
                  </node>
                  <node concept="1mIQ4w" id="ww5Gvf$HRB" role="2OqNvi">
                    <node concept="chp4Y" id="ww5Gvf$KKM" role="cj9EA">
                      <ref role="cht4Q" to="uppb:wb0I6Vg0b5" resolve="ArtifactNode1M" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7r$Cpd5YGvE" role="3cqZAp" />
        <node concept="3cpWs6" id="7Pq1P2GgMz6" role="3cqZAp">
          <node concept="3clFbT" id="7Pq1P2GgMUx" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
        <node concept="3clFbH" id="7r$Cpd5YH1z" role="3cqZAp" />
        <node concept="3clFbH" id="ww5GvfNVc3" role="3cqZAp" />
      </node>
    </node>
    <node concept="13i0hz" id="7r$Cpd5Vd$l" role="13h7CS">
      <property role="TrG5h" value="isValid" />
      <node concept="3Tm1VV" id="7r$Cpd5Vd$m" role="1B3o_S" />
      <node concept="10P_77" id="7r$Cpd5Viy7" role="3clF45" />
      <node concept="3clFbS" id="7r$Cpd5Vd$o" role="3clF47">
        <node concept="3clFbJ" id="7r$Cpd5ViyM" role="3cqZAp">
          <node concept="3fqX7Q" id="7r$Cpd5Viz6" role="3clFbw">
            <node concept="2OqwBi" id="7r$Cpd5ViGa" role="3fr31v">
              <node concept="13iPFW" id="7r$Cpd5Vizu" role="2Oq$k0" />
              <node concept="3TrcHB" id="7r$Cpd5Vjki" role="2OqNvi">
                <ref role="3TsBF5" to="uppb:6I9RXT7Mc2" resolve="isSelected" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7r$Cpd5ViyO" role="3clFbx">
            <node concept="3cpWs6" id="7r$Cpd5VjmD" role="3cqZAp">
              <node concept="3clFbT" id="7r$Cpd5Vjp6" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7r$Cpd5Voek" role="3cqZAp" />
        <node concept="3SKdUt" id="7r$Cpd5VF2k" role="3cqZAp">
          <node concept="3SKdUq" id="7r$Cpd5VF2m" role="3SKWNk">
            <property role="3SKdUp" value="check required children (mandatory &amp; min/max children selected)" />
          </node>
        </node>
        <node concept="2Gpval" id="7r$Cpd5Vl81" role="3cqZAp">
          <node concept="2GrKxI" id="7r$Cpd5Vl83" role="2Gsz3X">
            <property role="TrG5h" value="mandatoryNode" />
          </node>
          <node concept="2OqwBi" id="7r$Cpd5VlC3" role="2GsD0m">
            <node concept="13iPFW" id="7r$Cpd5Vlru" role="2Oq$k0" />
            <node concept="3Tsc0h" id="7r$Cpd5VlYN" role="2OqNvi">
              <ref role="3TtcxE" to="uppb:2qK8RKEC3$n" resolve="mandatory" />
            </node>
          </node>
          <node concept="3clFbS" id="7r$Cpd5Vl87" role="2LFqv$">
            <node concept="3clFbJ" id="7r$Cpd5Vm39" role="3cqZAp">
              <node concept="3fqX7Q" id="7r$Cpd5Vm3v" role="3clFbw">
                <node concept="2OqwBi" id="7r$Cpd5VnzF" role="3fr31v">
                  <node concept="2OqwBi" id="7r$Cpd5VmMh" role="2Oq$k0">
                    <node concept="2GrUjf" id="7r$Cpd5Vm3T" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="7r$Cpd5Vl83" resolve="mandatoryNode" />
                    </node>
                    <node concept="3TrEf2" id="7r$Cpd5VnaV" role="2OqNvi">
                      <ref role="3Tt5mk" to="uppb:2qK8RKEBS5C" resolve="ref" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7r$Cpd5VnZN" role="2OqNvi">
                    <ref role="3TsBF5" to="uppb:6I9RXT7Mc2" resolve="isSelected" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7r$Cpd5Vm3b" role="3clFbx">
                <node concept="3cpWs6" id="7r$Cpd5Vo6b" role="3cqZAp">
                  <node concept="3clFbT" id="7r$Cpd5Vo6s" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7r$Cpd5QxId" role="3cqZAp">
          <node concept="3clFbS" id="7r$Cpd5QxIe" role="3clFbx">
            <node concept="3cpWs6" id="7r$Cpd5VB8F" role="3cqZAp">
              <node concept="3clFbT" id="7r$Cpd5VB9b" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="7r$Cpd5Rl3A" role="3clFbw">
            <node concept="2OqwBi" id="7r$Cpd5QxIE" role="3uHU7B">
              <node concept="13iPFW" id="7r$Cpd5VwPJ" role="2Oq$k0" />
              <node concept="1mIQ4w" id="7r$Cpd5QxIG" role="2OqNvi">
                <node concept="chp4Y" id="7r$Cpd5QxIH" role="cj9EA">
                  <ref role="cht4Q" to="uppb:wb0I6Vg0b5" resolve="ArtifactNode1M" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="7r$Cpd5QxIn" role="3uHU7w">
              <node concept="3cmrfG" id="7r$Cpd5QxIo" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="7r$Cpd5QxIp" role="3uHU7B">
                <node concept="2OqwBi" id="7r$Cpd5QxIq" role="2Oq$k0">
                  <node concept="2OqwBi" id="7r$Cpd5QxIr" role="2Oq$k0">
                    <node concept="13iPFW" id="7r$Cpd5VxpE" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="7r$Cpd5Rf_h" role="2OqNvi">
                      <ref role="3TtcxE" to="uppb:4x6uVBKzUAz" resolve="childNodes" />
                    </node>
                  </node>
                  <node concept="3zZkjj" id="7r$Cpd5QxIu" role="2OqNvi">
                    <node concept="1bVj0M" id="7r$Cpd5QxIv" role="23t8la">
                      <node concept="3clFbS" id="7r$Cpd5QxIw" role="1bW5cS">
                        <node concept="3clFbF" id="7r$Cpd5QxIx" role="3cqZAp">
                          <node concept="2OqwBi" id="7r$Cpd5QxIy" role="3clFbG">
                            <node concept="1PxgMI" id="7r$Cpd5QxIz" role="2Oq$k0">
                              <node concept="chp4Y" id="7r$Cpd5QxI$" role="3oSUPX">
                                <ref role="cht4Q" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
                              </node>
                              <node concept="37vLTw" id="7r$Cpd5QxI_" role="1m5AlR">
                                <ref role="3cqZAo" node="7r$Cpd5QxIB" resolve="it" />
                              </node>
                            </node>
                            <node concept="3TrcHB" id="7r$Cpd5QxIA" role="2OqNvi">
                              <ref role="3TsBF5" to="uppb:6I9RXT7Mc2" resolve="isSelected" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="7r$Cpd5QxIB" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="7r$Cpd5QxIC" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="34oBXx" id="7r$Cpd5QxID" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7r$Cpd5Q9sc" role="3cqZAp">
          <node concept="3clFbS" id="7r$Cpd5Q9se" role="3clFbx">
            <node concept="3cpWs6" id="7r$Cpd5VCoP" role="3cqZAp">
              <node concept="3clFbT" id="7r$Cpd5VCpg" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="7r$Cpd5Qb57" role="3clFbw">
            <node concept="3clFbC" id="7r$Cpd5QzJj" role="3uHU7w">
              <node concept="2OqwBi" id="7r$Cpd5QgW9" role="3uHU7B">
                <node concept="2OqwBi" id="7r$Cpd5QcAx" role="2Oq$k0">
                  <node concept="2OqwBi" id="7r$Cpd5Qboz" role="2Oq$k0">
                    <node concept="13iPFW" id="7r$Cpd5VBg9" role="2Oq$k0" />
                    <node concept="32TBzR" id="7r$Cpd5Qbzl" role="2OqNvi" />
                  </node>
                  <node concept="3zZkjj" id="7r$Cpd5Qdt2" role="2OqNvi">
                    <node concept="1bVj0M" id="7r$Cpd5Qdt4" role="23t8la">
                      <node concept="3clFbS" id="7r$Cpd5Qdt5" role="1bW5cS">
                        <node concept="3clFbF" id="7r$Cpd5QdD0" role="3cqZAp">
                          <node concept="2OqwBi" id="7r$Cpd5Qfu_" role="3clFbG">
                            <node concept="1PxgMI" id="7r$Cpd5QeZw" role="2Oq$k0">
                              <node concept="chp4Y" id="7r$Cpd5Qf9R" role="3oSUPX">
                                <ref role="cht4Q" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
                              </node>
                              <node concept="37vLTw" id="7r$Cpd5QdCZ" role="1m5AlR">
                                <ref role="3cqZAo" node="7r$Cpd5Qdt6" resolve="it" />
                              </node>
                            </node>
                            <node concept="3TrcHB" id="7r$Cpd5QfV9" role="2OqNvi">
                              <ref role="3TsBF5" to="uppb:6I9RXT7Mc2" resolve="isSelected" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="7r$Cpd5Qdt6" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="7r$Cpd5Qdt7" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="34oBXx" id="7r$Cpd5Qhg3" role="2OqNvi" />
              </node>
              <node concept="3cmrfG" id="7r$Cpd5Q$Vh" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="2OqwBi" id="7r$Cpd5Q9Ag" role="3uHU7B">
              <node concept="13iPFW" id="7r$Cpd5VBJD" role="2Oq$k0" />
              <node concept="1mIQ4w" id="7r$Cpd5Q9GX" role="2OqNvi">
                <node concept="chp4Y" id="7r$Cpd5Qzql" role="cj9EA">
                  <ref role="cht4Q" to="uppb:wb0I6Vg0b4" resolve="ArtifactNodeNM" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7r$Cpd5VDFg" role="3cqZAp" />
        <node concept="3SKdUt" id="7r$Cpd5VGeJ" role="3cqZAp">
          <node concept="3SKdUq" id="7r$Cpd5VGeL" role="3SKWNk">
            <property role="3SKdUp" value="check dependencies (required, excluded)" />
          </node>
        </node>
        <node concept="2Gpval" id="7r$Cpd5VkSO" role="3cqZAp">
          <node concept="2GrKxI" id="7r$Cpd5VkSP" role="2Gsz3X">
            <property role="TrG5h" value="requiredNode" />
          </node>
          <node concept="2OqwBi" id="7r$Cpd5VkSQ" role="2GsD0m">
            <node concept="13iPFW" id="7r$Cpd5VkSR" role="2Oq$k0" />
            <node concept="3Tsc0h" id="7r$Cpd5VkSS" role="2OqNvi">
              <ref role="3TtcxE" to="uppb:2qK8RKEC3$o" resolve="required" />
            </node>
          </node>
          <node concept="3clFbS" id="7r$Cpd5VkST" role="2LFqv$">
            <node concept="3clFbJ" id="7r$Cpd5Vos4" role="3cqZAp">
              <node concept="3clFbS" id="7r$Cpd5Vos6" role="3clFbx">
                <node concept="3cpWs6" id="7r$Cpd5Vq16" role="3cqZAp">
                  <node concept="3clFbT" id="7r$Cpd5Vq1q" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="7r$Cpd5Vow4" role="3clFbw">
                <node concept="2OqwBi" id="7r$Cpd5Vpum" role="3fr31v">
                  <node concept="2OqwBi" id="7r$Cpd5VoDn" role="2Oq$k0">
                    <node concept="2GrUjf" id="7r$Cpd5Voww" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="7r$Cpd5VkSP" resolve="requiredNode" />
                    </node>
                    <node concept="3TrEf2" id="7r$Cpd5Vp3S" role="2OqNvi">
                      <ref role="3Tt5mk" to="uppb:2qK8RKEBS5C" resolve="ref" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7r$Cpd5VpUA" role="2OqNvi">
                    <ref role="3TsBF5" to="uppb:6I9RXT7Mc2" resolve="isSelected" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7r$Cpd5VkT0" role="3cqZAp">
          <node concept="2GrKxI" id="7r$Cpd5VkT1" role="2Gsz3X">
            <property role="TrG5h" value="excludedNode" />
          </node>
          <node concept="2OqwBi" id="7r$Cpd5VkT2" role="2GsD0m">
            <node concept="13iPFW" id="7r$Cpd5VkT3" role="2Oq$k0" />
            <node concept="3Tsc0h" id="7r$Cpd5VkT4" role="2OqNvi">
              <ref role="3TtcxE" to="uppb:2qK8RKEC3$p" resolve="excluded" />
            </node>
          </node>
          <node concept="3clFbS" id="7r$Cpd5VkT5" role="2LFqv$">
            <node concept="3clFbJ" id="7r$Cpd5VqoD" role="3cqZAp">
              <node concept="2OqwBi" id="7r$Cpd5VqRi" role="3clFbw">
                <node concept="2OqwBi" id="7r$Cpd5VqxQ" role="2Oq$k0">
                  <node concept="2GrUjf" id="7r$Cpd5Vqp3" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="7r$Cpd5VkT1" resolve="excludedNode" />
                  </node>
                  <node concept="3TrEf2" id="7r$Cpd5VqI_" role="2OqNvi">
                    <ref role="3Tt5mk" to="uppb:2qK8RKEBS5C" resolve="ref" />
                  </node>
                </node>
                <node concept="3TrcHB" id="7r$Cpd5Vrhv" role="2OqNvi">
                  <ref role="3TsBF5" to="uppb:6I9RXT7Mc2" resolve="isSelected" />
                </node>
              </node>
              <node concept="3clFbS" id="7r$Cpd5VqoF" role="3clFbx">
                <node concept="3cpWs6" id="7r$Cpd5VrjD" role="3cqZAp">
                  <node concept="3clFbT" id="7r$Cpd5Vrqp" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7r$Cpd5VrIW" role="3cqZAp" />
        <node concept="3clFbH" id="7r$Cpd5VCX$" role="3cqZAp" />
        <node concept="3clFbH" id="7r$Cpd5VrJS" role="3cqZAp" />
        <node concept="3clFbH" id="7r$Cpd5VrKP" role="3cqZAp" />
        <node concept="3cpWs6" id="7r$Cpd5VrwT" role="3cqZAp">
          <node concept="3clFbT" id="7r$Cpd5VrCl" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="6I9RXT28Uw" role="13h7CW">
      <node concept="3clFbS" id="6I9RXT28Ux" role="2VODD2">
        <node concept="3clFbF" id="2SikScA6xV7" role="3cqZAp">
          <node concept="37vLTI" id="2SikScA6_8R" role="3clFbG">
            <node concept="3clFbT" id="2SikScA6_9h" role="37vLTx">
              <property role="3clFbU" value="false" />
            </node>
            <node concept="2OqwBi" id="2SikScA6$77" role="37vLTJ">
              <node concept="13iPFW" id="2SikScA6xV6" role="2Oq$k0" />
              <node concept="3TrcHB" id="2SikScA6$D8" role="2OqNvi">
                <ref role="3TsBF5" to="uppb:2SikScA6xUZ" resolve="isPrerequisited" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2SikScA7dA5" role="3cqZAp">
          <node concept="37vLTI" id="2SikScA7exT" role="3clFbG">
            <node concept="3clFbT" id="2SikScA7e$8" role="37vLTx">
              <property role="3clFbU" value="false" />
            </node>
            <node concept="2OqwBi" id="2SikScA7dHq" role="37vLTJ">
              <node concept="13iPFW" id="2SikScA7dA3" role="2Oq$k0" />
              <node concept="3TrcHB" id="2SikScA7e2a" role="2OqNvi">
                <ref role="3TsBF5" to="uppb:6I9RXT7Mc2" resolve="isSelected" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ww5GvfJ1PQ" role="3cqZAp">
          <node concept="37vLTI" id="ww5GvfJ2Pz" role="3clFbG">
            <node concept="3clFbT" id="ww5GvfJ2RR" role="37vLTx">
              <property role="3clFbU" value="false" />
            </node>
            <node concept="2OqwBi" id="ww5GvfJ1Xy" role="37vLTJ">
              <node concept="13iPFW" id="ww5GvfJ1PO" role="2Oq$k0" />
              <node concept="3TrcHB" id="ww5GvfJ2io" role="2OqNvi">
                <ref role="3TsBF5" to="uppb:ww5GvfIUTN" resolve="isMandatoryChild" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="4T0MB1Xdnd7">
    <property role="3GE5qa" value="artifactDescription" />
    <ref role="13h7C2" to="uppb:wb0I6Vb7D5" resolve="ArtifactDescription" />
    <node concept="13i0hz" id="4T0MB1Xdo34" role="13h7CS">
      <property role="TrG5h" value="getAllFeatures" />
      <property role="2Ki8OM" value="true" />
      <node concept="3Tm1VV" id="4T0MB1Xdo35" role="1B3o_S" />
      <node concept="_YKpA" id="4T0MB1Xdoyp" role="3clF45">
        <node concept="3Tqbb2" id="4T0MB1Xdoy_" role="_ZDj9">
          <ref role="ehGHo" to="uppb:wb0I6Vb7D5" resolve="ArtifactDescription" />
        </node>
      </node>
      <node concept="3clFbS" id="4T0MB1Xdo37" role="3clF47">
        <node concept="3SKdUt" id="4T0MB1XfYXc" role="3cqZAp">
          <node concept="3SKdUq" id="4T0MB1XfYXe" role="3SKWNk">
            <property role="3SKdUp" value="look for repository" />
          </node>
        </node>
        <node concept="3cpWs8" id="5dzaEnaXfFJ" role="3cqZAp">
          <node concept="3cpWsn" id="5dzaEnaXfFK" role="3cpWs9">
            <property role="TrG5h" value="srcModule" />
            <node concept="3uibUv" id="5dzaEnaXfFL" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
            <node concept="2OqwBi" id="5dzaEnaXe82" role="33vP2m">
              <node concept="pHN19" id="5dzaEnaXd5Q" role="2Oq$k0">
                <node concept="PFCIn" id="5dzaEnaXdjJ" role="2V$M_3">
                  <node concept="20RdaH" id="5dzaEnaXdjI" role="PFCIW">
                    <property role="20Rdg5" value="4f5b9324-36b5-46b2-a8c8-a56e7087f59e" />
                    <property role="20Rdg7" value="rootfile" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="5dzaEnaXerg" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SLanguage.getSourceModule():org.jetbrains.mps.openapi.module.SModule" resolve="getSourceModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5dzaEnaXgcz" role="3cqZAp">
          <node concept="3clFbS" id="5dzaEnaXgc_" role="3clFbx">
            <node concept="3SKdUt" id="5dzaEnaXgRE" role="3cqZAp">
              <node concept="3SKdUq" id="5dzaEnaXgRG" role="3SKWNk">
                <property role="3SKdUp" value="TODO: THROW EXCEPTION" />
              </node>
            </node>
            <node concept="2xdQw9" id="5Xcftn9Q6zw" role="3cqZAp">
              <property role="2xdLsb" value="info" />
              <node concept="Xl_RD" id="7VOscSov80o" role="9lYJi">
                <property role="Xl_RC" value="THIS IS A NO NO" />
              </node>
            </node>
            <node concept="3cpWs6" id="5dzaEnaXgSy" role="3cqZAp">
              <node concept="10Nm6u" id="5dzaEnaXh45" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="5dzaEnaXgEz" role="3clFbw">
            <node concept="10Nm6u" id="5dzaEnaXgR4" role="3uHU7w" />
            <node concept="37vLTw" id="5dzaEnaXgpE" role="3uHU7B">
              <ref role="3cqZAo" node="5dzaEnaXfFK" resolve="srcModule" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4T0MB1Xds2a" role="3cqZAp">
          <node concept="3cpWsn" id="4T0MB1Xds2b" role="3cpWs9">
            <property role="TrG5h" value="repo" />
            <node concept="3uibUv" id="4T0MB1Xds2c" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="5dzaEnaXexI" role="33vP2m">
              <node concept="liA8E" id="5dzaEnaXeX4" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SModule.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
              </node>
              <node concept="37vLTw" id="5dzaEnaXhOc" role="2Oq$k0">
                <ref role="3cqZAo" node="5dzaEnaXfFK" resolve="srcModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4T0MB1XfV2F" role="3cqZAp">
          <node concept="3clFbS" id="4T0MB1XfV2H" role="3clFbx">
            <node concept="3SKdUt" id="5dzaEnaXhrR" role="3cqZAp">
              <node concept="3SKdUq" id="5dzaEnaXhrS" role="3SKWNk">
                <property role="3SKdUp" value="TODO: THROW EXCEPTION" />
              </node>
            </node>
            <node concept="2xdQw9" id="5Xcftn9Q6Qp" role="3cqZAp">
              <property role="2xdLsb" value="info" />
              <node concept="Xl_RD" id="7VOscSov8sp" role="9lYJi">
                <property role="Xl_RC" value="THIS IS ALSO NO" />
              </node>
            </node>
            <node concept="3cpWs6" id="5dzaEnaXhrT" role="3cqZAp">
              <node concept="10Nm6u" id="5dzaEnaXhrU" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="4T0MB1XfV$K" role="3clFbw">
            <node concept="10Nm6u" id="4T0MB1XfVNM" role="3uHU7w" />
            <node concept="37vLTw" id="4T0MB1XfVgO" role="3uHU7B">
              <ref role="3cqZAo" node="4T0MB1Xds2b" resolve="repo" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4T0MB1XfYvR" role="3cqZAp" />
        <node concept="3SKdUt" id="4T0MB1Xds28" role="3cqZAp">
          <node concept="3SKdUq" id="4T0MB1Xds29" role="3SKWNk">
            <property role="3SKdUp" value="for every module in repository: check for config" />
          </node>
        </node>
        <node concept="3cpWs8" id="4T0MB1Xds20" role="3cqZAp">
          <node concept="3cpWsn" id="4T0MB1Xds21" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="4T0MB1Xds22" role="1tU5fm">
              <node concept="3Tqbb2" id="4T0MB1XdtrW" role="_ZDj9">
                <ref role="ehGHo" to="uppb:wb0I6Vb7D5" resolve="ArtifactDescription" />
              </node>
            </node>
            <node concept="2ShNRf" id="4T0MB1Xds24" role="33vP2m">
              <node concept="Tc6Ow" id="4T0MB1Xds25" role="2ShVmc">
                <node concept="3Tqbb2" id="4T0MB1Xdu6I" role="HW$YZ">
                  <ref role="ehGHo" to="uppb:wb0I6Vb7D5" resolve="ArtifactDescription" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="4T0MB1Xds2g" role="3cqZAp">
          <node concept="2GrKxI" id="4T0MB1Xds2h" role="2Gsz3X">
            <property role="TrG5h" value="curModule" />
          </node>
          <node concept="2OqwBi" id="4T0MB1Xds2i" role="2GsD0m">
            <node concept="37vLTw" id="4T0MB1Xds2j" role="2Oq$k0">
              <ref role="3cqZAo" node="4T0MB1Xds2b" resolve="repo" />
            </node>
            <node concept="liA8E" id="4T0MB1Xds2k" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~SRepository.getModules():java.lang.Iterable" resolve="getModules" />
            </node>
          </node>
          <node concept="3clFbS" id="4T0MB1Xds2l" role="2LFqv$">
            <node concept="3clFbJ" id="4T0MB1Xds2m" role="3cqZAp">
              <node concept="3clFbS" id="4T0MB1Xds2n" role="3clFbx">
                <node concept="2Gpval" id="4T0MB1Xds2o" role="3cqZAp">
                  <node concept="2GrKxI" id="4T0MB1Xds2p" role="2Gsz3X">
                    <property role="TrG5h" value="model" />
                  </node>
                  <node concept="3clFbS" id="4T0MB1Xds2q" role="2LFqv$">
                    <node concept="3cpWs8" id="4T0MB1Xds2r" role="3cqZAp">
                      <node concept="3cpWsn" id="4T0MB1Xds2s" role="3cpWs9">
                        <property role="TrG5h" value="graphNode" />
                        <node concept="3Tqbb2" id="4T0MB1XdvLr" role="1tU5fm">
                          <ref role="ehGHo" to="uppb:wb0I6Vb7D5" resolve="ArtifactDescription" />
                        </node>
                        <node concept="2OqwBi" id="4T0MB1XfKMV" role="33vP2m">
                          <node concept="35c_gC" id="4T0MB1XfKrU" role="2Oq$k0">
                            <ref role="35c_gD" to="uppb:wb0I6Vb7D5" resolve="ArtifactDescription" />
                          </node>
                          <node concept="2qgKlT" id="4T0MB1XfLqi" role="2OqNvi">
                            <ref role="37wK5l" node="4T0MB1XduC$" resolve="findFeatureDescriptionInModel" />
                            <node concept="2GrUjf" id="4T0MB1XfLwU" role="37wK5m">
                              <ref role="2Gs0qQ" node="4T0MB1Xds2p" resolve="model" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="4T0MB1Xds2w" role="3cqZAp">
                      <node concept="3clFbS" id="4T0MB1Xds2x" role="3clFbx">
                        <node concept="3clFbF" id="4T0MB1Xds2y" role="3cqZAp">
                          <node concept="2OqwBi" id="4T0MB1Xds2z" role="3clFbG">
                            <node concept="37vLTw" id="4T0MB1Xds2$" role="2Oq$k0">
                              <ref role="3cqZAo" node="4T0MB1Xds21" resolve="result" />
                            </node>
                            <node concept="TSZUe" id="4T0MB1Xds2_" role="2OqNvi">
                              <node concept="37vLTw" id="4T0MB1Xds2A" role="25WWJ7">
                                <ref role="3cqZAo" node="4T0MB1Xds2s" resolve="graphNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3y3z36" id="4T0MB1Xds2B" role="3clFbw">
                        <node concept="10Nm6u" id="4T0MB1Xds2C" role="3uHU7w" />
                        <node concept="37vLTw" id="4T0MB1Xds2D" role="3uHU7B">
                          <ref role="3cqZAo" node="4T0MB1Xds2s" resolve="graphNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4T0MB1Xds2E" role="2GsD0m">
                    <node concept="2GrUjf" id="4T0MB1Xds2F" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="4T0MB1Xds2h" resolve="curModule" />
                    </node>
                    <node concept="liA8E" id="4T0MB1Xds2G" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~SModule.getModels():java.lang.Iterable" resolve="getModels" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="4T0MB1Xds2H" role="3clFbw">
                <node concept="3uibUv" id="4T0MB1Xds2I" role="2ZW6by">
                  <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                </node>
                <node concept="2GrUjf" id="4T0MB1Xds2J" role="2ZW6bz">
                  <ref role="2Gs0qQ" node="4T0MB1Xds2h" resolve="curModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4T0MB1Xds2K" role="3cqZAp">
          <node concept="37vLTw" id="4T0MB1Xds2L" role="3cqZAk">
            <ref role="3cqZAo" node="4T0MB1Xds21" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="ww5GvfP0Os" role="13h7CS">
      <property role="TrG5h" value="getLanguage" />
      <node concept="3Tm1VV" id="ww5GvfP0Ot" role="1B3o_S" />
      <node concept="3uibUv" id="ww5GvfTeX4" role="3clF45">
        <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
      </node>
      <node concept="3clFbS" id="ww5GvfP0Ov" role="3clF47">
        <node concept="3cpWs8" id="ww5GvfQdut" role="3cqZAp">
          <node concept="3cpWsn" id="ww5GvfQduw" role="3cpWs9">
            <property role="TrG5h" value="amodel" />
            <node concept="H_c77" id="ww5GvfQdur" role="1tU5fm" />
            <node concept="2OqwBi" id="ww5GvfQdGu" role="33vP2m">
              <node concept="13iPFW" id="ww5GvfQdyS" role="2Oq$k0" />
              <node concept="I4A8Y" id="ww5GvfQdRK" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="ww5GvfP3VG" role="3cqZAp">
          <node concept="3cpWsn" id="ww5GvfP3VH" role="3cpWs9">
            <property role="TrG5h" value="smodel" />
            <node concept="3uibUv" id="ww5GvfP3VI" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
            <node concept="10QFUN" id="ww5GvfP3Zc" role="33vP2m">
              <node concept="3uibUv" id="ww5GvfP40T" role="10QFUM">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
              <node concept="37vLTw" id="ww5GvfQdU7" role="10QFUP">
                <ref role="3cqZAo" node="ww5GvfQduw" resolve="amodel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="ww5GvfP50B" role="3cqZAp">
          <node concept="3cpWsn" id="ww5GvfP50C" role="3cpWs9">
            <property role="TrG5h" value="smodule" />
            <node concept="3uibUv" id="ww5GvfP50D" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
            <node concept="2OqwBi" id="ww5GvfP4A8" role="33vP2m">
              <node concept="37vLTw" id="ww5GvfP4s_" role="2Oq$k0">
                <ref role="3cqZAo" node="ww5GvfP3VH" resolve="smodel" />
              </node>
              <node concept="liA8E" id="ww5GvfP4Qm" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule():org.jetbrains.mps.openapi.module.SModule" resolve="getModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5dzaEnaXKN_" role="3cqZAp" />
        <node concept="3clFbJ" id="ww5GvfP5bD" role="3cqZAp">
          <node concept="3clFbS" id="ww5GvfP5bF" role="3clFbx">
            <node concept="3cpWs8" id="ww5GvfRdLZ" role="3cqZAp">
              <node concept="3cpWsn" id="ww5GvfRdM0" role="3cpWs9">
                <property role="TrG5h" value="lang" />
                <node concept="3uibUv" id="ww5GvfRdM1" role="1tU5fm">
                  <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                </node>
                <node concept="0kSF2" id="ww5GvfRehx" role="33vP2m">
                  <node concept="3uibUv" id="ww5GvfReh$" role="0kSFW">
                    <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                  </node>
                  <node concept="37vLTw" id="ww5GvfRdQh" role="0kSFX">
                    <ref role="3cqZAo" node="ww5GvfP50C" resolve="smodule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="ww5GvfP5wX" role="3cqZAp">
              <node concept="37vLTw" id="ww5GvfTfee" role="3cqZAk">
                <ref role="3cqZAo" node="ww5GvfRdM0" resolve="lang" />
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="ww5GvfP5w9" role="3clFbw">
            <node concept="3uibUv" id="ww5GvfRdDM" role="2ZW6by">
              <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
            </node>
            <node concept="37vLTw" id="ww5GvfP5zZ" role="2ZW6bz">
              <ref role="3cqZAo" node="ww5GvfP50C" resolve="smodule" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="ww5GvfP5J0" role="3cqZAp" />
        <node concept="3SKdUt" id="ww5GvfP5MU" role="3cqZAp">
          <node concept="3SKdUq" id="ww5GvfP5MW" role="3SKWNk">
            <property role="3SKdUp" value="TODO: THIS SHOULD NEVER HAPPEN" />
          </node>
        </node>
        <node concept="2xdQw9" id="5Xcftn9Q79i" role="3cqZAp">
          <property role="2xdLsb" value="info" />
          <node concept="Xl_RD" id="ww5GvfP5TX" role="9lYJi">
            <property role="Xl_RC" value="THIS SHOULD NEVER HAPPEN: language could not be extracted from FeatureDescription" />
          </node>
        </node>
        <node concept="3clFbH" id="ww5GvfP66N" role="3cqZAp" />
        <node concept="3cpWs6" id="ww5GvfP3nh" role="3cqZAp">
          <node concept="10Nm6u" id="ww5GvfP3ru" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4T0MB1XduC$" role="13h7CS">
      <property role="TrG5h" value="findFeatureDescriptionInModel" />
      <property role="2Ki8OM" value="true" />
      <node concept="3Tm1VV" id="4T0MB1XduC_" role="1B3o_S" />
      <node concept="3clFbS" id="4T0MB1XduCB" role="3clF47">
        <node concept="3SKdUt" id="4T0MB1XduCC" role="3cqZAp">
          <node concept="3SKdUq" id="4T0MB1XduCD" role="3SKWNk">
            <property role="3SKdUp" value="only look inside plugin aspect" />
          </node>
        </node>
        <node concept="3clFbJ" id="4T0MB1XduCE" role="3cqZAp">
          <node concept="3clFbS" id="4T0MB1XduCF" role="3clFbx">
            <node concept="3cpWs6" id="4T0MB1XduCG" role="3cqZAp">
              <node concept="10Nm6u" id="4T0MB1XduCH" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="4T0MB1XduCI" role="3clFbw">
            <node concept="2OqwBi" id="4T0MB1XduCJ" role="3fr31v">
              <node concept="2OqwBi" id="4T0MB1XduCK" role="2Oq$k0">
                <node concept="2OqwBi" id="4T0MB1XduCL" role="2Oq$k0">
                  <node concept="37vLTw" id="4T0MB1XduCM" role="2Oq$k0">
                    <ref role="3cqZAo" node="4T0MB1XduDh" resolve="model" />
                  </node>
                  <node concept="liA8E" id="4T0MB1XduCN" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getName():org.jetbrains.mps.openapi.model.SModelName" resolve="getName" />
                  </node>
                </node>
                <node concept="liA8E" id="4T0MB1XduCO" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModelName.getSimpleName():java.lang.String" resolve="getSimpleName" />
                </node>
              </node>
              <node concept="liA8E" id="4T0MB1XduCP" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="Xl_RD" id="4T0MB1XduCQ" role="37wK5m">
                  <property role="Xl_RC" value="plugin" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4T0MB1XduCR" role="3cqZAp" />
        <node concept="3SKdUt" id="4T0MB1XduCS" role="3cqZAp">
          <node concept="3SKdUq" id="4T0MB1XduCT" role="3SKWNk">
            <property role="3SKdUp" value="search through rootNodes" />
          </node>
        </node>
        <node concept="2Gpval" id="4T0MB1XduCU" role="3cqZAp">
          <node concept="2GrKxI" id="4T0MB1XduCV" role="2Gsz3X">
            <property role="TrG5h" value="rn" />
          </node>
          <node concept="3clFbS" id="4T0MB1XduCW" role="2LFqv$">
            <node concept="3clFbJ" id="4T0MB1XduCX" role="3cqZAp">
              <node concept="3clFbS" id="4T0MB1XduCY" role="3clFbx">
                <node concept="3cpWs6" id="4T0MB1XdF88" role="3cqZAp">
                  <node concept="10QFUN" id="4T0MB1XdEww" role="3cqZAk">
                    <node concept="3Tqbb2" id="4T0MB1XdECP" role="10QFUM">
                      <ref role="ehGHo" to="uppb:wb0I6Vb7D5" resolve="ArtifactDescription" />
                    </node>
                    <node concept="2GrUjf" id="4T0MB1XdEuB" role="10QFUP">
                      <ref role="2Gs0qQ" node="4T0MB1XduCV" resolve="rn" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4T0MB1XduD1" role="3clFbw">
                <node concept="2OqwBi" id="4T0MB1XduD2" role="2Oq$k0">
                  <node concept="2OqwBi" id="4T0MB1XduD3" role="2Oq$k0">
                    <node concept="2OqwBi" id="4T0MB1XduD4" role="2Oq$k0">
                      <node concept="2GrUjf" id="4T0MB1XduD5" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="4T0MB1XduCV" resolve="rn" />
                      </node>
                      <node concept="liA8E" id="4T0MB1XduD6" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept():org.jetbrains.mps.openapi.language.SConcept" resolve="getConcept" />
                      </node>
                    </node>
                    <node concept="liA8E" id="4T0MB1XduD7" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage():org.jetbrains.mps.openapi.language.SLanguage" resolve="getLanguage" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4T0MB1XduD8" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SLanguage.getQualifiedName():java.lang.String" resolve="getQualifiedName" />
                  </node>
                </node>
                <node concept="liA8E" id="4T0MB1XduD9" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="2OqwBi" id="7VOscSox35K" role="37wK5m">
                    <node concept="liA8E" id="7VOscSox4cs" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SLanguage.getQualifiedName():java.lang.String" resolve="getQualifiedName" />
                    </node>
                    <node concept="pHN19" id="7VOscSoy0S5" role="2Oq$k0">
                      <node concept="PFCIn" id="7VOscSoy0V_" role="2V$M_3">
                        <node concept="20RdaH" id="7VOscSoy0V$" role="PFCIW">
                          <property role="20Rdg5" value="8a945d2c-3408-48fb-a78b-e59c40503f85" />
                          <property role="20Rdg7" value="languageComposition" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4T0MB1XduDb" role="2GsD0m">
            <node concept="37vLTw" id="4T0MB1XduDc" role="2Oq$k0">
              <ref role="3cqZAo" node="4T0MB1XduDh" resolve="model" />
            </node>
            <node concept="liA8E" id="4T0MB1XduDd" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.getRootNodes():java.lang.Iterable" resolve="getRootNodes" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4T0MB1XduDe" role="3cqZAp" />
        <node concept="3cpWs6" id="4T0MB1XduDf" role="3cqZAp">
          <node concept="10Nm6u" id="4T0MB1XduDg" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="4T0MB1XduDh" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="4T0MB1XduDi" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3Tqbb2" id="4T0MB1XdvSf" role="3clF45">
        <ref role="ehGHo" to="uppb:wb0I6Vb7D5" resolve="ArtifactDescription" />
      </node>
    </node>
    <node concept="13i0hz" id="4T0MB1XeRH6" role="13h7CS">
      <property role="TrG5h" value="computePath" />
      <node concept="3Tm1VV" id="4T0MB1XeRH7" role="1B3o_S" />
      <node concept="3cqZAl" id="7r$Cpd5OXPI" role="3clF45" />
      <node concept="3clFbS" id="4T0MB1XeRH9" role="3clF47">
        <node concept="3SKdUt" id="7r$Cpd5P56j" role="3cqZAp">
          <node concept="3SKdUq" id="7r$Cpd5P56l" role="3SKWNk">
            <property role="3SKdUp" value="compute path for this instance" />
          </node>
        </node>
        <node concept="3cpWs8" id="4T0MB1XeMrf" role="3cqZAp">
          <node concept="3cpWsn" id="4T0MB1XeMrg" role="3cpWs9">
            <property role="TrG5h" value="path" />
            <node concept="17QB3L" id="4T0MB1XeMrh" role="1tU5fm" />
            <node concept="2OqwBi" id="4T0MB1XeMri" role="33vP2m">
              <node concept="13iPFW" id="4T0MB1XeT2B" role="2Oq$k0" />
              <node concept="3TrcHB" id="4T0MB1XeMrk" role="2OqNvi">
                <ref role="3TsBF5" to="uppb:XZk_44NpAT" resolve="shortname" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4T0MB1XeMrl" role="3cqZAp">
          <node concept="3cpWsn" id="4T0MB1XeMrm" role="3cpWs9">
            <property role="TrG5h" value="curNode" />
            <node concept="3Tqbb2" id="4T0MB1XeMrn" role="1tU5fm">
              <ref role="ehGHo" to="uppb:wb0I6Vb7D5" resolve="ArtifactDescription" />
            </node>
            <node concept="13iPFW" id="4T0MB1XeTb8" role="33vP2m" />
          </node>
        </node>
        <node concept="2$JKZl" id="4T0MB1XeMrp" role="3cqZAp">
          <node concept="3clFbS" id="4T0MB1XeMrq" role="2LFqv$">
            <node concept="3clFbF" id="4T0MB1XeMr_" role="3cqZAp">
              <node concept="37vLTI" id="4T0MB1XeMrA" role="3clFbG">
                <node concept="2OqwBi" id="4T0MB1XeMrB" role="37vLTx">
                  <node concept="37vLTw" id="4T0MB1XeMrC" role="2Oq$k0">
                    <ref role="3cqZAo" node="4T0MB1XeMrm" resolve="curNode" />
                  </node>
                  <node concept="3TrEf2" id="4T0MB1XeMrD" role="2OqNvi">
                    <ref role="3Tt5mk" to="uppb:4T0MB1XdSHH" resolve="parent" />
                  </node>
                </node>
                <node concept="37vLTw" id="4T0MB1XeMrE" role="37vLTJ">
                  <ref role="3cqZAo" node="4T0MB1XeMrm" resolve="curNode" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4T0MB1XeMrr" role="3cqZAp">
              <node concept="37vLTI" id="4T0MB1XeMrs" role="3clFbG">
                <node concept="3cpWs3" id="4T0MB1XeMrt" role="37vLTx">
                  <node concept="37vLTw" id="4T0MB1XeMru" role="3uHU7w">
                    <ref role="3cqZAo" node="4T0MB1XeMrg" resolve="path" />
                  </node>
                  <node concept="3cpWs3" id="4T0MB1XeMrv" role="3uHU7B">
                    <node concept="2OqwBi" id="4T0MB1XeMrw" role="3uHU7B">
                      <node concept="37vLTw" id="4T0MB1XeMrx" role="2Oq$k0">
                        <ref role="3cqZAo" node="4T0MB1XeMrm" resolve="curNode" />
                      </node>
                      <node concept="3TrcHB" id="4T0MB1XeMry" role="2OqNvi">
                        <ref role="3TsBF5" to="uppb:XZk_44NpAT" resolve="shortname" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="4T0MB1XeMrz" role="3uHU7w">
                      <property role="Xl_RC" value="." />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4T0MB1XeMr$" role="37vLTJ">
                  <ref role="3cqZAo" node="4T0MB1XeMrg" resolve="path" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4T0MB1XeMrF" role="2$JKZa">
            <node concept="10Nm6u" id="4T0MB1XeMrG" role="3uHU7w" />
            <node concept="2OqwBi" id="4T0MB1XeMrH" role="3uHU7B">
              <node concept="37vLTw" id="4T0MB1XeMrI" role="2Oq$k0">
                <ref role="3cqZAo" node="4T0MB1XeMrm" resolve="curNode" />
              </node>
              <node concept="3TrEf2" id="4T0MB1XeMrJ" role="2OqNvi">
                <ref role="3Tt5mk" to="uppb:4T0MB1XdSHH" resolve="parent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7r$Cpd5OYuy" role="3cqZAp">
          <node concept="37vLTI" id="7r$Cpd5OZFp" role="3clFbG">
            <node concept="37vLTw" id="7r$Cpd5OZLV" role="37vLTx">
              <ref role="3cqZAo" node="4T0MB1XeMrg" resolve="path" />
            </node>
            <node concept="2OqwBi" id="7r$Cpd5OYY5" role="37vLTJ">
              <node concept="13iPFW" id="7r$Cpd5OYuv" role="2Oq$k0" />
              <node concept="3TrcHB" id="7r$Cpd5OZ9p" role="2OqNvi">
                <ref role="3TsBF5" to="uppb:4T0MB1XbEo9" resolve="path" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7r$Cpd5OZSm" role="3cqZAp" />
        <node concept="3SKdUt" id="7r$Cpd5P4ts" role="3cqZAp">
          <node concept="3SKdUq" id="7r$Cpd5P4tu" role="3SKWNk">
            <property role="3SKdUp" value="compute path for all children" />
          </node>
        </node>
        <node concept="2Gpval" id="7r$Cpd5OWpp" role="3cqZAp">
          <node concept="2GrKxI" id="7r$Cpd5OWpq" role="2Gsz3X">
            <property role="TrG5h" value="node" />
          </node>
          <node concept="2OqwBi" id="7r$Cpd5OWpr" role="2GsD0m">
            <node concept="2OqwBi" id="7r$Cpd5OWps" role="2Oq$k0">
              <node concept="35c_gC" id="7r$Cpd5OWpt" role="2Oq$k0">
                <ref role="35c_gD" to="uppb:wb0I6Vb7D5" resolve="ArtifactDescription" />
              </node>
              <node concept="2qgKlT" id="7r$Cpd5OWpu" role="2OqNvi">
                <ref role="37wK5l" node="4T0MB1Xdo34" resolve="getAllFeatures" />
              </node>
            </node>
            <node concept="3zZkjj" id="7r$Cpd5OWpv" role="2OqNvi">
              <node concept="1bVj0M" id="7r$Cpd5OWpw" role="23t8la">
                <node concept="3clFbS" id="7r$Cpd5OWpx" role="1bW5cS">
                  <node concept="3clFbF" id="7r$Cpd5OWpy" role="3cqZAp">
                    <node concept="2OqwBi" id="7r$Cpd5OWpz" role="3clFbG">
                      <node concept="37vLTw" id="7r$Cpd5OWp$" role="2Oq$k0">
                        <ref role="3cqZAo" node="7r$Cpd5OWpB" resolve="it" />
                      </node>
                      <node concept="2qgKlT" id="7r$Cpd5OWp_" role="2OqNvi">
                        <ref role="37wK5l" node="4x6uVBKwYJ6" resolve="isDescendentOf" />
                        <node concept="13iPFW" id="7r$Cpd5P0$U" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="7r$Cpd5OWpB" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="7r$Cpd5OWpC" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7r$Cpd5OWpD" role="2LFqv$">
            <node concept="3clFbF" id="7r$Cpd5P3Kw" role="3cqZAp">
              <node concept="2OqwBi" id="7r$Cpd5OWpJ" role="3clFbG">
                <node concept="2GrUjf" id="7r$Cpd5OWpK" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="7r$Cpd5OWpq" resolve="node" />
                </node>
                <node concept="2qgKlT" id="7r$Cpd5OWpL" role="2OqNvi">
                  <ref role="37wK5l" node="4T0MB1XeRH6" resolve="computePath" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4x6uVBKwYJ6" role="13h7CS">
      <property role="TrG5h" value="isDescendentOf" />
      <node concept="3Tm1VV" id="4x6uVBKwYJ7" role="1B3o_S" />
      <node concept="10P_77" id="4x6uVBKwZof" role="3clF45" />
      <node concept="3clFbS" id="4x6uVBKwYJ9" role="3clF47">
        <node concept="3cpWs8" id="4x6uVBKwZqm" role="3cqZAp">
          <node concept="3cpWsn" id="4x6uVBKwZqp" role="3cpWs9">
            <property role="TrG5h" value="curNode" />
            <node concept="3Tqbb2" id="4x6uVBKwZql" role="1tU5fm">
              <ref role="ehGHo" to="uppb:wb0I6Vb7D5" resolve="ArtifactDescription" />
            </node>
            <node concept="13iPFW" id="4x6uVBKwZre" role="33vP2m" />
          </node>
        </node>
        <node concept="2$JKZl" id="4x6uVBKwZrP" role="3cqZAp">
          <node concept="3clFbS" id="4x6uVBKwZrR" role="2LFqv$">
            <node concept="3clFbJ" id="4x6uVBKx0wh" role="3cqZAp">
              <node concept="3clFbC" id="4x6uVBKx1Xx" role="3clFbw">
                <node concept="37vLTw" id="4x6uVBKx23p" role="3uHU7w">
                  <ref role="3cqZAo" node="4x6uVBKwZpb" resolve="node" />
                </node>
                <node concept="2OqwBi" id="4x6uVBKx0E0" role="3uHU7B">
                  <node concept="37vLTw" id="4x6uVBKx0wB" role="2Oq$k0">
                    <ref role="3cqZAo" node="4x6uVBKwZqp" resolve="curNode" />
                  </node>
                  <node concept="3TrEf2" id="4x6uVBKx10i" role="2OqNvi">
                    <ref role="3Tt5mk" to="uppb:4T0MB1XdSHH" resolve="parent" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="4x6uVBKx0wj" role="3clFbx">
                <node concept="3cpWs6" id="4x6uVBKx296" role="3cqZAp">
                  <node concept="3clFbT" id="4x6uVBKx2fA" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4x6uVBKx2sp" role="3cqZAp">
              <node concept="37vLTI" id="4x6uVBKx2Om" role="3clFbG">
                <node concept="2OqwBi" id="4x6uVBKx2Ym" role="37vLTx">
                  <node concept="37vLTw" id="4x6uVBKx2Q$" role="2Oq$k0">
                    <ref role="3cqZAo" node="4x6uVBKwZqp" resolve="curNode" />
                  </node>
                  <node concept="3TrEf2" id="4x6uVBKx3ms" role="2OqNvi">
                    <ref role="3Tt5mk" to="uppb:4T0MB1XdSHH" resolve="parent" />
                  </node>
                </node>
                <node concept="37vLTw" id="4x6uVBKx2sn" role="37vLTJ">
                  <ref role="3cqZAo" node="4x6uVBKwZqp" resolve="curNode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4x6uVBKx0k4" role="2$JKZa">
            <node concept="10Nm6u" id="4x6uVBKx0ms" role="3uHU7w" />
            <node concept="2OqwBi" id="4x6uVBKwZ_O" role="3uHU7B">
              <node concept="37vLTw" id="4x6uVBKwZsl" role="2Oq$k0">
                <ref role="3cqZAo" node="4x6uVBKwZqp" resolve="curNode" />
              </node>
              <node concept="3TrEf2" id="4x6uVBKwZW4" role="2OqNvi">
                <ref role="3Tt5mk" to="uppb:4T0MB1XdSHH" resolve="parent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4x6uVBKx0rb" role="3cqZAp">
          <node concept="3clFbT" id="4x6uVBKx0tM" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4x6uVBKwZpb" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="4x6uVBKwZpa" role="1tU5fm">
          <ref role="ehGHo" to="uppb:wb0I6Vb7D5" resolve="ArtifactDescription" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="4T0MB1Xdnd8" role="13h7CW">
      <node concept="3clFbS" id="4T0MB1Xdnd9" role="2VODD2" />
    </node>
  </node>
  <node concept="312cEu" id="7Pq1P2GckM$">
    <property role="3GE5qa" value="artifactsTree" />
    <property role="TrG5h" value="ArtifactsTree" />
    <node concept="2YIFZL" id="7Pq1P2GghJR" role="jymVt">
      <property role="TrG5h" value="create" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="7Pq1P2Gcl3i" role="3clF47">
        <node concept="3cpWs8" id="2qK8RKEFoVC" role="3cqZAp">
          <node concept="3cpWsn" id="2qK8RKEFoVF" role="3cpWs9">
            <property role="TrG5h" value="descriptions" />
            <property role="3TUv4t" value="true" />
            <node concept="_YKpA" id="7Pq1P2G9S4a" role="1tU5fm">
              <node concept="3Tqbb2" id="7Pq1P2G9S4c" role="_ZDj9">
                <ref role="ehGHo" to="uppb:wb0I6Vb7D5" resolve="ArtifactDescription" />
              </node>
            </node>
            <node concept="2OqwBi" id="2qK8RKEBhM0" role="33vP2m">
              <node concept="35c_gC" id="2qK8RKEBhM1" role="2Oq$k0">
                <ref role="35c_gD" to="uppb:wb0I6Vb7D5" resolve="ArtifactDescription" />
              </node>
              <node concept="2qgKlT" id="2qK8RKEBhM2" role="2OqNvi">
                <ref role="37wK5l" node="4T0MB1Xdo34" resolve="getAllFeatures" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6I9RXSYk8u" role="3cqZAp">
          <node concept="3cpWsn" id="6I9RXSYk8v" role="3cpWs9">
            <property role="TrG5h" value="vertices" />
            <property role="3TUv4t" value="true" />
            <node concept="_YKpA" id="6I9RXSYk8w" role="1tU5fm">
              <node concept="3Tqbb2" id="4x6uVBKA4yc" role="_ZDj9">
                <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
              </node>
            </node>
            <node concept="1rXfSq" id="7Pq1P2Gcye3" role="33vP2m">
              <ref role="37wK5l" node="7Pq1P2GgnAM" resolve="createVerticesFromFeatureDescriptions" />
              <node concept="37vLTw" id="7Pq1P2GcRao" role="37wK5m">
                <ref role="3cqZAo" node="2qK8RKEFoVF" resolve="descriptions" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Pq1P2Gd2xx" role="3cqZAp">
          <node concept="3cpWsn" id="7Pq1P2Gd2xv" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="root" />
            <node concept="3Tqbb2" id="7Pq1P2Gd3Hy" role="1tU5fm">
              <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
            </node>
            <node concept="1rXfSq" id="7Pq1P2GdlNy" role="33vP2m">
              <ref role="37wK5l" node="7Pq1P2GgtPA" resolve="findEquivalentVertex" />
              <node concept="1rXfSq" id="7Pq1P2GcZkh" role="37wK5m">
                <ref role="37wK5l" node="7Pq1P2GgpLQ" resolve="findRootInDescriptions" />
                <node concept="37vLTw" id="7Pq1P2GcZC3" role="37wK5m">
                  <ref role="3cqZAo" node="2qK8RKEFoVF" resolve="descriptions" />
                </node>
              </node>
              <node concept="37vLTw" id="7Pq1P2GdmuG" role="37wK5m">
                <ref role="3cqZAo" node="6I9RXSYk8v" resolve="vertices" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4x6uVBKExHR" role="3cqZAp" />
        <node concept="3clFbF" id="7Pq1P2GdSwI" role="3cqZAp">
          <node concept="1rXfSq" id="7Pq1P2GdSwG" role="3clFbG">
            <ref role="37wK5l" node="7Pq1P2GgiR7" resolve="connectVertices" />
            <node concept="37vLTw" id="7Pq1P2Getyb" role="37wK5m">
              <ref role="3cqZAo" node="7Pq1P2Gd2xv" resolve="root" />
            </node>
            <node concept="37vLTw" id="7Pq1P2GdUY8" role="37wK5m">
              <ref role="3cqZAo" node="6I9RXSYk8v" resolve="vertices" />
            </node>
            <node concept="37vLTw" id="7Pq1P2GeKjk" role="37wK5m">
              <ref role="3cqZAo" node="2qK8RKEFoVF" resolve="descriptions" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Pq1P2GerC4" role="3cqZAp">
          <node concept="1rXfSq" id="7Pq1P2GerC2" role="3clFbG">
            <ref role="37wK5l" node="7Pq1P2Gglno" resolve="restoreRelationsBetweenVertices" />
            <node concept="37vLTw" id="7Pq1P2GesEW" role="37wK5m">
              <ref role="3cqZAo" node="7Pq1P2Gd2xv" resolve="root" />
            </node>
            <node concept="37vLTw" id="7Pq1P2Getdb" role="37wK5m">
              <ref role="3cqZAo" node="2qK8RKEFoVF" resolve="descriptions" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7Pq1P2GgIPo" role="3cqZAp" />
        <node concept="3cpWs6" id="7Pq1P2GgJwJ" role="3cqZAp">
          <node concept="37vLTw" id="7Pq1P2GgJVx" role="3cqZAk">
            <ref role="3cqZAo" node="7Pq1P2Gd2xv" resolve="root" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="7Pq1P2GgIqN" role="3clF45">
        <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
      </node>
      <node concept="3Tm1VV" id="7Pq1P2Gcl1m" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7Pq1P2GcqWw" role="jymVt" />
    <node concept="2tJIrI" id="7Pq1P2GdV2M" role="jymVt" />
    <node concept="2YIFZL" id="7Pq1P2GgiR7" role="jymVt">
      <property role="TrG5h" value="connectVertices" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="7Pq1P2GdsXO" role="3clF47">
        <node concept="3cpWs8" id="wb0I6VeL4F" role="3cqZAp">
          <node concept="3cpWsn" id="wb0I6VeL4L" role="3cpWs9">
            <property role="TrG5h" value="parentList" />
            <node concept="3O6Q9H" id="7Pq1P2GbEQx" role="1tU5fm">
              <node concept="3Tqbb2" id="7Pq1P2GbEQz" role="3O5elw">
                <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
              </node>
            </node>
            <node concept="2ShNRf" id="wb0I6VeLah" role="33vP2m">
              <node concept="2Jqq0_" id="7Pq1P2Gbn6h" role="2ShVmc">
                <node concept="3Tqbb2" id="7Pq1P2Gbn6j" role="HW$YZ">
                  <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Pq1P2Gc3gK" role="3cqZAp">
          <node concept="2OqwBi" id="7Pq1P2Gc5bc" role="3clFbG">
            <node concept="37vLTw" id="7Pq1P2Gc3gI" role="2Oq$k0">
              <ref role="3cqZAo" node="wb0I6VeL4L" resolve="parentList" />
            </node>
            <node concept="2Ke9KJ" id="7Pq1P2Gc7H4" role="2OqNvi">
              <node concept="37vLTw" id="7Pq1P2GeNAA" role="25WWJ7">
                <ref role="3cqZAo" node="7Pq1P2GeB1_" resolve="treeRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7Pq1P2Geuxg" role="3cqZAp" />
        <node concept="2$JKZl" id="wb0I6VeUu1" role="3cqZAp">
          <node concept="3clFbS" id="wb0I6VeUu3" role="2LFqv$">
            <node concept="3cpWs8" id="wb0I6Vf5dK" role="3cqZAp">
              <node concept="3cpWsn" id="wb0I6Vf5dL" role="3cpWs9">
                <property role="TrG5h" value="parent" />
                <node concept="2OqwBi" id="wb0I6Vf6fl" role="33vP2m">
                  <node concept="37vLTw" id="7Pq1P2GdLUg" role="2Oq$k0">
                    <ref role="3cqZAo" node="wb0I6VeL4L" resolve="parentList" />
                  </node>
                  <node concept="2Kt2Hk" id="7Pq1P2Gcf6S" role="2OqNvi" />
                </node>
                <node concept="3Tqbb2" id="6I9RXSYK$H" role="1tU5fm">
                  <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="wb0I6Vf9mp" role="3cqZAp">
              <node concept="2GrKxI" id="wb0I6Vf9mr" role="2Gsz3X">
                <property role="TrG5h" value="child" />
              </node>
              <node concept="3clFbS" id="wb0I6Vf9mv" role="2LFqv$">
                <node concept="3cpWs8" id="6I9RXSYJDO" role="3cqZAp">
                  <node concept="3cpWsn" id="6I9RXSYJDR" role="3cpWs9">
                    <property role="TrG5h" value="childNode" />
                    <node concept="3Tqbb2" id="6I9RXSYJDM" role="1tU5fm">
                      <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
                    </node>
                    <node concept="1rXfSq" id="7Pq1P2Gdnqu" role="33vP2m">
                      <ref role="37wK5l" node="7Pq1P2GgtPA" resolve="findEquivalentVertex" />
                      <node concept="2GrUjf" id="7Pq1P2GdnQW" role="37wK5m">
                        <ref role="2Gs0qQ" node="wb0I6Vf9mr" resolve="child" />
                      </node>
                      <node concept="37vLTw" id="7Pq1P2GdOyC" role="37wK5m">
                        <ref role="3cqZAo" node="7Pq1P2GdMVX" resolve="vertices" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6I9RXSYJMZ" role="3cqZAp">
                  <node concept="2OqwBi" id="6I9RXSYO4e" role="3clFbG">
                    <node concept="2OqwBi" id="6I9RXSYJZZ" role="2Oq$k0">
                      <node concept="37vLTw" id="6I9RXSYJMX" role="2Oq$k0">
                        <ref role="3cqZAo" node="wb0I6Vf5dL" resolve="parent" />
                      </node>
                      <node concept="3Tsc0h" id="4x6uVBKC4AX" role="2OqNvi">
                        <ref role="3TtcxE" to="uppb:4x6uVBKzUAz" resolve="childNodes" />
                      </node>
                    </node>
                    <node concept="TSZUe" id="6I9RXSYRVj" role="2OqNvi">
                      <node concept="37vLTw" id="6I9RXSYS8N" role="25WWJ7">
                        <ref role="3cqZAo" node="6I9RXSYJDR" resolve="childNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="wb0I6Vf9q6" role="3cqZAp">
                  <node concept="2OqwBi" id="wb0I6Vfafn" role="3clFbG">
                    <node concept="37vLTw" id="7Pq1P2GdMwB" role="2Oq$k0">
                      <ref role="3cqZAo" node="wb0I6VeL4L" resolve="parentList" />
                    </node>
                    <node concept="2Ke9KJ" id="7Pq1P2GchJK" role="2OqNvi">
                      <node concept="37vLTw" id="7Pq1P2GchJM" role="25WWJ7">
                        <ref role="3cqZAo" node="6I9RXSYJDR" resolve="childNode" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1rXfSq" id="7Pq1P2GdhOl" role="2GsD0m">
                <ref role="37wK5l" node="7Pq1P2GgraM" resolve="findChildRelationsInFeatureDescriptions" />
                <node concept="37vLTw" id="7Pq1P2GdOk4" role="37wK5m">
                  <ref role="3cqZAo" node="7Pq1P2GdvTz" resolve="descriptions" />
                </node>
                <node concept="37vLTw" id="7Pq1P2GdiA1" role="37wK5m">
                  <ref role="3cqZAo" node="wb0I6Vf5dL" resolve="parent" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="wb0I6VeXHB" role="2$JKZa">
            <node concept="2OqwBi" id="wb0I6VeXHD" role="3fr31v">
              <node concept="37vLTw" id="7Pq1P2Ge$pL" role="2Oq$k0">
                <ref role="3cqZAo" node="wb0I6VeL4L" resolve="parentList" />
              </node>
              <node concept="1v1jN8" id="wb0I6VeXHF" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7Pq1P2GeB1_" role="3clF46">
        <property role="TrG5h" value="treeRoot" />
        <node concept="3Tqbb2" id="7Pq1P2GeBJE" role="1tU5fm">
          <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
        </node>
      </node>
      <node concept="37vLTG" id="7Pq1P2GdMVX" role="3clF46">
        <property role="TrG5h" value="vertices" />
        <node concept="_YKpA" id="7Pq1P2GdO4u" role="1tU5fm">
          <node concept="3Tqbb2" id="7Pq1P2GdO4v" role="_ZDj9">
            <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7Pq1P2GdvTz" role="3clF46">
        <property role="TrG5h" value="descriptions" />
        <node concept="_YKpA" id="7Pq1P2GdMIz" role="1tU5fm">
          <node concept="3Tqbb2" id="7Pq1P2GdMI$" role="_ZDj9">
            <ref role="ehGHo" to="uppb:wb0I6Vb7D5" resolve="ArtifactDescription" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7Pq1P2GdsWw" role="3clF45" />
      <node concept="3Tm6S6" id="7Pq1P2GdrOL" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7Pq1P2GdqWv" role="jymVt" />
    <node concept="2YIFZL" id="7Pq1P2Gglno" role="jymVt">
      <property role="TrG5h" value="restoreRelationsBetweenVertices" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="7Pq1P2GefxM" role="3clF47">
        <node concept="2Gpval" id="2qK8RKEBhLR" role="3cqZAp">
          <node concept="2GrKxI" id="2qK8RKEBhLS" role="2Gsz3X">
            <property role="TrG5h" value="fd" />
          </node>
          <node concept="3clFbS" id="2qK8RKEBhLT" role="2LFqv$">
            <node concept="3cpWs8" id="2qK8RKEBK59" role="3cqZAp">
              <node concept="3cpWsn" id="2qK8RKEBK5c" role="3cpWs9">
                <property role="TrG5h" value="vertex" />
                <node concept="3Tqbb2" id="2qK8RKEBK57" role="1tU5fm">
                  <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
                </node>
                <node concept="1rXfSq" id="7Pq1P2Gf0yV" role="33vP2m">
                  <ref role="37wK5l" node="7Pq1P2GgvEC" resolve="findVertexInTree" />
                  <node concept="2OqwBi" id="7Pq1P2Gf1YA" role="37wK5m">
                    <node concept="2GrUjf" id="7Pq1P2Gf1bg" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="2qK8RKEBhLS" resolve="fd" />
                    </node>
                    <node concept="3TrcHB" id="7Pq1P2Gf2Kl" role="2OqNvi">
                      <ref role="3TsBF5" to="uppb:4T0MB1XbEo9" resolve="path" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="7Pq1P2Gf4af" role="37wK5m">
                    <ref role="3cqZAo" node="7Pq1P2GemYG" resolve="treeRoot" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="2qK8RKEKlb2" role="3cqZAp">
              <node concept="2GrKxI" id="2qK8RKEKlb3" role="2Gsz3X">
                <property role="TrG5h" value="mandatory" />
              </node>
              <node concept="2OqwBi" id="2qK8RKEKlb4" role="2GsD0m">
                <node concept="2GrUjf" id="2qK8RKEKlb5" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="2qK8RKEBhLS" resolve="fd" />
                </node>
                <node concept="3Tsc0h" id="2qK8RKEKlb6" role="2OqNvi">
                  <ref role="3TtcxE" to="uppb:4T0MB1Xf65x" resolve="mandatory" />
                </node>
              </node>
              <node concept="3clFbS" id="2qK8RKEKlb7" role="2LFqv$">
                <node concept="3clFbF" id="2qK8RKEKlbo" role="3cqZAp">
                  <node concept="2OqwBi" id="2qK8RKEKlbp" role="3clFbG">
                    <node concept="2OqwBi" id="2qK8RKEKlbq" role="2Oq$k0">
                      <node concept="37vLTw" id="2qK8RKEKlbr" role="2Oq$k0">
                        <ref role="3cqZAo" node="2qK8RKEBK5c" resolve="vertex" />
                      </node>
                      <node concept="3Tsc0h" id="2qK8RKEKlbs" role="2OqNvi">
                        <ref role="3TtcxE" to="uppb:2qK8RKEC3$n" resolve="mandatory" />
                      </node>
                    </node>
                    <node concept="TSZUe" id="7Pq1P2GfUYH" role="2OqNvi">
                      <node concept="1rXfSq" id="7Pq1P2GfUYI" role="25WWJ7">
                        <ref role="37wK5l" node="7Pq1P2GgmCD" resolve="restoreReference" />
                        <node concept="2OqwBi" id="7Pq1P2GfUYJ" role="37wK5m">
                          <node concept="2OqwBi" id="7Pq1P2GfUYK" role="2Oq$k0">
                            <node concept="2GrUjf" id="7Pq1P2GfW4h" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="2qK8RKEKlb3" resolve="mandatory" />
                            </node>
                            <node concept="3TrEf2" id="7Pq1P2GfUYM" role="2OqNvi">
                              <ref role="3Tt5mk" to="uppb:2qK8RKEIZEL" resolve="ref" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7Pq1P2GfUYN" role="2OqNvi">
                            <ref role="3TsBF5" to="uppb:4T0MB1XbEo9" resolve="path" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="7Pq1P2GfUYO" role="37wK5m">
                          <ref role="3cqZAo" node="7Pq1P2GemYG" resolve="treeRoot" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="ww5GvfJ75Y" role="3cqZAp">
                  <node concept="37vLTI" id="ww5GvfJgip" role="3clFbG">
                    <node concept="3clFbT" id="ww5GvfJgCO" role="37vLTx">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="2OqwBi" id="ww5GvfJfjq" role="37vLTJ">
                      <node concept="2OqwBi" id="ww5GvfJe_4" role="2Oq$k0">
                        <node concept="2OqwBi" id="ww5GvfJ9tb" role="2Oq$k0">
                          <node concept="2OqwBi" id="ww5GvfJ7$h" role="2Oq$k0">
                            <node concept="37vLTw" id="ww5GvfJ75W" role="2Oq$k0">
                              <ref role="3cqZAo" node="2qK8RKEBK5c" resolve="vertex" />
                            </node>
                            <node concept="3Tsc0h" id="ww5GvfJ7Zn" role="2OqNvi">
                              <ref role="3TtcxE" to="uppb:2qK8RKEC3$n" resolve="mandatory" />
                            </node>
                          </node>
                          <node concept="1yVyf7" id="ww5GvfJcOq" role="2OqNvi" />
                        </node>
                        <node concept="3TrEf2" id="ww5GvfJeZ5" role="2OqNvi">
                          <ref role="3Tt5mk" to="uppb:2qK8RKEBS5C" resolve="ref" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="ww5GvfJfLd" role="2OqNvi">
                        <ref role="3TsBF5" to="uppb:ww5GvfIUTN" resolve="isMandatoryChild" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="2qK8RKEBjsN" role="3cqZAp">
              <node concept="2GrKxI" id="2qK8RKEBjsP" role="2Gsz3X">
                <property role="TrG5h" value="required" />
              </node>
              <node concept="2OqwBi" id="2qK8RKEBjT4" role="2GsD0m">
                <node concept="2GrUjf" id="2qK8RKEBjJx" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="2qK8RKEBhLS" resolve="fd" />
                </node>
                <node concept="3Tsc0h" id="2qK8RKEKpTO" role="2OqNvi">
                  <ref role="3TtcxE" to="uppb:4x6uVBKxmWb" resolve="required" />
                </node>
              </node>
              <node concept="3clFbS" id="2qK8RKEBjsT" role="2LFqv$">
                <node concept="3clFbF" id="2qK8RKEIUdH" role="3cqZAp">
                  <node concept="2OqwBi" id="2qK8RKEIWbR" role="3clFbG">
                    <node concept="2OqwBi" id="2qK8RKEIUtj" role="2Oq$k0">
                      <node concept="37vLTw" id="2qK8RKEIUdF" role="2Oq$k0">
                        <ref role="3cqZAo" node="2qK8RKEBK5c" resolve="vertex" />
                      </node>
                      <node concept="3Tsc0h" id="2qK8RKEKqkx" role="2OqNvi">
                        <ref role="3TtcxE" to="uppb:2qK8RKEC3$o" resolve="required" />
                      </node>
                    </node>
                    <node concept="TSZUe" id="7Pq1P2GfMmC" role="2OqNvi">
                      <node concept="1rXfSq" id="7Pq1P2GfMmD" role="25WWJ7">
                        <ref role="37wK5l" node="7Pq1P2GgmCD" resolve="restoreReference" />
                        <node concept="2OqwBi" id="7Pq1P2GfMmE" role="37wK5m">
                          <node concept="2OqwBi" id="7Pq1P2GfMmF" role="2Oq$k0">
                            <node concept="2GrUjf" id="7Pq1P2GfNwx" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="2qK8RKEBjsP" resolve="required" />
                            </node>
                            <node concept="3TrEf2" id="7Pq1P2GfMmH" role="2OqNvi">
                              <ref role="3Tt5mk" to="uppb:2qK8RKEIZFt" resolve="ref" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7Pq1P2GfMmI" role="2OqNvi">
                            <ref role="3TsBF5" to="uppb:4T0MB1XbEo9" resolve="path" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="7Pq1P2GfMmJ" role="37wK5m">
                          <ref role="3cqZAo" node="7Pq1P2GemYG" resolve="treeRoot" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="2qK8RKEKrwj" role="3cqZAp">
              <node concept="2GrKxI" id="2qK8RKEKrwk" role="2Gsz3X">
                <property role="TrG5h" value="excluded" />
              </node>
              <node concept="2OqwBi" id="2qK8RKEKrwl" role="2GsD0m">
                <node concept="2GrUjf" id="2qK8RKEKrwm" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="2qK8RKEBhLS" resolve="fd" />
                </node>
                <node concept="3Tsc0h" id="2qK8RKEKzeO" role="2OqNvi">
                  <ref role="3TtcxE" to="uppb:4x6uVBKxmWx" resolve="excluded" />
                </node>
              </node>
              <node concept="3clFbS" id="2qK8RKEKrwn" role="2LFqv$">
                <node concept="3clFbF" id="2qK8RKEKrwC" role="3cqZAp">
                  <node concept="2OqwBi" id="2qK8RKEKrwD" role="3clFbG">
                    <node concept="2OqwBi" id="2qK8RKEKrwE" role="2Oq$k0">
                      <node concept="37vLTw" id="2qK8RKEKrwF" role="2Oq$k0">
                        <ref role="3cqZAo" node="2qK8RKEBK5c" resolve="vertex" />
                      </node>
                      <node concept="3Tsc0h" id="2qK8RKEKzDx" role="2OqNvi">
                        <ref role="3TtcxE" to="uppb:2qK8RKEC3$p" resolve="excluded" />
                      </node>
                    </node>
                    <node concept="TSZUe" id="2qK8RKEKrwG" role="2OqNvi">
                      <node concept="1rXfSq" id="7Pq1P2GfFXb" role="25WWJ7">
                        <ref role="37wK5l" node="7Pq1P2GgmCD" resolve="restoreReference" />
                        <node concept="2OqwBi" id="7Pq1P2GfHT$" role="37wK5m">
                          <node concept="2OqwBi" id="7Pq1P2GfHbc" role="2Oq$k0">
                            <node concept="2GrUjf" id="7Pq1P2GfGB8" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="2qK8RKEKrwk" resolve="excluded" />
                            </node>
                            <node concept="3TrEf2" id="7Pq1P2GfHCX" role="2OqNvi">
                              <ref role="3Tt5mk" to="uppb:2qK8RKEIZFt" resolve="ref" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7Pq1P2GfIrM" role="2OqNvi">
                            <ref role="3TsBF5" to="uppb:4T0MB1XbEo9" resolve="path" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="7Pq1P2GfLBM" role="37wK5m">
                          <ref role="3cqZAo" node="7Pq1P2GemYG" resolve="treeRoot" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="ww5Gvf_qbU" role="3cqZAp">
                  <node concept="2OqwBi" id="ww5Gvf__JW" role="3clFbG">
                    <node concept="2OqwBi" id="ww5Gvf_ywo" role="2Oq$k0">
                      <node concept="2OqwBi" id="ww5Gvf_xXv" role="2Oq$k0">
                        <node concept="2OqwBi" id="ww5Gvf_sNY" role="2Oq$k0">
                          <node concept="2OqwBi" id="ww5Gvf_qMh" role="2Oq$k0">
                            <node concept="37vLTw" id="ww5Gvf_qbS" role="2Oq$k0">
                              <ref role="3cqZAo" node="2qK8RKEBK5c" resolve="vertex" />
                            </node>
                            <node concept="3Tsc0h" id="ww5Gvf_qZ5" role="2OqNvi">
                              <ref role="3TtcxE" to="uppb:2qK8RKEC3$p" resolve="excluded" />
                            </node>
                          </node>
                          <node concept="1yVyf7" id="ww5Gvf_wbd" role="2OqNvi" />
                        </node>
                        <node concept="3TrEf2" id="ww5Gvf_ydF" role="2OqNvi">
                          <ref role="3Tt5mk" to="uppb:2qK8RKEBS5C" resolve="ref" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="ww5Gvf_yNs" role="2OqNvi">
                        <ref role="3TtcxE" to="uppb:2qK8RKEC3$p" resolve="excluded" />
                      </node>
                    </node>
                    <node concept="TSZUe" id="ww5Gvf_Dag" role="2OqNvi">
                      <node concept="1rXfSq" id="ww5Gvf_E6S" role="25WWJ7">
                        <ref role="37wK5l" node="7Pq1P2GgmCD" resolve="restoreReference" />
                        <node concept="2OqwBi" id="ww5Gvf_H62" role="37wK5m">
                          <node concept="37vLTw" id="ww5Gvf_GvL" role="2Oq$k0">
                            <ref role="3cqZAo" node="2qK8RKEBK5c" resolve="vertex" />
                          </node>
                          <node concept="3TrcHB" id="ww5Gvf_HtC" role="2OqNvi">
                            <ref role="3TsBF5" to="uppb:2qK8RKECpC$" resolve="path" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="ww5Gvf_IbZ" role="37wK5m">
                          <ref role="3cqZAo" node="7Pq1P2GemYG" resolve="treeRoot" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="7Pq1P2GemsZ" role="2GsD0m">
            <ref role="3cqZAo" node="7Pq1P2GekGT" resolve="descriptions" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7Pq1P2GemYG" role="3clF46">
        <property role="TrG5h" value="treeRoot" />
        <node concept="3Tqbb2" id="7Pq1P2GeoiN" role="1tU5fm">
          <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
        </node>
      </node>
      <node concept="37vLTG" id="7Pq1P2GekGT" role="3clF46">
        <property role="TrG5h" value="descriptions" />
        <node concept="_YKpA" id="7Pq1P2GekGR" role="1tU5fm">
          <node concept="3Tqbb2" id="7Pq1P2GelV3" role="_ZDj9">
            <ref role="ehGHo" to="uppb:wb0I6Vb7D5" resolve="ArtifactDescription" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7Pq1P2Gefvj" role="3clF45" />
      <node concept="3Tm6S6" id="7Pq1P2Gee55" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7Pq1P2GfbsM" role="jymVt" />
    <node concept="2YIFZL" id="7Pq1P2GgmCD" role="jymVt">
      <property role="TrG5h" value="restoreReference" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="7Pq1P2GfeC8" role="3clF47">
        <node concept="3cpWs8" id="7Pq1P2GfswU" role="3cqZAp">
          <node concept="3cpWsn" id="7Pq1P2GfswX" role="3cpWs9">
            <property role="TrG5h" value="ref" />
            <node concept="3Tqbb2" id="7Pq1P2GfswT" role="1tU5fm">
              <ref role="ehGHo" to="uppb:2qK8RKEBS5B" resolve="ArtifactNodeRef" />
            </node>
            <node concept="2ShNRf" id="7Pq1P2GfsVM" role="33vP2m">
              <node concept="3zrR0B" id="7Pq1P2GftSE" role="2ShVmc">
                <node concept="3Tqbb2" id="7Pq1P2GftSG" role="3zrR0E">
                  <ref role="ehGHo" to="uppb:2qK8RKEBS5B" resolve="ArtifactNodeRef" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Pq1P2Gfui6" role="3cqZAp">
          <node concept="37vLTI" id="7Pq1P2Gfv32" role="3clFbG">
            <node concept="1rXfSq" id="7Pq1P2Gfv_U" role="37vLTx">
              <ref role="37wK5l" node="7Pq1P2GgvEC" resolve="findVertexInTree" />
              <node concept="37vLTw" id="7Pq1P2GfxTV" role="37wK5m">
                <ref role="3cqZAo" node="7Pq1P2GfvIO" resolve="targetPath" />
              </node>
              <node concept="37vLTw" id="7Pq1P2GfzZC" role="37wK5m">
                <ref role="3cqZAo" node="7Pq1P2Gfykl" resolve="treeRoot" />
              </node>
            </node>
            <node concept="2OqwBi" id="7Pq1P2Gfup1" role="37vLTJ">
              <node concept="37vLTw" id="7Pq1P2Gfui4" role="2Oq$k0">
                <ref role="3cqZAo" node="7Pq1P2GfswX" resolve="ref" />
              </node>
              <node concept="3TrEf2" id="7Pq1P2GfuJe" role="2OqNvi">
                <ref role="3Tt5mk" to="uppb:2qK8RKEBS5C" resolve="ref" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7Pq1P2Gf$rY" role="3cqZAp">
          <node concept="37vLTw" id="7Pq1P2Gf_Gv" role="3cqZAk">
            <ref role="3cqZAo" node="7Pq1P2GfswX" resolve="ref" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7Pq1P2GfvIO" role="3clF46">
        <property role="TrG5h" value="targetPath" />
        <node concept="17QB3L" id="7Pq1P2GfwU3" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7Pq1P2Gfykl" role="3clF46">
        <property role="TrG5h" value="treeRoot" />
        <node concept="3Tqbb2" id="7Pq1P2Gfzs$" role="1tU5fm">
          <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
        </node>
      </node>
      <node concept="3Tqbb2" id="7Pq1P2GfB4h" role="3clF45">
        <ref role="ehGHo" to="uppb:2qK8RKEBS5B" resolve="ArtifactNodeRef" />
      </node>
      <node concept="3Tm6S6" id="7Pq1P2Gfds9" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7Pq1P2GedaF" role="jymVt" />
    <node concept="2YIFZL" id="7Pq1P2GgnAM" role="jymVt">
      <property role="TrG5h" value="createVerticesFromFeatureDescriptions" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="7Pq1P2GcAan" role="3clF47">
        <node concept="3cpWs8" id="7Pq1P2G9YtZ" role="3cqZAp">
          <node concept="3cpWsn" id="7Pq1P2G9Yu0" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="7Pq1P2G9Yu1" role="1tU5fm">
              <node concept="3Tqbb2" id="7Pq1P2G9Yu2" role="_ZDj9">
                <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
              </node>
            </node>
            <node concept="2ShNRf" id="7Pq1P2G9Yu3" role="33vP2m">
              <node concept="Tc6Ow" id="7Pq1P2G9Yu4" role="2ShVmc">
                <node concept="3Tqbb2" id="7Pq1P2G9Yu5" role="HW$YZ">
                  <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7Pq1P2G9Yu6" role="3cqZAp">
          <node concept="2GrKxI" id="7Pq1P2G9Yu7" role="2Gsz3X">
            <property role="TrG5h" value="fd" />
          </node>
          <node concept="3clFbS" id="7Pq1P2G9Yu8" role="2LFqv$">
            <node concept="3clFbF" id="7Pq1P2G9Yu9" role="3cqZAp">
              <node concept="2OqwBi" id="7Pq1P2G9Yua" role="3clFbG">
                <node concept="37vLTw" id="7Pq1P2G9Yub" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Pq1P2G9Yu0" resolve="result" />
                </node>
                <node concept="TSZUe" id="7Pq1P2G9Yuc" role="2OqNvi">
                  <node concept="1rXfSq" id="7Pq1P2Gg9t$" role="25WWJ7">
                    <ref role="37wK5l" node="7Pq1P2GgoGu" resolve="createVertex" />
                    <node concept="2GrUjf" id="7Pq1P2Gg9Qh" role="37wK5m">
                      <ref role="2Gs0qQ" node="7Pq1P2G9Yu7" resolve="fd" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="7Pq1P2G9Yuf" role="2GsD0m">
            <ref role="3cqZAo" node="7Pq1P2G9YyI" resolve="descriptions" />
          </node>
        </node>
        <node concept="3cpWs6" id="7Pq1P2Ga3DM" role="3cqZAp">
          <node concept="37vLTw" id="7Pq1P2Ga3T6" role="3cqZAk">
            <ref role="3cqZAo" node="7Pq1P2G9Yu0" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7Pq1P2G9YyI" role="3clF46">
        <property role="TrG5h" value="descriptions" />
        <node concept="_YKpA" id="7Pq1P2G9YyG" role="1tU5fm">
          <node concept="3Tqbb2" id="7Pq1P2G9Y_l" role="_ZDj9">
            <ref role="ehGHo" to="uppb:wb0I6Vb7D5" resolve="ArtifactDescription" />
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="7Pq1P2GcBrU" role="3clF45">
        <node concept="3Tqbb2" id="7Pq1P2GcBrV" role="_ZDj9">
          <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
        </node>
      </node>
      <node concept="3Tm6S6" id="7Pq1P2GcsmC" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7Pq1P2Gg5aF" role="jymVt" />
    <node concept="2YIFZL" id="7Pq1P2GgoGu" role="jymVt">
      <property role="TrG5h" value="createVertex" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="wb0I6VlpPD" role="3clF47">
        <node concept="3cpWs8" id="2RI3t9dUtdY" role="3cqZAp">
          <node concept="3cpWsn" id="2RI3t9dUte1" role="3cpWs9">
            <property role="TrG5h" value="graphNode" />
            <node concept="3Tqbb2" id="2RI3t9dUtdW" role="1tU5fm">
              <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
            </node>
            <node concept="10Nm6u" id="2RI3t9dUvuV" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbH" id="6I9RXT0llM" role="3cqZAp" />
        <node concept="3clFbJ" id="2RI3t9dUqQM" role="3cqZAp">
          <node concept="3clFbS" id="2RI3t9dUqQO" role="3clFbx">
            <node concept="3clFbF" id="2RI3t9dUtCC" role="3cqZAp">
              <node concept="37vLTI" id="2RI3t9dUtMa" role="3clFbG">
                <node concept="37vLTw" id="2RI3t9dUtCB" role="37vLTJ">
                  <ref role="3cqZAo" node="2RI3t9dUte1" resolve="graphNode" />
                </node>
                <node concept="2ShNRf" id="2RI3t9dUu8F" role="37vLTx">
                  <node concept="3zrR0B" id="2RI3t9dUvj8" role="2ShVmc">
                    <node concept="3Tqbb2" id="2RI3t9dUvja" role="3zrR0E">
                      <ref role="ehGHo" to="uppb:wb0I6Vg0ar" resolve="ArtifactNodeIndep" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6I9RXSY48q" role="3clFbw">
            <node concept="2OqwBi" id="2RI3t9dUr1_" role="2Oq$k0">
              <node concept="37vLTw" id="4x6uVBK$TVc" role="2Oq$k0">
                <ref role="3cqZAo" node="wb0I6VlpU4" resolve="node" />
              </node>
              <node concept="3TrcHB" id="2RI3t9dUrcY" role="2OqNvi">
                <ref role="3TsBF5" to="uppb:wb0I6Vd19D" resolve="childrenType" />
              </node>
            </node>
            <node concept="liA8E" id="6I9RXSY4SV" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="3f7Wdw" id="2RI3t9dUnOr" role="37wK5m">
                <ref role="3f7u_j" to="uppb:wb0I6Vdi5o" />
                <ref role="3f7vo2" to="uppb:wb0I6Vdi5n" resolve="children_type" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="2RI3t9dUsdN" role="3eNLev">
            <node concept="3clFbS" id="2RI3t9dUsdP" role="3eOfB_">
              <node concept="3clFbF" id="2RI3t9dUvk7" role="3cqZAp">
                <node concept="37vLTI" id="2RI3t9dUvtD" role="3clFbG">
                  <node concept="2ShNRf" id="2RI3t9dUvxB" role="37vLTx">
                    <node concept="3zrR0B" id="2RI3t9dUvx_" role="2ShVmc">
                      <node concept="3Tqbb2" id="2RI3t9dUvxA" role="3zrR0E">
                        <ref role="ehGHo" to="uppb:wb0I6Vg0b5" resolve="ArtifactNode1M" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="2RI3t9dUvk6" role="37vLTJ">
                    <ref role="3cqZAo" node="2RI3t9dUte1" resolve="graphNode" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6I9RXSYaOx" role="3eO9$A">
              <node concept="2OqwBi" id="2RI3t9dUsoh" role="2Oq$k0">
                <node concept="37vLTw" id="4x6uVBK$TYA" role="2Oq$k0">
                  <ref role="3cqZAo" node="wb0I6VlpU4" resolve="node" />
                </node>
                <node concept="3TrcHB" id="2RI3t9dUsoj" role="2OqNvi">
                  <ref role="3TsBF5" to="uppb:wb0I6Vd19D" resolve="childrenType" />
                </node>
              </node>
              <node concept="liA8E" id="6I9RXSYaT8" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="3f7Wdw" id="6I9RXSYaT9" role="37wK5m">
                  <ref role="3f7vo2" to="uppb:wb0I6Vdi5n" resolve="children_type" />
                  <ref role="3f7u_j" to="uppb:wb0I6Vdi5s" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="2RI3t9dUsGZ" role="3eNLev">
            <node concept="3clFbS" id="2RI3t9dUsH1" role="3eOfB_">
              <node concept="3clFbF" id="2RI3t9dUvyB" role="3cqZAp">
                <node concept="37vLTI" id="2RI3t9dUvEp" role="3clFbG">
                  <node concept="2ShNRf" id="2RI3t9dUvGC" role="37vLTx">
                    <node concept="3zrR0B" id="2RI3t9dUvGA" role="2ShVmc">
                      <node concept="3Tqbb2" id="2RI3t9dUvGB" role="3zrR0E">
                        <ref role="ehGHo" to="uppb:wb0I6Vg0b4" resolve="ArtifactNodeNM" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="2RI3t9dUvyA" role="37vLTJ">
                    <ref role="3cqZAo" node="2RI3t9dUte1" resolve="graphNode" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6I9RXSYbM_" role="3eO9$A">
              <node concept="2OqwBi" id="2RI3t9dUsR$" role="2Oq$k0">
                <node concept="37vLTw" id="4x6uVBK$U20" role="2Oq$k0">
                  <ref role="3cqZAo" node="wb0I6VlpU4" resolve="node" />
                </node>
                <node concept="3TrcHB" id="2RI3t9dUsRA" role="2OqNvi">
                  <ref role="3TsBF5" to="uppb:wb0I6Vd19D" resolve="childrenType" />
                </node>
              </node>
              <node concept="liA8E" id="6I9RXSYbRc" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="3f7Wdw" id="6I9RXSYbRd" role="37wK5m">
                  <ref role="3f7vo2" to="uppb:wb0I6Vdi5n" resolve="children_type" />
                  <ref role="3f7u_j" to="uppb:wb0I6Vdi5p" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RI3t9dUESJ" role="3cqZAp">
          <node concept="2OqwBi" id="2RI3t9dUFAw" role="3clFbG">
            <node concept="37vLTw" id="2RI3t9dUESH" role="2Oq$k0">
              <ref role="3cqZAo" node="2RI3t9dUte1" resolve="graphNode" />
            </node>
            <node concept="2qgKlT" id="4x6uVBK$048" role="2OqNvi">
              <ref role="37wK5l" node="4x6uVBKyRMa" resolve="initFromArtifactDescription" />
              <node concept="37vLTw" id="4x6uVBK$U8R" role="37wK5m">
                <ref role="3cqZAo" node="wb0I6VlpU4" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6I9RXSZnB3" role="3cqZAp" />
        <node concept="3cpWs6" id="6I9RXSXO0X" role="3cqZAp">
          <node concept="2OqwBi" id="3vj3nvuZaR" role="3cqZAk">
            <node concept="37vLTw" id="6I9RXSXO8B" role="2Oq$k0">
              <ref role="3cqZAo" node="2RI3t9dUte1" resolve="graphNode" />
            </node>
            <node concept="1$rogu" id="3vj3nvv0PP" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="wb0I6VlpU4" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="4x6uVBK$RAE" role="1tU5fm">
          <ref role="ehGHo" to="uppb:wb0I6Vb7D5" resolve="ArtifactDescription" />
        </node>
      </node>
      <node concept="3Tqbb2" id="2RI3t9dUxgV" role="3clF45">
        <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
      </node>
      <node concept="3Tm6S6" id="7Pq1P2Gg87u" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7Pq1P2Gg6gy" role="jymVt" />
    <node concept="2tJIrI" id="7Pq1P2GcJiV" role="jymVt" />
    <node concept="2YIFZL" id="7Pq1P2GgtPA" role="jymVt">
      <property role="TrG5h" value="findEquivalentVertex" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="5dIQWslIXqu" role="3clF47">
        <node concept="3cpWs8" id="5dIQWslIXqv" role="3cqZAp">
          <node concept="3cpWsn" id="5dIQWslIXqw" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="A3Dl8" id="5dIQWslIXqx" role="1tU5fm">
              <node concept="3Tqbb2" id="5dIQWslIXqy" role="A3Ik2">
                <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
              </node>
            </node>
            <node concept="2OqwBi" id="5dIQWslIXqz" role="33vP2m">
              <node concept="37vLTw" id="5dIQWslIXq$" role="2Oq$k0">
                <ref role="3cqZAo" node="5dIQWslIXr6" resolve="vertices" />
              </node>
              <node concept="3zZkjj" id="5dIQWslIXq_" role="2OqNvi">
                <node concept="1bVj0M" id="5dIQWslIXqA" role="23t8la">
                  <node concept="3clFbS" id="5dIQWslIXqB" role="1bW5cS">
                    <node concept="3clFbF" id="5dIQWslIXqC" role="3cqZAp">
                      <node concept="2OqwBi" id="5dIQWslIXqD" role="3clFbG">
                        <node concept="2OqwBi" id="5dIQWslIXqE" role="2Oq$k0">
                          <node concept="37vLTw" id="5dIQWslIXqF" role="2Oq$k0">
                            <ref role="3cqZAo" node="5dIQWslIXqL" resolve="it" />
                          </node>
                          <node concept="3TrcHB" id="5dIQWslIXqG" role="2OqNvi">
                            <ref role="3TsBF5" to="uppb:2qK8RKECpC$" resolve="path" />
                          </node>
                        </node>
                        <node concept="liA8E" id="5dIQWslIXqH" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                          <node concept="2OqwBi" id="5dIQWslIXqI" role="37wK5m">
                            <node concept="37vLTw" id="5dIQWslIXqJ" role="2Oq$k0">
                              <ref role="3cqZAo" node="5dIQWslIXr9" resolve="target" />
                            </node>
                            <node concept="3TrcHB" id="5dIQWslIXqK" role="2OqNvi">
                              <ref role="3TsBF5" to="uppb:4T0MB1XbEo9" resolve="path" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="5dIQWslIXqL" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5dIQWslIXqM" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5dIQWslIXqN" role="3cqZAp" />
        <node concept="3clFbJ" id="5dIQWslIXqO" role="3cqZAp">
          <node concept="3clFbS" id="5dIQWslIXqP" role="3clFbx">
            <node concept="3cpWs6" id="5dIQWslIXqQ" role="3cqZAp">
              <node concept="2OqwBi" id="5dIQWslIXqR" role="3cqZAk">
                <node concept="37vLTw" id="5dIQWslIXqS" role="2Oq$k0">
                  <ref role="3cqZAo" node="5dIQWslIXqw" resolve="result" />
                </node>
                <node concept="1uHKPH" id="5dIQWslIXqT" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5dIQWslIXqU" role="3clFbw">
            <node concept="3cmrfG" id="5dIQWslIXqV" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="5dIQWslIXqW" role="3uHU7B">
              <node concept="37vLTw" id="5dIQWslIXqX" role="2Oq$k0">
                <ref role="3cqZAo" node="5dIQWslIXqw" resolve="result" />
              </node>
              <node concept="34oBXx" id="5dIQWslIXqY" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5dIQWslIXqZ" role="3cqZAp" />
        <node concept="2xdQw9" id="5Xcftn9QxSK" role="3cqZAp">
          <property role="2xdLsb" value="info" />
          <node concept="Xl_RD" id="5dIQWslIXr1" role="9lYJi">
            <property role="Xl_RC" value="BIG ERROR HERE WHICH SHOULD NOT HAPPEN" />
          </node>
        </node>
        <node concept="3SKdUt" id="5dIQWslIXr2" role="3cqZAp">
          <node concept="3SKdUq" id="5dIQWslIXr3" role="3SKWNk">
            <property role="3SKdUp" value="TODO: exceptions when size &gt;1 or =0" />
          </node>
        </node>
        <node concept="3cpWs6" id="5dIQWslIXr4" role="3cqZAp">
          <node concept="10Nm6u" id="5dIQWslIXr5" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="5dIQWslIXr9" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="5dIQWslIXra" role="1tU5fm">
          <ref role="ehGHo" to="uppb:wb0I6Vb7D5" resolve="ArtifactDescription" />
        </node>
      </node>
      <node concept="37vLTG" id="5dIQWslIXr6" role="3clF46">
        <property role="TrG5h" value="vertices" />
        <node concept="_YKpA" id="5dIQWslIXr7" role="1tU5fm">
          <node concept="3Tqbb2" id="5dIQWslIXr8" role="_ZDj9">
            <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="5dIQWslIXqt" role="3clF45">
        <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
      </node>
      <node concept="3Tm6S6" id="7Pq1P2GcWmZ" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7Pq1P2GcGfW" role="jymVt" />
    <node concept="2YIFZL" id="7Pq1P2GgpLQ" role="jymVt">
      <property role="TrG5h" value="findRootInDescriptions" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="wb0I6VeKHL" role="3clF47">
        <node concept="2Gpval" id="wb0I6Vfgci" role="3cqZAp">
          <node concept="2GrKxI" id="wb0I6Vfgck" role="2Gsz3X">
            <property role="TrG5h" value="node" />
          </node>
          <node concept="37vLTw" id="wb0I6VfgXz" role="2GsD0m">
            <ref role="3cqZAo" node="wb0I6Vfftp" resolve="nodes" />
          </node>
          <node concept="3clFbS" id="wb0I6Vfgco" role="2LFqv$">
            <node concept="3cpWs8" id="4x6uVBK_ttP" role="3cqZAp">
              <node concept="3cpWsn" id="4x6uVBK_ttQ" role="3cpWs9">
                <property role="TrG5h" value="snode" />
                <node concept="3uibUv" id="4x6uVBK_ttR" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
                <node concept="2GrUjf" id="4x6uVBK_Jwe" role="33vP2m">
                  <ref role="2Gs0qQ" node="wb0I6Vfgck" resolve="node" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="wb0I6Vfk9b" role="3cqZAp">
              <node concept="3clFbS" id="wb0I6Vfk9d" role="3clFbx">
                <node concept="3cpWs6" id="wb0I6Vfko$" role="3cqZAp">
                  <node concept="2GrUjf" id="wb0I6VfkFS" role="3cqZAk">
                    <ref role="2Gs0qQ" node="wb0I6Vfgck" resolve="node" />
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="wb0I6VfjwP" role="3clFbw">
                <node concept="3rM5sP" id="wb0I6Vfk2W" role="3uHU7w">
                  <property role="3rM5sR" value="4f5b9324-36b5-46b2-a8c8-a56e7087f59e" />
                </node>
                <node concept="2OqwBi" id="wb0I6VfhHU" role="3uHU7B">
                  <node concept="2OqwBi" id="wb0I6Vfh8m" role="2Oq$k0">
                    <node concept="37vLTw" id="4x6uVBK_JwM" role="2Oq$k0">
                      <ref role="3cqZAo" node="4x6uVBK_ttQ" resolve="snode" />
                    </node>
                    <node concept="liA8E" id="wb0I6Vfhym" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getModel():org.jetbrains.mps.openapi.model.SModel" resolve="getModel" />
                    </node>
                  </node>
                  <node concept="liA8E" id="wb0I6VfioC" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getModule():org.jetbrains.mps.openapi.module.SModule" resolve="getModule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7Pq1P2G9JmR" role="3cqZAp">
          <node concept="3SKdUq" id="7Pq1P2G9JmT" role="3SKWNk">
            <property role="3SKdUp" value="TODO: THROW EXCEPTION HERE" />
          </node>
        </node>
        <node concept="2xdQw9" id="5Xcftn9Qxt4" role="3cqZAp">
          <property role="2xdLsb" value="info" />
          <node concept="Xl_RD" id="7Pq1P2G9J7t" role="9lYJi">
            <property role="Xl_RC" value="THIS SHOULD NEVER HAPPEN" />
          </node>
        </node>
        <node concept="3cpWs6" id="wb0I6VeKVv" role="3cqZAp">
          <node concept="10Nm6u" id="wb0I6VeKVW" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="wb0I6Vfftp" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="A3Dl8" id="2qK8RKEFDuY" role="1tU5fm">
          <node concept="3Tqbb2" id="2qK8RKEFDv0" role="A3Ik2">
            <ref role="ehGHo" to="uppb:wb0I6Vb7D5" resolve="ArtifactDescription" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="4x6uVBK_gOE" role="3clF45">
        <ref role="ehGHo" to="uppb:wb0I6Vb7D5" resolve="ArtifactDescription" />
      </node>
      <node concept="3Tm6S6" id="7Pq1P2GcXwj" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7Pq1P2Gdb9V" role="jymVt" />
    <node concept="2YIFZL" id="7Pq1P2GgraM" role="jymVt">
      <property role="TrG5h" value="findChildRelationsInFeatureDescriptions" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="7Pq1P2Ggam0" role="3clF47">
        <node concept="3cpWs6" id="7Pq1P2Ggam1" role="3cqZAp">
          <node concept="2OqwBi" id="7Pq1P2Ggam2" role="3cqZAk">
            <node concept="37vLTw" id="7Pq1P2Ggam3" role="2Oq$k0">
              <ref role="3cqZAo" node="7Pq1P2Ggams" resolve="nodes" />
            </node>
            <node concept="3zZkjj" id="7Pq1P2Ggam4" role="2OqNvi">
              <node concept="1bVj0M" id="7Pq1P2Ggam5" role="23t8la">
                <node concept="3clFbS" id="7Pq1P2Ggam6" role="1bW5cS">
                  <node concept="3clFbF" id="7Pq1P2Ggam7" role="3cqZAp">
                    <node concept="1Wc70l" id="7Pq1P2Ggam8" role="3clFbG">
                      <node concept="2OqwBi" id="7Pq1P2Ggam9" role="3uHU7B">
                        <node concept="2OqwBi" id="7Pq1P2Ggama" role="2Oq$k0">
                          <node concept="37vLTw" id="7Pq1P2Ggamb" role="2Oq$k0">
                            <ref role="3cqZAo" node="7Pq1P2Ggamo" resolve="it" />
                          </node>
                          <node concept="3TrEf2" id="7Pq1P2Ggamc" role="2OqNvi">
                            <ref role="3Tt5mk" to="uppb:4T0MB1XdSHH" resolve="parent" />
                          </node>
                        </node>
                        <node concept="3x8VRR" id="7Pq1P2Ggamd" role="2OqNvi" />
                      </node>
                      <node concept="2OqwBi" id="7Pq1P2Ggame" role="3uHU7w">
                        <node concept="liA8E" id="7Pq1P2Ggamf" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                          <node concept="2OqwBi" id="7Pq1P2Ggamg" role="37wK5m">
                            <node concept="37vLTw" id="7Pq1P2Ggamh" role="2Oq$k0">
                              <ref role="3cqZAo" node="7Pq1P2Ggamv" resolve="parent" />
                            </node>
                            <node concept="3TrcHB" id="7Pq1P2Ggami" role="2OqNvi">
                              <ref role="3TsBF5" to="uppb:2qK8RKECpC$" resolve="path" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="7Pq1P2Ggamj" role="2Oq$k0">
                          <node concept="3TrcHB" id="7Pq1P2Ggamk" role="2OqNvi">
                            <ref role="3TsBF5" to="uppb:4T0MB1XbEo9" resolve="path" />
                          </node>
                          <node concept="2OqwBi" id="7Pq1P2Ggaml" role="2Oq$k0">
                            <node concept="37vLTw" id="7Pq1P2Ggamm" role="2Oq$k0">
                              <ref role="3cqZAo" node="7Pq1P2Ggamo" resolve="it" />
                            </node>
                            <node concept="3TrEf2" id="7Pq1P2Ggamn" role="2OqNvi">
                              <ref role="3Tt5mk" to="uppb:4T0MB1XdSHH" resolve="parent" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="7Pq1P2Ggamo" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="7Pq1P2Ggamp" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7Pq1P2Ggams" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="_YKpA" id="7Pq1P2Ggamt" role="1tU5fm">
          <node concept="3Tqbb2" id="7Pq1P2Ggamu" role="_ZDj9">
            <ref role="ehGHo" to="uppb:wb0I6Vb7D5" resolve="ArtifactDescription" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7Pq1P2Ggamv" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3Tqbb2" id="7Pq1P2Ggamw" role="1tU5fm">
          <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
        </node>
      </node>
      <node concept="A3Dl8" id="7Pq1P2Ggamq" role="3clF45">
        <node concept="3Tqbb2" id="7Pq1P2Ggamr" role="A3Ik2">
          <ref role="ehGHo" to="uppb:wb0I6Vb7D5" resolve="ArtifactDescription" />
        </node>
      </node>
      <node concept="3Tm6S6" id="7Pq1P2GeUks" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7Pq1P2GeP84" role="jymVt" />
    <node concept="2YIFZL" id="7Pq1P2GgvEC" role="jymVt">
      <property role="TrG5h" value="findVertexInTree" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="2qK8RKEBHpc" role="3clF47">
        <node concept="3cpWs8" id="3CJpga9moXc" role="3cqZAp">
          <node concept="3cpWsn" id="3CJpga9moXf" role="3cpWs9">
            <property role="TrG5h" value="aliases" />
            <node concept="10Q1$e" id="3CJpga9mqjF" role="1tU5fm">
              <node concept="17QB3L" id="3CJpga9mqag" role="10Q1$1" />
            </node>
            <node concept="2OqwBi" id="3CJpga9mpZL" role="33vP2m">
              <node concept="37vLTw" id="3CJpga9mpZN" role="2Oq$k0">
                <ref role="3cqZAo" node="2qK8RKEBIlw" resolve="targetPath" />
              </node>
              <node concept="liA8E" id="3CJpga9mpZP" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.split(java.lang.String):java.lang.String[]" resolve="split" />
                <node concept="Xl_RD" id="3CJpga9pGgq" role="37wK5m">
                  <property role="Xl_RC" value="[.]" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3CJpga9xHhA" role="3cqZAp" />
        <node concept="3cpWs8" id="5dIQWslJ68h" role="3cqZAp">
          <node concept="3cpWsn" id="5dIQWslJ68k" role="3cpWs9">
            <property role="TrG5h" value="curNode" />
            <node concept="3Tqbb2" id="5dIQWslJ68f" role="1tU5fm">
              <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
            </node>
            <node concept="37vLTw" id="3CJpga9r5ml" role="33vP2m">
              <ref role="3cqZAo" node="5dIQWslJ1gi" resolve="root" />
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="3CJpga9spFw" role="3cqZAp">
          <node concept="3clFbS" id="3CJpga9spFy" role="2LFqv$">
            <node concept="3clFbF" id="7Pq1P2GeVmc" role="3cqZAp">
              <node concept="37vLTI" id="7Pq1P2GeVKK" role="3clFbG">
                <node concept="1rXfSq" id="7Pq1P2GeWhL" role="37vLTx">
                  <ref role="37wK5l" node="7Pq1P2Ggsl6" resolve="getChildWithAlias" />
                  <node concept="AH0OO" id="7Pq1P2GeXje" role="37wK5m">
                    <node concept="37vLTw" id="7Pq1P2GeXON" role="AHEQo">
                      <ref role="3cqZAo" node="3CJpga9spFz" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="7Pq1P2GeWMY" role="AHHXb">
                      <ref role="3cqZAo" node="3CJpga9moXf" resolve="aliases" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7Pq1P2GeY_C" role="37wK5m">
                    <node concept="37vLTw" id="7Pq1P2GeYef" role="2Oq$k0">
                      <ref role="3cqZAo" node="5dIQWslJ68k" resolve="curNode" />
                    </node>
                    <node concept="3Tsc0h" id="7Pq1P2GeYYt" role="2OqNvi">
                      <ref role="3TtcxE" to="uppb:4x6uVBKzUAz" resolve="childNodes" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="7Pq1P2GeVma" role="37vLTJ">
                  <ref role="3cqZAo" node="5dIQWslJ68k" resolve="curNode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3CJpga9spFz" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="3CJpga9sqX7" role="1tU5fm" />
            <node concept="3cmrfG" id="3CJpga9sqXN" role="33vP2m">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
          <node concept="3eOVzh" id="3CJpga9tnfx" role="1Dwp0S">
            <node concept="37vLTw" id="3CJpga9sqY6" role="3uHU7B">
              <ref role="3cqZAo" node="3CJpga9spFz" resolve="i" />
            </node>
            <node concept="2OqwBi" id="3CJpga9ssqN" role="3uHU7w">
              <node concept="37vLTw" id="3CJpga9srTn" role="2Oq$k0">
                <ref role="3cqZAo" node="3CJpga9moXf" resolve="aliases" />
              </node>
              <node concept="1Rwk04" id="3CJpga9stT0" role="2OqNvi" />
            </node>
          </node>
          <node concept="2$rviw" id="3CJpga9tYtm" role="1Dwrff">
            <node concept="37vLTw" id="3CJpga9suHU" role="2$L3a6">
              <ref role="3cqZAo" node="3CJpga9spFz" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5dIQWslJ1xs" role="3cqZAp" />
        <node concept="3cpWs6" id="5dIQWslJrKq" role="3cqZAp">
          <node concept="37vLTw" id="5dIQWslJuwg" role="3cqZAk">
            <ref role="3cqZAo" node="5dIQWslJ68k" resolve="curNode" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2qK8RKEBIlw" role="3clF46">
        <property role="TrG5h" value="targetPath" />
        <node concept="17QB3L" id="3CJpga9scfP" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5dIQWslJ1gi" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="5dIQWslJ1gj" role="1tU5fm">
          <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
        </node>
      </node>
      <node concept="3Tqbb2" id="2qK8RKEBHDD" role="3clF45">
        <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
      </node>
      <node concept="3Tm6S6" id="7Pq1P2GeTEu" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7Pq1P2GeRs8" role="jymVt" />
    <node concept="2YIFZL" id="7Pq1P2Ggsl6" role="jymVt">
      <property role="TrG5h" value="getChildWithAlias" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="5dIQWslJ8Qf" role="3clF47">
        <node concept="2Gpval" id="5dIQWslJ6f0" role="3cqZAp">
          <node concept="2GrKxI" id="5dIQWslJ6f1" role="2Gsz3X">
            <property role="TrG5h" value="child" />
          </node>
          <node concept="37vLTw" id="5dIQWslJ9AC" role="2GsD0m">
            <ref role="3cqZAo" node="5dIQWslJ9r8" resolve="children" />
          </node>
          <node concept="3clFbS" id="5dIQWslJ6f3" role="2LFqv$">
            <node concept="3clFbJ" id="5dIQWslJ6Af" role="3cqZAp">
              <node concept="2OqwBi" id="5dIQWslJ7_j" role="3clFbw">
                <node concept="2OqwBi" id="5dIQWslJ6RX" role="2Oq$k0">
                  <node concept="2GrUjf" id="5dIQWslJ6AB" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="5dIQWslJ6f1" resolve="child" />
                  </node>
                  <node concept="3TrcHB" id="5dIQWslJ74x" role="2OqNvi">
                    <ref role="3TsBF5" to="uppb:2qK8RKECpCE" resolve="shortname" />
                  </node>
                </node>
                <node concept="liA8E" id="5dIQWslJ8k5" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="37vLTw" id="5dIQWslJgkm" role="37wK5m">
                    <ref role="3cqZAo" node="5dIQWslJ9cT" resolve="alias" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5dIQWslJ6Ah" role="3clFbx">
                <node concept="3cpWs6" id="5dIQWslJiPI" role="3cqZAp">
                  <node concept="2GrUjf" id="5dIQWslJnu6" role="3cqZAk">
                    <ref role="2Gs0qQ" node="5dIQWslJ6f1" resolve="child" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3CJpga9s5ZL" role="3cqZAp">
          <node concept="3SKdUq" id="3CJpga9s5ZN" role="3SKWNk">
            <property role="3SKdUp" value="TODO: ALLERT IF NULL" />
          </node>
        </node>
        <node concept="2xdQw9" id="5Xcftn9QxGs" role="3cqZAp">
          <property role="2xdLsb" value="info" />
          <node concept="3cpWs3" id="3CJpga9vg$7" role="9lYJi">
            <node concept="37vLTw" id="3CJpga9vgBA" role="3uHU7w">
              <ref role="3cqZAo" node="5dIQWslJ9cT" resolve="alias" />
            </node>
            <node concept="Xl_RD" id="3CJpga9v0iP" role="3uHU7B">
              <property role="Xl_RC" value="CHILD WITH ALIAS NOT FOUND: " />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3CJpga9xIpn" role="3cqZAp" />
        <node concept="3cpWs6" id="5dIQWslJn_Q" role="3cqZAp">
          <node concept="10Nm6u" id="5dIQWslJnIS" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="5dIQWslJ9cT" role="3clF46">
        <property role="TrG5h" value="alias" />
        <node concept="17QB3L" id="5dIQWslJ9cS" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5dIQWslJ9r8" role="3clF46">
        <property role="TrG5h" value="children" />
        <node concept="_YKpA" id="5dIQWslJ9xa" role="1tU5fm">
          <node concept="3Tqbb2" id="5dIQWslJ9xr" role="_ZDj9">
            <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="5dIQWslJ9bH" role="3clF45">
        <ref role="ehGHo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
      </node>
      <node concept="3Tm6S6" id="7Pq1P2GeSQX" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7Pq1P2GeRzl" role="jymVt" />
    <node concept="2tJIrI" id="7Pq1P2GePSD" role="jymVt" />
    <node concept="2tJIrI" id="7Pq1P2GdcjA" role="jymVt" />
    <node concept="2tJIrI" id="7Pq1P2GcTft" role="jymVt" />
    <node concept="3Tm1VV" id="7Pq1P2GckM_" role="1B3o_S" />
  </node>
</model>

