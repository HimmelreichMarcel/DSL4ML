<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="8" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="pbu6" ref="r:83e946de-2a7f-4a4c-b3c9-4f671aa7f2db(org.iets3.core.expr.base.behavior)" />
    <import index="oq0c" ref="r:6c6155f0-4bbe-4af5-8c26-244d570e21e4(org.iets3.core.expr.base.plugin)" />
    <import index="yv47" ref="r:da65683e-ff6f-430d-ab68-32a77df72c93(org.iets3.core.expr.toplevel.structure)" />
    <import index="zzzn" ref="r:af0af2e7-f7e1-4536-83b5-6bf010d4afd2(org.iets3.core.expr.lambda.structure)" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" />
    <import index="hwgx" ref="r:fd2980c8-676c-4b19-b524-18c70e02f8b7(com.mbeddr.core.base.behavior)" />
    <import index="vs0r" ref="r:f7764ca4-8c75-4049-922b-08516400a727(com.mbeddr.core.base.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="55s9" ref="r:349f01e8-2ba4-49f7-be71-679bbbf4b80d(features.structure)" />
    <import index="essy" ref="r:d68f6ef3-d056-4719-85f3-ab26e4e8979e(requests.classes)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="veum" ref="r:dd7856aa-5828-444c-bc87-c88a89a8bb82(wordlist.structure)" />
    <import index="jqrd" ref="r:a86b5aa2-977c-4dd4-975b-865365d5871c(types.structure)" />
    <import index="rfu" ref="r:6e9b2235-0fe7-42b9-bb5a-8f85b71f42e3(types.behavior)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="2ahs" ref="r:ea6cf71d-29d2-478d-8027-a9f4a4de53c4(com.mbeddr.mpsutil.interpreter.rt)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="5vgt" ref="642f71f8-327a-425b-84f9-44ad58786d27/f:project#f65913ba-37fe-4118-b1ba-b26d4c55d376(jetbrains.mps.lang.project.modules/module.copy@project_stub)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="w8ws" ref="r:371ff547-5eea-4440-a0bb-93d0be22bfcb(statements.behavior)" />
    <import index="48kf" ref="r:5f41c82d-84d1-4fb1-a1cf-6697d2365854(com.mbeddr.mpsutil.filepicker.behavior)" implicit="true" />
    <import index="scux" ref="r:d14b83e6-d738-4a09-82b2-fc22620126d4(composition.structure)" implicit="true" />
    <import index="ja9q" ref="r:fc597f30-d1d1-4d82-975e-209a1fdb1f96(statements.structure)" implicit="true" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
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
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
      <concept id="1703835097132541506" name="jetbrains.mps.lang.behavior.structure.ThisConceptExpression" flags="ng" index="1fM9EW" />
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
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1239709250944" name="jetbrains.mps.baseLanguage.structure.PrefixIncrementExpression" flags="nn" index="2$rviw" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
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
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
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
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
        <child id="5383422241790532083" name="tags" index="3nqlJM" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8465538089690331492" name="jetbrains.mps.baseLanguage.javadoc.structure.DeprecatedBlockDocTag" flags="ng" index="TZ5HI">
        <child id="2667874559098216723" name="text" index="3HnX3l" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1176544042499" name="jetbrains.mps.lang.typesystem.structure.Node_TypeOperation" flags="nn" index="3JvlWi" />
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="6332851714983831325" name="jetbrains.mps.baseLanguage.logging.structure.MsgStatement" flags="ng" index="2xdQw9">
        <property id="6332851714983843871" name="severity" index="2xdLsb" />
        <child id="5721587534047265374" name="message" index="9lYJi" />
      </concept>
      <concept id="1167227138527" name="jetbrains.mps.baseLanguage.logging.structure.LogStatement" flags="nn" index="34ab3g">
        <property id="1167245565795" name="severity" index="35gtTG" />
        <child id="1167227463056" name="logExpression" index="34bqiv" />
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
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171310072040" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingRootOperation" flags="nn" index="2Rxl7S" />
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1143512015885" name="jetbrains.mps.lang.smodel.structure.Node_GetNextSiblingOperation" flags="nn" index="YCak7" />
      <concept id="1227264722563" name="jetbrains.mps.lang.smodel.structure.EqualsStructurallyExpression" flags="nn" index="2YFouu" />
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="3562215692195599741" name="jetbrains.mps.lang.smodel.structure.SLinkImplicitSelect" flags="nn" index="13MTOL">
        <reference id="3562215692195600259" name="link" index="13MTZf" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
      <concept id="1144195091934" name="jetbrains.mps.lang.smodel.structure.Node_IsRoleOperation" flags="nn" index="1BlSNk">
        <reference id="1144195362400" name="conceptOfParent" index="1BmUXE" />
        <reference id="1144195396777" name="linkInParent" index="1Bn3mz" />
      </concept>
      <concept id="1140131837776" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation" flags="nn" index="1P9Npp">
        <child id="1140131861877" name="replacementNode" index="1P9ThW" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
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
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1171391069720" name="jetbrains.mps.baseLanguage.collections.structure.GetIndexOfOperation" flags="nn" index="2WmjW8" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1162934736510" name="jetbrains.mps.baseLanguage.collections.structure.GetElementOperation" flags="nn" index="34jXtK" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="13h7C7" id="2$uHlqTuxWB">
    <property role="3GE5qa" value="file" />
    <ref role="13h7C2" to="5frd:2$uHlqSzhDy" resolve="File" />
    <node concept="13i0hz" id="1ecbQBfuZVU" role="13h7CS">
      <property role="TrG5h" value="addHiddenContent" />
      <node concept="3Tm1VV" id="1ecbQBfuZVV" role="1B3o_S" />
      <node concept="3cqZAl" id="1ecbQBfveYl" role="3clF45" />
      <node concept="3clFbS" id="1ecbQBfuZVX" role="3clF47">
        <node concept="3cpWs8" id="1ecbQBfvfyC" role="3cqZAp">
          <node concept="3cpWsn" id="1ecbQBfvfyF" role="3cpWs9">
            <property role="TrG5h" value="newContent" />
            <node concept="3Tqbb2" id="1ecbQBfvfyA" role="1tU5fm">
              <ref role="ehGHo" to="5frd:4rZ4tH4lGwS" resolve="HiddenContent" />
            </node>
            <node concept="2ShNRf" id="1ecbQBfvfTw" role="33vP2m">
              <node concept="3zrR0B" id="1ecbQBfvfTu" role="2ShVmc">
                <node concept="3Tqbb2" id="1ecbQBfvfTv" role="3zrR0E">
                  <ref role="ehGHo" to="5frd:4rZ4tH4lGwS" resolve="HiddenContent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1ecbQBfvgfn" role="3cqZAp">
          <node concept="37vLTI" id="1ecbQBfvilv" role="3clFbG">
            <node concept="3cpWs3" id="1ecbQBfviSI" role="37vLTx">
              <node concept="2OqwBi" id="1ecbQBfvk3E" role="3uHU7w">
                <node concept="1eOMI4" id="1ecbQBfvjEe" role="2Oq$k0">
                  <node concept="10QFUN" id="1ecbQBfvjEb" role="1eOMHV">
                    <node concept="3uibUv" id="1ecbQBfvjNZ" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="37vLTw" id="1ecbQBfvj0$" role="10QFUP">
                      <ref role="3cqZAo" node="1ecbQBfveCh" resolve="content" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="1ecbQBfvku6" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                </node>
              </node>
              <node concept="Xl_RD" id="1ecbQBfviw$" role="3uHU7B">
                <property role="Xl_RC" value="hc" />
              </node>
            </node>
            <node concept="2OqwBi" id="1ecbQBfvgLu" role="37vLTJ">
              <node concept="37vLTw" id="1ecbQBfvgfl" role="2Oq$k0">
                <ref role="3cqZAo" node="1ecbQBfvfyF" resolve="newContent" />
              </node>
              <node concept="3TrcHB" id="1ecbQBfvhxW" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1ecbQBfvl1P" role="3cqZAp">
          <node concept="37vLTI" id="1ecbQBfvnMp" role="3clFbG">
            <node concept="37vLTw" id="1ecbQBfvp98" role="37vLTx">
              <ref role="3cqZAo" node="1ecbQBfveCh" resolve="content" />
            </node>
            <node concept="2OqwBi" id="1ecbQBfvlJ6" role="37vLTJ">
              <node concept="37vLTw" id="1ecbQBfvl1N" role="2Oq$k0">
                <ref role="3cqZAo" node="1ecbQBfvfyF" resolve="newContent" />
              </node>
              <node concept="3TrEf2" id="1ecbQBfvqdo" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:4rZ4tH4lGwT" resolve="content" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1ecbQBfvqhJ" role="3cqZAp">
          <node concept="37vLTI" id="1ecbQBfvs6S" role="3clFbG">
            <node concept="2OqwBi" id="1ecbQBfvqW5" role="37vLTJ">
              <node concept="37vLTw" id="1ecbQBfvqhH" role="2Oq$k0">
                <ref role="3cqZAo" node="1ecbQBfvfyF" resolve="newContent" />
              </node>
              <node concept="3TrEf2" id="1ecbQBfvrsy" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:1ecbQBfuWI9" resolve="section" />
              </node>
            </node>
            <node concept="37vLTw" id="7X7UKPAGSJn" role="37vLTx">
              <ref role="3cqZAo" node="7X7UKPAGRlu" resolve="section" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2UGMKm8zj0H" role="3cqZAp" />
        <node concept="3SKdUt" id="2UGMKm8zjrl" role="3cqZAp">
          <node concept="3SKdUq" id="2UGMKm8zjrn" role="3SKWNk">
            <property role="3SKdUp" value="TODO" />
          </node>
        </node>
        <node concept="3clFbJ" id="2UGMKm8zbCz" role="3cqZAp">
          <node concept="3clFbS" id="2UGMKm8zbC_" role="3clFbx">
            <node concept="3clFbF" id="1ecbQBfv0Sh" role="3cqZAp">
              <node concept="37vLTI" id="6uf7$58$QPs" role="3clFbG">
                <node concept="37vLTw" id="6uf7$58$Rg2" role="37vLTx">
                  <ref role="3cqZAo" node="1ecbQBfvfyF" resolve="newContent" />
                </node>
                <node concept="2OqwBi" id="1ecbQBfv1kn" role="37vLTJ">
                  <node concept="13iPFW" id="1ecbQBfv0Sg" role="2Oq$k0" />
                  <node concept="3TrEf2" id="6uf7$58_9gD" role="2OqNvi">
                    <ref role="3Tt5mk" to="5frd:1ecbQBfuWIj" resolve="hiddenContent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6kn8py6cG$t" role="3clFbw">
            <node concept="2YIFZM" id="6kn8py6cG7P" role="2Oq$k0">
              <ref role="37wK5l" to="w1kc:~ModelAccess.instance():jetbrains.mps.smodel.ModelAccess" resolve="instance" />
              <ref role="1Pybhc" to="w1kc:~ModelAccess" resolve="ModelAccess" />
            </node>
            <node concept="liA8E" id="6kn8py6cH4W" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~ModelAccess.canWrite():boolean" resolve="canWrite" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1ecbQBfveCh" role="3clF46">
        <property role="TrG5h" value="content" />
        <node concept="3Tqbb2" id="1ecbQBfveCg" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7X7UKPAGRlu" role="3clF46">
        <property role="TrG5h" value="section" />
        <node concept="3Tqbb2" id="7X7UKPAGSwm" role="1tU5fm">
          <ref role="ehGHo" to="5frd:2$uHlqSzbou" resolve="Section" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="ORfz$E8km0" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="allowsEffectForNode" />
      <ref role="13i0hy" to="pbu6:ORfz$DS6Ap" resolve="allowsEffectForNode" />
      <node concept="3Tm1VV" id="ORfz$E8km1" role="1B3o_S" />
      <node concept="3clFbS" id="ORfz$E8km8" role="3clF47">
        <node concept="3clFbJ" id="ORfz$E8sR2" role="3cqZAp">
          <node concept="3clFbS" id="ORfz$E8sR4" role="3clFbx">
            <node concept="3cpWs6" id="ORfz$E8tot" role="3cqZAp">
              <node concept="BsUDl" id="ORfz$ECZnX" role="3cqZAk">
                <ref role="37wK5l" to="pbu6:ORfz$E_gVa" resolve="genericError" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="ORfz$E8tl9" role="3clFbw">
            <node concept="1eOMI4" id="432kJCy$ZVi" role="3fr31v">
              <node concept="22lmx$" id="432kJCy_0eR" role="1eOMHV">
                <node concept="2OqwBi" id="ORfz$E8tlb" role="3uHU7B">
                  <node concept="37vLTw" id="ORfz$E8tlc" role="2Oq$k0">
                    <ref role="3cqZAo" node="ORfz$E8km9" resolve="n" />
                  </node>
                  <node concept="1mIQ4w" id="ORfz$E8tld" role="2OqNvi">
                    <node concept="chp4Y" id="ORfz$E8tle" role="cj9EA">
                      <ref role="cht4Q" to="yv47:2uR5X5ayM7T" resolve="IToplevelExprContent" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="432kJCy_3vo" role="3uHU7w">
                  <node concept="2OqwBi" id="432kJCy_2RM" role="2Oq$k0">
                    <node concept="37vLTw" id="432kJCy_2Ja" role="2Oq$k0">
                      <ref role="3cqZAo" node="ORfz$E8km9" resolve="n" />
                    </node>
                    <node concept="2Xjw5R" id="432kJCy_3a2" role="2OqNvi">
                      <node concept="1xMEDy" id="432kJCy_3a4" role="1xVPHs">
                        <node concept="chp4Y" id="432kJCy_3ev" role="ri$Ld">
                          <ref role="cht4Q" to="5frd:2$uHlqSzbou" resolve="Section" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3x8VRR" id="432kJCy_4cl" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="ORfz$ED0iU" role="3cqZAp">
          <node concept="BsUDl" id="ORfz$ED0qc" role="3cqZAk">
            <ref role="37wK5l" to="pbu6:ORfz$ED07o" resolve="noError" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="ORfz$E8km9" role="3clF46">
        <property role="TrG5h" value="n" />
        <node concept="3Tqbb2" id="ORfz$E8kma" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="ORfz$ECZf7" role="3clF45" />
    </node>
    <node concept="13i0hz" id="2aoocMLmf9b" role="13h7CS">
      <property role="TrG5h" value="getRepositoryFilePath" />
      <node concept="3Tm1VV" id="2aoocMLmf9c" role="1B3o_S" />
      <node concept="17QB3L" id="2aoocMLmffr" role="3clF45" />
      <node concept="3clFbS" id="2aoocMLmf9e" role="3clF47">
        <node concept="3clFbF" id="2aoocMLmfgC" role="3cqZAp">
          <node concept="2OqwBi" id="2aoocMLmhqH" role="3clFbG">
            <node concept="2OqwBi" id="2aoocMLmf_m" role="2Oq$k0">
              <node concept="13iPFW" id="2aoocMLmfgB" role="2Oq$k0" />
              <node concept="3TrEf2" id="2aoocMLmgEr" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:2aoocMLiV1q" resolve="loader" />
              </node>
            </node>
            <node concept="2qgKlT" id="2aoocMLmhH1" role="2OqNvi">
              <ref role="37wK5l" to="48kf:5lKnBeAuKov" resolve="getCanonicalPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="2$uHlqTuxWC" role="13h7CW">
      <node concept="3clFbS" id="2$uHlqTuxWD" role="2VODD2">
        <node concept="3clFbF" id="2$uHlqTuyOz" role="3cqZAp">
          <node concept="37vLTI" id="2$uHlqTu$rA" role="3clFbG">
            <node concept="2ShNRf" id="2$uHlqTu$xL" role="37vLTx">
              <node concept="3zrR0B" id="2$uHlqTu$xJ" role="2ShVmc">
                <node concept="3Tqbb2" id="2$uHlqTu$xK" role="3zrR0E">
                  <ref role="ehGHo" to="scux:4mwbOhsXrAp" resolve="ArtifactsTree" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2$uHlqTuz9N" role="37vLTJ">
              <node concept="13iPFW" id="2$uHlqTuyOy" role="2Oq$k0" />
              <node concept="3TrEf2" id="2$uHlqTuzGE" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:2$uHlqTuxYX" resolve="featureComposition" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="37IcDEOYw6V" role="3cqZAp">
          <node concept="37vLTI" id="37IcDEOYyzF" role="3clFbG">
            <node concept="3clFbT" id="37IcDEOYyC2" role="37vLTx">
              <property role="3clFbU" value="false" />
            </node>
            <node concept="2OqwBi" id="37IcDEOYwsu" role="37vLTJ">
              <node concept="13iPFW" id="37IcDEOYw6T" role="2Oq$k0" />
              <node concept="3TrcHB" id="37IcDEOYxCK" role="2OqNvi">
                <ref role="3TsBF5" to="5frd:37IcDEOYvS0" resolve="revealTypes" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="57k_vxmZxf2">
    <property role="3GE5qa" value="section" />
    <ref role="13h7C2" to="5frd:2$uHlqSzbou" resolve="Section" />
    <node concept="13i0hz" id="2kN28RP5ZOg" role="13h7CS">
      <property role="TrG5h" value="reloadInports" />
      <node concept="3Tm1VV" id="2kN28RP5ZOh" role="1B3o_S" />
      <node concept="3cqZAl" id="2kN28RP60ez" role="3clF45" />
      <node concept="3clFbS" id="2kN28RP5ZOj" role="3clF47">
        <node concept="2Gpval" id="2kN28RP60fw" role="3cqZAp">
          <node concept="2GrKxI" id="2kN28RP60fx" role="2Gsz3X">
            <property role="TrG5h" value="inport" />
          </node>
          <node concept="2OqwBi" id="2kN28RP60vC" role="2GsD0m">
            <node concept="13iPFW" id="2kN28RP60gi" role="2Oq$k0" />
            <node concept="3Tsc0h" id="2kN28RP61iD" role="2OqNvi">
              <ref role="3TtcxE" to="5frd:2$uHlqTwKJO" resolve="inports" />
            </node>
          </node>
          <node concept="3clFbS" id="2kN28RP60fz" role="2LFqv$">
            <node concept="3cpWs8" id="11KrhWhPJjY" role="3cqZAp">
              <node concept="3cpWsn" id="11KrhWhPJk1" role="3cpWs9">
                <property role="TrG5h" value="outportType" />
                <node concept="3Tqbb2" id="11KrhWhPJjW" role="1tU5fm">
                  <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
                </node>
                <node concept="2OqwBi" id="11KrhWhKptq" role="33vP2m">
                  <node concept="2OqwBi" id="11KrhWhKnN3" role="2Oq$k0">
                    <node concept="2GrUjf" id="11KrhWhKn$8" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="2kN28RP60fx" resolve="inport" />
                    </node>
                    <node concept="3TrEf2" id="11KrhWhKolT" role="2OqNvi">
                      <ref role="3Tt5mk" to="5frd:26bEYU6$gdM" resolve="outport" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="UBdn8EdkES" role="2OqNvi">
                    <ref role="3Tt5mk" to="5frd:3HjnGQtWLRv" resolve="type" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="11KrhWhKlsT" role="3cqZAp">
              <node concept="2OqwBi" id="11KrhWhKmXs" role="3clFbG">
                <node concept="2OqwBi" id="11KrhWhKlDc" role="2Oq$k0">
                  <node concept="2GrUjf" id="11KrhWhKlsR" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="2kN28RP60fx" resolve="inport" />
                  </node>
                  <node concept="3TrEf2" id="11KrhWhKmqi" role="2OqNvi">
                    <ref role="3Tt5mk" to="5frd:7g3NvkvSCOn" resolve="type" />
                  </node>
                </node>
                <node concept="2qgKlT" id="11KrhWhKnli" role="2OqNvi">
                  <ref role="37wK5l" to="rfu:XZLIaPm3XP" resolve="replaceWith" />
                  <node concept="2OqwBi" id="4xjFwZUlAH1" role="37wK5m">
                    <node concept="2OqwBi" id="4xjFwZUlAH2" role="2Oq$k0">
                      <node concept="2OqwBi" id="4xjFwZUlAH3" role="2Oq$k0">
                        <node concept="2GrUjf" id="4xjFwZUlAH4" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="2kN28RP60fx" resolve="inport" />
                        </node>
                        <node concept="3TrEf2" id="4xjFwZUlAH5" role="2OqNvi">
                          <ref role="3Tt5mk" to="5frd:26bEYU6$gdM" resolve="outport" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="4xjFwZUlAH6" role="2OqNvi">
                        <ref role="3Tt5mk" to="5frd:3HjnGQtWLRv" resolve="type" />
                      </node>
                    </node>
                    <node concept="1$rogu" id="4xjFwZUlAH7" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="10zQN_$Zdz5" role="3cqZAp">
              <node concept="37vLTI" id="10zQN_$Zfa6" role="3clFbG">
                <node concept="3clFbT" id="10zQN_$Zfvm" role="37vLTx">
                  <property role="3clFbU" value="false" />
                </node>
                <node concept="2OqwBi" id="10zQN_$ZdKf" role="37vLTJ">
                  <node concept="2GrUjf" id="10zQN_$Zdz3" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="2kN28RP60fx" resolve="inport" />
                  </node>
                  <node concept="3TrcHB" id="10zQN_$Zes3" role="2OqNvi">
                    <ref role="3TsBF5" to="5frd:3HjnGQtW3ZY" resolve="isOutdated" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="4rZ4tH4B7TQ" role="3cqZAp">
              <node concept="3SKdUq" id="4rZ4tH4B7TS" role="3SKWNk">
                <property role="3SKdUp" value="TODO: heavily dependent on synchwithserver; still required?" />
              </node>
            </node>
            <node concept="3clFbJ" id="7UBQZE3sKSP" role="3cqZAp">
              <node concept="3clFbS" id="7UBQZE3sKSQ" role="3clFbx">
                <node concept="3clFbF" id="7UBQZE3sKT1" role="3cqZAp">
                  <node concept="2OqwBi" id="7UBQZE3sKT2" role="3clFbG">
                    <node concept="1PxgMI" id="7UBQZE3sKT3" role="2Oq$k0">
                      <node concept="chp4Y" id="7UBQZE3sKT4" role="3oSUPX">
                        <ref role="cht4Q" to="5frd:1UULepO1t7_" resolve="ISynchWithServer" />
                      </node>
                      <node concept="2OqwBi" id="4xjFwZUlCvH" role="1m5AlR">
                        <node concept="2GrUjf" id="4xjFwZUlCf3" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="2kN28RP60fx" resolve="inport" />
                        </node>
                        <node concept="3TrEf2" id="4xjFwZUlDu1" role="2OqNvi">
                          <ref role="3Tt5mk" to="5frd:7g3NvkvSCOn" resolve="type" />
                        </node>
                      </node>
                    </node>
                    <node concept="2qgKlT" id="7UBQZE3sKT6" role="2OqNvi">
                      <ref role="37wK5l" node="1UULepO4pW2" resolve="setId" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4xjFwZUlFyh" role="3cqZAp">
                  <node concept="2OqwBi" id="4xjFwZUlIGm" role="3clFbG">
                    <node concept="1PxgMI" id="4xjFwZUlIe1" role="2Oq$k0">
                      <node concept="chp4Y" id="4xjFwZUlIxN" role="3oSUPX">
                        <ref role="cht4Q" to="5frd:1UULepO1t7_" resolve="ISynchWithServer" />
                      </node>
                      <node concept="2OqwBi" id="4xjFwZUlGBw" role="1m5AlR">
                        <node concept="2GrUjf" id="4xjFwZUlFyf" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="2kN28RP60fx" resolve="inport" />
                        </node>
                        <node concept="3TrEf2" id="4xjFwZUlHC$" role="2OqNvi">
                          <ref role="3Tt5mk" to="5frd:7g3NvkvSCOn" resolve="type" />
                        </node>
                      </node>
                    </node>
                    <node concept="2qgKlT" id="4xjFwZUlJaM" role="2OqNvi">
                      <ref role="37wK5l" node="11KrhWhKNEB" resolve="createServersideCopy" />
                      <node concept="37vLTw" id="4xjFwZUlJel" role="37wK5m">
                        <ref role="3cqZAo" node="11KrhWhPJk1" resolve="outportType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7UBQZE3sKTf" role="3clFbw">
                <node concept="2OqwBi" id="7UBQZE3sLNM" role="2Oq$k0">
                  <node concept="2GrUjf" id="7UBQZE3sLzQ" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="2kN28RP60fx" resolve="inport" />
                  </node>
                  <node concept="3TrEf2" id="7UBQZE3sMXt" role="2OqNvi">
                    <ref role="3Tt5mk" to="5frd:7g3NvkvSCOn" resolve="type" />
                  </node>
                </node>
                <node concept="1mIQ4w" id="7UBQZE3sKTh" role="2OqNvi">
                  <node concept="chp4Y" id="7UBQZE3sKTi" role="cj9EA">
                    <ref role="cht4Q" to="5frd:1UULepO1t7_" resolve="ISynchWithServer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="57k_vxmZxf3" role="13h7CW">
      <node concept="3clFbS" id="57k_vxmZxf4" role="2VODD2">
        <node concept="3clFbF" id="4rZ4tH4e$KZ" role="3cqZAp">
          <node concept="37vLTI" id="4rZ4tH4eBwG" role="3clFbG">
            <node concept="2ShNRf" id="4rZ4tH4eBB6" role="37vLTx">
              <node concept="3zrR0B" id="4rZ4tH4eB$j" role="2ShVmc">
                <node concept="3Tqbb2" id="4rZ4tH4eB$k" role="3zrR0E">
                  <ref role="ehGHo" to="5frd:2$uHlqTwLPc" resolve="Codeblock" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4rZ4tH4e_XC" role="37vLTJ">
              <node concept="13iPFW" id="4rZ4tH4e$KY" role="2Oq$k0" />
              <node concept="3TrEf2" id="4rZ4tH4eAR9" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:2$uHlqTwM8L" resolve="codeblock" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2xC0MDxF3Gp" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getDependenciesRelevantForCycleDetection" />
      <ref role="13i0hy" to="hwgx:59HbAIOYveX" resolve="getDependenciesRelevantForCycleDetection" />
      <node concept="3Tm1VV" id="2xC0MDxF3Gq" role="1B3o_S" />
      <node concept="3clFbS" id="2xC0MDxF3Gu" role="3clF47">
        <node concept="3clFbF" id="2xC0MDxF4KW" role="3cqZAp">
          <node concept="2OqwBi" id="2xC0MDxF7Px" role="3clFbG">
            <node concept="2OqwBi" id="2xC0MDxF50b" role="2Oq$k0">
              <node concept="13iPFW" id="2xC0MDxF4KV" role="2Oq$k0" />
              <node concept="3Tsc0h" id="2xC0MDxF5pW" role="2OqNvi">
                <ref role="3TtcxE" to="5frd:2$uHlqTwKJO" resolve="inports" />
              </node>
            </node>
            <node concept="13MTOL" id="2xC0MDxFaHQ" role="2OqNvi">
              <ref role="13MTZf" to="5frd:26bEYU6$gdJ" resolve="from" />
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="2xC0MDxF3Gv" role="3clF45">
        <node concept="3Tqbb2" id="2xC0MDxF3Gw" role="A3Ik2">
          <ref role="ehGHo" to="vs0r:59HbAIOYkEn" resolve="IDetectCycle" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2xC0MDxFeg0" role="13h7CS">
      <property role="TrG5h" value="traceBackElementInCycle" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="hwgx:17fjvcLF7UR" resolve="traceBackElementInCycle" />
      <node concept="3clFbS" id="2xC0MDxFeg3" role="3clF47">
        <node concept="3cpWs8" id="6vIMss7cY0z" role="3cqZAp">
          <node concept="3cpWsn" id="6vIMss7cY0$" role="3cpWs9">
            <property role="TrG5h" value="hs" />
            <node concept="2hMVRd" id="6vIMss7cY0_" role="1tU5fm">
              <node concept="3Tqbb2" id="6vIMss7cY0A" role="2hN53Y" />
            </node>
            <node concept="2ShNRf" id="6vIMss7cY0B" role="33vP2m">
              <node concept="2i4dXS" id="6vIMss7cY0C" role="2ShVmc">
                <node concept="3Tqbb2" id="6vIMss7cY0D" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6vIMss7cY0E" role="3cqZAp">
          <node concept="2OqwBi" id="6vIMss7cY0F" role="3clFbG">
            <node concept="37vLTw" id="6vIMss7cY0G" role="2Oq$k0">
              <ref role="3cqZAo" node="6vIMss7cY0$" resolve="hs" />
            </node>
            <node concept="TSZUe" id="2xC0MDxFggA" role="2OqNvi">
              <node concept="37vLTw" id="2xC0MDxFgg_" role="25WWJ7">
                <ref role="3cqZAo" node="2xC0MDxFeky" resolve="dependency" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6vIMss7cY0J" role="3cqZAp">
          <node concept="37vLTw" id="6vIMss7cY0K" role="3clFbG">
            <ref role="3cqZAo" node="6vIMss7cY0$" resolve="hs" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2xC0MDxFeky" role="3clF46">
        <property role="TrG5h" value="dependency" />
        <node concept="3Tqbb2" id="2xC0MDxFekz" role="1tU5fm">
          <ref role="ehGHo" to="vs0r:59HbAIOYkEn" resolve="IDetectCycle" />
        </node>
      </node>
      <node concept="2hMVRd" id="2xC0MDxFek$" role="3clF45">
        <node concept="3Tqbb2" id="2xC0MDxFek_" role="2hN53Y" />
      </node>
      <node concept="3Tm1VV" id="2xC0MDxFekA" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="10zQN__30Uz" role="13h7CS">
      <property role="TrG5h" value="getObjectAtPosition" />
      <node concept="3Tm1VV" id="10zQN__30U$" role="1B3o_S" />
      <node concept="3Tqbb2" id="10zQN__30U_" role="3clF45">
        <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
      </node>
      <node concept="3clFbS" id="10zQN__30UA" role="3clF47">
        <node concept="3cpWs8" id="10zQN__30UB" role="3cqZAp">
          <node concept="3cpWsn" id="10zQN__30UC" role="3cpWs9">
            <property role="TrG5h" value="statementsBeforePosition" />
            <node concept="2I9FWS" id="10zQN__30UD" role="1tU5fm">
              <ref role="2I9WkF" to="ja9q:4fxn4ASmiCo" resolve="IToplevelStatement" />
            </node>
            <node concept="2OqwBi" id="10zQN__30UE" role="33vP2m">
              <node concept="13iPFW" id="10zQN__30UF" role="2Oq$k0" />
              <node concept="2qgKlT" id="10zQN__30UG" role="2OqNvi">
                <ref role="37wK5l" node="2t3FM7g9kr7" resolve="getStatementsBefore" />
                <node concept="2OqwBi" id="10zQN__30UH" role="37wK5m">
                  <node concept="37vLTw" id="10zQN__30UI" role="2Oq$k0">
                    <ref role="3cqZAo" node="10zQN__30W4" resolve="pos" />
                  </node>
                  <node concept="2Xjw5R" id="10zQN__30UJ" role="2OqNvi">
                    <node concept="1xMEDy" id="10zQN__30UK" role="1xVPHs">
                      <node concept="chp4Y" id="4fxn4ASmlbY" role="ri$Ld">
                        <ref role="cht4Q" to="ja9q:4fxn4ASmiCo" resolve="IToplevelStatement" />
                      </node>
                    </node>
                    <node concept="1xIGOp" id="10zQN__30UM" role="1xVPHs" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7XUYvxQ1tna" role="3cqZAp" />
        <node concept="3cpWs8" id="10zQN__30UO" role="3cqZAp">
          <node concept="3cpWsn" id="10zQN__30UP" role="3cpWs9">
            <property role="TrG5h" value="evaluator" />
            <node concept="3uibUv" id="10zQN__30UQ" role="1tU5fm">
              <ref role="3uigEE" to="2ahs:50LzNoSxDO3" resolve="InterpreterEvaluationHelper" />
            </node>
            <node concept="2ShNRf" id="10zQN__30UR" role="33vP2m">
              <node concept="1pGfFk" id="10zQN__30US" role="2ShVmc">
                <ref role="37wK5l" to="2ahs:50LzNoSxJpU" resolve="InterpreterEvaluationHelper" />
                <node concept="Xl_RD" id="10zQN__30UT" role="37wK5m">
                  <property role="Xl_RC" value="arithmetic" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="10zQN__30UU" role="3cqZAp">
          <node concept="3cpWsn" id="10zQN__30UV" role="3cpWs9">
            <property role="TrG5h" value="context" />
            <node concept="3uibUv" id="1cFlTWM6FeK" role="1tU5fm">
              <ref role="3uigEE" to="essy:1cFlTWM6so1" resolve="MLEContext" />
            </node>
            <node concept="2ShNRf" id="1cFlTWM6Uur" role="33vP2m">
              <node concept="1pGfFk" id="1cFlTWM6Uuq" role="2ShVmc">
                <ref role="37wK5l" to="essy:1cFlTWM6ymP" resolve="MLEContext" />
                <node concept="3clFbT" id="1cFlTWM6UKy" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1cFlTWM6kr5" role="3cqZAp" />
        <node concept="3SKdUt" id="10zQN__30V0" role="3cqZAp">
          <node concept="3SKdUq" id="10zQN__30V1" role="3SKWNk">
            <property role="3SKdUp" value="load inports" />
          </node>
        </node>
        <node concept="2Gpval" id="10zQN__30V2" role="3cqZAp">
          <node concept="2GrKxI" id="10zQN__30V3" role="2Gsz3X">
            <property role="TrG5h" value="inport" />
          </node>
          <node concept="2OqwBi" id="10zQN__30V4" role="2GsD0m">
            <node concept="13iPFW" id="10zQN__30V5" role="2Oq$k0" />
            <node concept="3Tsc0h" id="10zQN__30V6" role="2OqNvi">
              <ref role="3TtcxE" to="5frd:2$uHlqTwKJO" resolve="inports" />
            </node>
          </node>
          <node concept="3clFbS" id="10zQN__30V7" role="2LFqv$">
            <node concept="3clFbF" id="10zQN__30V8" role="3cqZAp">
              <node concept="2OqwBi" id="10zQN__30V9" role="3clFbG">
                <node concept="37vLTw" id="10zQN__30Va" role="2Oq$k0">
                  <ref role="3cqZAo" node="10zQN__30UP" resolve="evaluator" />
                </node>
                <node concept="liA8E" id="10zQN__30Vb" role="2OqNvi">
                  <ref role="37wK5l" to="2ahs:6iqfHNCcJ7_" resolve="evaluateWithContext" />
                  <node concept="2GrUjf" id="10zQN__30Vc" role="37wK5m">
                    <ref role="2Gs0qQ" node="10zQN__30V3" resolve="inport" />
                  </node>
                  <node concept="37vLTw" id="10zQN__30Vd" role="37wK5m">
                    <ref role="3cqZAo" node="10zQN__30UV" resolve="context" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3EqGttA10md" role="3cqZAp" />
        <node concept="3SKdUt" id="10zQN__30Ve" role="3cqZAp">
          <node concept="3SKdUq" id="10zQN__30Vf" role="3SKWNk">
            <property role="3SKdUp" value="evaluate statements" />
          </node>
        </node>
        <node concept="2Gpval" id="10zQN__30Vg" role="3cqZAp">
          <node concept="2GrKxI" id="10zQN__30Vh" role="2Gsz3X">
            <property role="TrG5h" value="expr" />
          </node>
          <node concept="2OqwBi" id="3KhNVPN0PKG" role="2GsD0m">
            <node concept="37vLTw" id="10zQN__30Vi" role="2Oq$k0">
              <ref role="3cqZAo" node="10zQN__30UC" resolve="statementsBeforePosition" />
            </node>
            <node concept="3zZkjj" id="3KhNVPN0Tak" role="2OqNvi">
              <node concept="1bVj0M" id="3KhNVPN0Tam" role="23t8la">
                <node concept="3clFbS" id="3KhNVPN0Tan" role="1bW5cS">
                  <node concept="3clFbF" id="3KhNVPN0Teq" role="3cqZAp">
                    <node concept="3fqX7Q" id="3KhNVPN0UM0" role="3clFbG">
                      <node concept="2OqwBi" id="3KhNVPN0UM2" role="3fr31v">
                        <node concept="37vLTw" id="3KhNVPN0UM3" role="2Oq$k0">
                          <ref role="3cqZAo" node="3KhNVPN0Tao" resolve="it" />
                        </node>
                        <node concept="1mIQ4w" id="3KhNVPN0UM4" role="2OqNvi">
                          <node concept="chp4Y" id="3KhNVPN0V9X" role="cj9EA">
                            <ref role="cht4Q" to="ja9q:4rZ4tH4gay8" resolve="VisibleStructureStatement" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="3KhNVPN0Tao" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="3KhNVPN0Tap" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="10zQN__30Vj" role="2LFqv$">
            <node concept="3clFbF" id="10zQN__30Vl" role="3cqZAp">
              <node concept="2OqwBi" id="10zQN__30Vm" role="3clFbG">
                <node concept="37vLTw" id="10zQN__30Vn" role="2Oq$k0">
                  <ref role="3cqZAo" node="10zQN__30UP" resolve="evaluator" />
                </node>
                <node concept="liA8E" id="10zQN__30Vo" role="2OqNvi">
                  <ref role="37wK5l" to="2ahs:6iqfHNCcJ7_" resolve="evaluateWithContext" />
                  <node concept="2GrUjf" id="10zQN__30Vp" role="37wK5m">
                    <ref role="2Gs0qQ" node="10zQN__30Vh" resolve="expr" />
                  </node>
                  <node concept="37vLTw" id="7XUYvxQ0HMD" role="37wK5m">
                    <ref role="3cqZAo" node="10zQN__30UV" resolve="context" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3EqGttA10IE" role="3cqZAp" />
        <node concept="3cpWs8" id="10zQN__30VM" role="3cqZAp">
          <node concept="3cpWsn" id="10zQN__30VN" role="3cpWs9">
            <property role="TrG5h" value="resultObject" />
            <node concept="3Tqbb2" id="10zQN__30VO" role="1tU5fm">
              <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
            </node>
            <node concept="10QFUN" id="10zQN__30VP" role="33vP2m">
              <node concept="3Tqbb2" id="10zQN__30VQ" role="10QFUM">
                <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
              </node>
              <node concept="2OqwBi" id="10zQN__30VR" role="10QFUP">
                <node concept="2OqwBi" id="10zQN__30VS" role="2Oq$k0">
                  <node concept="37vLTw" id="10zQN__30VT" role="2Oq$k0">
                    <ref role="3cqZAo" node="10zQN__30UV" resolve="context" />
                  </node>
                  <node concept="liA8E" id="10zQN__30VU" role="2OqNvi">
                    <ref role="37wK5l" to="2ahs:2X4$XGmeuKp" resolve="getEnvironment" />
                  </node>
                </node>
                <node concept="liA8E" id="10zQN__30VV" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                  <node concept="37vLTw" id="10zQN__3aQC" role="37wK5m">
                    <ref role="3cqZAo" node="10zQN__30W2" resolve="type" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4fxn4ASrWdw" role="3cqZAp" />
        <node concept="3cpWs8" id="10zQN__30V$" role="3cqZAp">
          <node concept="3cpWsn" id="10zQN__30V_" role="3cpWs9">
            <property role="TrG5h" value="partialStatement" />
            <node concept="3Tqbb2" id="10zQN__30VA" role="1tU5fm">
              <ref role="ehGHo" to="ja9q:6pyCRNQL2EL" resolve="AbstractStatement" />
            </node>
            <node concept="2OqwBi" id="10zQN__30VB" role="33vP2m">
              <node concept="13iPFW" id="10zQN__30VC" role="2Oq$k0" />
              <node concept="2qgKlT" id="10zQN__30VD" role="2OqNvi">
                <ref role="37wK5l" node="UBdn8DXwtY" resolve="getPartialStatement" />
                <node concept="37vLTw" id="10zQN__30VE" role="37wK5m">
                  <ref role="3cqZAo" node="10zQN__30W4" resolve="pos" />
                </node>
                <node concept="37vLTw" id="2UGMKm8eN0i" role="37wK5m">
                  <ref role="3cqZAo" node="10zQN__30VN" resolve="resultObject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4fxn4ASrTCX" role="3cqZAp">
          <node concept="3clFbS" id="4fxn4ASrTCZ" role="3clFbx">
            <node concept="3clFbF" id="10zQN__30VF" role="3cqZAp">
              <node concept="2OqwBi" id="10zQN__30VG" role="3clFbG">
                <node concept="37vLTw" id="10zQN__30VH" role="2Oq$k0">
                  <ref role="3cqZAo" node="10zQN__30UP" resolve="evaluator" />
                </node>
                <node concept="liA8E" id="10zQN__30VI" role="2OqNvi">
                  <ref role="37wK5l" to="2ahs:6iqfHNCcJ7_" resolve="evaluateWithContext" />
                  <node concept="37vLTw" id="10zQN__30VJ" role="37wK5m">
                    <ref role="3cqZAo" node="10zQN__30V_" resolve="partialStatement" />
                  </node>
                  <node concept="37vLTw" id="10zQN__30VK" role="37wK5m">
                    <ref role="3cqZAo" node="10zQN__30UV" resolve="context" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4fxn4ASrUS1" role="3clFbw">
            <node concept="37vLTw" id="4fxn4ASrUo$" role="2Oq$k0">
              <ref role="3cqZAo" node="10zQN__30V_" resolve="partialStatement" />
            </node>
            <node concept="3x8VRR" id="4fxn4ASrVD9" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="3MDuPPBEpsQ" role="3cqZAp" />
        <node concept="3cpWs6" id="10zQN__30W0" role="3cqZAp">
          <node concept="37vLTw" id="10zQN__30W1" role="3cqZAk">
            <ref role="3cqZAo" node="10zQN__30VN" resolve="resultObject" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="10zQN__30W2" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="3Tqbb2" id="10zQN__30W3" role="1tU5fm">
          <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
        </node>
      </node>
      <node concept="37vLTG" id="10zQN__30W4" role="3clF46">
        <property role="TrG5h" value="pos" />
        <node concept="3Tqbb2" id="10zQN__30W5" role="1tU5fm">
          <ref role="ehGHo" to="ja9q:6pyCRNQL2EL" resolve="AbstractStatement" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2t3FM7g9kr7" role="13h7CS">
      <property role="TrG5h" value="getStatementsBefore" />
      <node concept="37vLTG" id="2t3FM7g9lpC" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="2t3FM7g9lpD" role="1tU5fm">
          <ref role="ehGHo" to="ja9q:4fxn4ASmiCo" resolve="IToplevelStatement" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2t3FM7g9kr8" role="1B3o_S" />
      <node concept="2I9FWS" id="2t3FM7g9lo_" role="3clF45">
        <ref role="2I9WkF" to="ja9q:4fxn4ASmiCo" resolve="IToplevelStatement" />
      </node>
      <node concept="3clFbS" id="2t3FM7g9kra" role="3clF47">
        <node concept="3cpWs8" id="2t3FM7g9x4Z" role="3cqZAp">
          <node concept="3cpWsn" id="2t3FM7g9x52" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="2I9FWS" id="2t3FM7g9x4X" role="1tU5fm">
              <ref role="2I9WkF" to="ja9q:4fxn4ASmiCo" resolve="IToplevelStatement" />
            </node>
            <node concept="2ShNRf" id="2t3FM7g9xfW" role="33vP2m">
              <node concept="2T8Vx0" id="2t3FM7g9xfU" role="2ShVmc">
                <node concept="2I9FWS" id="2t3FM7g9xfV" role="2T96Bj">
                  <ref role="2I9WkF" to="ja9q:4fxn4ASmiCo" resolve="IToplevelStatement" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2t3FM7g9wLA" role="3cqZAp" />
        <node concept="3cpWs8" id="2t3FM7g9nZR" role="3cqZAp">
          <node concept="3cpWsn" id="2t3FM7g9nZU" role="3cpWs9">
            <property role="TrG5h" value="curStatement" />
            <node concept="3Tqbb2" id="2t3FM7g9nZP" role="1tU5fm">
              <ref role="ehGHo" to="ja9q:4fxn4ASmiCo" resolve="IToplevelStatement" />
            </node>
            <node concept="1PxgMI" id="2t3FM7g9FTG" role="33vP2m">
              <node concept="chp4Y" id="4fxn4ASmpQ0" role="3oSUPX">
                <ref role="cht4Q" to="ja9q:4fxn4ASmiCo" resolve="IToplevelStatement" />
              </node>
              <node concept="2OqwBi" id="2t3FM7g9t3P" role="1m5AlR">
                <node concept="2OqwBi" id="2t3FM7g9pBF" role="2Oq$k0">
                  <node concept="2OqwBi" id="2t3FM7g9ogp" role="2Oq$k0">
                    <node concept="13iPFW" id="2t3FM7g9o1j" role="2Oq$k0" />
                    <node concept="3TrEf2" id="2t3FM7g9oY7" role="2OqNvi">
                      <ref role="3Tt5mk" to="5frd:2$uHlqTwM8L" resolve="codeblock" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="2t3FM7g9quY" role="2OqNvi">
                    <ref role="3TtcxE" to="zzzn:49WTic8ig5E" resolve="expressions" />
                  </node>
                </node>
                <node concept="1uHKPH" id="2t3FM7g9vgn" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="2t3FM7g9nZj" role="3cqZAp">
          <node concept="3clFbS" id="2t3FM7g9nZk" role="2LFqv$">
            <node concept="3SKdUt" id="4rZ4tH4o0oC" role="3cqZAp">
              <node concept="3SKdUq" id="4rZ4tH4o0oE" role="3SKWNk">
                <property role="3SKdUp" value="TODO: put condition into separated method (probably not inside Section?)" />
              </node>
            </node>
            <node concept="3clFbJ" id="4rZ4tH4ns0e" role="3cqZAp">
              <node concept="3clFbS" id="4rZ4tH4ns0g" role="3clFbx">
                <node concept="3clFbF" id="2t3FM7g9xgj" role="3cqZAp">
                  <node concept="2OqwBi" id="2t3FM7g9zdz" role="3clFbG">
                    <node concept="37vLTw" id="2t3FM7g9xgi" role="2Oq$k0">
                      <ref role="3cqZAo" node="2t3FM7g9x52" resolve="result" />
                    </node>
                    <node concept="TSZUe" id="2t3FM7g9C5D" role="2OqNvi">
                      <node concept="37vLTw" id="2t3FM7g9Chg" role="25WWJ7">
                        <ref role="3cqZAo" node="2t3FM7g9nZU" resolve="curStatement" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="4rZ4tH4nwo0" role="3clFbw">
                <node concept="1eOMI4" id="4rZ4tH4nYYC" role="3fr31v">
                  <node concept="22lmx$" id="4rZ4tH4nZjR" role="1eOMHV">
                    <node concept="2OqwBi" id="4rZ4tH4nZBv" role="3uHU7w">
                      <node concept="37vLTw" id="4rZ4tH4nZnZ" role="2Oq$k0">
                        <ref role="3cqZAo" node="2t3FM7g9nZU" resolve="curStatement" />
                      </node>
                      <node concept="1mIQ4w" id="4rZ4tH4o0b4" role="2OqNvi">
                        <node concept="chp4Y" id="4IazLL4OJvD" role="cj9EA">
                          <ref role="cht4Q" to="ja9q:2t3FM7fJm6M" resolve="ReadTypeStatement" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4rZ4tH4nwo2" role="3uHU7B">
                      <node concept="37vLTw" id="4rZ4tH4nwo3" role="2Oq$k0">
                        <ref role="3cqZAo" node="2t3FM7g9nZU" resolve="curStatement" />
                      </node>
                      <node concept="1mIQ4w" id="4rZ4tH4nwo4" role="2OqNvi">
                        <node concept="chp4Y" id="4fxn4ASmpff" role="cj9EA">
                          <ref role="cht4Q" to="ja9q:4rZ4tH4gay8" resolve="VisibleStructureStatement" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2t3FM7g9Crb" role="3cqZAp">
              <node concept="37vLTI" id="2t3FM7g9CAi" role="3clFbG">
                <node concept="1PxgMI" id="2t3FM7g9DyX" role="37vLTx">
                  <node concept="chp4Y" id="4fxn4ASmrB6" role="3oSUPX">
                    <ref role="cht4Q" to="ja9q:4fxn4ASmiCo" resolve="IToplevelStatement" />
                  </node>
                  <node concept="2OqwBi" id="2t3FM7g9CNR" role="1m5AlR">
                    <node concept="37vLTw" id="2t3FM7g9CCJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="2t3FM7g9nZU" resolve="curStatement" />
                    </node>
                    <node concept="YCak7" id="2t3FM7g9D4u" role="2OqNvi" />
                  </node>
                </node>
                <node concept="37vLTw" id="2t3FM7g9Cr9" role="37vLTJ">
                  <ref role="3cqZAo" node="2t3FM7g9nZU" resolve="curStatement" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2t3FM7g9wKh" role="2$JKZa">
            <node concept="37vLTw" id="2t3FM7g9wKY" role="3uHU7w">
              <ref role="3cqZAo" node="2t3FM7g9lpC" resolve="target" />
            </node>
            <node concept="37vLTw" id="2t3FM7g9vpA" role="3uHU7B">
              <ref role="3cqZAo" node="2t3FM7g9nZU" resolve="curStatement" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2t3FM7g9Gyh" role="3cqZAp" />
        <node concept="3cpWs6" id="2t3FM7g9GRp" role="3cqZAp">
          <node concept="37vLTw" id="2t3FM7g9Hu0" role="3cqZAk">
            <ref role="3cqZAo" node="2t3FM7g9x52" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="UBdn8DXwtY" role="13h7CS">
      <property role="TrG5h" value="getPartialStatement" />
      <node concept="3Tm1VV" id="UBdn8DXwtZ" role="1B3o_S" />
      <node concept="3Tqbb2" id="UBdn8DXxJz" role="3clF45">
        <ref role="ehGHo" to="ja9q:6pyCRNQL2EL" resolve="AbstractStatement" />
      </node>
      <node concept="3clFbS" id="UBdn8DXwu1" role="3clF47">
        <node concept="3cpWs8" id="6uf7$58I8BL" role="3cqZAp">
          <node concept="3cpWsn" id="6uf7$58I8BO" role="3cpWs9">
            <property role="TrG5h" value="statement" />
            <node concept="3Tqbb2" id="6uf7$58I8BJ" role="1tU5fm">
              <ref role="ehGHo" to="ja9q:4fxn4ASmiCo" resolve="IToplevelStatement" />
            </node>
            <node concept="2OqwBi" id="6uf7$58I8XZ" role="33vP2m">
              <node concept="37vLTw" id="6uf7$58I8Y0" role="2Oq$k0">
                <ref role="3cqZAo" node="UBdn8DXxKC" resolve="target" />
              </node>
              <node concept="2Xjw5R" id="6uf7$58I8Y1" role="2OqNvi">
                <node concept="1xMEDy" id="6uf7$58I8Y2" role="1xVPHs">
                  <node concept="chp4Y" id="4fxn4ASmty2" role="ri$Ld">
                    <ref role="cht4Q" to="ja9q:4fxn4ASmiCo" resolve="IToplevelStatement" />
                  </node>
                </node>
                <node concept="1xIGOp" id="6uf7$58I8Y4" role="1xVPHs" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="UBdn8DXxLc" role="3cqZAp">
          <node concept="3cpWsn" id="UBdn8DXxLf" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3Tqbb2" id="UBdn8DXxLb" role="1tU5fm">
              <ref role="ehGHo" to="ja9q:6pyCRNQL2EL" resolve="AbstractStatement" />
            </node>
            <node concept="2OqwBi" id="6uf7$58I9Tt" role="33vP2m">
              <node concept="1PxgMI" id="4fxn4ASqb4G" role="2Oq$k0">
                <node concept="chp4Y" id="4fxn4ASqbi8" role="3oSUPX">
                  <ref role="cht4Q" to="ja9q:6pyCRNQL2EL" resolve="AbstractStatement" />
                </node>
                <node concept="37vLTw" id="6uf7$58I9sJ" role="1m5AlR">
                  <ref role="3cqZAo" node="6uf7$58I8BO" resolve="statement" />
                </node>
              </node>
              <node concept="2qgKlT" id="4fxn4ASqbMl" role="2OqNvi">
                <ref role="37wK5l" to="w8ws:4k$35jYfrE6" resolve="getHiddenCopy" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1d7HaQbXmmx" role="3cqZAp" />
        <node concept="3cpWs8" id="UBdn8DXMUG" role="3cqZAp">
          <node concept="3cpWsn" id="UBdn8DXMUJ" role="3cpWs9">
            <property role="TrG5h" value="targetInNode" />
            <node concept="3Tqbb2" id="UBdn8DXMUE" role="1tU5fm" />
            <node concept="2OqwBi" id="UBdn8DXNct" role="33vP2m">
              <node concept="13iPFW" id="UBdn8DXMXb" role="2Oq$k0" />
              <node concept="2qgKlT" id="UBdn8DXNUd" role="2OqNvi">
                <ref role="37wK5l" node="UBdn8DXzJO" resolve="findTargetInNode" />
                <node concept="37vLTw" id="UBdn8DXO_m" role="37wK5m">
                  <ref role="3cqZAo" node="UBdn8DXxLf" resolve="result" />
                </node>
                <node concept="37vLTw" id="UBdn8DXOLv" role="37wK5m">
                  <ref role="3cqZAo" node="UBdn8DXxKC" resolve="target" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4k$35jYe6y0" role="3cqZAp" />
        <node concept="3cpWs8" id="UBdn8DXPxb" role="3cqZAp">
          <node concept="3cpWsn" id="UBdn8DXPxe" role="3cpWs9">
            <property role="TrG5h" value="laterSibling" />
            <node concept="3Tqbb2" id="UBdn8DXPx9" role="1tU5fm" />
            <node concept="37vLTw" id="UBdn8DXPCY" role="33vP2m">
              <ref role="3cqZAo" node="UBdn8DXMUJ" resolve="targetInNode" />
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="UBdn8DXPje" role="3cqZAp">
          <node concept="3clFbS" id="UBdn8DXPjg" role="2LFqv$">
            <node concept="3cpWs8" id="UBdn8DXROy" role="3cqZAp">
              <node concept="3cpWsn" id="UBdn8DXRO_" role="3cpWs9">
                <property role="TrG5h" value="currentSibling" />
                <node concept="3uibUv" id="UBdn8DXSl7" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
                <node concept="37vLTw" id="UBdn8DXRQ9" role="33vP2m">
                  <ref role="3cqZAo" node="UBdn8DXPxe" resolve="laterSibling" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="UBdn8DXRQK" role="3cqZAp">
              <node concept="37vLTI" id="UBdn8DXRYK" role="3clFbG">
                <node concept="2OqwBi" id="UBdn8DXS7h" role="37vLTx">
                  <node concept="37vLTw" id="UBdn8DXS0J" role="2Oq$k0">
                    <ref role="3cqZAo" node="UBdn8DXPxe" resolve="laterSibling" />
                  </node>
                  <node concept="YCak7" id="UBdn8DXSh2" role="2OqNvi" />
                </node>
                <node concept="37vLTw" id="UBdn8DXRQI" role="37vLTJ">
                  <ref role="3cqZAo" node="UBdn8DXPxe" resolve="laterSibling" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="UBdn8DXSlA" role="3cqZAp">
              <node concept="2OqwBi" id="UBdn8DXStj" role="3clFbG">
                <node concept="37vLTw" id="UBdn8DXSl$" role="2Oq$k0">
                  <ref role="3cqZAo" node="UBdn8DXRO_" resolve="currentSibling" />
                </node>
                <node concept="liA8E" id="UBdn8DXSJt" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.delete():void" resolve="delete" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="UBdn8DXQjU" role="2$JKZa">
            <node concept="37vLTw" id="UBdn8DXQ5Y" role="2Oq$k0">
              <ref role="3cqZAo" node="UBdn8DXPxe" resolve="laterSibling" />
            </node>
            <node concept="3x8VRR" id="UBdn8DXQDT" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="2UGMKm8xYPa" role="3cqZAp" />
        <node concept="3cpWs6" id="UBdn8DXywt" role="3cqZAp">
          <node concept="37vLTw" id="UBdn8DXyxk" role="3cqZAk">
            <ref role="3cqZAo" node="UBdn8DXxLf" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="UBdn8DXxKC" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="UBdn8DXxKB" role="1tU5fm">
          <ref role="ehGHo" to="ja9q:6pyCRNQL2EL" resolve="AbstractStatement" />
        </node>
      </node>
      <node concept="37vLTG" id="6uf7$58I4R5" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3Tqbb2" id="2UGMKm8eNc8" role="1tU5fm">
          <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="UBdn8DXzJO" role="13h7CS">
      <property role="TrG5h" value="findTargetInNode" />
      <node concept="3Tm1VV" id="UBdn8DXzJP" role="1B3o_S" />
      <node concept="3Tqbb2" id="UBdn8DX$ya" role="3clF45" />
      <node concept="3clFbS" id="UBdn8DXzJR" role="3clF47">
        <node concept="1X3_iC" id="4fxn4ASrBZ_" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbJ" id="UBdn8DXE$A" role="8Wnug">
            <node concept="2OqwBi" id="4k$35jY1erf" role="3clFbw">
              <node concept="2OqwBi" id="4k$35jY1bP1" role="2Oq$k0">
                <node concept="37vLTw" id="UBdn8DXFFI" role="2Oq$k0">
                  <ref role="3cqZAo" node="UBdn8DX$yZ" resolve="node" />
                </node>
                <node concept="3TrcHB" id="4k$35jY1dhW" role="2OqNvi">
                  <ref role="3TsBF5" to="ja9q:4k$35jY17_C" resolve="relativeId" />
                </node>
              </node>
              <node concept="liA8E" id="4k$35jY1fCt" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="2OqwBi" id="4k$35jY1fVd" role="37wK5m">
                  <node concept="37vLTw" id="4k$35jY1fDD" role="2Oq$k0">
                    <ref role="3cqZAo" node="UBdn8DX$yB" resolve="target" />
                  </node>
                  <node concept="3TrcHB" id="4k$35jY1gpe" role="2OqNvi">
                    <ref role="3TsBF5" to="ja9q:4k$35jY17_C" resolve="relativeId" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="UBdn8DXE$C" role="3clFbx">
              <node concept="3cpWs6" id="UBdn8DXFzt" role="3cqZAp">
                <node concept="37vLTw" id="UBdn8DXFGk" role="3cqZAk">
                  <ref role="3cqZAo" node="UBdn8DX$yZ" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4k$35jY61yR" role="3cqZAp" />
        <node concept="2Gpval" id="UBdn8DXFHw" role="3cqZAp">
          <node concept="2GrKxI" id="UBdn8DXFHx" role="2Gsz3X">
            <property role="TrG5h" value="child" />
          </node>
          <node concept="2OqwBi" id="4k$35jXXO$7" role="2GsD0m">
            <node concept="2OqwBi" id="UBdn8DXFQm" role="2Oq$k0">
              <node concept="37vLTw" id="UBdn8DXFIo" role="2Oq$k0">
                <ref role="3cqZAo" node="UBdn8DX$yZ" resolve="node" />
              </node>
              <node concept="32TBzR" id="UBdn8DXG6g" role="2OqNvi" />
            </node>
            <node concept="3zZkjj" id="4k$35jXXPPR" role="2OqNvi">
              <node concept="1bVj0M" id="4k$35jXXPPT" role="23t8la">
                <node concept="3clFbS" id="4k$35jXXPPU" role="1bW5cS">
                  <node concept="3clFbF" id="4k$35jXXQaO" role="3cqZAp">
                    <node concept="2OqwBi" id="4k$35jXXQz5" role="3clFbG">
                      <node concept="37vLTw" id="4k$35jXXQaN" role="2Oq$k0">
                        <ref role="3cqZAo" node="4k$35jXXPPV" resolve="it" />
                      </node>
                      <node concept="1mIQ4w" id="4k$35jXXRlV" role="2OqNvi">
                        <node concept="chp4Y" id="4IazLL4Pm4R" role="cj9EA">
                          <ref role="cht4Q" to="ja9q:6pyCRNQL2EL" resolve="AbstractStatement" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="4k$35jXXPPV" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="4k$35jXXPPW" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="UBdn8DXFHz" role="2LFqv$">
            <node concept="3cpWs8" id="UBdn8DXJDE" role="3cqZAp">
              <node concept="3cpWsn" id="UBdn8DXJDH" role="3cpWs9">
                <property role="TrG5h" value="found" />
                <node concept="3Tqbb2" id="UBdn8DXJDC" role="1tU5fm" />
                <node concept="2OqwBi" id="UBdn8DXHPt" role="33vP2m">
                  <node concept="13iPFW" id="UBdn8DXHzL" role="2Oq$k0" />
                  <node concept="2qgKlT" id="UBdn8DXIzc" role="2OqNvi">
                    <ref role="37wK5l" node="UBdn8DXzJO" resolve="findTargetInNode" />
                    <node concept="1PxgMI" id="4k$35jXXSZz" role="37wK5m">
                      <node concept="chp4Y" id="4IazLL4Pmcz" role="3oSUPX">
                        <ref role="cht4Q" to="ja9q:6pyCRNQL2EL" resolve="AbstractStatement" />
                      </node>
                      <node concept="2GrUjf" id="UBdn8DXIEu" role="1m5AlR">
                        <ref role="2Gs0qQ" node="UBdn8DXFHx" resolve="child" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="UBdn8DXIU4" role="37wK5m">
                      <ref role="3cqZAo" node="UBdn8DX$yB" resolve="target" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="UBdn8DXHy_" role="3cqZAp">
              <node concept="3clFbS" id="UBdn8DXHyB" role="3clFbx">
                <node concept="3cpWs6" id="UBdn8DXKBy" role="3cqZAp">
                  <node concept="37vLTw" id="UBdn8DXKNW" role="3cqZAk">
                    <ref role="3cqZAo" node="UBdn8DXJDH" resolve="found" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="UBdn8DXKbM" role="3clFbw">
                <node concept="37vLTw" id="UBdn8DXJR0" role="2Oq$k0">
                  <ref role="3cqZAo" node="UBdn8DXJDH" resolve="found" />
                </node>
                <node concept="3x8VRR" id="UBdn8DXKwl" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="UBdn8DXLR5" role="3cqZAp" />
        <node concept="3cpWs6" id="UBdn8DXLqW" role="3cqZAp">
          <node concept="10Nm6u" id="UBdn8DXLH0" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="UBdn8DX$yZ" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="UBdn8DXFA8" role="1tU5fm">
          <ref role="ehGHo" to="ja9q:6pyCRNQL2EL" resolve="AbstractStatement" />
        </node>
      </node>
      <node concept="37vLTG" id="UBdn8DX$yB" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="UBdn8DX$yA" role="1tU5fm">
          <ref role="ehGHo" to="ja9q:6pyCRNQL2EL" resolve="AbstractStatement" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="UBdn8DXUEO" role="13h7CS">
      <property role="TrG5h" value="printNode" />
      <node concept="3Tm1VV" id="UBdn8DXUEP" role="1B3o_S" />
      <node concept="3cqZAl" id="UBdn8DXVLp" role="3clF45" />
      <node concept="3clFbS" id="UBdn8DXUER" role="3clF47">
        <node concept="3cpWs8" id="UBdn8DXZP_" role="3cqZAp">
          <node concept="3cpWsn" id="UBdn8DXZPC" role="3cpWs9">
            <property role="TrG5h" value="pre" />
            <node concept="17QB3L" id="UBdn8DXZPz" role="1tU5fm" />
            <node concept="Xl_RD" id="UBdn8DY00y" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="UBdn8DXY1a" role="3cqZAp">
          <node concept="3clFbS" id="UBdn8DXY1c" role="2LFqv$">
            <node concept="3clFbF" id="UBdn8DY00Q" role="3cqZAp">
              <node concept="d57v9" id="UBdn8DY10l" role="3clFbG">
                <node concept="37vLTw" id="UBdn8DY10o" role="37vLTJ">
                  <ref role="3cqZAo" node="UBdn8DXZPC" resolve="pre" />
                </node>
                <node concept="Xl_RD" id="UBdn8DY10C" role="37vLTx">
                  <property role="Xl_RC" value="|" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="UBdn8DXY1d" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="UBdn8DXYbd" role="1tU5fm" />
            <node concept="3cmrfG" id="UBdn8DXYbR" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="UBdn8DXZ85" role="1Dwp0S">
            <node concept="37vLTw" id="UBdn8DXZhX" role="3uHU7w">
              <ref role="3cqZAo" node="UBdn8DXW4Z" resolve="level" />
            </node>
            <node concept="37vLTw" id="UBdn8DXYc8" role="3uHU7B">
              <ref role="3cqZAo" node="UBdn8DXY1d" resolve="i" />
            </node>
          </node>
          <node concept="2$rviw" id="UBdn8DXZna" role="1Dwrff">
            <node concept="37vLTw" id="UBdn8DXZAm" role="2$L3a6">
              <ref role="3cqZAo" node="UBdn8DXY1d" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="UBdn8DXXRf" role="3cqZAp" />
        <node concept="3clFbJ" id="4k$35jXSLl9" role="3cqZAp">
          <node concept="3clFbS" id="4k$35jXSLlb" role="3clFbx">
            <node concept="34ab3g" id="UBdn8DXVMf" role="3cqZAp">
              <property role="35gtTG" value="info" />
              <node concept="3cpWs3" id="UBdn8DY1aM" role="34bqiv">
                <node concept="37vLTw" id="UBdn8DY1kF" role="3uHU7B">
                  <ref role="3cqZAo" node="UBdn8DXZPC" resolve="pre" />
                </node>
                <node concept="2OqwBi" id="UBdn8DXVTo" role="3uHU7w">
                  <node concept="37vLTw" id="UBdn8DXVMV" role="2Oq$k0">
                    <ref role="3cqZAo" node="UBdn8DXVLQ" resolve="node" />
                  </node>
                  <node concept="2qgKlT" id="UBdn8DXW1B" role="2OqNvi">
                    <ref role="37wK5l" to="tpcu:22G2W3WJ92t" resolve="getDetailedPresentation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4k$35jXSLSH" role="3clFbw">
            <node concept="37vLTw" id="4k$35jXT2ay" role="2Oq$k0">
              <ref role="3cqZAo" node="UBdn8DXVLQ" resolve="node" />
            </node>
            <node concept="1mIQ4w" id="4k$35jXSMD_" role="2OqNvi">
              <node concept="chp4Y" id="4IazLL4Pmwr" role="cj9EA">
                <ref role="cht4Q" to="ja9q:6pyCRNQL2EL" resolve="AbstractStatement" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4k$35jXTeYQ" role="3cqZAp" />
        <node concept="2Gpval" id="UBdn8DXWch" role="3cqZAp">
          <node concept="2GrKxI" id="UBdn8DXWcj" role="2Gsz3X">
            <property role="TrG5h" value="child" />
          </node>
          <node concept="2OqwBi" id="UBdn8DXWrx" role="2GsD0m">
            <node concept="37vLTw" id="UBdn8DXWjn" role="2Oq$k0">
              <ref role="3cqZAo" node="UBdn8DXVLQ" resolve="node" />
            </node>
            <node concept="32TBzR" id="UBdn8DXWIA" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="UBdn8DXWcn" role="2LFqv$">
            <node concept="3clFbF" id="UBdn8DXWK9" role="3cqZAp">
              <node concept="2OqwBi" id="UBdn8DXWWx" role="3clFbG">
                <node concept="13iPFW" id="UBdn8DXWK8" role="2Oq$k0" />
                <node concept="2qgKlT" id="UBdn8DXXEc" role="2OqNvi">
                  <ref role="37wK5l" node="UBdn8DXUEO" resolve="printNode" />
                  <node concept="2GrUjf" id="UBdn8DXXJV" role="37wK5m">
                    <ref role="2Gs0qQ" node="UBdn8DXWcj" resolve="child" />
                  </node>
                  <node concept="3cpWs3" id="UBdn8DY2_H" role="37wK5m">
                    <node concept="3cmrfG" id="UBdn8DY2_K" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="37vLTw" id="UBdn8DY1GC" role="3uHU7B">
                      <ref role="3cqZAo" node="UBdn8DXW4Z" resolve="level" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="UBdn8DXVLQ" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="UBdn8DXVLP" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="UBdn8DXW4Z" role="3clF46">
        <property role="TrG5h" value="level" />
        <node concept="10Oyi0" id="UBdn8DXW8t" role="1tU5fm" />
      </node>
      <node concept="P$JXv" id="10Ig25OViqi" role="lGtFl">
        <node concept="TZ5HI" id="10Ig25OViqj" role="3nqlJM">
          <node concept="TZ5HA" id="10Ig25OViqk" role="3HnX3l" />
        </node>
        <node concept="TZ5HA" id="10Ig25OViQA" role="TZ5H$">
          <node concept="1dT_AC" id="10Ig25OViQB" role="1dT_Ay">
            <property role="1dT_AB" value="was only used for testing  - could be moved to more general place" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="10Ig25OViql" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="432kJCy$KJP">
    <property role="3GE5qa" value="section" />
    <ref role="13h7C2" to="5frd:2$uHlqTwLPc" resolve="Codeblock" />
    <node concept="13i0hz" id="432kJCy$KK0" role="13h7CS">
      <property role="TrG5h" value="effectDescriptor" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="pbu6:6GySMNjjWfO" resolve="effectDescriptor" />
      <node concept="3clFbS" id="432kJCy$KK3" role="3clF47">
        <node concept="3clFbF" id="432kJCy_5TQ" role="3cqZAp">
          <node concept="2YIFZM" id="432kJCy_5V6" role="3clFbG">
            <ref role="1Pybhc" to="oq0c:3ni3WieuV7z" resolve="EffectDescriptor" />
            <ref role="37wK5l" to="oq0c:6GySMNjCKBZ" resolve="forNodes" />
            <node concept="2OqwBi" id="432kJCy_6lg" role="37wK5m">
              <node concept="13iPFW" id="432kJCy_5VB" role="2Oq$k0" />
              <node concept="3Tsc0h" id="432kJCy_6Jd" role="2OqNvi">
                <ref role="3TtcxE" to="zzzn:49WTic8ig5E" resolve="expressions" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="432kJCy$KKD" role="3clF45">
        <ref role="3uigEE" to="oq0c:3ni3WieuV7z" resolve="EffectDescriptor" />
      </node>
      <node concept="3Tm1VV" id="432kJCy$KKE" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="432kJCy$KJQ" role="13h7CW">
      <node concept="3clFbS" id="432kJCy$KJR" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="432kJCy_g_n">
    <property role="3GE5qa" value="section.ports" />
    <ref role="13h7C2" to="5frd:5uNOSkli4V2" resolve="ProvideOutportExpr" />
    <node concept="13hLZK" id="432kJCy_g_o" role="13h7CW">
      <node concept="3clFbS" id="432kJCy_g_p" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="432kJCy_g_y" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="432kJCy_g_z" role="1B3o_S" />
      <node concept="3clFbS" id="432kJCy_g_A" role="3clF47">
        <node concept="3clFbF" id="432kJCy_g_U" role="3cqZAp">
          <node concept="Xl_RD" id="432kJCy_g_T" role="3clFbG">
            <property role="Xl_RC" value="rr_provideOutportExpr" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="432kJCy_g_B" role="3clF45" />
    </node>
    <node concept="13i0hz" id="3HjnGQtVkc4" role="13h7CS">
      <property role="TrG5h" value="notifyInports" />
      <node concept="3Tm1VV" id="3HjnGQtVkc5" role="1B3o_S" />
      <node concept="3cqZAl" id="3HjnGQtVkdv" role="3clF45" />
      <node concept="3clFbS" id="3HjnGQtVkc7" role="3clF47">
        <node concept="2Gpval" id="3HjnGQtW1ZT" role="3cqZAp">
          <node concept="2GrKxI" id="3HjnGQtW1ZU" role="2Gsz3X">
            <property role="TrG5h" value="inport" />
          </node>
          <node concept="2OqwBi" id="3HjnGQtW33H" role="2GsD0m">
            <node concept="2OqwBi" id="3HjnGQtW2d7" role="2Oq$k0">
              <node concept="13iPFW" id="3HjnGQtW20t" role="2Oq$k0" />
              <node concept="3TrEf2" id="3HjnGQtW2x7" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:432kJCyAB3S" resolve="outport" />
              </node>
            </node>
            <node concept="2qgKlT" id="3HjnGQtW3xy" role="2OqNvi">
              <ref role="37wK5l" node="3HjnGQtVkey" resolve="getReferencingInports" />
            </node>
          </node>
          <node concept="3clFbS" id="3HjnGQtW1ZW" role="2LFqv$">
            <node concept="3clFbF" id="3HjnGQtW3E$" role="3cqZAp">
              <node concept="37vLTI" id="3HjnGQtWeJm" role="3clFbG">
                <node concept="3clFbT" id="3HjnGQtWeVC" role="37vLTx">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="2OqwBi" id="3HjnGQtW3QJ" role="37vLTJ">
                  <node concept="2GrUjf" id="3HjnGQtW3Ez" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="3HjnGQtW1ZU" resolve="inport" />
                  </node>
                  <node concept="3TrcHB" id="3HjnGQtWe1_" role="2OqNvi">
                    <ref role="3TsBF5" to="5frd:3HjnGQtW3ZY" resolve="isOutdated" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2t3FM7fZ$3v" role="13h7CS">
      <property role="TrG5h" value="getRelatedNode" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="w8ws:2t3FM7fWBTc" resolve="getRelatedNode" />
      <node concept="3Tm1VV" id="2t3FM7fZ$3w" role="1B3o_S" />
      <node concept="3clFbS" id="2t3FM7fZ$3z" role="3clF47">
        <node concept="3cpWs6" id="2t3FM7fZ$ge" role="3cqZAp">
          <node concept="2OqwBi" id="2t3FM7fZAFf" role="3cqZAk">
            <node concept="2OqwBi" id="2t3FM7fZ_Hp" role="2Oq$k0">
              <node concept="2OqwBi" id="2t3FM7fZ$uB" role="2Oq$k0">
                <node concept="13iPFW" id="2t3FM7fZ$gv" role="2Oq$k0" />
                <node concept="3TrEf2" id="2t3FM7fZ_80" role="2OqNvi">
                  <ref role="3Tt5mk" to="5frd:432kJCyAB3S" resolve="outport" />
                </node>
              </node>
              <node concept="3TrEf2" id="2t3FM7fZA6X" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:2kN28RP0pXq" resolve="object" />
              </node>
            </node>
            <node concept="2qgKlT" id="2t3FM7fZAVU" role="2OqNvi">
              <ref role="37wK5l" node="1qp0740gyb2" resolve="getObject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="4k$35jY91au" role="3clF45">
        <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="26bEYU6__td">
    <property role="3GE5qa" value="section.ports" />
    <ref role="13h7C2" to="5frd:2$uHlqTwKh_" resolve="Inport" />
    <node concept="13i0hz" id="26bEYU6__to" role="13h7CS">
      <property role="TrG5h" value="getObjectTypeProvider" />
      <node concept="3Tm1VV" id="26bEYU6__tp" role="1B3o_S" />
      <node concept="3Tqbb2" id="26bEYU6__tV" role="3clF45">
        <ref role="ehGHo" to="5frd:pBV22SMBK$" resolve="IProvideTypeObject" />
      </node>
      <node concept="3clFbS" id="26bEYU6__tr" role="3clF47">
        <node concept="3cpWs6" id="26bEYU6__v0" role="3cqZAp">
          <node concept="2OqwBi" id="1qp0740h6zV" role="3cqZAk">
            <node concept="2OqwBi" id="26bEYU6__CO" role="2Oq$k0">
              <node concept="13iPFW" id="26bEYU6__vn" role="2Oq$k0" />
              <node concept="3TrEf2" id="26bEYU6_A2E" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:26bEYU6$gdM" resolve="outport" />
              </node>
            </node>
            <node concept="3TrEf2" id="2kN28RP0t49" role="2OqNvi">
              <ref role="3Tt5mk" to="5frd:2kN28RP0pXq" resolve="object" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="26bEYU6__te" role="13h7CW">
      <node concept="3clFbS" id="26bEYU6__tf" role="2VODD2">
        <node concept="3clFbF" id="3HjnGQtW402" role="3cqZAp">
          <node concept="37vLTI" id="3HjnGQtW6zA" role="3clFbG">
            <node concept="3clFbT" id="3HjnGQtW6B4" role="37vLTx">
              <property role="3clFbU" value="false" />
            </node>
            <node concept="2OqwBi" id="3HjnGQtW4kx" role="37vLTJ">
              <node concept="13iPFW" id="3HjnGQtW401" role="2Oq$k0" />
              <node concept="3TrcHB" id="3HjnGQtW56i" role="2OqNvi">
                <ref role="3TsBF5" to="5frd:3HjnGQtW3ZY" resolve="isOutdated" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2kN28RP4PBG" role="13h7CS">
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getObservedNode" />
      <ref role="13i0hy" node="2kN28ROXXGe" resolve="getObservedNode" />
      <node concept="3Tm1VV" id="2kN28RP4PBH" role="1B3o_S" />
      <node concept="3clFbS" id="2kN28RP4PBK" role="3clF47">
        <node concept="3clFbF" id="2kN28RP4PI_" role="3cqZAp">
          <node concept="2OqwBi" id="2kN28RP4PVq" role="3clFbG">
            <node concept="13iPFW" id="2kN28RP4PI$" role="2Oq$k0" />
            <node concept="3TrEf2" id="2kN28RP4Qjv" role="2OqNvi">
              <ref role="3Tt5mk" to="5frd:26bEYU6$gdM" resolve="outport" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="2kN28RP4PBL" role="3clF45" />
    </node>
    <node concept="13i0hz" id="2kN28RP4PBM" role="13h7CS">
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getNameFromObservedNode" />
      <ref role="13i0hy" node="2kN28RP1jWC" resolve="getNameFromObservedNode" />
      <node concept="3Tm1VV" id="2kN28RP4PBN" role="1B3o_S" />
      <node concept="3clFbS" id="2kN28RP4PBQ" role="3clF47">
        <node concept="3clFbF" id="2kN28RP4QqR" role="3cqZAp">
          <node concept="2OqwBi" id="2kN28RP4RD0" role="3clFbG">
            <node concept="2OqwBi" id="2kN28RP4QD0" role="2Oq$k0">
              <node concept="13iPFW" id="2kN28RP4QqQ" role="2Oq$k0" />
              <node concept="3TrEf2" id="2kN28RP4R0F" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:26bEYU6$gdM" resolve="outport" />
              </node>
            </node>
            <node concept="3TrcHB" id="2kN28RP4S5d" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="2kN28RP4PBR" role="3clF45" />
    </node>
    <node concept="13i0hz" id="1ELd1MG3tJI" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getType" />
      <ref role="13i0hy" node="1ELd1MG1vXo" resolve="getType" />
      <node concept="3Tm1VV" id="1ELd1MG3tJJ" role="1B3o_S" />
      <node concept="3clFbS" id="1ELd1MG3tJM" role="3clF47">
        <node concept="3cpWs6" id="1ELd1MG3tW4" role="3cqZAp">
          <node concept="2OqwBi" id="1ELd1MG3tW8" role="3cqZAk">
            <node concept="2OqwBi" id="1ELd1MG3tW9" role="2Oq$k0">
              <node concept="13iPFW" id="1ELd1MG3tWa" role="2Oq$k0" />
              <node concept="3TrEf2" id="1ELd1MG3tWb" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:26bEYU6$gdM" resolve="outport" />
              </node>
            </node>
            <node concept="3TrEf2" id="1ELd1MG3tWc" role="2OqNvi">
              <ref role="3Tt5mk" to="5frd:3HjnGQtWLRv" resolve="type" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="1ELd1MG3tJN" role="3clF45">
        <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
      </node>
    </node>
    <node concept="13i0hz" id="534lKF6Q8mP" role="13h7CS">
      <property role="TrG5h" value="requiresUpdate" />
      <node concept="3Tm1VV" id="534lKF6Q8mQ" role="1B3o_S" />
      <node concept="10P_77" id="534lKF6Q8yY" role="3clF45" />
      <node concept="3clFbS" id="534lKF6Q8mS" role="3clF47">
        <node concept="3cpWs6" id="534lKF6Q8zM" role="3cqZAp">
          <node concept="22lmx$" id="534lKF6QaEz" role="3cqZAk">
            <node concept="2OqwBi" id="534lKF6Qb7X" role="3uHU7w">
              <node concept="13iPFW" id="534lKF6QaPo" role="2Oq$k0" />
              <node concept="3TrcHB" id="534lKF6Qc0m" role="2OqNvi">
                <ref role="3TsBF5" to="5frd:534lKF6Q8bd" resolve="isEdited" />
              </node>
            </node>
            <node concept="2OqwBi" id="534lKF6Q8NT" role="3uHU7B">
              <node concept="13iPFW" id="534lKF6Q8$f" role="2Oq$k0" />
              <node concept="3TrcHB" id="534lKF6Q9Da" role="2OqNvi">
                <ref role="3TsBF5" to="5frd:3HjnGQtW3ZY" resolve="isOutdated" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="26bEYU6G0xI">
    <property role="3GE5qa" value="variables" />
    <ref role="13h7C2" to="5frd:pBV22SMBK$" resolve="IProvideTypeObject" />
    <node concept="13i0hz" id="1qp0740gP5I" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getDeclarationNode" />
      <node concept="3Tm1VV" id="2kN28RP0ODT" role="1B3o_S" />
      <node concept="3Tqbb2" id="1qp0740gP6j" role="3clF45">
        <ref role="ehGHo" to="5frd:1UULepNJ9io" resolve="VariableDeclaration" />
      </node>
      <node concept="3clFbS" id="1qp0740gP5L" role="3clF47" />
    </node>
    <node concept="13i0hz" id="1qp0740gxlZ" role="13h7CS">
      <property role="TrG5h" value="getObjectName" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <node concept="3Tm1VV" id="1qp0740gxm0" role="1B3o_S" />
      <node concept="3clFbS" id="1qp0740gxm2" role="3clF47">
        <node concept="3clFbF" id="1qp0740gPdn" role="3cqZAp">
          <node concept="2OqwBi" id="1qp0740gQ5V" role="3clFbG">
            <node concept="2OqwBi" id="1qp0740gPmC" role="2Oq$k0">
              <node concept="13iPFW" id="1qp0740gPdm" role="2Oq$k0" />
              <node concept="2qgKlT" id="1qp0740gPJO" role="2OqNvi">
                <ref role="37wK5l" node="1qp0740gP5I" resolve="getDeclarationNode" />
              </node>
            </node>
            <node concept="3TrcHB" id="1qp0740gRaM" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="1qp0740gzn2" role="3clF45" />
    </node>
    <node concept="13i0hz" id="1qp0740gyb2" role="13h7CS">
      <property role="TrG5h" value="getObject" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <node concept="3Tm1VV" id="1qp0740gyb3" role="1B3o_S" />
      <node concept="3Tqbb2" id="1qp0740gyb4" role="3clF45">
        <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
      </node>
      <node concept="3clFbS" id="1qp0740gyb5" role="3clF47" />
    </node>
    <node concept="13i0hz" id="7qBCLwWhIAp" role="13h7CS">
      <property role="TrG5h" value="getObjectAtPosition" />
      <node concept="3Tm1VV" id="7qBCLwWhIAq" role="1B3o_S" />
      <node concept="3Tqbb2" id="7qBCLwWhJnL" role="3clF45">
        <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
      </node>
      <node concept="3clFbS" id="7qBCLwWhIAs" role="3clF47">
        <node concept="3cpWs8" id="7qBCLwWhKAj" role="3cqZAp">
          <node concept="3cpWsn" id="7qBCLwWhKAm" role="3cpWs9">
            <property role="TrG5h" value="section" />
            <node concept="3Tqbb2" id="7qBCLwWhKAi" role="1tU5fm">
              <ref role="ehGHo" to="5frd:2$uHlqSzbou" resolve="Section" />
            </node>
            <node concept="2OqwBi" id="7qBCLwWhKdm" role="33vP2m">
              <node concept="13iPFW" id="7qBCLwWhK3J" role="2Oq$k0" />
              <node concept="2Xjw5R" id="7qBCLwWhKtu" role="2OqNvi">
                <node concept="1xMEDy" id="7qBCLwWhKtw" role="1xVPHs">
                  <node concept="chp4Y" id="7qBCLwWhKvI" role="ri$Ld">
                    <ref role="cht4Q" to="5frd:2$uHlqSzbou" resolve="Section" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7qBCLwWhTTb" role="3cqZAp">
          <node concept="3cpWsn" id="7qBCLwWhTTe" role="3cpWs9">
            <property role="TrG5h" value="pos" />
            <node concept="3Tqbb2" id="7qBCLwWhTT9" role="1tU5fm">
              <ref role="ehGHo" to="ja9q:6pyCRNQL2EL" resolve="AbstractStatement" />
            </node>
            <node concept="2OqwBi" id="7qBCLwWhUf3" role="33vP2m">
              <node concept="37vLTw" id="7qBCLwWhUHm" role="2Oq$k0">
                <ref role="3cqZAo" node="7qBCLwWhK3c" resolve="position" />
              </node>
              <node concept="2Xjw5R" id="7qBCLwWhUFM" role="2OqNvi">
                <node concept="1xMEDy" id="7qBCLwWhUFO" role="1xVPHs">
                  <node concept="chp4Y" id="4IazLL4OjQ5" role="ri$Ld">
                    <ref role="cht4Q" to="ja9q:6pyCRNQL2EL" resolve="AbstractStatement" />
                  </node>
                </node>
                <node concept="1xIGOp" id="6Y$bjgGJLqM" role="1xVPHs" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7qBCLwWhOnX" role="3cqZAp">
          <node concept="3SKdUq" id="7qBCLwWhOnZ" role="3SKWNk">
            <property role="3SKdUp" value="TODO: catch section = null" />
          </node>
        </node>
        <node concept="3cpWs6" id="7qBCLwWhN5m" role="3cqZAp">
          <node concept="2OqwBi" id="7qBCLwWhN5n" role="3cqZAk">
            <node concept="37vLTw" id="7qBCLwWhN5o" role="2Oq$k0">
              <ref role="3cqZAo" node="7qBCLwWhKAm" resolve="section" />
            </node>
            <node concept="2qgKlT" id="7qBCLwWhN5p" role="2OqNvi">
              <ref role="37wK5l" node="10zQN__30Uz" resolve="getObjectAtPosition" />
              <node concept="2OqwBi" id="7qBCLwWhRCm" role="37wK5m">
                <node concept="13iPFW" id="7qBCLwWhN5q" role="2Oq$k0" />
                <node concept="2qgKlT" id="7qBCLwWhS10" role="2OqNvi">
                  <ref role="37wK5l" node="1qp0740gyb2" resolve="getObject" />
                </node>
              </node>
              <node concept="37vLTw" id="7qBCLwWhUHJ" role="37wK5m">
                <ref role="3cqZAo" node="7qBCLwWhTTe" resolve="pos" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7qBCLwWhK3c" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="3Tqbb2" id="7qBCLwWhK3b" role="1tU5fm" />
      </node>
    </node>
    <node concept="13hLZK" id="26bEYU6G0xJ" role="13h7CW">
      <node concept="3clFbS" id="26bEYU6G0xK" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="26bEYU6G0zK">
    <property role="3GE5qa" value="variables" />
    <ref role="13h7C2" to="5frd:1EO_bV9G$FR" resolve="VariableReference" />
    <node concept="13i0hz" id="1UULepNKesu" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3clFbS" id="1UULepNKesx" role="3clF47">
        <node concept="3clFbF" id="1UULepNKeGk" role="3cqZAp">
          <node concept="2OqwBi" id="1UULepNKg34" role="3clFbG">
            <node concept="2OqwBi" id="1UULepNKeVU" role="2Oq$k0">
              <node concept="13iPFW" id="1UULepNKeGj" role="2Oq$k0" />
              <node concept="3TrEf2" id="1UULepNKfmI" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:1UULepNKcNI" resolve="val" />
              </node>
            </node>
            <node concept="3TrcHB" id="1UULepNKgu3" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="1UULepNKe$S" role="3clF45" />
      <node concept="3Tm1VV" id="1UULepNKe$T" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="1UULepNKg$b" role="13h7CS">
      <property role="TrG5h" value="isStaticallyEvaluatable" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="pbu6:3NBP8_O4e8l" resolve="isStaticallyEvaluatable" />
      <node concept="3clFbS" id="1UULepNKg$e" role="3clF47">
        <node concept="3clFbF" id="1UULepNKgUq" role="3cqZAp">
          <node concept="3clFbT" id="1UULepNKgUp" role="3clFbG">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="1UULepNKgJR" role="3clF45" />
      <node concept="3Tm1VV" id="1UULepNKgJS" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="1UULepNKgUF" role="13h7CS">
      <property role="TrG5h" value="target" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="pbu6:6rGLT0TevFd" resolve="target" />
      <node concept="3clFbS" id="1UULepNKgUI" role="3clF47">
        <node concept="3clFbF" id="1UULepNKhgC" role="3cqZAp">
          <node concept="2OqwBi" id="1UULepNKhwx" role="3clFbG">
            <node concept="13iPFW" id="1UULepNKhgB" role="2Oq$k0" />
            <node concept="3TrEf2" id="1UULepNKhVl" role="2OqNvi">
              <ref role="3Tt5mk" to="5frd:1UULepNKcNI" resolve="val" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="1UULepNKh65" role="3clF45" />
      <node concept="3Tm1VV" id="1UULepNKh66" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="1UULepNKhYT" role="13h7CS">
      <property role="TrG5h" value="getISSVariable" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="pbu6:5GL30CqMVFo" resolve="getISSVariable" />
      <node concept="3clFbS" id="1UULepNKhYW" role="3clF47">
        <node concept="3clFbF" id="1UULepNKimc" role="3cqZAp">
          <node concept="2OqwBi" id="1UULepNKi_M" role="3clFbG">
            <node concept="13iPFW" id="1UULepNKimb" role="2Oq$k0" />
            <node concept="3TrEf2" id="1UULepNKj0u" role="2OqNvi">
              <ref role="3Tt5mk" to="5frd:1UULepNKcNI" resolve="val" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="1UULepNKib6" role="3clF45">
        <ref role="ehGHo" to="hm2y:5GL30CqMVEV" resolve="ISSConstrainedValue" />
      </node>
      <node concept="3Tm1VV" id="1UULepNKib7" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="26bEYU6G0zL" role="13h7CW">
      <node concept="3clFbS" id="26bEYU6G0zM" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1qp0740h8Xs" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getDeclarationNode" />
      <ref role="13i0hy" node="1qp0740gP5I" resolve="getDeclarationNode" />
      <node concept="3Tmbuc" id="1qp0740h8Xt" role="1B3o_S" />
      <node concept="3clFbS" id="1qp0740h8Xw" role="3clF47">
        <node concept="3clFbF" id="1UULepNOKZ5" role="3cqZAp">
          <node concept="2OqwBi" id="1UULepNOLeF" role="3clFbG">
            <node concept="13iPFW" id="1UULepNOKZ4" role="2Oq$k0" />
            <node concept="3TrEf2" id="1UULepNOLDv" role="2OqNvi">
              <ref role="3Tt5mk" to="5frd:1UULepNKcNI" resolve="val" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="1UULepNOIi2" role="3clF45">
        <ref role="ehGHo" to="5frd:1UULepNJ9io" resolve="VariableDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="2kN28RP5zl2" role="13h7CS">
      <property role="TrG5h" value="getObjectName" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" node="1qp0740gxlZ" resolve="getObjectName" />
      <node concept="3clFbS" id="2kN28RP5zlc" role="3clF47">
        <node concept="3clFbF" id="2kN28RP5zpt" role="3cqZAp">
          <node concept="2OqwBi" id="2kN28RP5$OO" role="3clFbG">
            <node concept="2OqwBi" id="2kN28RP5zDX" role="2Oq$k0">
              <node concept="13iPFW" id="2kN28RP5zps" role="2Oq$k0" />
              <node concept="3TrEf2" id="2kN28RP5$6v" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:1UULepNKcNI" resolve="val" />
              </node>
            </node>
            <node concept="3TrcHB" id="2kN28RP5Av9" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="1o0JaC2KBZy" role="3clF45" />
      <node concept="3Tm1VV" id="1o0JaC2KBZz" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="7Xt0Sm$2k3o" role="13h7CS">
      <property role="TrG5h" value="getTypeObject" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" node="1qp0740gyb2" resolve="getObject" />
      <node concept="3clFbS" id="7Xt0Sm$2k3r" role="3clF47">
        <node concept="3clFbF" id="7Xt0Sm$2kjN" role="3cqZAp">
          <node concept="2OqwBi" id="7Xt0Sm$2lJ2" role="3clFbG">
            <node concept="2OqwBi" id="7Xt0Sm$2k$j" role="2Oq$k0">
              <node concept="13iPFW" id="7Xt0Sm$2kjM" role="2Oq$k0" />
              <node concept="3TrEf2" id="7Xt0Sm$2l0H" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:1UULepNKcNI" resolve="val" />
              </node>
            </node>
            <node concept="3TrEf2" id="TC21X7YoFy" role="2OqNvi">
              <ref role="3Tt5mk" to="5frd:1UULepNU6GA" resolve="type" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="7Xt0Sm$2kbK" role="3clF45">
        <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
      </node>
      <node concept="3Tm1VV" id="7Xt0Sm$2kbL" role="1B3o_S" />
    </node>
  </node>
  <node concept="13h7C7" id="26bEYU6GBCy">
    <property role="3GE5qa" value="section.ports" />
    <ref role="13h7C2" to="5frd:2$uHlqTwKhA" resolve="InportRef" />
    <node concept="13hLZK" id="26bEYU6GBCz" role="13h7CW">
      <node concept="3clFbS" id="26bEYU6GBC$" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1qp0740gYH0" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getDeclarationNode" />
      <ref role="13i0hy" node="1qp0740gP5I" resolve="getDeclarationNode" />
      <node concept="3Tmbuc" id="1qp0740gYH1" role="1B3o_S" />
      <node concept="3clFbS" id="1qp0740gYH4" role="3clF47">
        <node concept="3clFbF" id="1qp0740gYHo" role="3cqZAp">
          <node concept="2OqwBi" id="1qp0740h8nq" role="3clFbG">
            <node concept="2OqwBi" id="1qp0740h7N2" role="2Oq$k0">
              <node concept="2OqwBi" id="1qp0740gYRE" role="2Oq$k0">
                <node concept="13iPFW" id="1qp0740gYHn" role="2Oq$k0" />
                <node concept="3TrEf2" id="1qp0740gZ6x" role="2OqNvi">
                  <ref role="3Tt5mk" to="5frd:26bEYU6GCYE" resolve="inport" />
                </node>
              </node>
              <node concept="2qgKlT" id="1qp0740h87$" role="2OqNvi">
                <ref role="37wK5l" node="26bEYU6__to" resolve="getObjectTypeProvider" />
              </node>
            </node>
            <node concept="2qgKlT" id="1qp0740h8Fc" role="2OqNvi">
              <ref role="37wK5l" node="1qp0740gP5I" resolve="getDeclarationNode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="1UULepNOHgh" role="3clF45">
        <ref role="ehGHo" to="5frd:1UULepNJ9io" resolve="VariableDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="2kN28RP5rUK" role="13h7CS">
      <property role="TrG5h" value="getName" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="1qp0740gxlZ" resolve="getObjectName" />
      <node concept="3Tm1VV" id="2kN28RP5rUL" role="1B3o_S" />
      <node concept="3clFbS" id="2kN28RP5rUU" role="3clF47">
        <node concept="3clFbF" id="2kN28RP5s74" role="3cqZAp">
          <node concept="2OqwBi" id="2kN28RP5t4Y" role="3clFbG">
            <node concept="2OqwBi" id="2kN28RP5siK" role="2Oq$k0">
              <node concept="13iPFW" id="2kN28RP5s73" role="2Oq$k0" />
              <node concept="3TrEf2" id="2kN28RP5s$Y" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:26bEYU6GCYE" resolve="inport" />
              </node>
            </node>
            <node concept="3TrcHB" id="2kN28RP5tx4" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="2kN28RP5rUV" role="3clF45" />
    </node>
    <node concept="13i0hz" id="2kN28RP5rUW" role="13h7CS">
      <property role="TrG5h" value="getTypeObject" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="1qp0740gyb2" resolve="getObject" />
      <node concept="3Tm1VV" id="2kN28RP5rUX" role="1B3o_S" />
      <node concept="3clFbS" id="2kN28RP5rV6" role="3clF47">
        <node concept="3clFbF" id="2kN28RP5tAL" role="3cqZAp">
          <node concept="2OqwBi" id="2kN28RP5uHy" role="3clFbG">
            <node concept="2OqwBi" id="2kN28RP5tMt" role="2Oq$k0">
              <node concept="13iPFW" id="2kN28RP5tAK" role="2Oq$k0" />
              <node concept="3TrEf2" id="2kN28RP5V7g" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:26bEYU6GCYE" resolve="inport" />
              </node>
            </node>
            <node concept="3TrEf2" id="2kN28RP5vj3" role="2OqNvi">
              <ref role="3Tt5mk" to="5frd:7g3NvkvSCOn" resolve="type" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="2kN28RP5rV7" role="3clF45">
        <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
      </node>
    </node>
    <node concept="13i0hz" id="1qp0740le93" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="1qp0740le94" role="1B3o_S" />
      <node concept="3clFbS" id="1qp0740le97" role="3clF47">
        <node concept="3clFbF" id="1qp0740lf0g" role="3cqZAp">
          <node concept="Xl_RD" id="1qp0740lf0f" role="3clFbG">
            <property role="Xl_RC" value="rr_inportRef" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="1qp0740le98" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="2kN28ROXXDs">
    <property role="3GE5qa" value="util.alias" />
    <ref role="13h7C2" to="5frd:2kN28ROXXD0" resolve="OptAliasExpression" />
    <node concept="13i0hz" id="2kN28ROZsWF" role="13h7CS">
      <property role="TrG5h" value="checkDefaultName" />
      <node concept="3Tm1VV" id="2kN28ROZsWG" role="1B3o_S" />
      <node concept="3cqZAl" id="2kN28ROZsXz" role="3clF45" />
      <node concept="3clFbS" id="2kN28ROZsWI" role="3clF47">
        <node concept="3clFbJ" id="2kN28ROZile" role="3cqZAp">
          <node concept="17R0WA" id="2kN28ROZitt" role="3clFbw">
            <node concept="2OqwBi" id="2kN28ROZiFy" role="3uHU7w">
              <node concept="13iPFW" id="2kN28ROZtH0" role="2Oq$k0" />
              <node concept="2qgKlT" id="2kN28ROZiYX" role="2OqNvi">
                <ref role="37wK5l" node="2kN28ROXXGe" resolve="getObservedNode" />
              </node>
            </node>
            <node concept="37vLTw" id="2kN28ROZu62" role="3uHU7B">
              <ref role="3cqZAo" node="2kN28ROZtf1" resolve="child" />
            </node>
          </node>
          <node concept="3clFbS" id="2kN28ROZilg" role="3clFbx">
            <node concept="3clFbF" id="2kN28ROZA19" role="3cqZAp">
              <node concept="2OqwBi" id="2kN28ROZAc3" role="3clFbG">
                <node concept="13iPFW" id="2kN28ROZA17" role="2Oq$k0" />
                <node concept="2qgKlT" id="2kN28RP03kb" role="2OqNvi">
                  <ref role="37wK5l" node="2kN28ROZZBW" resolve="setName" />
                  <node concept="2OqwBi" id="2kN28RP39e8" role="37wK5m">
                    <node concept="13iPFW" id="2kN28RP3930" role="2Oq$k0" />
                    <node concept="2qgKlT" id="2kN28RP39N6" role="2OqNvi">
                      <ref role="37wK5l" node="2kN28RP1jWC" resolve="getNameFromObservedNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2kN28ROZtf1" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3Tqbb2" id="2kN28ROZtf0" role="1tU5fm" />
      </node>
    </node>
    <node concept="13hLZK" id="2kN28ROXXDt" role="13h7CW">
      <node concept="3clFbS" id="2kN28ROXXDu" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="2kN28ROXXDB" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="2kN28ROXXDC" role="1B3o_S" />
      <node concept="3clFbS" id="2kN28ROXXDF" role="3clF47">
        <node concept="3clFbF" id="2kN28ROXXDV" role="3cqZAp">
          <node concept="2OqwBi" id="3HjnGQtVaGd" role="3clFbG">
            <node concept="13iPFW" id="3HjnGQtV8UA" role="2Oq$k0" />
            <node concept="3TrcHB" id="3HjnGQtVb1J" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="2kN28ROXXDG" role="3clF45" />
    </node>
    <node concept="13i0hz" id="2kN28ROZZBW" role="13h7CS">
      <property role="TrG5h" value="setName" />
      <node concept="3Tm1VV" id="2kN28ROZZBX" role="1B3o_S" />
      <node concept="3cqZAl" id="2kN28ROZZKj" role="3clF45" />
      <node concept="3clFbS" id="2kN28ROZZBZ" role="3clF47">
        <node concept="3clFbF" id="2kN28ROZZKS" role="3cqZAp">
          <node concept="37vLTI" id="2kN28RP00XT" role="3clFbG">
            <node concept="37vLTw" id="2kN28RP013_" role="37vLTx">
              <ref role="3cqZAo" node="2kN28RP010H" resolve="name" />
            </node>
            <node concept="2OqwBi" id="2kN28ROZZTU" role="37vLTJ">
              <node concept="13iPFW" id="2kN28ROZZKR" role="2Oq$k0" />
              <node concept="3TrcHB" id="2kN28RP4cKp" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2kN28RP4cbm" role="3cqZAp" />
        <node concept="34ab3g" id="2kN28RP01d3" role="3cqZAp">
          <property role="35gtTG" value="info" />
          <node concept="3cpWs3" id="2kN28RP01xV" role="34bqiv">
            <node concept="2OqwBi" id="2kN28RP01JF" role="3uHU7w">
              <node concept="13iPFW" id="2kN28RP01yp" role="2Oq$k0" />
              <node concept="3TrcHB" id="2kN28RP4xDw" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="Xl_RD" id="2kN28RP01d5" role="3uHU7B">
              <property role="Xl_RC" value="name is: " />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2kN28RP010H" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="2kN28RP010G" role="1tU5fm" />
      </node>
    </node>
    <node concept="13i0hz" id="2kN28ROXXGe" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <property role="TrG5h" value="getObservedNode" />
      <node concept="3Tm1VV" id="2kN28ROXXGf" role="1B3o_S" />
      <node concept="3Tqbb2" id="2kN28ROXXGH" role="3clF45" />
      <node concept="3clFbS" id="2kN28ROXXGh" role="3clF47" />
    </node>
    <node concept="13i0hz" id="2kN28RP1jWC" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <property role="TrG5h" value="getNameFromObservedNode" />
      <node concept="3Tm1VV" id="2kN28RP1jWD" role="1B3o_S" />
      <node concept="17QB3L" id="2kN28RP1ka8" role="3clF45" />
      <node concept="3clFbS" id="2kN28RP1jWF" role="3clF47" />
    </node>
  </node>
  <node concept="13h7C7" id="2kN28RP0pWO">
    <property role="3GE5qa" value="section.ports" />
    <ref role="13h7C2" to="5frd:2$uHlqTwKhB" resolve="Outport" />
    <node concept="13hLZK" id="2kN28RP0pWP" role="13h7CW">
      <node concept="3clFbS" id="2kN28RP0pWQ" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="2kN28RP0pWZ" role="13h7CS">
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getObservedNodeWithDefaultName" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" node="2kN28ROXXGe" resolve="getObservedNode" />
      <node concept="3clFbS" id="2kN28RP0pX3" role="3clF47">
        <node concept="3cpWs6" id="2kN28RP0uP$" role="3cqZAp">
          <node concept="2OqwBi" id="2kN28RP0v2I" role="3cqZAk">
            <node concept="13iPFW" id="2kN28RP0uQ3" role="2Oq$k0" />
            <node concept="3TrEf2" id="2kN28RP0vqa" role="2OqNvi">
              <ref role="3Tt5mk" to="5frd:2kN28RP0pXq" resolve="object" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="2kN28RP1x5J" role="3clF45" />
      <node concept="3Tm1VV" id="2kN28RP1x5K" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="2kN28RP1xdQ" role="13h7CS">
      <property role="TrG5h" value="getNameFromObservedNode" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" node="2kN28RP1jWC" resolve="getNameFromObservedNode" />
      <node concept="3clFbS" id="2kN28RP1xdT" role="3clF47">
        <node concept="3cpWs6" id="2kN28RP1CC2" role="3cqZAp">
          <node concept="2OqwBi" id="2kN28RP1CC3" role="3cqZAk">
            <node concept="2OqwBi" id="2kN28RP1H9a" role="2Oq$k0">
              <node concept="13iPFW" id="2kN28RP1CC7" role="2Oq$k0" />
              <node concept="3TrEf2" id="2kN28RP1HrC" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:2kN28RP0pXq" resolve="object" />
              </node>
            </node>
            <node concept="2qgKlT" id="2kN28RP1CC9" role="2OqNvi">
              <ref role="37wK5l" node="1qp0740gxlZ" resolve="getObjectName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="2kN28RP1xmk" role="3clF45" />
      <node concept="3Tm1VV" id="2kN28RP1xml" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="3HjnGQtVkey" role="13h7CS">
      <property role="TrG5h" value="getReferencingInports" />
      <node concept="3Tm1VV" id="3HjnGQtVkez" role="1B3o_S" />
      <node concept="2I9FWS" id="3HjnGQtVkna" role="3clF45">
        <ref role="2I9WkF" to="5frd:2$uHlqTwKh_" resolve="Inport" />
      </node>
      <node concept="3clFbS" id="3HjnGQtVke_" role="3clF47">
        <node concept="3cpWs8" id="3HjnGQtVrFm" role="3cqZAp">
          <node concept="3cpWsn" id="3HjnGQtVrFp" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="2I9FWS" id="3HjnGQtVrFk" role="1tU5fm">
              <ref role="2I9WkF" to="5frd:2$uHlqTwKh_" resolve="Inport" />
            </node>
            <node concept="2ShNRf" id="3HjnGQtVIHj" role="33vP2m">
              <node concept="2T8Vx0" id="3HjnGQtVIHh" role="2ShVmc">
                <node concept="2I9FWS" id="3HjnGQtVIHi" role="2T96Bj">
                  <ref role="2I9WkF" to="5frd:2$uHlqTwKh_" resolve="Inport" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3HjnGQtVrty" role="3cqZAp" />
        <node concept="3cpWs8" id="3HjnGQtVlIC" role="3cqZAp">
          <node concept="3cpWsn" id="3HjnGQtVlIF" role="3cpWs9">
            <property role="TrG5h" value="file" />
            <node concept="3Tqbb2" id="3HjnGQtVlIA" role="1tU5fm">
              <ref role="ehGHo" to="5frd:2$uHlqSzhDy" resolve="File" />
            </node>
            <node concept="2OqwBi" id="3HjnGQtVkBz" role="33vP2m">
              <node concept="13iPFW" id="3HjnGQtVkoA" role="2Oq$k0" />
              <node concept="2Xjw5R" id="3HjnGQtVlpk" role="2OqNvi">
                <node concept="1xMEDy" id="3HjnGQtVlpm" role="1xVPHs">
                  <node concept="chp4Y" id="3HjnGQtVlZa" role="ri$Ld">
                    <ref role="cht4Q" to="5frd:2$uHlqSzhDy" resolve="File" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="3HjnGQtVm2i" role="3cqZAp">
          <node concept="2GrKxI" id="3HjnGQtVm2k" role="2Gsz3X">
            <property role="TrG5h" value="section" />
          </node>
          <node concept="2OqwBi" id="3HjnGQtVmop" role="2GsD0m">
            <node concept="37vLTw" id="3HjnGQtVm3w" role="2Oq$k0">
              <ref role="3cqZAo" node="3HjnGQtVlIF" resolve="file" />
            </node>
            <node concept="3Tsc0h" id="3HjnGQtVoaC" role="2OqNvi">
              <ref role="3TtcxE" to="yv47:ub9nkyK62i" resolve="contents" />
            </node>
          </node>
          <node concept="3clFbS" id="3HjnGQtVm2o" role="2LFqv$">
            <node concept="3clFbJ" id="3HjnGQtVof3" role="3cqZAp">
              <node concept="3fqX7Q" id="3HjnGQtVpu2" role="3clFbw">
                <node concept="2OqwBi" id="3HjnGQtVpu4" role="3fr31v">
                  <node concept="2GrUjf" id="3HjnGQtVpu5" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="3HjnGQtVm2k" resolve="section" />
                  </node>
                  <node concept="1mIQ4w" id="3HjnGQtVpu6" role="2OqNvi">
                    <node concept="chp4Y" id="3HjnGQtVpu7" role="cj9EA">
                      <ref role="cht4Q" to="5frd:2$uHlqSzbou" resolve="Section" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="3HjnGQtVof5" role="3clFbx">
                <node concept="3N13vt" id="3HjnGQtVpAK" role="3cqZAp" />
              </node>
            </node>
            <node concept="3clFbH" id="3HjnGQtVpAU" role="3cqZAp" />
            <node concept="2Gpval" id="3HjnGQtVpC6" role="3cqZAp">
              <node concept="2GrKxI" id="3HjnGQtVpC8" role="2Gsz3X">
                <property role="TrG5h" value="inport" />
              </node>
              <node concept="2OqwBi" id="3HjnGQtVqox" role="2GsD0m">
                <node concept="1PxgMI" id="3HjnGQtVpQr" role="2Oq$k0">
                  <node concept="chp4Y" id="3HjnGQtVpZW" role="3oSUPX">
                    <ref role="cht4Q" to="5frd:2$uHlqSzbou" resolve="Section" />
                  </node>
                  <node concept="2GrUjf" id="3HjnGQtVpCR" role="1m5AlR">
                    <ref role="2Gs0qQ" node="3HjnGQtVm2k" resolve="section" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="3HjnGQtVrpt" role="2OqNvi">
                  <ref role="3TtcxE" to="5frd:2$uHlqTwKJO" resolve="inports" />
                </node>
              </node>
              <node concept="3clFbS" id="3HjnGQtVpCc" role="2LFqv$">
                <node concept="3clFbJ" id="3HjnGQtVLN6" role="3cqZAp">
                  <node concept="17R0WA" id="3HjnGQtVNjP" role="3clFbw">
                    <node concept="13iPFW" id="3HjnGQtVNzW" role="3uHU7w" />
                    <node concept="2OqwBi" id="3HjnGQtVM2d" role="3uHU7B">
                      <node concept="2GrUjf" id="3HjnGQtVLNq" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="3HjnGQtVpC8" resolve="inport" />
                      </node>
                      <node concept="3TrEf2" id="3HjnGQtVMCB" role="2OqNvi">
                        <ref role="3Tt5mk" to="5frd:26bEYU6$gdM" resolve="outport" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="3HjnGQtVLN8" role="3clFbx">
                    <node concept="3clFbF" id="3HjnGQtVNBi" role="3cqZAp">
                      <node concept="2OqwBi" id="3HjnGQtVQFQ" role="3clFbG">
                        <node concept="37vLTw" id="3HjnGQtVNBh" role="2Oq$k0">
                          <ref role="3cqZAo" node="3HjnGQtVrFp" resolve="result" />
                        </node>
                        <node concept="TSZUe" id="3HjnGQtVZmQ" role="2OqNvi">
                          <node concept="2GrUjf" id="3HjnGQtVZxT" role="25WWJ7">
                            <ref role="2Gs0qQ" node="3HjnGQtVpC8" resolve="inport" />
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
        <node concept="3clFbH" id="3HjnGQtVZH5" role="3cqZAp" />
        <node concept="3cpWs6" id="3HjnGQtW0BN" role="3cqZAp">
          <node concept="37vLTw" id="3HjnGQtW1y2" role="3cqZAk">
            <ref role="3cqZAo" node="3HjnGQtVrFp" resolve="result" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="37IcDEOZdMh">
    <property role="3GE5qa" value="util" />
    <ref role="13h7C2" to="5frd:37IcDEOYvRZ" resolve="IRevealType" />
    <node concept="13i0hz" id="37IcDEOZfb8" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="isTypeVisible" />
      <node concept="3Tm1VV" id="37IcDEOZfb9" role="1B3o_S" />
      <node concept="10P_77" id="37IcDEOZfb_" role="3clF45" />
      <node concept="3clFbS" id="37IcDEOZfbb" role="3clF47">
        <node concept="3cpWs6" id="37IcDEOZfcy" role="3cqZAp">
          <node concept="2OqwBi" id="37IcDEOZfR0" role="3cqZAk">
            <node concept="2OqwBi" id="37IcDEOZflF" role="2Oq$k0">
              <node concept="13iPFW" id="37IcDEOZfd1" role="2Oq$k0" />
              <node concept="2Xjw5R" id="37IcDEOZfwR" role="2OqNvi">
                <node concept="1xMEDy" id="37IcDEOZfwT" role="1xVPHs">
                  <node concept="chp4Y" id="37IcDEOZfx_" role="ri$Ld">
                    <ref role="cht4Q" to="5frd:2$uHlqSzhDy" resolve="File" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3TrcHB" id="37IcDEOZguq" role="2OqNvi">
              <ref role="3TsBF5" to="5frd:37IcDEOYvS0" resolve="revealTypes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1ELd1MG1vXo" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getType" />
      <node concept="3Tm1VV" id="1ELd1MG1vXp" role="1B3o_S" />
      <node concept="3Tqbb2" id="1ELd1MG1w3C" role="3clF45">
        <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
      </node>
      <node concept="3clFbS" id="1ELd1MG1vXr" role="3clF47" />
    </node>
    <node concept="13hLZK" id="37IcDEOZdMi" role="13h7CW">
      <node concept="3clFbS" id="37IcDEOZdMj" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="6Quy7yTNPE_">
    <property role="3GE5qa" value="util.items.selection" />
    <ref role="13h7C2" to="5frd:6MKNUaQDNDz" resolve="ItemSelector" />
    <node concept="13i0hz" id="6MKNUaQHpm1" role="13h7CS">
      <property role="TrG5h" value="isCompatible" />
      <node concept="3Tm1VV" id="6MKNUaQHpm2" role="1B3o_S" />
      <node concept="10P_77" id="6MKNUaQHpmi" role="3clF45" />
      <node concept="3clFbS" id="6MKNUaQHpm4" role="3clF47">
        <node concept="3clFbJ" id="6MKNUaQHrg1" role="3cqZAp">
          <node concept="2OqwBi" id="6MKNUaQHrp1" role="3clFbw">
            <node concept="13iPFW" id="6MKNUaQHrgl" role="2Oq$k0" />
            <node concept="2qgKlT" id="6MKNUaQHrG6" role="2OqNvi">
              <ref role="37wK5l" node="6MKNUaQHpnD" resolve="isRange" />
            </node>
          </node>
          <node concept="3clFbS" id="6MKNUaQHrg3" role="3clFbx">
            <node concept="3clFbJ" id="6MKNUaQHrVs" role="3cqZAp">
              <node concept="2OqwBi" id="6MKNUaQHs4r" role="3clFbw">
                <node concept="37vLTw" id="6MKNUaQHrVK" role="2Oq$k0">
                  <ref role="3cqZAo" node="6MKNUaQHpn7" resolve="other" />
                </node>
                <node concept="2qgKlT" id="6MKNUaQHsnv" role="2OqNvi">
                  <ref role="37wK5l" node="6MKNUaQHpnD" resolve="isRange" />
                </node>
              </node>
              <node concept="3clFbS" id="6MKNUaQHrVu" role="3clFbx">
                <node concept="3cpWs6" id="6MKNUaQHVzo" role="3cqZAp">
                  <node concept="3fqX7Q" id="6MKNUaQHVrL" role="3cqZAk">
                    <node concept="2OqwBi" id="6MKNUaQHVrN" role="3fr31v">
                      <node concept="13iPFW" id="6MKNUaQHVrO" role="2Oq$k0" />
                      <node concept="2qgKlT" id="6MKNUaQHVrP" role="2OqNvi">
                        <ref role="37wK5l" node="6MKNUaQHsEL" resolve="isOverlapping" />
                        <node concept="37vLTw" id="6MKNUaQHVrQ" role="37wK5m">
                          <ref role="3cqZAo" node="6MKNUaQHpn7" resolve="other" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="6MKNUaQHsve" role="9aQIa">
                <node concept="3clFbS" id="6MKNUaQHsvf" role="9aQI4">
                  <node concept="3cpWs6" id="6MKNUaQHVJz" role="3cqZAp">
                    <node concept="3fqX7Q" id="6MKNUaQHWW4" role="3cqZAk">
                      <node concept="2OqwBi" id="6MKNUaQHWW6" role="3fr31v">
                        <node concept="37vLTw" id="6MKNUaQHWW7" role="2Oq$k0">
                          <ref role="3cqZAo" node="6MKNUaQHpn7" resolve="other" />
                        </node>
                        <node concept="2qgKlT" id="6MKNUaQHWW8" role="2OqNvi">
                          <ref role="37wK5l" node="6MKNUaQHSwE" resolve="isInside" />
                          <node concept="13iPFW" id="6MKNUaQIMH7" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="6MKNUaQHrRE" role="9aQIa">
            <node concept="3clFbS" id="6MKNUaQHrRF" role="9aQI4">
              <node concept="3clFbJ" id="6MKNUaQHsAJ" role="3cqZAp">
                <node concept="2OqwBi" id="6MKNUaQHsAK" role="3clFbw">
                  <node concept="37vLTw" id="6MKNUaQHsAL" role="2Oq$k0">
                    <ref role="3cqZAo" node="6MKNUaQHpn7" resolve="other" />
                  </node>
                  <node concept="2qgKlT" id="6MKNUaQHsAM" role="2OqNvi">
                    <ref role="37wK5l" node="6MKNUaQHpnD" resolve="isRange" />
                  </node>
                </node>
                <node concept="3clFbS" id="6MKNUaQHsAN" role="3clFbx">
                  <node concept="3cpWs6" id="6MKNUaQHX1g" role="3cqZAp">
                    <node concept="3fqX7Q" id="6MKNUaQIOcG" role="3cqZAk">
                      <node concept="2OqwBi" id="6MKNUaQIOcI" role="3fr31v">
                        <node concept="13iPFW" id="6MKNUaQIOcJ" role="2Oq$k0" />
                        <node concept="2qgKlT" id="6MKNUaQIOcK" role="2OqNvi">
                          <ref role="37wK5l" node="6MKNUaQHSwE" resolve="isInside" />
                          <node concept="37vLTw" id="6MKNUaQIOcL" role="37wK5m">
                            <ref role="3cqZAo" node="6MKNUaQHpn7" resolve="other" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="6MKNUaQHsAO" role="9aQIa">
                  <node concept="3clFbS" id="6MKNUaQHsAP" role="9aQI4">
                    <node concept="3cpWs6" id="6MKNUaQINfx" role="3cqZAp">
                      <node concept="3fqX7Q" id="6MKNUaQIO6E" role="3cqZAk">
                        <node concept="2OqwBi" id="6MKNUaQIO6G" role="3fr31v">
                          <node concept="13iPFW" id="6MKNUaQIO6H" role="2Oq$k0" />
                          <node concept="2qgKlT" id="6MKNUaQIO6I" role="2OqNvi">
                            <ref role="37wK5l" node="6MKNUaQHY7D" resolve="hasEqualItem" />
                            <node concept="37vLTw" id="6MKNUaQIO6J" role="37wK5m">
                              <ref role="3cqZAo" node="6MKNUaQHpn7" resolve="other" />
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
      <node concept="37vLTG" id="6MKNUaQHpn7" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3Tqbb2" id="6MKNUaQHpn6" role="1tU5fm">
          <ref role="ehGHo" to="5frd:6MKNUaQDNDz" resolve="ItemSelector" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="6MKNUaQHpnD" role="13h7CS">
      <property role="TrG5h" value="isRange" />
      <node concept="3Tm1VV" id="6MKNUaQHpnE" role="1B3o_S" />
      <node concept="10P_77" id="6MKNUaQHpo0" role="3clF45" />
      <node concept="3clFbS" id="6MKNUaQHpnG" role="3clF47">
        <node concept="3clFbF" id="6MKNUaQHpot" role="3cqZAp">
          <node concept="2OqwBi" id="6MKNUaQHq0d" role="3clFbG">
            <node concept="2OqwBi" id="6MKNUaQHpx1" role="2Oq$k0">
              <node concept="13iPFW" id="6MKNUaQHpos" role="2Oq$k0" />
              <node concept="3TrEf2" id="6MKNUaQHpEL" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:6MKNUaQDNDA" resolve="other" />
              </node>
            </node>
            <node concept="3x8VRR" id="6MKNUaQHqo6" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="6MKNUaQHsEL" role="13h7CS">
      <property role="TrG5h" value="isOverlapping" />
      <node concept="37vLTG" id="6MKNUaQHsMh" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3Tqbb2" id="6MKNUaQHsMi" role="1tU5fm">
          <ref role="ehGHo" to="5frd:6MKNUaQDNDz" resolve="ItemSelector" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6MKNUaQHsEM" role="1B3o_S" />
      <node concept="10P_77" id="6MKNUaQHsLL" role="3clF45" />
      <node concept="3clFbS" id="6MKNUaQHsEO" role="3clF47">
        <node concept="3cpWs8" id="6MKNUaQHt5o" role="3cqZAp">
          <node concept="3cpWsn" id="6MKNUaQHt5r" role="3cpWs9">
            <property role="TrG5h" value="collection" />
            <node concept="2I9FWS" id="6Quy7yTOqRZ" role="1tU5fm" />
            <node concept="2OqwBi" id="6MKNUaQHu7L" role="33vP2m">
              <node concept="1PxgMI" id="6MKNUaQHtX2" role="2Oq$k0">
                <node concept="chp4Y" id="6Quy7yTOmMO" role="3oSUPX">
                  <ref role="cht4Q" to="5frd:6Quy7yTNPCI" resolve="ItemSelection" />
                </node>
                <node concept="2OqwBi" id="6MKNUaQHtfU" role="1m5AlR">
                  <node concept="13iPFW" id="6MKNUaQHt7i" role="2Oq$k0" />
                  <node concept="1mfA1w" id="6MKNUaQHtp_" role="2OqNvi" />
                </node>
              </node>
              <node concept="2qgKlT" id="6Quy7yTOphB" role="2OqNvi">
                <ref role="37wK5l" node="6Quy7yTNRC2" resolve="getCollection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6MKNUaQHNQC" role="3cqZAp">
          <node concept="3cpWsn" id="6MKNUaQHNQF" role="3cpWs9">
            <property role="TrG5h" value="thisBeforeOther" />
            <node concept="10P_77" id="6MKNUaQHNQA" role="1tU5fm" />
            <node concept="3eOVzh" id="6MKNUaQHFBw" role="33vP2m">
              <node concept="2OqwBi" id="6MKNUaQHykY" role="3uHU7B">
                <node concept="37vLTw" id="6MKNUaQHvla" role="2Oq$k0">
                  <ref role="3cqZAo" node="6MKNUaQHt5r" resolve="collection" />
                </node>
                <node concept="2WmjW8" id="6MKNUaQHBkM" role="2OqNvi">
                  <node concept="2OqwBi" id="6MKNUaQHGYy" role="25WWJ7">
                    <node concept="2OqwBi" id="6MKNUaQHsVc" role="2Oq$k0">
                      <node concept="13iPFW" id="6MKNUaQHsM$" role="2Oq$k0" />
                      <node concept="3TrEf2" id="6MKNUaQHuEB" role="2OqNvi">
                        <ref role="3Tt5mk" to="5frd:6MKNUaQDNDA" resolve="other" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="4x_I0npSpN1" role="2OqNvi">
                      <ref role="3Tt5mk" to="5frd:4x_I0npP4pL" resolve="val" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6MKNUaQHFN0" role="3uHU7w">
                <node concept="37vLTw" id="6MKNUaQHFN2" role="2Oq$k0">
                  <ref role="3cqZAo" node="6MKNUaQHt5r" resolve="collection" />
                </node>
                <node concept="2WmjW8" id="6MKNUaQHFN4" role="2OqNvi">
                  <node concept="2OqwBi" id="6MKNUaQHI7q" role="25WWJ7">
                    <node concept="2OqwBi" id="6MKNUaQHFN5" role="2Oq$k0">
                      <node concept="37vLTw" id="6MKNUaQHG3W" role="2Oq$k0">
                        <ref role="3cqZAo" node="6MKNUaQHsMh" resolve="other" />
                      </node>
                      <node concept="3TrEf2" id="6Quy7yTOx9c" role="2OqNvi">
                        <ref role="3Tt5mk" to="5frd:6MKNUaQDND$" resolve="item" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="4x_I0npSrWr" role="2OqNvi">
                      <ref role="3Tt5mk" to="5frd:4x_I0npP4pL" resolve="val" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6MKNUaQHOF4" role="3cqZAp">
          <node concept="3cpWsn" id="6MKNUaQHOF7" role="3cpWs9">
            <property role="TrG5h" value="thisAfterOther" />
            <node concept="10P_77" id="6MKNUaQHOF2" role="1tU5fm" />
            <node concept="3eOSWO" id="6MKNUaQHMzg" role="33vP2m">
              <node concept="2OqwBi" id="6MKNUaQHLMb" role="3uHU7B">
                <node concept="37vLTw" id="6MKNUaQHLMd" role="2Oq$k0">
                  <ref role="3cqZAo" node="6MKNUaQHt5r" resolve="collection" />
                </node>
                <node concept="2WmjW8" id="6MKNUaQHLMf" role="2OqNvi">
                  <node concept="2OqwBi" id="6Quy7yTOA9L" role="25WWJ7">
                    <node concept="2OqwBi" id="6MKNUaQHLMh" role="2Oq$k0">
                      <node concept="13iPFW" id="6MKNUaQHLMi" role="2Oq$k0" />
                      <node concept="3TrEf2" id="6MKNUaQHMfQ" role="2OqNvi">
                        <ref role="3Tt5mk" to="5frd:6MKNUaQDND$" resolve="item" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="4x_I0npSrfy" role="2OqNvi">
                      <ref role="3Tt5mk" to="5frd:4x_I0npP4pL" resolve="val" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6MKNUaQHLMl" role="3uHU7w">
                <node concept="37vLTw" id="6MKNUaQHLMn" role="2Oq$k0">
                  <ref role="3cqZAo" node="6MKNUaQHt5r" resolve="collection" />
                </node>
                <node concept="2WmjW8" id="6MKNUaQHLMp" role="2OqNvi">
                  <node concept="2OqwBi" id="6Quy7yTOyX4" role="25WWJ7">
                    <node concept="2OqwBi" id="6MKNUaQHLMr" role="2Oq$k0">
                      <node concept="37vLTw" id="6MKNUaQHLMs" role="2Oq$k0">
                        <ref role="3cqZAo" node="6MKNUaQHsMh" resolve="other" />
                      </node>
                      <node concept="3TrEf2" id="6Quy7yTOyip" role="2OqNvi">
                        <ref role="3Tt5mk" to="5frd:6MKNUaQDNDA" resolve="other" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="4x_I0npSsT1" role="2OqNvi">
                      <ref role="3Tt5mk" to="5frd:4x_I0npP4pL" resolve="val" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6MKNUaQIrz1" role="3cqZAp">
          <node concept="3fqX7Q" id="6MKNUaQHUQ7" role="3clFbG">
            <node concept="1eOMI4" id="6MKNUaQHUQ9" role="3fr31v">
              <node concept="22lmx$" id="6MKNUaQHUQa" role="1eOMHV">
                <node concept="37vLTw" id="6MKNUaQHUQb" role="3uHU7B">
                  <ref role="3cqZAo" node="6MKNUaQHNQF" resolve="thisBeforeOther" />
                </node>
                <node concept="37vLTw" id="6MKNUaQHUQc" role="3uHU7w">
                  <ref role="3cqZAo" node="6MKNUaQHOF7" resolve="thisAfterOther" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="6MKNUaQHSwE" role="13h7CS">
      <property role="TrG5h" value="isInside" />
      <node concept="37vLTG" id="6MKNUaQIrV4" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3Tqbb2" id="6MKNUaQIrV5" role="1tU5fm">
          <ref role="ehGHo" to="5frd:6MKNUaQDNDz" resolve="ItemSelector" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6MKNUaQHSwF" role="1B3o_S" />
      <node concept="10P_77" id="6MKNUaQHST2" role="3clF45" />
      <node concept="3clFbS" id="6MKNUaQHSwH" role="3clF47">
        <node concept="3cpWs8" id="6MKNUaQIs0h" role="3cqZAp">
          <node concept="3cpWsn" id="6MKNUaQIs0i" role="3cpWs9">
            <property role="TrG5h" value="collection" />
            <node concept="2OqwBi" id="6MKNUaQIs0k" role="33vP2m">
              <node concept="1PxgMI" id="6MKNUaQIs0l" role="2Oq$k0">
                <node concept="chp4Y" id="6Quy7yTOD9G" role="3oSUPX">
                  <ref role="cht4Q" to="5frd:6Quy7yTNPCI" resolve="ItemSelection" />
                </node>
                <node concept="2OqwBi" id="6MKNUaQIs0n" role="1m5AlR">
                  <node concept="13iPFW" id="6MKNUaQIs0o" role="2Oq$k0" />
                  <node concept="1mfA1w" id="6MKNUaQIs0p" role="2OqNvi" />
                </node>
              </node>
              <node concept="2qgKlT" id="6Quy7yTODDX" role="2OqNvi">
                <ref role="37wK5l" node="6Quy7yTNRC2" resolve="getCollection" />
              </node>
            </node>
            <node concept="2I9FWS" id="6Quy7yTOF5w" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs8" id="6MKNUaQIs9W" role="3cqZAp">
          <node concept="3cpWsn" id="6MKNUaQIs9Z" role="3cpWs9">
            <property role="TrG5h" value="begin" />
            <node concept="10Oyi0" id="6MKNUaQIs9U" role="1tU5fm" />
            <node concept="2OqwBi" id="6MKNUaQIvc$" role="33vP2m">
              <node concept="37vLTw" id="6MKNUaQIsfc" role="2Oq$k0">
                <ref role="3cqZAo" node="6MKNUaQIs0i" resolve="collection" />
              </node>
              <node concept="2WmjW8" id="6MKNUaQI$82" role="2OqNvi">
                <node concept="2OqwBi" id="6Quy7yTOQAw" role="25WWJ7">
                  <node concept="2OqwBi" id="6MKNUaQI$ia" role="2Oq$k0">
                    <node concept="37vLTw" id="6MKNUaQI$9f" role="2Oq$k0">
                      <ref role="3cqZAo" node="6MKNUaQIrV4" resolve="other" />
                    </node>
                    <node concept="3TrEf2" id="6MKNUaQI$v2" role="2OqNvi">
                      <ref role="3Tt5mk" to="5frd:6MKNUaQDND$" resolve="item" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="4x_I0npStJK" role="2OqNvi">
                    <ref role="3Tt5mk" to="5frd:4x_I0npP4pL" resolve="val" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6MKNUaQI_va" role="3cqZAp">
          <node concept="3cpWsn" id="6MKNUaQI_vd" role="3cpWs9">
            <property role="TrG5h" value="end" />
            <node concept="10Oyi0" id="6MKNUaQI_v8" role="1tU5fm" />
            <node concept="2OqwBi" id="6MKNUaQI_Fl" role="33vP2m">
              <node concept="37vLTw" id="6MKNUaQI_Fn" role="2Oq$k0">
                <ref role="3cqZAo" node="6MKNUaQIs0i" resolve="collection" />
              </node>
              <node concept="2WmjW8" id="6MKNUaQI_Fp" role="2OqNvi">
                <node concept="2OqwBi" id="6MKNUaQI_Fq" role="25WWJ7">
                  <node concept="2OqwBi" id="6MKNUaQI_Fr" role="2Oq$k0">
                    <node concept="37vLTw" id="6MKNUaQI_Fs" role="2Oq$k0">
                      <ref role="3cqZAo" node="6MKNUaQIrV4" resolve="other" />
                    </node>
                    <node concept="3TrEf2" id="6MKNUaQI_W4" role="2OqNvi">
                      <ref role="3Tt5mk" to="5frd:6MKNUaQDNDA" resolve="other" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="4x_I0npSv4D" role="2OqNvi">
                    <ref role="3Tt5mk" to="5frd:4x_I0npP4pL" resolve="val" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6MKNUaQIAt1" role="3cqZAp">
          <node concept="3cpWsn" id="6MKNUaQIAt4" role="3cpWs9">
            <property role="TrG5h" value="target" />
            <node concept="10Oyi0" id="6MKNUaQIAsZ" role="1tU5fm" />
            <node concept="2OqwBi" id="6MKNUaQIAEy" role="33vP2m">
              <node concept="37vLTw" id="6MKNUaQIAE$" role="2Oq$k0">
                <ref role="3cqZAo" node="6MKNUaQIs0i" resolve="collection" />
              </node>
              <node concept="2WmjW8" id="6MKNUaQIAEA" role="2OqNvi">
                <node concept="2OqwBi" id="6MKNUaQIAEB" role="25WWJ7">
                  <node concept="2OqwBi" id="6MKNUaQIAEC" role="2Oq$k0">
                    <node concept="13iPFW" id="6MKNUaQIALY" role="2Oq$k0" />
                    <node concept="3TrEf2" id="6MKNUaQIAEE" role="2OqNvi">
                      <ref role="3Tt5mk" to="5frd:6MKNUaQDND$" resolve="item" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="4x_I0npSwnA" role="2OqNvi">
                    <ref role="3Tt5mk" to="5frd:4x_I0npP4pL" resolve="val" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6MKNUaQIB7q" role="3cqZAp">
          <node concept="1Wc70l" id="6MKNUaQIKdt" role="3cqZAk">
            <node concept="2d3UOw" id="6MKNUaQILF0" role="3uHU7B">
              <node concept="37vLTw" id="6MKNUaQIM0J" role="3uHU7w">
                <ref role="3cqZAo" node="6MKNUaQIs9Z" resolve="begin" />
              </node>
              <node concept="37vLTw" id="6MKNUaQIKzc" role="3uHU7B">
                <ref role="3cqZAo" node="6MKNUaQIAt4" resolve="target" />
              </node>
            </node>
            <node concept="2dkUwp" id="6MKNUaQIIhP" role="3uHU7w">
              <node concept="37vLTw" id="6MKNUaQIHe_" role="3uHU7B">
                <ref role="3cqZAo" node="6MKNUaQIAt4" resolve="target" />
              </node>
              <node concept="37vLTw" id="6MKNUaQIIyW" role="3uHU7w">
                <ref role="3cqZAo" node="6MKNUaQI_vd" resolve="end" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="6MKNUaQHY7D" role="13h7CS">
      <property role="TrG5h" value="hasEqualItem" />
      <node concept="37vLTG" id="6MKNUaQIo1G" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3Tqbb2" id="6MKNUaQIo1H" role="1tU5fm">
          <ref role="ehGHo" to="5frd:6MKNUaQDNDz" resolve="ItemSelector" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6MKNUaQHY7E" role="1B3o_S" />
      <node concept="10P_77" id="6MKNUaQHYxq" role="3clF45" />
      <node concept="3clFbS" id="6MKNUaQHY7G" role="3clF47">
        <node concept="3cpWs8" id="6MKNUaQI2kE" role="3cqZAp">
          <node concept="3cpWsn" id="6MKNUaQI2kF" role="3cpWs9">
            <property role="TrG5h" value="collection" />
            <node concept="2OqwBi" id="6MKNUaQI2kH" role="33vP2m">
              <node concept="1PxgMI" id="6MKNUaQI2kI" role="2Oq$k0">
                <node concept="chp4Y" id="6Quy7yTOYe6" role="3oSUPX">
                  <ref role="cht4Q" to="5frd:6Quy7yTNPCI" resolve="ItemSelection" />
                </node>
                <node concept="2OqwBi" id="6MKNUaQI2kK" role="1m5AlR">
                  <node concept="13iPFW" id="6MKNUaQI2kL" role="2Oq$k0" />
                  <node concept="1mfA1w" id="6MKNUaQI2kM" role="2OqNvi" />
                </node>
              </node>
              <node concept="2qgKlT" id="6Quy7yTOYG4" role="2OqNvi">
                <ref role="37wK5l" node="6Quy7yTNRC2" resolve="getCollection" />
              </node>
            </node>
            <node concept="2I9FWS" id="6Quy7yTOZMf" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbF" id="6MKNUaQI2PD" role="3cqZAp">
          <node concept="3clFbC" id="6MKNUaQId$w" role="3clFbG">
            <node concept="2OqwBi" id="6MKNUaQIidm" role="3uHU7w">
              <node concept="37vLTw" id="6MKNUaQIe6n" role="2Oq$k0">
                <ref role="3cqZAo" node="6MKNUaQI2kF" resolve="collection" />
              </node>
              <node concept="2WmjW8" id="6MKNUaQInzw" role="2OqNvi">
                <node concept="2OqwBi" id="6MKNUaQIpCM" role="25WWJ7">
                  <node concept="2OqwBi" id="6MKNUaQIp7v" role="2Oq$k0">
                    <node concept="37vLTw" id="6MKNUaQIowT" role="2Oq$k0">
                      <ref role="3cqZAo" node="6MKNUaQIo1G" resolve="other" />
                    </node>
                    <node concept="3TrEf2" id="6MKNUaQIpjY" role="2OqNvi">
                      <ref role="3Tt5mk" to="5frd:6MKNUaQDND$" resolve="item" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="4x_I0npSypo" role="2OqNvi">
                    <ref role="3Tt5mk" to="5frd:4x_I0npP4pL" resolve="val" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6MKNUaQI5Xr" role="3uHU7B">
              <node concept="37vLTw" id="6MKNUaQI2PB" role="2Oq$k0">
                <ref role="3cqZAo" node="6MKNUaQI2kF" resolve="collection" />
              </node>
              <node concept="2WmjW8" id="6MKNUaQIaZd" role="2OqNvi">
                <node concept="2OqwBi" id="6Quy7yTP3l8" role="25WWJ7">
                  <node concept="2OqwBi" id="6MKNUaQIbov" role="2Oq$k0">
                    <node concept="13iPFW" id="6MKNUaQIbaH" role="2Oq$k0" />
                    <node concept="3TrEf2" id="6MKNUaQIbJF" role="2OqNvi">
                      <ref role="3Tt5mk" to="5frd:6MKNUaQDND$" resolve="item" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="4x_I0npSxot" role="2OqNvi">
                    <ref role="3Tt5mk" to="5frd:4x_I0npP4pL" resolve="val" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1IIUr1cIQk4" role="13h7CS">
      <property role="TrG5h" value="getSelected" />
      <node concept="3Tm1VV" id="1IIUr1cIQk5" role="1B3o_S" />
      <node concept="2I9FWS" id="6Quy7yTPHto" role="3clF45">
        <ref role="2I9WkF" to="5frd:6Quy7yTNPCP" resolve="IItemType" />
      </node>
      <node concept="3clFbS" id="1IIUr1cIQk7" role="3clF47">
        <node concept="3SKdUt" id="1IIUr1cJ7wX" role="3cqZAp">
          <node concept="3SKdUq" id="1IIUr1cJ7wZ" role="3SKWNk">
            <property role="3SKdUp" value="prepare result list" />
          </node>
        </node>
        <node concept="3cpWs8" id="1IIUr1cIRKF" role="3cqZAp">
          <node concept="3cpWsn" id="1IIUr1cIRKI" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="2I9FWS" id="6Quy7yTPJf2" role="1tU5fm">
              <ref role="2I9WkF" to="5frd:6Quy7yTNPCP" resolve="IItemType" />
            </node>
            <node concept="2ShNRf" id="6Quy7yTPLKt" role="33vP2m">
              <node concept="2T8Vx0" id="6Quy7yTPLKr" role="2ShVmc">
                <node concept="2I9FWS" id="6Quy7yTPLKs" role="2T96Bj">
                  <ref role="2I9WkF" to="5frd:6Quy7yTNPCP" resolve="IItemType" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1IIUr1cIRcV" role="3cqZAp">
          <node concept="2OqwBi" id="1IIUr1cIRlP" role="3clFbw">
            <node concept="13iPFW" id="1IIUr1cIRdf" role="2Oq$k0" />
            <node concept="2qgKlT" id="6Quy7yTPMxx" role="2OqNvi">
              <ref role="37wK5l" node="6MKNUaQHpnD" resolve="isRange" />
            </node>
          </node>
          <node concept="3clFbS" id="1IIUr1cIRcX" role="3clFbx">
            <node concept="3cpWs8" id="1IIUr1cJbyi" role="3cqZAp">
              <node concept="3cpWsn" id="1IIUr1cJbyl" role="3cpWs9">
                <property role="TrG5h" value="coll" />
                <node concept="2I9FWS" id="6Quy7yTPPTo" role="1tU5fm" />
                <node concept="2OqwBi" id="3nKj30XQbJL" role="33vP2m">
                  <node concept="2OqwBi" id="6iLFZVVtxuM" role="2Oq$k0">
                    <node concept="1PxgMI" id="6iLFZVVtweA" role="2Oq$k0">
                      <node concept="chp4Y" id="6iLFZVVtwJK" role="3oSUPX">
                        <ref role="cht4Q" to="5frd:6Quy7yTNPCI" resolve="ItemSelection" />
                      </node>
                      <node concept="2OqwBi" id="6iLFZVVtuG5" role="1m5AlR">
                        <node concept="13iPFW" id="6iLFZVVtu2r" role="2Oq$k0" />
                        <node concept="1mfA1w" id="6iLFZVVtvml" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="6iLFZVVtyut" role="2OqNvi">
                      <ref role="37wK5l" node="7$05xKPdaqG" resolve="getContainer" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="3nKj30XQcA2" role="2OqNvi">
                    <ref role="3TtcxE" to="5frd:5c6KWTiqlNT" resolve="items" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3nKj30XQE23" role="3cqZAp" />
            <node concept="3cpWs8" id="3nKj30XP7g_" role="3cqZAp">
              <node concept="3cpWsn" id="3nKj30XP7gC" role="3cpWs9">
                <property role="TrG5h" value="start" />
                <node concept="10Oyi0" id="3nKj30XP7gz" role="1tU5fm" />
                <node concept="2OqwBi" id="3nKj30XP7HP" role="33vP2m">
                  <node concept="37vLTw" id="3nKj30XP7HQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="1IIUr1cJbyl" resolve="coll" />
                  </node>
                  <node concept="2WmjW8" id="3nKj30XP7HR" role="2OqNvi">
                    <node concept="2OqwBi" id="3nKj30XP7HS" role="25WWJ7">
                      <node concept="2OqwBi" id="3nKj30XP7HT" role="2Oq$k0">
                        <node concept="13iPFW" id="3nKj30XP7HU" role="2Oq$k0" />
                        <node concept="3TrEf2" id="3nKj30XP7HV" role="2OqNvi">
                          <ref role="3Tt5mk" to="5frd:6MKNUaQDND$" resolve="item" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="3nKj30XP7HW" role="2OqNvi">
                        <ref role="3Tt5mk" to="5frd:4x_I0npP4pL" resolve="val" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3nKj30XP8h8" role="3cqZAp">
              <node concept="3cpWsn" id="3nKj30XP8hb" role="3cpWs9">
                <property role="TrG5h" value="end" />
                <node concept="10Oyi0" id="3nKj30XP8h6" role="1tU5fm" />
                <node concept="2OqwBi" id="3nKj30XP9K6" role="33vP2m">
                  <node concept="37vLTw" id="3nKj30XP8Js" role="2Oq$k0">
                    <ref role="3cqZAo" node="1IIUr1cJbyl" resolve="coll" />
                  </node>
                  <node concept="2WmjW8" id="3nKj30XPbXh" role="2OqNvi">
                    <node concept="2OqwBi" id="3nKj30XPc_s" role="25WWJ7">
                      <node concept="2OqwBi" id="3nKj30XPc5O" role="2Oq$k0">
                        <node concept="13iPFW" id="3nKj30XPbYd" role="2Oq$k0" />
                        <node concept="3TrEf2" id="3nKj30XPcgg" role="2OqNvi">
                          <ref role="3Tt5mk" to="5frd:6MKNUaQDNDA" resolve="other" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="3nKj30XPcSd" role="2OqNvi">
                        <ref role="3Tt5mk" to="5frd:4x_I0npP4pL" resolve="val" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3nKj30XQE42" role="3cqZAp" />
            <node concept="2Gpval" id="3nKj30XNpBz" role="3cqZAp">
              <node concept="2GrKxI" id="3nKj30XNpB_" role="2Gsz3X">
                <property role="TrG5h" value="i" />
              </node>
              <node concept="37vLTw" id="3nKj30XNq1y" role="2GsD0m">
                <ref role="3cqZAo" node="1IIUr1cJbyl" resolve="coll" />
              </node>
              <node concept="3clFbS" id="3nKj30XNpBD" role="2LFqv$">
                <node concept="3clFbJ" id="3nKj30XQDj_" role="3cqZAp">
                  <node concept="3clFbS" id="3nKj30XQDjB" role="3clFbx">
                    <node concept="3clFbF" id="3nKj30XQHiU" role="3cqZAp">
                      <node concept="37vLTI" id="3nKj30XQI5q" role="3clFbG">
                        <node concept="2OqwBi" id="3nKj30XQIm6" role="37vLTx">
                          <node concept="2GrUjf" id="3nKj30XQIed" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="3nKj30XNpB_" resolve="i" />
                          </node>
                          <node concept="2bSWHS" id="3nKj30XQIGs" role="2OqNvi" />
                        </node>
                        <node concept="37vLTw" id="3nKj30XQHiS" role="37vLTJ">
                          <ref role="3cqZAo" node="3nKj30XP7gC" resolve="start" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2YFouu" id="3nKj30XQH92" role="3clFbw">
                    <node concept="2GrUjf" id="3nKj30XQHe6" role="3uHU7w">
                      <ref role="2Gs0qQ" node="3nKj30XNpB_" resolve="i" />
                    </node>
                    <node concept="2OqwBi" id="3nKj30XQGrK" role="3uHU7B">
                      <node concept="2OqwBi" id="3nKj30XQFX$" role="2Oq$k0">
                        <node concept="13iPFW" id="3nKj30XQFOO" role="2Oq$k0" />
                        <node concept="3TrEf2" id="3nKj30XQG7q" role="2OqNvi">
                          <ref role="3Tt5mk" to="5frd:6MKNUaQDND$" resolve="item" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="3nKj30XQGHV" role="2OqNvi">
                        <ref role="3Tt5mk" to="5frd:4x_I0npP4pL" resolve="val" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="3nKj30XQK9w" role="3cqZAp">
                  <node concept="3clFbS" id="3nKj30XQK9y" role="3clFbx">
                    <node concept="3clFbF" id="3nKj30XQKzu" role="3cqZAp">
                      <node concept="37vLTI" id="3nKj30XQLdD" role="3clFbG">
                        <node concept="2OqwBi" id="3nKj30XQLlY" role="37vLTx">
                          <node concept="2GrUjf" id="3nKj30XQLe5" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="3nKj30XNpB_" resolve="i" />
                          </node>
                          <node concept="2bSWHS" id="3nKj30XQLGU" role="2OqNvi" />
                        </node>
                        <node concept="37vLTw" id="3nKj30XQKzs" role="37vLTJ">
                          <ref role="3cqZAo" node="3nKj30XP8hb" resolve="end" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2YFouu" id="3nKj30XQKfh" role="3clFbw">
                    <node concept="2GrUjf" id="3nKj30XQKfi" role="3uHU7w">
                      <ref role="2Gs0qQ" node="3nKj30XNpB_" resolve="i" />
                    </node>
                    <node concept="2OqwBi" id="3nKj30XQKfj" role="3uHU7B">
                      <node concept="2OqwBi" id="3nKj30XQKfk" role="2Oq$k0">
                        <node concept="13iPFW" id="3nKj30XQKfl" role="2Oq$k0" />
                        <node concept="3TrEf2" id="3nKj30XQKtD" role="2OqNvi">
                          <ref role="3Tt5mk" to="5frd:6MKNUaQDNDA" resolve="other" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="3nKj30XQKfn" role="2OqNvi">
                        <ref role="3Tt5mk" to="5frd:4x_I0npP4pL" resolve="val" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3nKj30XNpei" role="3cqZAp" />
            <node concept="3clFbJ" id="3nKj30XPfyQ" role="3cqZAp">
              <node concept="3clFbS" id="3nKj30XPfyS" role="3clFbx">
                <node concept="2xdQw9" id="10Ig25OTidi" role="3cqZAp">
                  <property role="2xdLsb" value="error" />
                  <node concept="Xl_RD" id="3nKj30XPmPm" role="9lYJi">
                    <property role="Xl_RC" value="references could not be resolved" />
                  </node>
                </node>
                <node concept="3cpWs6" id="3nKj30XPk8l" role="3cqZAp">
                  <node concept="37vLTw" id="3nKj30XPl2G" role="3cqZAk">
                    <ref role="3cqZAo" node="1IIUr1cIRKI" resolve="result" />
                  </node>
                </node>
              </node>
              <node concept="22lmx$" id="3nKj30XPhZc" role="3clFbw">
                <node concept="3clFbC" id="3nKj30XPjk6" role="3uHU7w">
                  <node concept="3cmrfG" id="3nKj30XPj_y" role="3uHU7w">
                    <property role="3cmrfH" value="-1" />
                  </node>
                  <node concept="37vLTw" id="3nKj30XPigB" role="3uHU7B">
                    <ref role="3cqZAo" node="3nKj30XP8hb" resolve="end" />
                  </node>
                </node>
                <node concept="3clFbC" id="3nKj30XPgN7" role="3uHU7B">
                  <node concept="37vLTw" id="3nKj30XPg0B" role="3uHU7B">
                    <ref role="3cqZAo" node="3nKj30XP7gC" resolve="start" />
                  </node>
                  <node concept="3cmrfG" id="3nKj30XPh4e" role="3uHU7w">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3nKj30XPf5g" role="3cqZAp" />
            <node concept="1Dw8fO" id="6Quy7yTQ6uT" role="3cqZAp">
              <node concept="3clFbS" id="6Quy7yTQ6uV" role="2LFqv$">
                <node concept="3clFbF" id="6Quy7yTQn5I" role="3cqZAp">
                  <node concept="2OqwBi" id="6Quy7yTQnZ9" role="3clFbG">
                    <node concept="37vLTw" id="6Quy7yTQn5G" role="2Oq$k0">
                      <ref role="3cqZAo" node="1IIUr1cIRKI" resolve="result" />
                    </node>
                    <node concept="TSZUe" id="6Quy7yTQqzK" role="2OqNvi">
                      <node concept="1PxgMI" id="4x_I0nqcUZT" role="25WWJ7">
                        <node concept="chp4Y" id="4x_I0nqcVbZ" role="3oSUPX">
                          <ref role="cht4Q" to="5frd:6Quy7yTNPCP" resolve="IItemType" />
                        </node>
                        <node concept="2OqwBi" id="6Quy7yTQrLk" role="1m5AlR">
                          <node concept="37vLTw" id="6Quy7yTQqEq" role="2Oq$k0">
                            <ref role="3cqZAo" node="1IIUr1cJbyl" resolve="coll" />
                          </node>
                          <node concept="34jXtK" id="6Quy7yTQtd2" role="2OqNvi">
                            <node concept="37vLTw" id="6Quy7yTQtkA" role="25WWJ7">
                              <ref role="3cqZAo" node="6Quy7yTQ6uW" resolve="i" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="6Quy7yTQ6uW" role="1Duv9x">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="6Quy7yTQ78c" role="1tU5fm" />
                <node concept="37vLTw" id="3nKj30XPcXy" role="33vP2m">
                  <ref role="3cqZAo" node="3nKj30XP7gC" resolve="start" />
                </node>
              </node>
              <node concept="2dkUwp" id="XZLIaPRQxJ" role="1Dwp0S">
                <node concept="37vLTw" id="6Quy7yTQcat" role="3uHU7B">
                  <ref role="3cqZAo" node="6Quy7yTQ6uW" resolve="i" />
                </node>
                <node concept="37vLTw" id="3nKj30XPdMg" role="3uHU7w">
                  <ref role="3cqZAo" node="3nKj30XP8hb" resolve="end" />
                </node>
              </node>
              <node concept="2$rviw" id="6Quy7yTQde7" role="1Dwrff">
                <node concept="37vLTw" id="6Quy7yTQdpL" role="2$L3a6">
                  <ref role="3cqZAo" node="6Quy7yTQ6uW" resolve="i" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="DJL_o0lLTA" role="9aQIa">
            <node concept="3clFbS" id="DJL_o0lLTB" role="9aQI4">
              <node concept="3SKdUt" id="DJL_o0lNHM" role="3cqZAp">
                <node concept="3SKdUq" id="DJL_o0lNHO" role="3SKWNk">
                  <property role="3SKdUp" value="add and return single feature" />
                </node>
              </node>
              <node concept="3clFbF" id="DJL_o0lNIw" role="3cqZAp">
                <node concept="2OqwBi" id="DJL_o0lPFw" role="3clFbG">
                  <node concept="37vLTw" id="DJL_o0lNIu" role="2Oq$k0">
                    <ref role="3cqZAo" node="1IIUr1cIRKI" resolve="result" />
                  </node>
                  <node concept="TSZUe" id="DJL_o0lUzr" role="2OqNvi">
                    <node concept="2OqwBi" id="DJL_o0lVjz" role="25WWJ7">
                      <node concept="2OqwBi" id="DJL_o0lUK$" role="2Oq$k0">
                        <node concept="13iPFW" id="DJL_o0lUB0" role="2Oq$k0" />
                        <node concept="3TrEf2" id="DJL_o0lV0B" role="2OqNvi">
                          <ref role="3Tt5mk" to="5frd:6MKNUaQDND$" resolve="item" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="4x_I0npS$FA" role="2OqNvi">
                        <ref role="3Tt5mk" to="5frd:4x_I0npP4pL" resolve="val" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6Quy7yTQyTH" role="3cqZAp" />
        <node concept="3cpWs6" id="1IIUr1cJ69i" role="3cqZAp">
          <node concept="37vLTw" id="1IIUr1cJ6pD" role="3cqZAk">
            <ref role="3cqZAo" node="1IIUr1cIRKI" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="6Quy7yTNPEA" role="13h7CW">
      <node concept="3clFbS" id="6Quy7yTNPEB" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="6Quy7yTNRiW">
    <property role="3GE5qa" value="util.items.selection" />
    <ref role="13h7C2" to="5frd:6Quy7yTNPCI" resolve="ItemSelection" />
    <node concept="13i0hz" id="6Quy7yTNRC2" role="13h7CS">
      <property role="TrG5h" value="getCollection" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="false" />
      <node concept="3Tm1VV" id="5j$SRt4e2nx" role="1B3o_S" />
      <node concept="2I9FWS" id="6Quy7yTNRCj" role="3clF45">
        <ref role="2I9WkF" to="5frd:6Quy7yTNPCP" resolve="IItemType" />
      </node>
      <node concept="3clFbS" id="6Quy7yTNRC5" role="3clF47">
        <node concept="3cpWs6" id="4rZ4tH4yXIq" role="3cqZAp">
          <node concept="2OqwBi" id="4rZ4tH4z0Vj" role="3cqZAk">
            <node concept="2OqwBi" id="7$05xKPdvYK" role="2Oq$k0">
              <node concept="13iPFW" id="7$05xKPdvPy" role="2Oq$k0" />
              <node concept="2qgKlT" id="7$05xKPdwrM" role="2OqNvi">
                <ref role="37wK5l" node="7$05xKPdaqG" resolve="getContainer" />
              </node>
            </node>
            <node concept="3Tsc0h" id="4rZ4tH4z1_U" role="2OqNvi">
              <ref role="3TtcxE" to="5frd:5c6KWTiqlNT" resolve="items" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="7$05xKPdaqG" role="13h7CS">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="7$05xKPdaqH" role="1B3o_S" />
      <node concept="3Tqbb2" id="7$05xKPdayq" role="3clF45">
        <ref role="ehGHo" to="5frd:XZLIaPVfvV" resolve="IContainItems" />
      </node>
      <node concept="3clFbS" id="7$05xKPdaqJ" role="3clF47">
        <node concept="3cpWs6" id="7$05xKPdayQ" role="3cqZAp">
          <node concept="1PxgMI" id="7$05xKPdcrK" role="3cqZAk">
            <node concept="chp4Y" id="7$05xKPdcwq" role="3oSUPX">
              <ref role="cht4Q" to="5frd:XZLIaPVfvV" resolve="IContainItems" />
            </node>
            <node concept="2OqwBi" id="7$05xKPdbnP" role="1m5AlR">
              <node concept="2OqwBi" id="7$05xKPdaIl" role="2Oq$k0">
                <node concept="13iPFW" id="7$05xKPdazl" role="2Oq$k0" />
                <node concept="2Xjw5R" id="7$05xKPdbaY" role="2OqNvi">
                  <node concept="1xMEDy" id="7$05xKPdbb0" role="1xVPHs">
                    <node concept="chp4Y" id="7$05xKPdbbE" role="ri$Ld">
                      <ref role="cht4Q" to="ja9q:6pyCRNQL2EL" resolve="AbstractStatement" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3TrEf2" id="7$05xKPdbPW" role="2OqNvi">
                <ref role="3Tt5mk" to="ja9q:6pyCRNR1bO4" resolve="objectAtPosition" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1IIUr1cItWr" role="13h7CS">
      <property role="TrG5h" value="getSelectedItems" />
      <node concept="3Tm1VV" id="1IIUr1cItWs" role="1B3o_S" />
      <node concept="3clFbS" id="1IIUr1cItWu" role="3clF47">
        <node concept="3cpWs8" id="1IIUr1cICJg" role="3cqZAp">
          <node concept="3cpWsn" id="1IIUr1cICJj" role="3cpWs9">
            <property role="TrG5h" value="selection" />
            <node concept="2I9FWS" id="6Quy7yTNUnt" role="1tU5fm">
              <ref role="2I9WkF" to="5frd:6Quy7yTNPCP" resolve="IItemType" />
            </node>
            <node concept="2ShNRf" id="6Quy7yTO0_A" role="33vP2m">
              <node concept="2T8Vx0" id="6Quy7yTO0_$" role="2ShVmc">
                <node concept="2I9FWS" id="6Quy7yTO0__" role="2T96Bj">
                  <ref role="2I9WkF" to="5frd:6Quy7yTNPCP" resolve="IItemType" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1IIUr1cINQP" role="3cqZAp">
          <node concept="2GrKxI" id="1IIUr1cINQR" role="2Gsz3X">
            <property role="TrG5h" value="selector" />
          </node>
          <node concept="2OqwBi" id="1IIUr1cIOtK" role="2GsD0m">
            <node concept="13iPFW" id="1IIUr1cIOkW" role="2Oq$k0" />
            <node concept="3Tsc0h" id="1IIUr1cIOB$" role="2OqNvi">
              <ref role="3TtcxE" to="5frd:6MKNUaQDNDD" resolve="selectors" />
            </node>
          </node>
          <node concept="3clFbS" id="1IIUr1cINQV" role="2LFqv$">
            <node concept="3clFbF" id="1IIUr1cIEvg" role="3cqZAp">
              <node concept="2OqwBi" id="1IIUr1cIH6Q" role="3clFbG">
                <node concept="37vLTw" id="1IIUr1cIEve" role="2Oq$k0">
                  <ref role="3cqZAo" node="1IIUr1cICJj" resolve="selection" />
                </node>
                <node concept="X8dFx" id="MjPuimgbl5" role="2OqNvi">
                  <node concept="2OqwBi" id="MjPuimgbl7" role="25WWJ7">
                    <node concept="2GrUjf" id="MjPuimgbl8" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="1IIUr1cINQR" resolve="selector" />
                    </node>
                    <node concept="2qgKlT" id="6Quy7yTQAW2" role="2OqNvi">
                      <ref role="37wK5l" node="1IIUr1cIQk4" resolve="getSelected" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1IIUr1cIEtU" role="3cqZAp">
          <node concept="37vLTw" id="1IIUr1cIEuw" role="3cqZAk">
            <ref role="3cqZAo" node="1IIUr1cICJj" resolve="selection" />
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="6Quy7yTNSzM" role="3clF45">
        <ref role="2I9WkF" to="5frd:6Quy7yTNPCP" resolve="IItemType" />
      </node>
    </node>
    <node concept="13i0hz" id="7$05xKPd5pv" role="13h7CS">
      <property role="TrG5h" value="getLowestIndex" />
      <node concept="3Tm1VV" id="7$05xKPd5pw" role="1B3o_S" />
      <node concept="10Oyi0" id="7$05xKPd5x5" role="3clF45" />
      <node concept="3clFbS" id="7$05xKPd5py" role="3clF47">
        <node concept="3cpWs8" id="7$05xKPd62R" role="3cqZAp">
          <node concept="3cpWsn" id="7$05xKPd62U" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <node concept="10Oyi0" id="7$05xKPd62P" role="1tU5fm" />
            <node concept="2OqwBi" id="7$05xKPdfVN" role="33vP2m">
              <node concept="2OqwBi" id="7$05xKPddOJ" role="2Oq$k0">
                <node concept="3Tsc0h" id="7$05xKPddYh" role="2OqNvi">
                  <ref role="3TtcxE" to="5frd:5c6KWTiqlNT" resolve="items" />
                </node>
                <node concept="2OqwBi" id="7$05xKPdcPJ" role="2Oq$k0">
                  <node concept="13iPFW" id="7$05xKPdcEL" role="2Oq$k0" />
                  <node concept="2qgKlT" id="7$05xKPddip" role="2OqNvi">
                    <ref role="37wK5l" node="7$05xKPdaqG" resolve="getContainer" />
                  </node>
                </node>
              </node>
              <node concept="34oBXx" id="7$05xKPdjfM" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7$05xKPd5yM" role="3cqZAp">
          <node concept="2GrKxI" id="7$05xKPd5yN" role="2Gsz3X">
            <property role="TrG5h" value="selector" />
          </node>
          <node concept="2OqwBi" id="7$05xKPd5IE" role="2GsD0m">
            <node concept="13iPFW" id="7$05xKPd5z$" role="2Oq$k0" />
            <node concept="3Tsc0h" id="7$05xKPd5Xe" role="2OqNvi">
              <ref role="3TtcxE" to="5frd:6MKNUaQDNDD" resolve="selectors" />
            </node>
          </node>
          <node concept="3clFbS" id="7$05xKPd5yP" role="2LFqv$">
            <node concept="3clFbF" id="7$05xKPdr6k" role="3cqZAp">
              <node concept="37vLTI" id="7$05xKPdrKr" role="3clFbG">
                <node concept="2YIFZM" id="7$05xKPdrT$" role="37vLTx">
                  <ref role="37wK5l" to="wyt6:~Math.min(int,int):int" resolve="min" />
                  <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                  <node concept="37vLTw" id="7$05xKPdrTX" role="37wK5m">
                    <ref role="3cqZAo" node="7$05xKPd62U" resolve="index" />
                  </node>
                  <node concept="2OqwBi" id="7$05xKPdt86" role="37wK5m">
                    <node concept="2OqwBi" id="2qzUg86NSNn" role="2Oq$k0">
                      <node concept="2OqwBi" id="7$05xKPdst$" role="2Oq$k0">
                        <node concept="2GrUjf" id="7$05xKPdskJ" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="7$05xKPd5yN" resolve="selector" />
                        </node>
                        <node concept="3TrEf2" id="7$05xKPdsKh" role="2OqNvi">
                          <ref role="3Tt5mk" to="5frd:6MKNUaQDND$" resolve="item" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="2qzUg86NTdg" role="2OqNvi">
                        <ref role="3Tt5mk" to="5frd:4x_I0npP4pL" resolve="val" />
                      </node>
                    </node>
                    <node concept="2bSWHS" id="7$05xKPdt_x" role="2OqNvi" />
                  </node>
                </node>
                <node concept="37vLTw" id="7$05xKPdr6j" role="37vLTJ">
                  <ref role="3cqZAo" node="7$05xKPd62U" resolve="index" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7$05xKPdu2d" role="3cqZAp">
          <node concept="37vLTw" id="7$05xKPdumB" role="3cqZAk">
            <ref role="3cqZAo" node="7$05xKPd62U" resolve="index" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="6Quy7yTNRiX" role="13h7CW">
      <node concept="3clFbS" id="6Quy7yTNRiY" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="1UULepNJb9V">
    <property role="3GE5qa" value="variables" />
    <ref role="13h7C2" to="5frd:1UULepNJ9io" resolve="VariableDeclaration" />
    <node concept="13i0hz" id="1UULepNJccZ" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3clFbS" id="1UULepNJcd2" role="3clF47">
        <node concept="3cpWs8" id="HywGhj8bVs" role="3cqZAp">
          <node concept="3cpWsn" id="HywGhj8bVt" role="3cpWs9">
            <property role="TrG5h" value="bf" />
            <node concept="3uibUv" id="HywGhj8bVu" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuffer" resolve="StringBuffer" />
            </node>
            <node concept="2ShNRf" id="HywGhj8bW8" role="33vP2m">
              <node concept="1pGfFk" id="HywGhj8bW7" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuffer.&lt;init&gt;()" resolve="StringBuffer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="HywGhj8c9F" role="3cqZAp">
          <node concept="2OqwBi" id="HywGhj8cbP" role="3clFbG">
            <node concept="37vLTw" id="HywGhj8c9D" role="2Oq$k0">
              <ref role="3cqZAo" node="HywGhj8bVt" resolve="bf" />
            </node>
            <node concept="liA8E" id="HywGhj8cgf" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuffer.append(java.lang.String):java.lang.StringBuffer" resolve="append" />
              <node concept="3cpWs3" id="HywGhj8cpf" role="37wK5m">
                <node concept="2OqwBi" id="HywGhj8cwC" role="3uHU7w">
                  <node concept="13iPFW" id="HywGhj8cr4" role="2Oq$k0" />
                  <node concept="3TrcHB" id="HywGhj8cGh" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="Xl_RD" id="HywGhj8cgY" role="3uHU7B">
                  <property role="Xl_RC" value="val " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="HywGhj8cMM" role="3cqZAp">
          <node concept="3clFbS" id="HywGhj8cMO" role="3clFbx">
            <node concept="3clFbF" id="HywGhj8duP" role="3cqZAp">
              <node concept="2OqwBi" id="HywGhj8dwD" role="3clFbG">
                <node concept="37vLTw" id="HywGhj8duN" role="2Oq$k0">
                  <ref role="3cqZAo" node="HywGhj8bVt" resolve="bf" />
                </node>
                <node concept="liA8E" id="HywGhj8d$P" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuffer.append(java.lang.String):java.lang.StringBuffer" resolve="append" />
                  <node concept="3cpWs3" id="HywGhj8dJn" role="37wK5m">
                    <node concept="2OqwBi" id="HywGhj8eqR" role="3uHU7w">
                      <node concept="2OqwBi" id="HywGhj8dR2" role="2Oq$k0">
                        <node concept="13iPFW" id="HywGhj8dLu" role="2Oq$k0" />
                        <node concept="3TrEf2" id="HywGhj8edi" role="2OqNvi">
                          <ref role="3Tt5mk" to="5frd:1UULepNU6GA" resolve="type" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="HywGhj8e$x" role="2OqNvi">
                        <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="HywGhj8d_$" role="3uHU7B">
                      <property role="Xl_RC" value=": " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="HywGhj8dqt" role="3clFbw">
            <node concept="10Nm6u" id="HywGhj8dsA" role="3uHU7w" />
            <node concept="2OqwBi" id="HywGhj8cXM" role="3uHU7B">
              <node concept="13iPFW" id="HywGhj8cQQ" role="2Oq$k0" />
              <node concept="3TrEf2" id="HywGhj8ddl" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:1UULepNU6GA" resolve="type" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="1UULepNJhdA" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbJ" id="HywGhj8fTr" role="8Wnug">
            <node concept="3clFbS" id="HywGhj8fTt" role="3clFbx">
              <node concept="3clFbF" id="HywGhj8gHC" role="3cqZAp">
                <node concept="2OqwBi" id="HywGhj8gJs" role="3clFbG">
                  <node concept="37vLTw" id="HywGhj8gHA" role="2Oq$k0">
                    <ref role="3cqZAo" node="HywGhj8bVt" resolve="bf" />
                  </node>
                  <node concept="liA8E" id="HywGhj8gNC" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~StringBuffer.append(java.lang.String):java.lang.StringBuffer" resolve="append" />
                    <node concept="2OqwBi" id="HywGhj8hHl" role="37wK5m">
                      <node concept="2OqwBi" id="HywGhj8gUf" role="2Oq$k0">
                        <node concept="13iPFW" id="HywGhj8gOo" role="2Oq$k0" />
                        <node concept="3TrEf2" id="HywGhj8hhi" role="2OqNvi">
                          <ref role="3Tt5mk" to="hm2y:KaZMgy4Ily" resolve="contract" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="HywGhj8hPN" role="2OqNvi">
                        <ref role="37wK5l" to="pbu6:HywGhj8hkx" resolve="reanderReadable" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="HywGhj8g$l" role="3clFbw">
              <node concept="10Nm6u" id="HywGhj8gFs" role="3uHU7w" />
              <node concept="2OqwBi" id="HywGhj8g5N" role="3uHU7B">
                <node concept="13iPFW" id="HywGhj8fXB" role="2Oq$k0" />
                <node concept="3TrEf2" id="HywGhj8gnD" role="2OqNvi">
                  <ref role="3Tt5mk" to="hm2y:KaZMgy4Ily" resolve="contract" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="HywGhj8eFS" role="3cqZAp">
          <node concept="2OqwBi" id="HywGhj8eKp" role="3clFbG">
            <node concept="37vLTw" id="HywGhj8eFQ" role="2Oq$k0">
              <ref role="3cqZAo" node="HywGhj8bVt" resolve="bf" />
            </node>
            <node concept="liA8E" id="HywGhj8eQu" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuffer.append(java.lang.String):java.lang.StringBuffer" resolve="append" />
              <node concept="3cpWs3" id="HywGhj8f0f" role="37wK5m">
                <node concept="2OqwBi" id="HywGhj8fx7" role="3uHU7w">
                  <node concept="2OqwBi" id="HywGhj8f5U" role="2Oq$k0">
                    <node concept="13iPFW" id="HywGhj8f0m" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1UULepNJjtQ" role="2OqNvi">
                      <ref role="3Tt5mk" to="5frd:1UULepNJ9VZ" resolve="initialExpression" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="HywGhj8fJH" role="2OqNvi">
                    <ref role="37wK5l" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
                  </node>
                </node>
                <node concept="Xl_RD" id="HywGhj8eRd" role="3uHU7B">
                  <property role="Xl_RC" value=" = " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="HywGhj8bZ4" role="3cqZAp">
          <node concept="2OqwBi" id="HywGhj8c16" role="3clFbG">
            <node concept="37vLTw" id="HywGhj8bZ2" role="2Oq$k0">
              <ref role="3cqZAo" node="HywGhj8bVt" resolve="bf" />
            </node>
            <node concept="liA8E" id="HywGhj8c7f" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuffer.toString():java.lang.String" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="1UULepNJcdg" role="3clF45" />
      <node concept="3Tm1VV" id="1UULepNJcdh" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="1UULepNJjIk" role="13h7CS">
      <property role="TrG5h" value="isStaticallyEvaluatable" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="pbu6:3NBP8_O4e8l" resolve="isStaticallyEvaluatable" />
      <node concept="3clFbS" id="1UULepNJjIn" role="3clF47">
        <node concept="3clFbF" id="1UULepNJkjn" role="3cqZAp">
          <node concept="3clFbT" id="1UULepNJkjm" role="3clFbG">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="1UULepNJk1_" role="3clF45" />
      <node concept="3Tm1VV" id="1UULepNJk1A" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="1UULepNJlbr" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3clFbS" id="1UULepNJlbu" role="3clF47">
        <node concept="3clFbF" id="1UULepNJm31" role="3cqZAp">
          <node concept="2OqwBi" id="1UULepNJmhP" role="3clFbG">
            <node concept="13iPFW" id="1UULepNJm30" role="2Oq$k0" />
            <node concept="3TrcHB" id="1UULepNJqyL" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="1UULepNJlLf" role="3clF45" />
      <node concept="3Tm1VV" id="1UULepNJlLg" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="1UULepNJn8_" role="13h7CS">
      <property role="TrG5h" value="getVariableName" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="pbu6:7BxfuU7QrrQ" resolve="getVariableName" />
      <node concept="3clFbS" id="1UULepNJn8C" role="3clF47">
        <node concept="3clFbF" id="1UULepNJnLG" role="3cqZAp">
          <node concept="2OqwBi" id="1UULepNJo0w" role="3clFbG">
            <node concept="13iPFW" id="1UULepNJnLF" role="2Oq$k0" />
            <node concept="3TrcHB" id="1UULepNJopu" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="1UULepNJntN" role="3clF45" />
      <node concept="3Tm1VV" id="1UULepNJntO" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="1UULepNJosB" role="13h7CS">
      <property role="TrG5h" value="getVariableType" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="pbu6:7BxfuU7QrsR" resolve="getVariableType" />
      <node concept="3clFbS" id="1UULepNJosE" role="3clF47">
        <node concept="3clFbF" id="1UULepNJp6o" role="3cqZAp">
          <node concept="2OqwBi" id="1UULepNJplc" role="3clFbG">
            <node concept="13iPFW" id="1UULepNJp6n" role="2Oq$k0" />
            <node concept="3TrEf2" id="1UULepNJq6X" role="2OqNvi">
              <ref role="3Tt5mk" to="5frd:1UULepNU6GA" resolve="type" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="1UULepNJoMe" role="3clF45">
        <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
      </node>
      <node concept="3Tm1VV" id="1UULepNJoMf" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="1UULepNJq_U" role="13h7CS">
      <property role="TrG5h" value="getVariableConstraints" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="pbu6:7BxfuU7Qruw" resolve="getVariableConstraints" />
      <node concept="3clFbS" id="1UULepNJq_X" role="3clF47">
        <node concept="3SKdUt" id="1UULepNJtdl" role="3cqZAp">
          <node concept="3SKdUq" id="1UULepNJtdn" role="3SKWNk">
            <property role="3SKdUp" value="TODO: Is IContracted required?" />
          </node>
        </node>
        <node concept="3cpWs8" id="4eIhZo2fAMR" role="3cqZAp">
          <node concept="3cpWsn" id="4eIhZo2fAMS" role="3cpWs9">
            <property role="TrG5h" value="constraints" />
            <node concept="2I9FWS" id="4eIhZo2fAMQ" role="1tU5fm">
              <ref role="2I9WkF" to="hm2y:6sdnDbSla17" resolve="Expression" />
            </node>
            <node concept="2ShNRf" id="4eIhZo2fAMT" role="33vP2m">
              <node concept="2T8Vx0" id="4eIhZo2fAMU" role="2ShVmc">
                <node concept="2I9FWS" id="4eIhZo2fAMV" role="2T96Bj">
                  <ref role="2I9WkF" to="hm2y:6sdnDbSla17" resolve="Expression" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5wLFjD47WJB" role="3cqZAp">
          <node concept="37vLTw" id="5wLFjD47Xio" role="3cqZAk">
            <ref role="3cqZAo" node="4eIhZo2fAMS" resolve="constraints" />
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="1UULepNJqU4" role="3clF45">
        <node concept="3Tqbb2" id="1UULepNJqU5" role="A3Ik2">
          <ref role="ehGHo" to="hm2y:6sdnDbSla17" resolve="Expression" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1UULepNJqU6" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="2t3FM7fZBtB" role="13h7CS">
      <property role="TrG5h" value="getRelatedNode" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="w8ws:2t3FM7fWBTc" resolve="getRelatedNode" />
      <node concept="3Tm1VV" id="2t3FM7fZBtC" role="1B3o_S" />
      <node concept="3clFbS" id="2t3FM7fZBtF" role="3clF47">
        <node concept="3clFbF" id="2t3FM7fZBO5" role="3cqZAp">
          <node concept="2OqwBi" id="2t3FM7fZC5n" role="3clFbG">
            <node concept="13iPFW" id="2t3FM7fZBO4" role="2Oq$k0" />
            <node concept="3TrEf2" id="2t3FM7fZDUm" role="2OqNvi">
              <ref role="3Tt5mk" to="5frd:1UULepNU6GA" resolve="type" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="4k$35jY91Y6" role="3clF45">
        <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
      </node>
    </node>
    <node concept="13hLZK" id="1UULepNJb9W" role="13h7CW">
      <node concept="3clFbS" id="1UULepNJb9X" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="1UULepO1Em_">
    <property role="3GE5qa" value="util.synch" />
    <ref role="13h7C2" to="5frd:1UULepO1t7_" resolve="ISynchWithServer" />
    <node concept="13i0hz" id="1UULepO4pW2" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="setId" />
      <node concept="3Tm1VV" id="1UULepO4pW3" role="1B3o_S" />
      <node concept="3cqZAl" id="1UULepO4q2N" role="3clF45" />
      <node concept="3clFbS" id="1UULepO4pW5" role="3clF47">
        <node concept="3clFbF" id="1UULepO4qbq" role="3cqZAp">
          <node concept="37vLTI" id="1UULepO4qbr" role="3clFbG">
            <node concept="2OqwBi" id="1UULepO4qbs" role="37vLTJ">
              <node concept="13iPFW" id="1UULepO4qbt" role="2Oq$k0" />
              <node concept="3TrcHB" id="1UULepO4qbu" role="2OqNvi">
                <ref role="3TsBF5" to="5frd:1UULepO1tEg" resolve="id" />
              </node>
            </node>
            <node concept="3cpWs3" id="1UULepO4qbv" role="37vLTx">
              <node concept="Xl_RD" id="1UULepO4qbw" role="3uHU7w">
                <property role="Xl_RC" value="" />
              </node>
              <node concept="2OqwBi" id="1UULepO4qbx" role="3uHU7B">
                <node concept="1eOMI4" id="1UULepO4qby" role="2Oq$k0">
                  <node concept="10QFUN" id="1UULepO4qbz" role="1eOMHV">
                    <node concept="3uibUv" id="1UULepO4qb$" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="13iPFW" id="1UULepO4qb_" role="10QFUP" />
                  </node>
                </node>
                <node concept="liA8E" id="1UULepO4qbA" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="XZLIaPjHK$" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="synchronize" />
      <node concept="3Tm1VV" id="XZLIaPjHK_" role="1B3o_S" />
      <node concept="3Tqbb2" id="233v7iKQDVB" role="3clF45">
        <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
      </node>
      <node concept="3clFbS" id="XZLIaPjHKB" role="3clF47">
        <node concept="3cpWs8" id="XZLIaPm7kJ" role="3cqZAp">
          <node concept="3cpWsn" id="XZLIaPm7kM" role="3cpWs9">
            <property role="TrG5h" value="syncedType" />
            <node concept="3Tqbb2" id="XZLIaPm7kI" role="1tU5fm">
              <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
            </node>
            <node concept="2OqwBi" id="XZLIaPm7vZ" role="33vP2m">
              <node concept="13iPFW" id="XZLIaPm7nl" role="2Oq$k0" />
              <node concept="2qgKlT" id="XZLIaPm7PO" role="2OqNvi">
                <ref role="37wK5l" node="XZLIaPm3N0" resolve="loadFromServer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="XZLIaPm83r" role="3cqZAp">
          <node concept="2OqwBi" id="XZLIaPm8ea" role="3clFbG">
            <node concept="1PxgMI" id="7g3NvkvSBJV" role="2Oq$k0">
              <node concept="chp4Y" id="7g3NvkvSBK_" role="3oSUPX">
                <ref role="cht4Q" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
              </node>
              <node concept="13iPFW" id="XZLIaPm83p" role="1m5AlR" />
            </node>
            <node concept="2qgKlT" id="XZLIaPm8Bt" role="2OqNvi">
              <ref role="37wK5l" to="rfu:XZLIaPm3XP" resolve="replaceWith" />
              <node concept="37vLTw" id="XZLIaPm8Fg" role="37wK5m">
                <ref role="3cqZAo" node="XZLIaPm7kM" resolve="syncedType" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="233v7iKQETg" role="3cqZAp">
          <node concept="37vLTw" id="233v7iKQYlw" role="3cqZAk">
            <ref role="3cqZAo" node="XZLIaPm7kM" resolve="syncedType" />
          </node>
        </node>
        <node concept="3clFbH" id="233v7iKQmm0" role="3cqZAp" />
      </node>
    </node>
    <node concept="13i0hz" id="XZLIaPm3N0" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="loadFromServer" />
      <node concept="3Tm1VV" id="XZLIaPm3N1" role="1B3o_S" />
      <node concept="3Tqbb2" id="XZLIaPm47R" role="3clF45">
        <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
      </node>
      <node concept="3clFbS" id="XZLIaPm3N3" role="3clF47" />
    </node>
    <node concept="13i0hz" id="11KrhWhKNEB" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="createServersideCopy" />
      <node concept="37vLTG" id="4xjFwZUl_5Q" role="3clF46">
        <property role="TrG5h" value="objCopy" />
        <node concept="3Tqbb2" id="4xjFwZUl_5R" role="1tU5fm">
          <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
        </node>
      </node>
      <node concept="3Tm1VV" id="11KrhWhKNEC" role="1B3o_S" />
      <node concept="3clFbS" id="11KrhWhKNEE" role="3clF47" />
      <node concept="3cqZAl" id="11KrhWhKNTR" role="3clF45" />
    </node>
    <node concept="13hLZK" id="1UULepO1EmA" role="13h7CW">
      <node concept="3clFbS" id="1UULepO1EmB" role="2VODD2">
        <node concept="3clFbF" id="1UULepO9sr7" role="3cqZAp">
          <node concept="2OqwBi" id="1UULepO9sxX" role="3clFbG">
            <node concept="13iPFW" id="1UULepO9sr6" role="2Oq$k0" />
            <node concept="2qgKlT" id="1UULepO9sRC" role="2OqNvi">
              <ref role="37wK5l" node="1UULepO4pW2" resolve="setId" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="XZLIaPqc$H">
    <property role="3GE5qa" value="output" />
    <ref role="13h7C2" to="5frd:6Iu9bl6MC_2" resolve="SimpleMessageOutput" />
    <node concept="13hLZK" id="XZLIaPqc$I" role="13h7CW">
      <node concept="3clFbS" id="XZLIaPqc$J" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="XZLIaPVfwl">
    <property role="3GE5qa" value="util.items.item" />
    <ref role="13h7C2" to="5frd:XZLIaPVfvV" resolve="IContainItems" />
    <node concept="13i0hz" id="4HLGmtYXYZO" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getItemConcept" />
      <node concept="3Tm1VV" id="4HLGmtYXYZP" role="1B3o_S" />
      <node concept="3bZ5Sz" id="4HLGmtYXZcK" role="3clF45" />
      <node concept="3clFbS" id="4HLGmtYXYZR" role="3clF47" />
    </node>
    <node concept="13i0hz" id="55_guBATgAk" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="findItem" />
      <node concept="3Tm1VV" id="55_guBATgAl" role="1B3o_S" />
      <node concept="3Tqbb2" id="55_guBATgW1" role="3clF45">
        <ref role="ehGHo" to="5frd:6Quy7yTNPCP" resolve="IItemType" />
      </node>
      <node concept="3clFbS" id="55_guBATgAn" role="3clF47">
        <node concept="2Gpval" id="55_guBATgX6" role="3cqZAp">
          <node concept="2GrKxI" id="55_guBATgX7" role="2Gsz3X">
            <property role="TrG5h" value="item" />
          </node>
          <node concept="2OqwBi" id="55_guBATgX8" role="2GsD0m">
            <node concept="13iPFW" id="55_guBATgX9" role="2Oq$k0" />
            <node concept="3Tsc0h" id="55_guBATgXa" role="2OqNvi">
              <ref role="3TtcxE" to="5frd:5c6KWTiqlNT" resolve="items" />
            </node>
          </node>
          <node concept="3clFbS" id="55_guBATgXb" role="2LFqv$">
            <node concept="3clFbJ" id="55_guBATgXc" role="3cqZAp">
              <node concept="17R0WA" id="55_guBAThBO" role="3clFbw">
                <node concept="2OqwBi" id="55_guBAThBR" role="3uHU7B">
                  <node concept="2GrUjf" id="55_guBAThBS" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="55_guBATgX7" resolve="item" />
                  </node>
                  <node concept="3TrcHB" id="55_guBAThBT" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="37vLTw" id="55_guBAThNu" role="3uHU7w">
                  <ref role="3cqZAo" node="55_guBATgWA" resolve="name" />
                </node>
              </node>
              <node concept="3clFbS" id="55_guBATgXg" role="3clFbx">
                <node concept="3cpWs6" id="55_guBAThVJ" role="3cqZAp">
                  <node concept="2GrUjf" id="55_guBATi4I" role="3cqZAk">
                    <ref role="2Gs0qQ" node="55_guBATgX7" resolve="item" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="55_guBATie3" role="3cqZAp">
          <node concept="10Nm6u" id="55_guBATiiU" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="55_guBATgWA" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="55_guBATgW_" role="1tU5fm" />
      </node>
    </node>
    <node concept="13i0hz" id="4HLGmtZ8kgW" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="removeItem" />
      <node concept="3Tm1VV" id="4HLGmtZ8kgX" role="1B3o_S" />
      <node concept="3cqZAl" id="4HLGmtZ8khD" role="3clF45" />
      <node concept="3clFbS" id="4HLGmtZ8kgZ" role="3clF47">
        <node concept="3SKdUt" id="4HLGmtZ8ny3" role="3cqZAp">
          <node concept="3SKdUq" id="4HLGmtZ8ny5" role="3SKWNk">
            <property role="3SKdUp" value="TODO: might delete multiple items, delete inside foreach loop" />
          </node>
        </node>
        <node concept="2Gpval" id="4HLGmtZ8kku" role="3cqZAp">
          <node concept="2GrKxI" id="4HLGmtZ8kkv" role="2Gsz3X">
            <property role="TrG5h" value="item" />
          </node>
          <node concept="2OqwBi" id="4HLGmtZ8ktV" role="2GsD0m">
            <node concept="13iPFW" id="4HLGmtZ8kli" role="2Oq$k0" />
            <node concept="3Tsc0h" id="4HLGmtZ8kBz" role="2OqNvi">
              <ref role="3TtcxE" to="5frd:5c6KWTiqlNT" resolve="items" />
            </node>
          </node>
          <node concept="3clFbS" id="4HLGmtZ8kkx" role="2LFqv$">
            <node concept="3clFbJ" id="4HLGmtZ8kG7" role="3cqZAp">
              <node concept="2YFouu" id="4HLGmtZ8lUc" role="3clFbw">
                <node concept="37vLTw" id="4HLGmtZ8lX2" role="3uHU7w">
                  <ref role="3cqZAo" node="4HLGmtZ8kiI" resolve="target" />
                </node>
                <node concept="2GrUjf" id="4HLGmtZ8kIY" role="3uHU7B">
                  <ref role="2Gs0qQ" node="4HLGmtZ8kkv" resolve="item" />
                </node>
              </node>
              <node concept="3clFbS" id="4HLGmtZ8kG9" role="3clFbx">
                <node concept="3clFbF" id="4HLGmtZ8lZP" role="3cqZAp">
                  <node concept="2OqwBi" id="4HLGmtZ8nco" role="3clFbG">
                    <node concept="1eOMI4" id="4HLGmtZ8n0U" role="2Oq$k0">
                      <node concept="10QFUN" id="4HLGmtZ8m28" role="1eOMHV">
                        <node concept="3uibUv" id="4HLGmtZ8m7$" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2GrUjf" id="4HLGmtZ8lZO" role="10QFUP">
                          <ref role="2Gs0qQ" node="4HLGmtZ8kkv" resolve="item" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="4HLGmtZ8npK" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.delete():void" resolve="delete" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4HLGmtZ8kiI" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="4HLGmtZ8kiH" role="1tU5fm">
          <ref role="ehGHo" to="5frd:6Quy7yTNPCP" resolve="IItemType" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4rZ4tH4_7hb" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="replaceItem" />
      <node concept="37vLTG" id="4rZ4tH4_7V6" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="4rZ4tH4_7V7" role="1tU5fm">
          <ref role="ehGHo" to="5frd:6Quy7yTNPCP" resolve="IItemType" />
        </node>
      </node>
      <node concept="37vLTG" id="4rZ4tH4_8kO" role="3clF46">
        <property role="TrG5h" value="replacement" />
        <node concept="3Tqbb2" id="4rZ4tH4_8kP" role="1tU5fm">
          <ref role="ehGHo" to="5frd:6Quy7yTNPCP" resolve="IItemType" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4rZ4tH4_7hc" role="1B3o_S" />
      <node concept="3cqZAl" id="4rZ4tH4_7v7" role="3clF45" />
      <node concept="3clFbS" id="4rZ4tH4_7he" role="3clF47">
        <node concept="3SKdUt" id="4rZ4tH4_7vM" role="3cqZAp">
          <node concept="3SKdUq" id="4rZ4tH4_7vN" role="3SKWNk">
            <property role="3SKdUp" value="TODO: might replace multiple items" />
          </node>
        </node>
        <node concept="2Gpval" id="4rZ4tH4_7vO" role="3cqZAp">
          <node concept="2GrKxI" id="4rZ4tH4_7vP" role="2Gsz3X">
            <property role="TrG5h" value="item" />
          </node>
          <node concept="2OqwBi" id="4rZ4tH4_7vQ" role="2GsD0m">
            <node concept="13iPFW" id="4rZ4tH4_7vR" role="2Oq$k0" />
            <node concept="3Tsc0h" id="4rZ4tH4_7vS" role="2OqNvi">
              <ref role="3TtcxE" to="5frd:5c6KWTiqlNT" resolve="items" />
            </node>
          </node>
          <node concept="3clFbS" id="4rZ4tH4_7vT" role="2LFqv$">
            <node concept="3clFbJ" id="4rZ4tH4_7vU" role="3cqZAp">
              <node concept="2YFouu" id="4rZ4tH4_7vV" role="3clFbw">
                <node concept="37vLTw" id="4rZ4tH4_7vW" role="3uHU7w">
                  <ref role="3cqZAo" node="4rZ4tH4_7V6" resolve="target" />
                </node>
                <node concept="2GrUjf" id="4rZ4tH4_7vX" role="3uHU7B">
                  <ref role="2Gs0qQ" node="4rZ4tH4_7vP" resolve="item" />
                </node>
              </node>
              <node concept="3clFbS" id="4rZ4tH4_7vY" role="3clFbx">
                <node concept="3clFbF" id="4rZ4tH4_ajj" role="3cqZAp">
                  <node concept="2OqwBi" id="4rZ4tH4_ayi" role="3clFbG">
                    <node concept="2GrUjf" id="4rZ4tH4_ajh" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="4rZ4tH4_7vP" resolve="item" />
                    </node>
                    <node concept="1P9Npp" id="4rZ4tH4_b98" role="2OqNvi">
                      <node concept="37vLTw" id="4rZ4tH4_bbf" role="1P9ThW">
                        <ref role="3cqZAo" node="4rZ4tH4_8kO" resolve="replacement" />
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
    <node concept="13i0hz" id="7AbWZaxl5uk" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="replaceNodePreservingItemRefs" />
      <node concept="3Tm1VV" id="7AbWZaxl5ul" role="1B3o_S" />
      <node concept="3cqZAl" id="7AbWZaxl5um" role="3clF45" />
      <node concept="3clFbS" id="7AbWZaxl5un" role="3clF47">
        <node concept="3SKdUt" id="28$5p7pvArX" role="3cqZAp">
          <node concept="3SKdUq" id="28$5p7pvArZ" role="3SKWNk">
            <property role="3SKdUp" value="TODO: is this strong enough?" />
          </node>
        </node>
        <node concept="3clFbJ" id="7AbWZaxl5uo" role="3cqZAp">
          <node concept="3clFbS" id="7AbWZaxl5up" role="3clFbx">
            <node concept="2xdQw9" id="28$5p7pu77z" role="3cqZAp">
              <property role="2xdLsb" value="error" />
              <node concept="Xl_RD" id="28$5p7pu77$" role="9lYJi">
                <property role="Xl_RC" value="Error when trying to replace IContainItem-Nodes of different types!" />
              </node>
            </node>
            <node concept="2xdQw9" id="7AbWZaxl5uq" role="3cqZAp">
              <property role="2xdLsb" value="error" />
              <node concept="3cpWs3" id="28$5p7pu934" role="9lYJi">
                <node concept="2OqwBi" id="3CO1ndsNX_5" role="3uHU7w">
                  <node concept="2OqwBi" id="28$5p7pu9Pu" role="2Oq$k0">
                    <node concept="37vLTw" id="28$5p7pu9i3" role="2Oq$k0">
                      <ref role="3cqZAo" node="7AbWZaxl5xw" resolve="other" />
                    </node>
                    <node concept="2yIwOk" id="3CO1ndsNXnG" role="2OqNvi" />
                  </node>
                  <node concept="liA8E" id="3CO1ndsNY4a" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractConcept.getName():java.lang.String" resolve="getName" />
                  </node>
                </node>
                <node concept="3cpWs3" id="28$5p7pu8bz" role="3uHU7B">
                  <node concept="3cpWs3" id="28$5p7pu7rB" role="3uHU7B">
                    <node concept="Xl_RD" id="7AbWZaxl5ur" role="3uHU7B">
                      <property role="Xl_RC" value="type:" />
                    </node>
                    <node concept="2OqwBi" id="3CO1ndsNWBm" role="3uHU7w">
                      <node concept="2OqwBi" id="28$5p7pu7I0" role="2Oq$k0">
                        <node concept="13iPFW" id="28$5p7pu7s5" role="2Oq$k0" />
                        <node concept="2yIwOk" id="3CO1ndsNWqg" role="2OqNvi" />
                      </node>
                      <node concept="liA8E" id="3CO1ndsNX58" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getName():java.lang.String" resolve="getName" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="28$5p7pu8g$" role="3uHU7w">
                    <property role="Xl_RC" value=" != type:" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="28$5p7pu77W" role="3cqZAp" />
            <node concept="3cpWs6" id="7AbWZaxl5us" role="3cqZAp" />
          </node>
          <node concept="17QLQc" id="7AbWZaxl5ut" role="3clFbw">
            <node concept="2OqwBi" id="3CO1ndsNUC5" role="3uHU7B">
              <node concept="2OqwBi" id="7AbWZaxl5uu" role="2Oq$k0">
                <node concept="13iPFW" id="7AbWZaxl5uv" role="2Oq$k0" />
                <node concept="2yIwOk" id="3CO1ndsNUcZ" role="2OqNvi" />
              </node>
              <node concept="liA8E" id="3CO1ndsNV5C" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getName():java.lang.String" resolve="getName" />
              </node>
            </node>
            <node concept="2OqwBi" id="3CO1ndsNVBk" role="3uHU7w">
              <node concept="2OqwBi" id="28$5p7pvm9p" role="2Oq$k0">
                <node concept="37vLTw" id="28$5p7pvm9q" role="2Oq$k0">
                  <ref role="3cqZAo" node="7AbWZaxl5xw" resolve="other" />
                </node>
                <node concept="2yIwOk" id="3CO1ndsNVom" role="2OqNvi" />
              </node>
              <node concept="liA8E" id="3CO1ndsNW21" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getName():java.lang.String" resolve="getName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2yEOtRkdJMn" role="3cqZAp" />
        <node concept="3cpWs8" id="5j1RGb79$OD" role="3cqZAp">
          <node concept="3cpWsn" id="5j1RGb79$OG" role="3cpWs9">
            <property role="TrG5h" value="otherCopy" />
            <node concept="3Tqbb2" id="5j1RGb79$OB" role="1tU5fm">
              <ref role="ehGHo" to="5frd:XZLIaPVfvV" resolve="IContainItems" />
            </node>
            <node concept="2OqwBi" id="5j1RGb79BPv" role="33vP2m">
              <node concept="37vLTw" id="5j1RGb79BIC" role="2Oq$k0">
                <ref role="3cqZAo" node="7AbWZaxl5xw" resolve="other" />
              </node>
              <node concept="1$rogu" id="5j1RGb79BYZ" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5j1RGb7a9B2" role="3cqZAp" />
        <node concept="3SKdUt" id="7AbWZaxl5vp" role="3cqZAp">
          <node concept="3SKdUq" id="7AbWZaxl5vq" role="3SKWNk">
            <property role="3SKdUp" value="replace references to refer to otherObj" />
          </node>
        </node>
        <node concept="3cpWs8" id="7AbWZaxl5vr" role="3cqZAp">
          <node concept="3cpWsn" id="7AbWZaxl5vs" role="3cpWs9">
            <property role="TrG5h" value="sec" />
            <node concept="3Tqbb2" id="7AbWZaxl5vt" role="1tU5fm">
              <ref role="ehGHo" to="5frd:2$uHlqSzbou" resolve="Section" />
            </node>
            <node concept="2OqwBi" id="7AbWZaxl5vu" role="33vP2m">
              <node concept="13iPFW" id="7AbWZaxl5vv" role="2Oq$k0" />
              <node concept="2Xjw5R" id="7AbWZaxl5vw" role="2OqNvi">
                <node concept="1xMEDy" id="7AbWZaxl5vx" role="1xVPHs">
                  <node concept="chp4Y" id="7AbWZaxl5vy" role="ri$Ld">
                    <ref role="cht4Q" to="5frd:2$uHlqSzbou" resolve="Section" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2UGMKm7YvAl" role="3cqZAp">
          <node concept="3SKdUq" id="2UGMKm7YvAn" role="3SKWNk">
            <property role="3SKdUp" value="TODO: don't do it for all items but only for existing elements !!! SEE STATIC FUNCTION BELOW" />
          </node>
        </node>
        <node concept="2Gpval" id="7AbWZaxl5vz" role="3cqZAp">
          <node concept="2GrKxI" id="7AbWZaxl5v$" role="2Gsz3X">
            <property role="TrG5h" value="item" />
          </node>
          <node concept="2OqwBi" id="5j1RGb79FWH" role="2GsD0m">
            <node concept="37vLTw" id="5j1RGb79Fsa" role="2Oq$k0">
              <ref role="3cqZAo" node="5j1RGb79$OG" resolve="otherCopy" />
            </node>
            <node concept="3Tsc0h" id="5j1RGb79Gu3" role="2OqNvi">
              <ref role="3TtcxE" to="5frd:5c6KWTiqlNT" resolve="items" />
            </node>
          </node>
          <node concept="3clFbS" id="7AbWZaxl5vC" role="2LFqv$">
            <node concept="3cpWs8" id="7AbWZaxl5vD" role="3cqZAp">
              <node concept="3cpWsn" id="7AbWZaxl5vE" role="3cpWs9">
                <property role="TrG5h" value="found" />
                <node concept="2OqwBi" id="7AbWZaxl5vF" role="33vP2m">
                  <node concept="2OqwBi" id="7AbWZaxl5vG" role="2Oq$k0">
                    <node concept="2OqwBi" id="7AbWZaxl5vH" role="2Oq$k0">
                      <node concept="13iPFW" id="7AbWZaxl5vI" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="7AbWZaxl5vJ" role="2OqNvi">
                        <ref role="3TtcxE" to="5frd:5c6KWTiqlNT" resolve="items" />
                      </node>
                    </node>
                    <node concept="3zZkjj" id="7AbWZaxl5vK" role="2OqNvi">
                      <node concept="1bVj0M" id="7AbWZaxl5vL" role="23t8la">
                        <node concept="3clFbS" id="7AbWZaxl5vM" role="1bW5cS">
                          <node concept="3clFbF" id="7AbWZaxl5vN" role="3cqZAp">
                            <node concept="2OqwBi" id="7AbWZaxl5vO" role="3clFbG">
                              <node concept="2OqwBi" id="7AbWZaxl5vP" role="2Oq$k0">
                                <node concept="37vLTw" id="7AbWZaxl5vQ" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7AbWZaxl5vW" resolve="it" />
                                </node>
                                <node concept="3TrcHB" id="7AbWZaxl5vR" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                              <node concept="liA8E" id="7AbWZaxl5vS" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                                <node concept="2OqwBi" id="7AbWZaxl5vT" role="37wK5m">
                                  <node concept="2GrUjf" id="7AbWZaxl5vU" role="2Oq$k0">
                                    <ref role="2Gs0qQ" node="7AbWZaxl5v$" resolve="item" />
                                  </node>
                                  <node concept="3TrcHB" id="7AbWZaxl5vV" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="7AbWZaxl5vW" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="7AbWZaxl5vX" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1uHKPH" id="7AbWZaxl5vY" role="2OqNvi" />
                </node>
                <node concept="3Tqbb2" id="7AbWZaxl5vZ" role="1tU5fm">
                  <ref role="ehGHo" to="5frd:6Quy7yTNPCP" resolve="IItemType" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7AbWZaxl5w0" role="3cqZAp">
              <node concept="3clFbS" id="7AbWZaxl5w1" role="3clFbx">
                <node concept="3clFbF" id="7AbWZaxl5w2" role="3cqZAp">
                  <node concept="2OqwBi" id="7AbWZaxl5w3" role="3clFbG">
                    <node concept="37vLTw" id="7AbWZaxl5w4" role="2Oq$k0">
                      <ref role="3cqZAo" node="7AbWZaxl5vE" resolve="found" />
                    </node>
                    <node concept="2qgKlT" id="7AbWZaxl5w5" role="2OqNvi">
                      <ref role="37wK5l" node="MS2eiUaPHC" resolve="replaceReferences" />
                      <node concept="37vLTw" id="7AbWZaxl5w6" role="37wK5m">
                        <ref role="3cqZAo" node="7AbWZaxl5vs" resolve="sec" />
                      </node>
                      <node concept="1PxgMI" id="28$5p7pvUud" role="37wK5m">
                        <node concept="chp4Y" id="28$5p7pvUKG" role="3oSUPX">
                          <ref role="cht4Q" to="5frd:6Quy7yTNPCP" resolve="IItemType" />
                        </node>
                        <node concept="2GrUjf" id="7AbWZaxl5w9" role="1m5AlR">
                          <ref role="2Gs0qQ" node="7AbWZaxl5v$" resolve="item" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7AbWZaxl5wa" role="3clFbw">
                <node concept="37vLTw" id="7AbWZaxl5wb" role="2Oq$k0">
                  <ref role="3cqZAo" node="7AbWZaxl5vE" resolve="found" />
                </node>
                <node concept="3x8VRR" id="7AbWZaxl5wc" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2yEOtRke9j2" role="3cqZAp" />
        <node concept="3SKdUt" id="2yEOtRkecmu" role="3cqZAp">
          <node concept="3SKdUq" id="2yEOtRkecmw" role="3SKWNk">
            <property role="3SKdUp" value="replace this object with copy of other object" />
          </node>
        </node>
        <node concept="3clFbF" id="7AbWZaxl9wx" role="3cqZAp">
          <node concept="2OqwBi" id="7AbWZaxl9Od" role="3clFbG">
            <node concept="13iPFW" id="7AbWZaxl9wv" role="2Oq$k0" />
            <node concept="1P9Npp" id="7AbWZaxlahO" role="2OqNvi">
              <node concept="37vLTw" id="5j1RGb79MWg" role="1P9ThW">
                <ref role="3cqZAo" node="5j1RGb79$OG" resolve="otherCopy" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7AbWZaxl5xw" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3Tqbb2" id="7AbWZaxl5xx" role="1tU5fm">
          <ref role="ehGHo" to="5frd:XZLIaPVfvV" resolve="IContainItems" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2UGMKm7YPq2" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="findItemRefs" />
      <property role="2Ki8OM" value="true" />
      <node concept="3Tm1VV" id="2UGMKm7YPq3" role="1B3o_S" />
      <node concept="2I9FWS" id="2UGMKm7YPKn" role="3clF45">
        <ref role="2I9WkF" to="5frd:4x_I0npP4pK" resolve="ItemRef" />
      </node>
      <node concept="3clFbS" id="2UGMKm7YPq5" role="3clF47">
        <node concept="3cpWs8" id="2UGMKm7YEsd" role="3cqZAp">
          <node concept="3cpWsn" id="2UGMKm7YEsg" role="3cpWs9">
            <property role="TrG5h" value="references" />
            <node concept="2I9FWS" id="2UGMKm7YEsb" role="1tU5fm">
              <ref role="2I9WkF" to="5frd:4x_I0npP4pK" resolve="ItemRef" />
            </node>
            <node concept="2ShNRf" id="2UGMKm7YEM3" role="33vP2m">
              <node concept="2T8Vx0" id="2UGMKm7YEM1" role="2ShVmc">
                <node concept="2I9FWS" id="2UGMKm7YEM2" role="2T96Bj">
                  <ref role="2I9WkF" to="5frd:4x_I0npP4pK" resolve="ItemRef" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="2UGMKm7YPKM" role="3cqZAp">
          <node concept="2GrKxI" id="2UGMKm7YPKN" role="2Gsz3X">
            <property role="TrG5h" value="child" />
          </node>
          <node concept="2OqwBi" id="2UGMKm7Y_WI" role="2GsD0m">
            <node concept="2OqwBi" id="2UGMKm7YPKO" role="2Oq$k0">
              <node concept="37vLTw" id="2UGMKm7YSXZ" role="2Oq$k0">
                <ref role="3cqZAo" node="2UGMKm7YRqV" resolve="inside" />
              </node>
              <node concept="32TBzR" id="2UGMKm7YPKP" role="2OqNvi" />
            </node>
            <node concept="3zZkjj" id="2UGMKm7YBb1" role="2OqNvi">
              <node concept="1bVj0M" id="2UGMKm7YBb3" role="23t8la">
                <node concept="3clFbS" id="2UGMKm7YBb4" role="1bW5cS">
                  <node concept="3clFbF" id="2UGMKm7YBli" role="3cqZAp">
                    <node concept="3fqX7Q" id="2UGMKm7YCyg" role="3clFbG">
                      <node concept="2OqwBi" id="2UGMKm7YCyi" role="3fr31v">
                        <node concept="37vLTw" id="2UGMKm7YCyj" role="2Oq$k0">
                          <ref role="3cqZAo" node="2UGMKm7YBb5" resolve="it" />
                        </node>
                        <node concept="1BlSNk" id="2UGMKm7YCXZ" role="2OqNvi">
                          <ref role="1BmUXE" to="ja9q:6pyCRNQL2EL" resolve="AbstractStatement" />
                          <ref role="1Bn3mz" to="ja9q:6pyCRNR1bO4" resolve="objectAtPosition" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="2UGMKm7YBb5" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="2UGMKm7YBb6" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2UGMKm7YPKQ" role="2LFqv$">
            <node concept="3clFbJ" id="2UGMKm7YPKR" role="3cqZAp">
              <node concept="2OqwBi" id="2UGMKm7YPKS" role="3clFbw">
                <node concept="2GrUjf" id="2UGMKm7YPKT" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="2UGMKm7YPKN" resolve="child" />
                </node>
                <node concept="1mIQ4w" id="2UGMKm7YPKU" role="2OqNvi">
                  <node concept="chp4Y" id="2UGMKm7YPKV" role="cj9EA">
                    <ref role="cht4Q" to="5frd:4x_I0npP4pK" resolve="ItemRef" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2UGMKm7YPKW" role="3clFbx">
                <node concept="3clFbF" id="2UGMKm7YEPv" role="3cqZAp">
                  <node concept="2OqwBi" id="2UGMKm7YHi8" role="3clFbG">
                    <node concept="37vLTw" id="2UGMKm7YEPt" role="2Oq$k0">
                      <ref role="3cqZAo" node="2UGMKm7YEsg" resolve="references" />
                    </node>
                    <node concept="TSZUe" id="2UGMKm7YNa_" role="2OqNvi">
                      <node concept="1PxgMI" id="2UGMKm7YNDC" role="25WWJ7">
                        <node concept="chp4Y" id="2UGMKm7YO5c" role="3oSUPX">
                          <ref role="cht4Q" to="5frd:4x_I0npP4pK" resolve="ItemRef" />
                        </node>
                        <node concept="2GrUjf" id="2UGMKm7YNmd" role="1m5AlR">
                          <ref role="2Gs0qQ" node="2UGMKm7YPKN" resolve="child" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="2UGMKm7YPKX" role="3eNLev">
                <node concept="3clFbS" id="2UGMKm7YPKY" role="3eOfB_">
                  <node concept="3clFbF" id="2UGMKm7YZEm" role="3cqZAp">
                    <node concept="2OqwBi" id="2UGMKm7Z2nG" role="3clFbG">
                      <node concept="37vLTw" id="2UGMKm7YZEl" role="2Oq$k0">
                        <ref role="3cqZAo" node="2UGMKm7YEsg" resolve="references" />
                      </node>
                      <node concept="X8dFx" id="2UGMKm7Z8iW" role="2OqNvi">
                        <node concept="2OqwBi" id="2UGMKm7YYop" role="25WWJ7">
                          <node concept="35c_gC" id="2UGMKm7YXSF" role="2Oq$k0">
                            <ref role="35c_gD" to="5frd:XZLIaPVfvV" resolve="IContainItems" />
                          </node>
                          <node concept="2qgKlT" id="2UGMKm7YYDL" role="2OqNvi">
                            <ref role="37wK5l" node="2UGMKm7YPq2" resolve="findItemRefs" />
                            <node concept="2GrUjf" id="2UGMKm7YYIA" role="37wK5m">
                              <ref role="2Gs0qQ" node="2UGMKm7YPKN" resolve="child" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3eOSWO" id="2UGMKm7YPL5" role="3eO9$A">
                  <node concept="2OqwBi" id="2UGMKm7YPL6" role="3uHU7B">
                    <node concept="2OqwBi" id="2UGMKm7YPL7" role="2Oq$k0">
                      <node concept="2GrUjf" id="2UGMKm7YPL8" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="2UGMKm7YPKN" resolve="child" />
                      </node>
                      <node concept="32TBzR" id="2UGMKm7YPL9" role="2OqNvi" />
                    </node>
                    <node concept="34oBXx" id="2UGMKm7YPLa" role="2OqNvi" />
                  </node>
                  <node concept="3cmrfG" id="2UGMKm7YPLb" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2UGMKm7YUq5" role="3cqZAp">
          <node concept="37vLTw" id="2UGMKm7YUSv" role="3cqZAk">
            <ref role="3cqZAo" node="2UGMKm7YEsg" resolve="references" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2UGMKm7YRqV" role="3clF46">
        <property role="TrG5h" value="inside" />
        <node concept="3Tqbb2" id="2UGMKm7YRqU" role="1tU5fm" />
      </node>
    </node>
    <node concept="13i0hz" id="2UGMKm7ZB9r" role="13h7CS">
      <property role="TrG5h" value="findMatchingRef" />
      <property role="2Ki8OM" value="true" />
      <node concept="3Tm1VV" id="2UGMKm7ZB9s" role="1B3o_S" />
      <node concept="3Tqbb2" id="2UGMKm7ZJVc" role="3clF45">
        <ref role="ehGHo" to="5frd:4x_I0npP4pK" resolve="ItemRef" />
      </node>
      <node concept="3clFbS" id="2UGMKm7ZB9u" role="3clF47">
        <node concept="2Gpval" id="2UGMKm7ZB9v" role="3cqZAp">
          <node concept="2GrKxI" id="2UGMKm7ZB9w" role="2Gsz3X">
            <property role="TrG5h" value="child" />
          </node>
          <node concept="2OqwBi" id="2UGMKm7ZNXW" role="2GsD0m">
            <node concept="2OqwBi" id="2UGMKm7ZB9x" role="2Oq$k0">
              <node concept="37vLTw" id="2UGMKm7ZB9y" role="2Oq$k0">
                <ref role="3cqZAo" node="2UGMKm7ZBad" resolve="inside" />
              </node>
              <node concept="32TBzR" id="2UGMKm7ZB9z" role="2OqNvi" />
            </node>
            <node concept="3zZkjj" id="2UGMKm7ZO90" role="2OqNvi">
              <node concept="1bVj0M" id="2UGMKm7ZO91" role="23t8la">
                <node concept="3clFbS" id="2UGMKm7ZO92" role="1bW5cS">
                  <node concept="3clFbF" id="2UGMKm7ZO93" role="3cqZAp">
                    <node concept="3fqX7Q" id="2UGMKm7ZO94" role="3clFbG">
                      <node concept="2OqwBi" id="2UGMKm7ZO95" role="3fr31v">
                        <node concept="37vLTw" id="2UGMKm7ZO96" role="2Oq$k0">
                          <ref role="3cqZAo" node="2UGMKm7ZO98" resolve="it" />
                        </node>
                        <node concept="1BlSNk" id="2UGMKm7ZO97" role="2OqNvi">
                          <ref role="1BmUXE" to="ja9q:6pyCRNQL2EL" resolve="AbstractStatement" />
                          <ref role="1Bn3mz" to="ja9q:6pyCRNR1bO4" resolve="objectAtPosition" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="2UGMKm7ZO98" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="2UGMKm7ZO99" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2UGMKm7ZB9$" role="2LFqv$">
            <node concept="3clFbJ" id="2UGMKm7ZB9_" role="3cqZAp">
              <node concept="2OqwBi" id="2UGMKm7ZB9A" role="3clFbw">
                <node concept="2GrUjf" id="2UGMKm7ZB9B" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="2UGMKm7ZB9w" resolve="child" />
                </node>
                <node concept="1mIQ4w" id="2UGMKm7ZB9C" role="2OqNvi">
                  <node concept="chp4Y" id="2UGMKm7ZB9D" role="cj9EA">
                    <ref role="cht4Q" to="5frd:4x_I0npP4pK" resolve="ItemRef" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2UGMKm7ZB9E" role="3clFbx">
                <node concept="3clFbJ" id="2UGMKm7ZB9F" role="3cqZAp">
                  <node concept="3clFbS" id="2UGMKm7ZB9G" role="3clFbx">
                    <node concept="3cpWs6" id="2UGMKm7ZJwp" role="3cqZAp">
                      <node concept="1PxgMI" id="2UGMKm7ZB9K" role="3cqZAk">
                        <node concept="chp4Y" id="2UGMKm7ZB9L" role="3oSUPX">
                          <ref role="cht4Q" to="5frd:4x_I0npP4pK" resolve="ItemRef" />
                        </node>
                        <node concept="2GrUjf" id="2UGMKm7ZB9M" role="1m5AlR">
                          <ref role="2Gs0qQ" node="2UGMKm7ZB9w" resolve="child" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="17R0WA" id="2UGMKm89QOp" role="3clFbw">
                    <node concept="2OqwBi" id="2UGMKm89T92" role="3uHU7B">
                      <node concept="2OqwBi" id="2UGMKm89Rsy" role="2Oq$k0">
                        <node concept="1PxgMI" id="2UGMKm89QOr" role="2Oq$k0">
                          <node concept="chp4Y" id="2UGMKm89QOs" role="3oSUPX">
                            <ref role="cht4Q" to="5frd:4x_I0npP4pK" resolve="ItemRef" />
                          </node>
                          <node concept="2GrUjf" id="2UGMKm89QOt" role="1m5AlR">
                            <ref role="2Gs0qQ" node="2UGMKm7ZB9w" resolve="child" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="2UGMKm89SnT" role="2OqNvi">
                          <ref role="3Tt5mk" to="5frd:4x_I0npP4pL" resolve="val" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="2UGMKm89TFH" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2UGMKm89VNB" role="3uHU7w">
                      <node concept="2OqwBi" id="2UGMKm89UjX" role="2Oq$k0">
                        <node concept="37vLTw" id="2UGMKm89QOu" role="2Oq$k0">
                          <ref role="3cqZAo" node="2UGMKm7ZBaf" resolve="target" />
                        </node>
                        <node concept="3TrEf2" id="2UGMKm89UXh" role="2OqNvi">
                          <ref role="3Tt5mk" to="5frd:4x_I0npP4pL" resolve="val" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="2UGMKm89WfD" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="2UGMKm7ZB9Y" role="3eNLev">
                <node concept="3clFbS" id="2UGMKm7ZB9Z" role="3eOfB_">
                  <node concept="3cpWs6" id="2UGMKm7ZKZH" role="3cqZAp">
                    <node concept="2OqwBi" id="2UGMKm7ZBa1" role="3cqZAk">
                      <node concept="1fM9EW" id="2UGMKm7ZZtz" role="2Oq$k0" />
                      <node concept="2qgKlT" id="2UGMKm7ZBa3" role="2OqNvi">
                        <ref role="37wK5l" node="2UGMKm7ZB9r" resolve="findMatchingRef" />
                        <node concept="2GrUjf" id="2UGMKm7ZBa4" role="37wK5m">
                          <ref role="2Gs0qQ" node="2UGMKm7ZB9w" resolve="child" />
                        </node>
                        <node concept="37vLTw" id="2UGMKm7ZBa5" role="37wK5m">
                          <ref role="3cqZAo" node="2UGMKm7ZBaf" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3eOSWO" id="2UGMKm7ZBa6" role="3eO9$A">
                  <node concept="2OqwBi" id="2UGMKm7ZBa7" role="3uHU7B">
                    <node concept="2OqwBi" id="2UGMKm7ZBa8" role="2Oq$k0">
                      <node concept="2GrUjf" id="2UGMKm7ZBa9" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="2UGMKm7ZB9w" resolve="child" />
                      </node>
                      <node concept="32TBzR" id="2UGMKm7ZBaa" role="2OqNvi" />
                    </node>
                    <node concept="34oBXx" id="2UGMKm7ZBab" role="2OqNvi" />
                  </node>
                  <node concept="3cmrfG" id="2UGMKm7ZBac" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="34ab3g" id="2UGMKm88TFM" role="3cqZAp">
          <property role="35gtTG" value="error" />
          <node concept="Xl_RD" id="2UGMKm88TFO" role="34bqiv">
            <property role="Xl_RC" value="MIST" />
          </node>
        </node>
        <node concept="3SKdUt" id="2UGMKm7ZM0J" role="3cqZAp">
          <node concept="3SKdUq" id="2UGMKm7ZM0L" role="3SKWNk">
            <property role="3SKdUp" value="TODO: exception" />
          </node>
        </node>
        <node concept="3cpWs6" id="2UGMKm7ZMzL" role="3cqZAp">
          <node concept="10Nm6u" id="2UGMKm7ZMJJ" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="2UGMKm7ZBad" role="3clF46">
        <property role="TrG5h" value="inside" />
        <node concept="3Tqbb2" id="2UGMKm7ZBae" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2UGMKm7ZBaf" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="2UGMKm7ZBag" role="1tU5fm">
          <ref role="ehGHo" to="5frd:4x_I0npP4pK" resolve="ItemRef" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="XZLIaPVfwm" role="13h7CW">
      <node concept="3clFbS" id="XZLIaPVfwn" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4x_I0npP4qc">
    <property role="3GE5qa" value="util.items.selection" />
    <ref role="13h7C2" to="5frd:4x_I0npP4pK" resolve="ItemRef" />
    <node concept="13i0hz" id="46b_jc7UVeu" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3clFbS" id="46b_jc7UVex" role="3clF47">
        <node concept="3clFbF" id="46b_jc7UVll" role="3cqZAp">
          <node concept="2OqwBi" id="46b_jc7UWt6" role="3clFbG">
            <node concept="2OqwBi" id="46b_jc7UVx3" role="2Oq$k0">
              <node concept="13iPFW" id="46b_jc7UVlk" role="2Oq$k0" />
              <node concept="3TrEf2" id="46b_jc7UW0V" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:4x_I0npP4pL" resolve="val" />
              </node>
            </node>
            <node concept="3TrcHB" id="46b_jc7UWVD" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="46b_jc7UVim" role="3clF45" />
      <node concept="3Tm1VV" id="46b_jc7UVin" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="46b_jc7Vjyt" role="13h7CS">
      <property role="TrG5h" value="getDetailedPresentation" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="tpcu:22G2W3WJ92t" resolve="getDetailedPresentation" />
      <node concept="3clFbS" id="46b_jc7Vjyw" role="3clF47">
        <node concept="3clFbF" id="46b_jc7VjOn" role="3cqZAp">
          <node concept="2OqwBi" id="46b_jc7VjOo" role="3clFbG">
            <node concept="2OqwBi" id="46b_jc7VjOp" role="2Oq$k0">
              <node concept="13iPFW" id="46b_jc7VjOq" role="2Oq$k0" />
              <node concept="3TrEf2" id="46b_jc7VjOr" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:4x_I0npP4pL" resolve="val" />
              </node>
            </node>
            <node concept="3TrcHB" id="46b_jc7VjOs" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="46b_jc7VjE3" role="3clF45" />
      <node concept="3Tm1VV" id="46b_jc7VjE4" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="4x_I0npP4qd" role="13h7CW">
      <node concept="3clFbS" id="4x_I0npP4qe" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1pYj3$d2NPO" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="renderPythonSyntax" />
      <ref role="13i0hy" node="1Ho6EEsWzsX" resolve="renderPythonSyntax" />
      <node concept="3Tm1VV" id="1pYj3$d2NPP" role="1B3o_S" />
      <node concept="3clFbS" id="1pYj3$d2NPS" role="3clF47">
        <node concept="3clFbF" id="1pYj3$d2NVU" role="3cqZAp">
          <node concept="2OqwBi" id="1pYj3$d2P9k" role="3clFbG">
            <node concept="2OqwBi" id="1pYj3$d2O8o" role="2Oq$k0">
              <node concept="13iPFW" id="1pYj3$d2NVT" role="2Oq$k0" />
              <node concept="3TrEf2" id="1pYj3$d2OFn" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:4x_I0npP4pL" resolve="val" />
              </node>
            </node>
            <node concept="2qgKlT" id="1pYj3$d4qWN" role="2OqNvi">
              <ref role="37wK5l" node="1pYj3$d2Pqc" resolve="renderReadable" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="1pYj3$d2NPT" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="CAhoO5jzSW">
    <property role="3GE5qa" value="util.dotexpression" />
    <ref role="13h7C2" to="5frd:CAhoO5jugf" resolve="IDotOperation" />
    <node concept="13i0hz" id="3CO1ndsX6Ez" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="renderReadable" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="pbu6:6kR0qIbI2yi" resolve="renderReadable" />
      <node concept="3clFbS" id="3CO1ndsX6EA" role="3clF47">
        <node concept="3cpWs8" id="3CO1ndt6Dy6" role="3cqZAp">
          <node concept="3cpWsn" id="3CO1ndt6Dy9" role="3cpWs9">
            <property role="TrG5h" value="pySyntax" />
            <node concept="17QB3L" id="3CO1ndt6Dy4" role="1tU5fm" />
            <node concept="2OqwBi" id="3CO1ndsX7DF" role="33vP2m">
              <node concept="13iPFW" id="3CO1ndsX7DG" role="2Oq$k0" />
              <node concept="2qgKlT" id="3CO1ndsX7DH" role="2OqNvi">
                <ref role="37wK5l" node="1Ho6EEsWzsX" resolve="renderPythonSyntax" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7D1YCyBd7YX" role="3cqZAp" />
        <node concept="3clFbJ" id="7D1YCyBd8a3" role="3cqZAp">
          <node concept="3clFbS" id="7D1YCyBd8a4" role="3clFbx">
            <node concept="3clFbF" id="7D1YCyBd9Jl" role="3cqZAp">
              <node concept="37vLTI" id="7D1YCyBdahC" role="3clFbG">
                <node concept="37vLTw" id="7D1YCyBd9Jk" role="37vLTJ">
                  <ref role="3cqZAo" node="3CO1ndt6Dy9" resolve="pySyntax" />
                </node>
                <node concept="2OqwBi" id="7D1YCyBdai2" role="37vLTx">
                  <node concept="1PxgMI" id="7D1YCyBdai3" role="2Oq$k0">
                    <node concept="chp4Y" id="7D1YCyBdai4" role="3oSUPX">
                      <ref role="cht4Q" to="5frd:1Ho6EEsY2ow" resolve="PythonExpression" />
                    </node>
                    <node concept="2OqwBi" id="7D1YCyBdai5" role="1m5AlR">
                      <node concept="1PxgMI" id="7D1YCyBdai6" role="2Oq$k0">
                        <node concept="chp4Y" id="7D1YCyBdai7" role="3oSUPX">
                          <ref role="cht4Q" to="5frd:CAhoO5mCkr" resolve="DotExpression" />
                        </node>
                        <node concept="2OqwBi" id="7D1YCyBdai8" role="1m5AlR">
                          <node concept="13iPFW" id="7D1YCyBdai9" role="2Oq$k0" />
                          <node concept="1mfA1w" id="7D1YCyBdaia" role="2OqNvi" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="7D1YCyBdaib" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6NgXF" resolve="expr" />
                      </node>
                    </node>
                  </node>
                  <node concept="2qgKlT" id="7D1YCyBdaic" role="2OqNvi">
                    <ref role="37wK5l" node="1Ho6EEsWzuL" resolve="renderDecoration" />
                    <node concept="37vLTw" id="7D1YCyBdaid" role="37wK5m">
                      <ref role="3cqZAo" node="3CO1ndt6Dy9" resolve="pySyntax" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7D1YCyBd8ah" role="3clFbw">
            <node concept="2OqwBi" id="7D1YCyBd8ai" role="2Oq$k0">
              <node concept="1PxgMI" id="7D1YCyBd8aj" role="2Oq$k0">
                <node concept="chp4Y" id="7D1YCyBd8ak" role="3oSUPX">
                  <ref role="cht4Q" to="5frd:CAhoO5mCkr" resolve="DotExpression" />
                </node>
                <node concept="2OqwBi" id="7D1YCyBd8al" role="1m5AlR">
                  <node concept="13iPFW" id="7D1YCyBd8am" role="2Oq$k0" />
                  <node concept="1mfA1w" id="7D1YCyBd8an" role="2OqNvi" />
                </node>
              </node>
              <node concept="3TrEf2" id="7D1YCyBd8ao" role="2OqNvi">
                <ref role="3Tt5mk" to="hm2y:4rZeNQ6NgXF" resolve="expr" />
              </node>
            </node>
            <node concept="1mIQ4w" id="7D1YCyBd8ap" role="2OqNvi">
              <node concept="chp4Y" id="7D1YCyBd8aq" role="cj9EA">
                <ref role="cht4Q" to="5frd:1Ho6EEsY2ow" resolve="PythonExpression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7D1YCyBd7ZZ" role="3cqZAp" />
        <node concept="3cpWs6" id="3CO1ndt6EKB" role="3cqZAp">
          <node concept="37vLTw" id="7D1YCyBdbTx" role="3cqZAk">
            <ref role="3cqZAo" node="3CO1ndt6Dy9" resolve="pySyntax" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="3CO1ndsX6GM" role="3clF45" />
      <node concept="3Tm1VV" id="3CO1ndsX6GN" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="CAhoO5jzT7" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getRenderedExpression" />
      <node concept="3Tm1VV" id="CAhoO5jzT8" role="1B3o_S" />
      <node concept="17QB3L" id="CAhoO5jzTH" role="3clF45" />
      <node concept="3clFbS" id="CAhoO5jzTa" role="3clF47">
        <node concept="3SKdUt" id="7D1YCyBcPNG" role="3cqZAp">
          <node concept="3SKdUq" id="7D1YCyBcPNI" role="3SKWNk">
            <property role="3SKdUp" value="TODO: integration of &quot;PythonExpression&quot; seems to be too deep" />
          </node>
        </node>
        <node concept="3clFbJ" id="7D1YCyBcMaw" role="3cqZAp">
          <node concept="3clFbS" id="7D1YCyBcMay" role="3clFbx">
            <node concept="3cpWs6" id="3CO1ndt6Caq" role="3cqZAp">
              <node concept="2OqwBi" id="CAhoO5jAA1" role="3cqZAk">
                <node concept="1PxgMI" id="1Ho6EEt440z" role="2Oq$k0">
                  <node concept="chp4Y" id="1Ho6EEt445C" role="3oSUPX">
                    <ref role="cht4Q" to="5frd:1Ho6EEsY2ow" resolve="PythonExpression" />
                  </node>
                  <node concept="2OqwBi" id="CAhoO5j_vI" role="1m5AlR">
                    <node concept="1PxgMI" id="CAhoO5j_eM" role="2Oq$k0">
                      <node concept="chp4Y" id="1Ho6EEt435E" role="3oSUPX">
                        <ref role="cht4Q" to="5frd:CAhoO5mCkr" resolve="DotExpression" />
                      </node>
                      <node concept="2OqwBi" id="CAhoO5j$4y" role="1m5AlR">
                        <node concept="13iPFW" id="CAhoO5jzUw" role="2Oq$k0" />
                        <node concept="1mfA1w" id="CAhoO5j$hc" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="CAhoO5j_Sb" role="2OqNvi">
                      <ref role="3Tt5mk" to="hm2y:4rZeNQ6NgXF" resolve="expr" />
                    </node>
                  </node>
                </node>
                <node concept="2qgKlT" id="1Ho6EEt44x$" role="2OqNvi">
                  <ref role="37wK5l" node="1Ho6EEsWzsX" resolve="renderPythonSyntax" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7D1YCyBcMZF" role="3clFbw">
            <node concept="2OqwBi" id="7D1YCyBcMke" role="2Oq$k0">
              <node concept="1PxgMI" id="7D1YCyBcMkf" role="2Oq$k0">
                <node concept="chp4Y" id="7D1YCyBcMkg" role="3oSUPX">
                  <ref role="cht4Q" to="5frd:CAhoO5mCkr" resolve="DotExpression" />
                </node>
                <node concept="2OqwBi" id="7D1YCyBcMkh" role="1m5AlR">
                  <node concept="13iPFW" id="7D1YCyBcMki" role="2Oq$k0" />
                  <node concept="1mfA1w" id="7D1YCyBcMkj" role="2OqNvi" />
                </node>
              </node>
              <node concept="3TrEf2" id="7D1YCyBcMkk" role="2OqNvi">
                <ref role="3Tt5mk" to="hm2y:4rZeNQ6NgXF" resolve="expr" />
              </node>
            </node>
            <node concept="1mIQ4w" id="7D1YCyBcNA7" role="2OqNvi">
              <node concept="chp4Y" id="7D1YCyBcNDm" role="cj9EA">
                <ref role="cht4Q" to="5frd:1Ho6EEsY2ow" resolve="PythonExpression" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="7D1YCyBcOgQ" role="9aQIa">
            <node concept="3clFbS" id="7D1YCyBcOgR" role="9aQI4">
              <node concept="3cpWs6" id="7D1YCyBcOu0" role="3cqZAp">
                <node concept="2OqwBi" id="7D1YCyBcOu1" role="3cqZAk">
                  <node concept="1PxgMI" id="7D1YCyBcOu2" role="2Oq$k0">
                    <node concept="chp4Y" id="7D1YCyBcOCu" role="3oSUPX">
                      <ref role="cht4Q" to="hm2y:6sdnDbSla17" resolve="Expression" />
                    </node>
                    <node concept="2OqwBi" id="7D1YCyBcOu4" role="1m5AlR">
                      <node concept="1PxgMI" id="7D1YCyBcOu5" role="2Oq$k0">
                        <node concept="chp4Y" id="7D1YCyBcOu6" role="3oSUPX">
                          <ref role="cht4Q" to="5frd:CAhoO5mCkr" resolve="DotExpression" />
                        </node>
                        <node concept="2OqwBi" id="7D1YCyBcOu7" role="1m5AlR">
                          <node concept="13iPFW" id="7D1YCyBcOu8" role="2Oq$k0" />
                          <node concept="1mfA1w" id="7D1YCyBcOu9" role="2OqNvi" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="7D1YCyBcOua" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:4rZeNQ6NgXF" resolve="expr" />
                      </node>
                    </node>
                  </node>
                  <node concept="2qgKlT" id="7D1YCyBcPjd" role="2OqNvi">
                    <ref role="37wK5l" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7D1YCyBcM13" role="3cqZAp" />
      </node>
    </node>
    <node concept="13i0hz" id="1Ho6EEslho$" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="evaluateOperation" />
      <node concept="37vLTG" id="1Ho6EEslm4N" role="3clF46">
        <property role="TrG5h" value="targetObj" />
        <node concept="3uibUv" id="1Ho6EEslm4M" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1Ho6EEslho_" role="1B3o_S" />
      <node concept="3uibUv" id="1Ho6EEslice" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3clFbS" id="1Ho6EEslhoB" role="3clF47" />
    </node>
    <node concept="13hLZK" id="CAhoO5jzSX" role="13h7CW">
      <node concept="3clFbS" id="CAhoO5jzSY" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="37IcDEP2sDL">
    <property role="3GE5qa" value="util.items.expression" />
    <ref role="13h7C2" to="5frd:fN3qU6G$xK" resolve="ItemDependentExpression" />
    <node concept="13i0hz" id="2m90CjkDmdu" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="2m90CjkDmdv" role="1B3o_S" />
      <node concept="3clFbS" id="2m90CjkDmdy" role="3clF47">
        <node concept="3SKdUt" id="1Ho6EEt14Ls" role="3cqZAp">
          <node concept="3SKdUq" id="1Ho6EEt14Lu" role="3SKWNk">
            <property role="3SKdUp" value="TODO: remove?" />
          </node>
        </node>
        <node concept="3clFbF" id="2m90CjkDn3D" role="3cqZAp">
          <node concept="2OqwBi" id="SzR20WPRRR" role="3clFbG">
            <node concept="2OqwBi" id="SzR20WPRby" role="2Oq$k0">
              <node concept="13iPFW" id="SzR20WPQZR" role="2Oq$k0" />
              <node concept="3TrEf2" id="SzR20WPRrE" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:fN3qU6G$xL" resolve="expression" />
              </node>
            </node>
            <node concept="2qgKlT" id="SzR20WPSmL" role="2OqNvi">
              <ref role="37wK5l" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="2m90CjkDmdz" role="3clF45" />
    </node>
    <node concept="13hLZK" id="37IcDEP2sDM" role="13h7CW">
      <node concept="3clFbS" id="37IcDEP2sDN" role="2VODD2">
        <node concept="3clFbF" id="4k$35jXQbFQ" role="3cqZAp">
          <node concept="37vLTI" id="4k$35jXQf4$" role="3clFbG">
            <node concept="2ShNRf" id="4k$35jXQf9D" role="37vLTx">
              <node concept="3zrR0B" id="4k$35jXQf9B" role="2ShVmc">
                <node concept="3Tqbb2" id="4k$35jXQf9C" role="3zrR0E">
                  <ref role="ehGHo" to="hm2y:6sdnDbSla17" resolve="Expression" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4k$35jXQe5t" role="37vLTJ">
              <node concept="13iPFW" id="4k$35jXQbFP" role="2Oq$k0" />
              <node concept="3TrEf2" id="4k$35jXQeCg" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:fN3qU6G$xL" resolve="expression" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1ELd1MG3wwq" role="13h7CS">
      <property role="TrG5h" value="getType" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" node="1ELd1MG1vXo" resolve="getType" />
      <node concept="3clFbS" id="1ELd1MG3wwt" role="3clF47">
        <node concept="34ab3g" id="2UGMKm7T9$F" role="3cqZAp">
          <property role="35gtTG" value="info" />
          <node concept="Xl_RD" id="2UGMKm7T9$H" role="34bqiv">
            <property role="Xl_RC" value="getting the type in itemDepExpr" />
          </node>
        </node>
        <node concept="3SKdUt" id="2UGMKm7Sm0c" role="3cqZAp">
          <node concept="3SKdUq" id="2UGMKm7Sm0e" role="3SKWNk">
            <property role="3SKdUp" value="check if expression is " />
          </node>
        </node>
        <node concept="3clFbJ" id="2UGMKm7Snxr" role="3cqZAp">
          <node concept="3clFbS" id="2UGMKm7Snxt" role="3clFbx">
            <node concept="3cpWs6" id="1ELd1MG3AF$" role="3cqZAp">
              <node concept="10QFUN" id="1ELd1MG3K34" role="3cqZAk">
                <node concept="2OqwBi" id="1ELd1MG3JG0" role="10QFUP">
                  <node concept="2OqwBi" id="1ELd1MG3Arq" role="2Oq$k0">
                    <node concept="13iPFW" id="1ELd1MG3Arr" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1ELd1MG3Ars" role="2OqNvi">
                      <ref role="3Tt5mk" to="5frd:fN3qU6G$xL" resolve="expression" />
                    </node>
                  </node>
                  <node concept="3JvlWi" id="1ELd1MG3JXf" role="2OqNvi" />
                </node>
                <node concept="3Tqbb2" id="1ELd1MG3K35" role="10QFUM">
                  <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2UGMKm7SoPz" role="3clFbw">
            <node concept="2OqwBi" id="2UGMKm7SnOh" role="2Oq$k0">
              <node concept="13iPFW" id="2UGMKm7SnAZ" role="2Oq$k0" />
              <node concept="2Rxl7S" id="2UGMKm7Soqw" role="2OqNvi" />
            </node>
            <node concept="3x8VRR" id="2UGMKm7Sp5U" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="2UGMKm7SpuI" role="3cqZAp" />
        <node concept="3SKdUt" id="2UGMKm7SpXJ" role="3cqZAp">
          <node concept="3SKdUq" id="2UGMKm7SpXL" role="3SKWNk">
            <property role="3SKdUp" value="get model" />
          </node>
        </node>
        <node concept="3cpWs8" id="2UGMKm7Sx0V" role="3cqZAp">
          <node concept="3cpWsn" id="2UGMKm7Sx0Y" role="3cpWs9">
            <property role="TrG5h" value="newRoot" />
            <node concept="3Tqbb2" id="2UGMKm7Sx0T" role="1tU5fm">
              <ref role="ehGHo" to="5frd:2$uHlqSzhDy" resolve="File" />
            </node>
            <node concept="2ShNRf" id="2UGMKm7Sxax" role="33vP2m">
              <node concept="3zrR0B" id="2UGMKm7Sxav" role="2ShVmc">
                <node concept="3Tqbb2" id="2UGMKm7Sxaw" role="3zrR0E">
                  <ref role="ehGHo" to="5frd:2$uHlqSzhDy" resolve="File" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2UGMKm7SuHJ" role="3cqZAp">
          <node concept="2OqwBi" id="2UGMKm7Sw2p" role="3clFbG">
            <node concept="2JrnkZ" id="2UGMKm7SvSx" role="2Oq$k0">
              <node concept="2OqwBi" id="2UGMKm7SuVE" role="2JrQYb">
                <node concept="13iPFW" id="2UGMKm7SuHH" role="2Oq$k0" />
                <node concept="I4A8Y" id="2UGMKm7Svjg" role="2OqNvi" />
              </node>
            </node>
            <node concept="liA8E" id="2UGMKm7SwdJ" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.addRootNode(org.jetbrains.mps.openapi.model.SNode):void" resolve="addRootNode" />
              <node concept="37vLTw" id="2UGMKm7Sxcp" role="37wK5m">
                <ref role="3cqZAo" node="2UGMKm7Sx0Y" resolve="newRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2UGMKm7SxGu" role="3cqZAp">
          <node concept="2ShNRf" id="2UGMKm7SxWi" role="3cqZAk">
            <node concept="3zrR0B" id="2UGMKm7SxWg" role="2ShVmc">
              <node concept="3Tqbb2" id="2UGMKm7SxWh" role="3zrR0E">
                <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="1ELd1MG3yWP" role="3clF45">
        <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
      </node>
      <node concept="3Tm1VV" id="1ELd1MG3yWQ" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="58ojJcwm06b" role="13h7CS">
      <property role="TrG5h" value="getFeatureRefsInside" />
      <node concept="3Tm1VV" id="58ojJcwm06c" role="1B3o_S" />
      <node concept="2I9FWS" id="58ojJcwm0gB" role="3clF45">
        <ref role="2I9WkF" to="5frd:4x_I0npP4pK" resolve="ItemRef" />
      </node>
      <node concept="3clFbS" id="58ojJcwm06e" role="3clF47">
        <node concept="3cpWs8" id="58ojJcwm1Wu" role="3cqZAp">
          <node concept="3cpWsn" id="58ojJcwm1Wx" role="3cpWs9">
            <property role="TrG5h" value="refs" />
            <node concept="2I9FWS" id="58ojJcwm1Ws" role="1tU5fm">
              <ref role="2I9WkF" to="5frd:4x_I0npP4pK" resolve="ItemRef" />
            </node>
            <node concept="2ShNRf" id="58ojJcwm24N" role="33vP2m">
              <node concept="2T8Vx0" id="58ojJcwm24L" role="2ShVmc">
                <node concept="2I9FWS" id="58ojJcwm24M" role="2T96Bj">
                  <ref role="2I9WkF" to="5frd:4x_I0npP4pK" resolve="ItemRef" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="58ojJcwm0hF" role="3cqZAp">
          <node concept="2OqwBi" id="58ojJcwm1a7" role="3clFbw">
            <node concept="37vLTw" id="58ojJcwmhPn" role="2Oq$k0">
              <ref role="3cqZAo" node="58ojJcwmhtj" resolve="expression" />
            </node>
            <node concept="1mIQ4w" id="58ojJcwm1D7" role="2OqNvi">
              <node concept="chp4Y" id="2L5U6Iq66Y" role="cj9EA">
                <ref role="cht4Q" to="5frd:4x_I0npP4pK" resolve="ItemRef" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="58ojJcwm0hH" role="3clFbx">
            <node concept="3clFbF" id="58ojJcwm25a" role="3cqZAp">
              <node concept="2OqwBi" id="58ojJcwm4gA" role="3clFbG">
                <node concept="37vLTw" id="58ojJcwm259" role="2Oq$k0">
                  <ref role="3cqZAo" node="58ojJcwm1Wx" resolve="refs" />
                </node>
                <node concept="TSZUe" id="58ojJcwm9FE" role="2OqNvi">
                  <node concept="1PxgMI" id="58ojJcwmcPY" role="25WWJ7">
                    <node concept="chp4Y" id="2L5U6Iq6bJ" role="3oSUPX">
                      <ref role="cht4Q" to="5frd:4x_I0npP4pK" resolve="ItemRef" />
                    </node>
                    <node concept="37vLTw" id="58ojJcwmRh0" role="1m5AlR">
                      <ref role="3cqZAo" node="58ojJcwmhtj" resolve="expression" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="58ojJcwmdln" role="9aQIa">
            <node concept="3clFbS" id="58ojJcwmdlo" role="9aQI4">
              <node concept="2Gpval" id="58ojJcwmdCB" role="3cqZAp">
                <node concept="2GrKxI" id="58ojJcwmdCC" role="2Gsz3X">
                  <property role="TrG5h" value="child" />
                </node>
                <node concept="2OqwBi" id="58ojJcwna8G" role="2GsD0m">
                  <node concept="2OqwBi" id="58ojJcwmexP" role="2Oq$k0">
                    <node concept="37vLTw" id="58ojJcwmhWG" role="2Oq$k0">
                      <ref role="3cqZAo" node="58ojJcwmhtj" resolve="expression" />
                    </node>
                    <node concept="32TBzR" id="58ojJcwmf0R" role="2OqNvi" />
                  </node>
                  <node concept="3zZkjj" id="58ojJcwndad" role="2OqNvi">
                    <node concept="1bVj0M" id="58ojJcwndaf" role="23t8la">
                      <node concept="3clFbS" id="58ojJcwndag" role="1bW5cS">
                        <node concept="3clFbF" id="58ojJcwndqp" role="3cqZAp">
                          <node concept="2OqwBi" id="58ojJcwndOW" role="3clFbG">
                            <node concept="37vLTw" id="58ojJcwndqo" role="2Oq$k0">
                              <ref role="3cqZAo" node="58ojJcwndah" resolve="it" />
                            </node>
                            <node concept="1mIQ4w" id="58ojJcwnfuh" role="2OqNvi">
                              <node concept="chp4Y" id="58ojJcwnhIi" role="cj9EA">
                                <ref role="cht4Q" to="hm2y:6sdnDbSla17" resolve="Expression" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="58ojJcwndah" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="58ojJcwndai" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="58ojJcwmdCE" role="2LFqv$">
                  <node concept="3clFbF" id="58ojJcwmhYI" role="3cqZAp">
                    <node concept="2OqwBi" id="58ojJcwmk__" role="3clFbG">
                      <node concept="37vLTw" id="58ojJcwmhYH" role="2Oq$k0">
                        <ref role="3cqZAo" node="58ojJcwm1Wx" resolve="refs" />
                      </node>
                      <node concept="X8dFx" id="58ojJcwmq0F" role="2OqNvi">
                        <node concept="2OqwBi" id="58ojJcwmw$D" role="25WWJ7">
                          <node concept="13iPFW" id="58ojJcwmsLk" role="2Oq$k0" />
                          <node concept="2qgKlT" id="58ojJcwmzZK" role="2OqNvi">
                            <ref role="37wK5l" node="58ojJcwm06b" resolve="getFeatureRefsInside" />
                            <node concept="1PxgMI" id="58ojJcwmEj_" role="37wK5m">
                              <node concept="chp4Y" id="58ojJcwmF$$" role="3oSUPX">
                                <ref role="cht4Q" to="hm2y:6sdnDbSla17" resolve="Expression" />
                              </node>
                              <node concept="2GrUjf" id="58ojJcwmBJ8" role="1m5AlR">
                                <ref role="2Gs0qQ" node="58ojJcwmdCC" resolve="child" />
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
        <node concept="3clFbH" id="58ojJcwmb2t" role="3cqZAp" />
        <node concept="3cpWs6" id="58ojJcwmblC" role="3cqZAp">
          <node concept="37vLTw" id="58ojJcwmbX9" role="3cqZAk">
            <ref role="3cqZAo" node="58ojJcwm1Wx" resolve="refs" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="58ojJcwmhtj" role="3clF46">
        <property role="TrG5h" value="expression" />
        <node concept="3Tqbb2" id="58ojJcwmhti" role="1tU5fm">
          <ref role="ehGHo" to="hm2y:6sdnDbSla17" resolve="Expression" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1Ho6EEsZxt0" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="renderPythonSyntax" />
      <ref role="13i0hy" node="1Ho6EEsWzsX" resolve="renderPythonSyntax" />
      <node concept="3Tm1VV" id="1Ho6EEsZxt1" role="1B3o_S" />
      <node concept="3clFbS" id="1Ho6EEsZxt4" role="3clF47">
        <node concept="3clFbF" id="1Ho6EEt0YOU" role="3cqZAp">
          <node concept="2OqwBi" id="1Ho6EEt13JL" role="3clFbG">
            <node concept="2OqwBi" id="1Ho6EEt0Z1o" role="2Oq$k0">
              <node concept="13iPFW" id="1Ho6EEt0YOT" role="2Oq$k0" />
              <node concept="3TrEf2" id="1Ho6EEt0Zj6" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:fN3qU6G$xL" resolve="expression" />
              </node>
            </node>
            <node concept="2qgKlT" id="1Ho6EEt14n8" role="2OqNvi">
              <ref role="37wK5l" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="1Ho6EEsZxt5" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="4rZ4tH4zJ_k">
    <property role="3GE5qa" value="file" />
    <ref role="13h7C2" to="5frd:4rZ4tH4lGwS" resolve="HiddenContent" />
    <node concept="13hLZK" id="4rZ4tH4zJ_l" role="13h7CW">
      <node concept="3clFbS" id="4rZ4tH4zJ_m" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="2L5U6IwlOI">
    <property role="3GE5qa" value="util.items.item" />
    <ref role="13h7C2" to="5frd:6Quy7yTNPCP" resolve="IItemType" />
    <node concept="13i0hz" id="MS2eiUaPHC" role="13h7CS">
      <property role="TrG5h" value="replaceReferences" />
      <node concept="3Tm1VV" id="MS2eiUaPHD" role="1B3o_S" />
      <node concept="3cqZAl" id="MS2eiUbaPF" role="3clF45" />
      <node concept="3clFbS" id="MS2eiUaPHF" role="3clF47">
        <node concept="2Gpval" id="MS2eiUb3Tr" role="3cqZAp">
          <node concept="2GrKxI" id="MS2eiUb3Tt" role="2Gsz3X">
            <property role="TrG5h" value="child" />
          </node>
          <node concept="2OqwBi" id="MS2eiUb4aK" role="2GsD0m">
            <node concept="37vLTw" id="MS2eiUb42B" role="2Oq$k0">
              <ref role="3cqZAo" node="MS2eiUaQa6" resolve="inside" />
            </node>
            <node concept="32TBzR" id="MS2eiUb4qG" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="MS2eiUb3Tx" role="2LFqv$">
            <node concept="3clFbJ" id="MS2eiUb4sy" role="3cqZAp">
              <node concept="2OqwBi" id="MS2eiUb54y" role="3clFbw">
                <node concept="2GrUjf" id="MS2eiUb4sU" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="MS2eiUb3Tt" resolve="child" />
                </node>
                <node concept="1mIQ4w" id="MS2eiUb5s0" role="2OqNvi">
                  <node concept="chp4Y" id="2L5U6Izs3g" role="cj9EA">
                    <ref role="cht4Q" to="5frd:4x_I0npP4pK" resolve="ItemRef" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="MS2eiUb4s$" role="3clFbx">
                <node concept="3clFbJ" id="MS2eiUb9Rr" role="3cqZAp">
                  <node concept="3clFbS" id="MS2eiUb9Rt" role="3clFbx">
                    <node concept="3clFbF" id="MS2eiUb6qo" role="3cqZAp">
                      <node concept="37vLTI" id="MS2eiUb9rz" role="3clFbG">
                        <node concept="2OqwBi" id="MS2eiUb7mP" role="37vLTJ">
                          <node concept="1PxgMI" id="MS2eiUb6U6" role="2Oq$k0">
                            <node concept="chp4Y" id="2L5U6IzsCx" role="3oSUPX">
                              <ref role="cht4Q" to="5frd:4x_I0npP4pK" resolve="ItemRef" />
                            </node>
                            <node concept="2GrUjf" id="MS2eiUb6qn" role="1m5AlR">
                              <ref role="2Gs0qQ" node="MS2eiUb3Tt" resolve="child" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="MS2eiUb7NW" role="2OqNvi">
                            <ref role="3Tt5mk" to="5frd:4x_I0npP4pL" resolve="val" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="MS2eiUb9KE" role="37vLTx">
                          <ref role="3cqZAo" node="MS2eiUb65P" resolve="newTarget" />
                        </node>
                      </node>
                    </node>
                    <node concept="34ab3g" id="5j1RGb78EH8" role="3cqZAp">
                      <property role="35gtTG" value="info" />
                      <node concept="Xl_RD" id="5j1RGb78EHa" role="34bqiv">
                        <property role="Xl_RC" value="REPLACED" />
                      </node>
                    </node>
                  </node>
                  <node concept="17R0WA" id="MS2eiUb5V3" role="3clFbw">
                    <node concept="13iPFW" id="MS2eiUb5V4" role="3uHU7w" />
                    <node concept="2OqwBi" id="MS2eiUb5V5" role="3uHU7B">
                      <node concept="1PxgMI" id="MS2eiUb5V6" role="2Oq$k0">
                        <node concept="chp4Y" id="2L5U6Izsl9" role="3oSUPX">
                          <ref role="cht4Q" to="5frd:4x_I0npP4pK" resolve="ItemRef" />
                        </node>
                        <node concept="2GrUjf" id="MS2eiUb6gW" role="1m5AlR">
                          <ref role="2Gs0qQ" node="MS2eiUb3Tt" resolve="child" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="4x_I0nq3Wby" role="2OqNvi">
                        <ref role="3Tt5mk" to="5frd:4x_I0npP4pL" resolve="val" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="MS2eiUbba7" role="3eNLev">
                <node concept="3clFbS" id="MS2eiUbba8" role="3eOfB_">
                  <node concept="3clFbF" id="MS2eiUbhTd" role="3cqZAp">
                    <node concept="2OqwBi" id="MS2eiUbi1t" role="3clFbG">
                      <node concept="13iPFW" id="MS2eiUbhTc" role="2Oq$k0" />
                      <node concept="2qgKlT" id="MS2eiUbiqS" role="2OqNvi">
                        <ref role="37wK5l" node="MS2eiUaPHC" resolve="replaceReferences" />
                        <node concept="2GrUjf" id="MS2eiUbiv2" role="37wK5m">
                          <ref role="2Gs0qQ" node="MS2eiUb3Tt" resolve="child" />
                        </node>
                        <node concept="37vLTw" id="MS2eiUbi$H" role="37wK5m">
                          <ref role="3cqZAo" node="MS2eiUb65P" resolve="newTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3eOSWO" id="MS2eiUbhr1" role="3eO9$A">
                  <node concept="2OqwBi" id="MS2eiUbd6m" role="3uHU7B">
                    <node concept="2OqwBi" id="MS2eiUbbrK" role="2Oq$k0">
                      <node concept="2GrUjf" id="MS2eiUbbjS" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="MS2eiUb3Tt" resolve="child" />
                      </node>
                      <node concept="32TBzR" id="MS2eiUbbV7" role="2OqNvi" />
                    </node>
                    <node concept="34oBXx" id="MS2eiUbfvE" role="2OqNvi" />
                  </node>
                  <node concept="3cmrfG" id="MS2eiUbhN0" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="MS2eiUaQa6" role="3clF46">
        <property role="TrG5h" value="inside" />
        <node concept="3Tqbb2" id="MS2eiUaQa5" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="MS2eiUb65P" role="3clF46">
        <property role="TrG5h" value="newTarget" />
        <node concept="3Tqbb2" id="MS2eiUb6fX" role="1tU5fm">
          <ref role="ehGHo" to="5frd:6Quy7yTNPCP" resolve="IItemType" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1pYj3$d2Pqc" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="renderReadable" />
      <node concept="3Tm1VV" id="1pYj3$d2Pqd" role="1B3o_S" />
      <node concept="17QB3L" id="1pYj3$d2PJH" role="3clF45" />
      <node concept="3clFbS" id="1pYj3$d2Pqf" role="3clF47" />
    </node>
    <node concept="13hLZK" id="2L5U6IwlOJ" role="13h7CW">
      <node concept="3clFbS" id="2L5U6IwlOK" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="CAhoO5mCkP">
    <property role="3GE5qa" value="util.dotexpression" />
    <ref role="13h7C2" to="5frd:CAhoO5mCkr" resolve="DotExpression" />
    <node concept="13i0hz" id="CAhoO5mCl0" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3clFbS" id="CAhoO5mCl3" role="3clF47">
        <node concept="3clFbF" id="CAhoO5mClv" role="3cqZAp">
          <node concept="2OqwBi" id="CAhoO5mD$6" role="3clFbG">
            <node concept="2OqwBi" id="CAhoO5mC$q" role="2Oq$k0">
              <node concept="13iPFW" id="CAhoO5mClu" role="2Oq$k0" />
              <node concept="3TrEf2" id="CAhoO5mNvj" role="2OqNvi">
                <ref role="3Tt5mk" to="hm2y:7NJy08a3O9b" resolve="target" />
              </node>
            </node>
            <node concept="2qgKlT" id="CAhoO5mUdZ" role="2OqNvi">
              <ref role="37wK5l" to="pbu6:6kR0qIbI2yi" resolve="renderReadable" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="CAhoO5mClh" role="3clF45" />
      <node concept="3Tm1VV" id="CAhoO5mCli" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="CAhoO5mCkQ" role="13h7CW">
      <node concept="3clFbS" id="CAhoO5mCkR" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="1Ho6EEsY2p2">
    <property role="3GE5qa" value="util.synch" />
    <ref role="13h7C2" to="5frd:1Ho6EEsY2ow" resolve="PythonExpression" />
    <node concept="13i0hz" id="1Ho6EEt2BAQ" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3clFbS" id="1Ho6EEt2BAT" role="3clF47">
        <node concept="3clFbF" id="1Ho6EEt2BG1" role="3cqZAp">
          <node concept="2OqwBi" id="1Ho6EEt2BQV" role="3clFbG">
            <node concept="13iPFW" id="1Ho6EEt2BG0" role="2Oq$k0" />
            <node concept="2qgKlT" id="1Ho6EEt2Cjy" role="2OqNvi">
              <ref role="37wK5l" node="1Ho6EEsWzsX" resolve="renderPythonSyntax" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="3CO1ndsX2LY" role="3clF45" />
      <node concept="3Tm1VV" id="3CO1ndsX2LZ" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="1Ho6EEsY2p3" role="13h7CW">
      <node concept="3clFbS" id="1Ho6EEsY2p4" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="3CO1ndsX53A">
    <property role="3GE5qa" value="util.dotexpression" />
    <ref role="13h7C2" to="5frd:3CO1ndsX3Lw" resolve="IRenderPythonExpression" />
    <node concept="13i0hz" id="1Ho6EEsWzsX" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="renderPythonSyntax" />
      <node concept="3Tm1VV" id="1Ho6EEsWzsY" role="1B3o_S" />
      <node concept="17QB3L" id="1Ho6EEsWzte" role="3clF45" />
      <node concept="3clFbS" id="1Ho6EEsWzt0" role="3clF47" />
    </node>
    <node concept="13i0hz" id="1Ho6EEsWzuL" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="renderDecoration" />
      <node concept="3Tm1VV" id="1Ho6EEsWzuM" role="1B3o_S" />
      <node concept="17QB3L" id="1Ho6EEsWzv6" role="3clF45" />
      <node concept="3clFbS" id="1Ho6EEsWzuO" role="3clF47">
        <node concept="3cpWs6" id="1Ho6EEsWzxE" role="3cqZAp">
          <node concept="37vLTw" id="1Ho6EEsWzy7" role="3cqZAk">
            <ref role="3cqZAo" node="1Ho6EEsWzwN" resolve="syntax" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1Ho6EEsWzwN" role="3clF46">
        <property role="TrG5h" value="syntax" />
        <node concept="17QB3L" id="1Ho6EEsWzwM" role="1tU5fm" />
      </node>
    </node>
    <node concept="13hLZK" id="3CO1ndsX53B" role="13h7CW">
      <node concept="3clFbS" id="3CO1ndsX53C" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="1o0JaC2yoHy">
    <property role="3GE5qa" value="util.synch" />
    <ref role="13h7C2" to="5frd:1o0JaC2yjRg" resolve="ICannotInferTypeChanges" />
    <node concept="13hLZK" id="1o0JaC2yoHz" role="13h7CW">
      <node concept="3clFbS" id="1o0JaC2yoH$" role="2VODD2">
        <node concept="3SKdUt" id="1o0JaC2ypyD" role="3cqZAp">
          <node concept="3SKdUq" id="1o0JaC2ypyE" role="3SKWNk">
            <property role="3SKdUp" value="TODO" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="4fA_w_sFgkJ">
    <property role="3GE5qa" value="section.ports" />
    <ref role="13h7C2" to="5frd:2$uHlqTwKhC" resolve="OutportRef" />
    <node concept="13hLZK" id="4fA_w_sFgkK" role="13h7CW">
      <node concept="3clFbS" id="4fA_w_sFgkL" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1ELd1MG6iEu" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getType" />
      <ref role="13i0hy" node="1ELd1MG1vXo" resolve="getType" />
      <node concept="3Tm1VV" id="1ELd1MG6iEv" role="1B3o_S" />
      <node concept="3clFbS" id="1ELd1MG6iEy" role="3clF47">
        <node concept="3clFbF" id="1ELd1MG6iW7" role="3cqZAp">
          <node concept="2OqwBi" id="1ELd1MG6iW9" role="3clFbG">
            <node concept="2OqwBi" id="1ELd1MG6iWa" role="2Oq$k0">
              <node concept="13iPFW" id="1ELd1MG6iWb" role="2Oq$k0" />
              <node concept="3TrEf2" id="1ELd1MG6iWc" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:432kJCyA_iQ" resolve="val" />
              </node>
            </node>
            <node concept="3TrEf2" id="1ELd1MG6iWd" role="2OqNvi">
              <ref role="3Tt5mk" to="5frd:3HjnGQtWLRv" resolve="type" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="1ELd1MG6iEz" role="3clF45">
        <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="LOMntzS56_">
    <property role="3GE5qa" value="util.synch" />
    <ref role="13h7C2" to="5frd:LOMntzS55L" resolve="IMayAlterServer" />
    <node concept="13i0hz" id="4HLGmtYMVsA" role="13h7CS">
      <property role="TrG5h" value="applyLocalChanges" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <node concept="3Tm1VV" id="4HLGmtYMVsB" role="1B3o_S" />
      <node concept="3cqZAl" id="4HLGmtYMWno" role="3clF45" />
      <node concept="3clFbS" id="4HLGmtYMVsD" role="3clF47" />
      <node concept="37vLTG" id="1XwI97AnpaA" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="1XwI97ApsOH" role="1tU5fm">
          <ref role="3uigEE" to="2ahs:4X7QcQ31ENp" resolve="IContext" />
        </node>
      </node>
      <node concept="37vLTG" id="4HLGmtYP7dM" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3Tqbb2" id="4HLGmtYP7dL" role="1tU5fm">
          <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4fxn4ASvtVf" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="applyServerResponse" />
      <node concept="37vLTG" id="4fxn4ASvtXc" role="3clF46">
        <property role="TrG5h" value="response" />
        <node concept="_YKpA" id="4fxn4ASvtXt" role="1tU5fm">
          <node concept="17QB3L" id="4fxn4ASvtXJ" role="_ZDj9" />
        </node>
      </node>
      <node concept="37vLTG" id="4fxn4ASvtWY" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3Tqbb2" id="4fxn4ASvtWZ" role="1tU5fm">
          <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4fxn4ASvtVg" role="1B3o_S" />
      <node concept="3cqZAl" id="4fxn4ASvtWb" role="3clF45" />
      <node concept="3clFbS" id="4fxn4ASvtVi" role="3clF47">
        <node concept="3cpWs6" id="4fxn4ASvtYy" role="3cqZAp" />
      </node>
    </node>
    <node concept="13i0hz" id="4HLGmtYMWnF" role="13h7CS">
      <property role="TrG5h" value="generateServerRequests" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <node concept="3Tm1VV" id="4HLGmtYMWnG" role="1B3o_S" />
      <node concept="3clFbS" id="4HLGmtYMWnI" role="3clF47" />
      <node concept="_YKpA" id="CAhoO5lccn" role="3clF45">
        <node concept="17QB3L" id="CAhoO5lcco" role="_ZDj9" />
      </node>
    </node>
    <node concept="13hLZK" id="LOMntzS56A" role="13h7CW">
      <node concept="3clFbS" id="LOMntzS56B" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="crj2MTWkK0">
    <property role="3GE5qa" value="variables" />
    <ref role="13h7C2" to="5frd:crj2MTWkJA" resolve="IContainSublevelVariableDeclarations" />
    <node concept="13i0hz" id="crj2MTWkKb" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getVariableDeclarations" />
      <node concept="3Tm1VV" id="crj2MTWkKc" role="1B3o_S" />
      <node concept="2I9FWS" id="crj2MTWkKs" role="3clF45">
        <ref role="2I9WkF" to="5frd:crj2MTMfPg" resolve="SublevelVariableDeclaration" />
      </node>
      <node concept="3clFbS" id="crj2MTWkKe" role="3clF47" />
    </node>
    <node concept="13hLZK" id="crj2MTWkK1" role="13h7CW">
      <node concept="3clFbS" id="crj2MTWkK2" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4fxn4ASr6R4">
    <property role="3GE5qa" value="util.items.item" />
    <ref role="13h7C2" to="5frd:4fxn4ASqs2m" resolve="AbstractItemGrabber" />
    <node concept="13hLZK" id="4fxn4ASr6R5" role="13h7CW">
      <node concept="3clFbS" id="4fxn4ASr6R6" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="4fxn4ASsB$V" role="13h7CS">
      <property role="TrG5h" value="getContainerConcept" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <node concept="3Tm1VV" id="4fxn4ASsB$W" role="1B3o_S" />
      <node concept="3bZ5Sz" id="4fxn4ASsBFB" role="3clF45" />
      <node concept="3clFbS" id="4fxn4ASsB$Y" role="3clF47" />
    </node>
    <node concept="13i0hz" id="4fxn4ASr6Rf" role="13h7CS">
      <property role="TrG5h" value="getRelatedNode" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="w8ws:2t3FM7fWBTc" resolve="getRelatedNode" />
      <node concept="3Tm1VV" id="4fxn4ASr6Rg" role="1B3o_S" />
      <node concept="3clFbS" id="4fxn4ASr6Rj" role="3clF47">
        <node concept="3clFbF" id="4fxn4ASr6SX" role="3cqZAp">
          <node concept="2OqwBi" id="4fxn4ASr7R$" role="3clFbG">
            <node concept="2OqwBi" id="4fxn4ASr76d" role="2Oq$k0">
              <node concept="13iPFW" id="4fxn4ASr6SW" role="2Oq$k0" />
              <node concept="3TrEf2" id="4fxn4ASr7px" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:4fxn4ASqs2n" resolve="container" />
              </node>
            </node>
            <node concept="2qgKlT" id="4fxn4ASr85e" role="2OqNvi">
              <ref role="37wK5l" node="1qp0740gyb2" resolve="getObject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="4fxn4ASr6Rk" role="3clF45">
        <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
      </node>
    </node>
    <node concept="13i0hz" id="4fxn4AStsAS" role="13h7CS">
      <property role="TrG5h" value="grabItem" />
      <node concept="3Tm1VV" id="4fxn4AStsAT" role="1B3o_S" />
      <node concept="3Tqbb2" id="4fxn4AStsIm" role="3clF45">
        <ref role="ehGHo" to="5frd:6Quy7yTNPCP" resolve="IItemType" />
      </node>
      <node concept="3clFbS" id="4fxn4AStsAV" role="3clF47">
        <node concept="3cpWs6" id="4fxn4AStsIE" role="3cqZAp">
          <node concept="2OqwBi" id="4fxn4ASttLX" role="3cqZAk">
            <node concept="2OqwBi" id="4fxn4AStsWv" role="2Oq$k0">
              <node concept="13iPFW" id="4fxn4AStsJ9" role="2Oq$k0" />
              <node concept="3TrEf2" id="4fxn4ASttfP" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:4fxn4ASqs2p" resolve="item" />
              </node>
            </node>
            <node concept="3TrEf2" id="4fxn4AStu88" role="2OqNvi">
              <ref role="3Tt5mk" to="5frd:4x_I0npP4pL" resolve="val" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4fxn4ASr6Rl" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="4fxn4ASr6Rm" role="1B3o_S" />
      <node concept="3clFbS" id="4fxn4ASr6Rp" role="3clF47">
        <node concept="3clFbF" id="4fxn4ASr6RP" role="3cqZAp">
          <node concept="Xl_RD" id="4fxn4ASr6RO" role="3clFbG">
            <property role="Xl_RC" value="rr_absItemGrabber" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="4fxn4ASr6Rq" role="3clF45" />
    </node>
  </node>
</model>

