<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fcb7d022-10fa-4a32-9681-71a022b24047(model.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="1" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="rfu" ref="r:6e9b2235-0fe7-42b9-bb5a-8f85b71f42e3(types.behavior)" />
    <import index="jqrd" ref="r:a86b5aa2-977c-4dd4-975b-865365d5871c(types.structure)" />
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" />
    <import index="2ahs" ref="r:ea6cf71d-29d2-478d-8027-a9f4a4de53c4(com.mbeddr.mpsutil.interpreter.rt)" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="pbu6" ref="r:83e946de-2a7f-4a4c-b3c9-4f671aa7f2db(org.iets3.core.expr.base.behavior)" />
    <import index="essy" ref="r:d68f6ef3-d056-4719-85f3-ab26e4e8979e(requests.classes)" />
    <import index="4kwy" ref="r:657c9fde-2f36-4e61-ae17-20f02b8630ad(org.iets3.core.base.structure)" />
    <import index="3kl9" ref="r:7ba08399-0216-467f-b3ef-c722ed983539(model.structure)" />
    <import index="917x" ref="r:83f7a824-2d8f-4211-9c8e-802488d31e7c(features.behavior)" />
    <import index="55s9" ref="r:349f01e8-2ba4-49f7-be71-679bbbf4b80d(features.structure)" />
    <import index="rf90" ref="r:78ffb9c2-583d-4056-875e-4c4f6c2b2f2f(create.behavior)" />
    <import index="cp45" ref="r:2485b9a5-23c9-4b4a-8035-41c91de74603(edit.behavior)" implicit="true" />
    <import index="bxmu" ref="r:2caa4bf2-77af-43e0-8e72-8a12a8978a06(edit.structure)" implicit="true" />
    <import index="5t6d" ref="r:74fa9f55-9024-401b-8305-653d85756786(estimator.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
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
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
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
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
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
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
    </language>
  </registry>
  <node concept="13h7C7" id="5_q2PHPuVCN">
    <ref role="13h7C2" to="3kl9:5_q2PHPuV_W" resolve="ModelType" />
    <node concept="13hLZK" id="5_q2PHPuVCO" role="13h7CW">
      <node concept="3clFbS" id="5_q2PHPuVCP" role="2VODD2">
        <node concept="3clFbF" id="1oR6hBkeYPn" role="3cqZAp">
          <node concept="37vLTI" id="1oR6hBkf0dN" role="3clFbG">
            <node concept="3clFbT" id="1oR6hBkf0el" role="37vLTx">
              <property role="3clFbU" value="false" />
            </node>
            <node concept="2OqwBi" id="1oR6hBkeZ2g" role="37vLTJ">
              <node concept="13iPFW" id="1oR6hBkeYPm" role="2Oq$k0" />
              <node concept="3TrcHB" id="1oR6hBkeZxK" role="2OqNvi">
                <ref role="3TsBF5" to="3kl9:1oR6hBkeYPk" resolve="isTrained" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5_q2PHPuVCY" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getEditingExpression" />
      <ref role="13i0hy" to="cp45:XZLIaPLIBG" resolve="getEditingExpression" />
      <node concept="3Tm1VV" id="5_q2PHPuVCZ" role="1B3o_S" />
      <node concept="3clFbS" id="5_q2PHPuVD2" role="3clF47">
        <node concept="3cpWs6" id="5_q2PHPuVDg" role="3cqZAp">
          <node concept="2ShNRf" id="5_q2PHPuVDJ" role="3cqZAk">
            <node concept="3zrR0B" id="5_q2PHPuZ9R" role="2ShVmc">
              <node concept="3Tqbb2" id="5_q2PHPuZ9T" role="3zrR0E">
                <ref role="ehGHo" to="3kl9:5_q2PHPuZcP" resolve="ModelEditing" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="5_q2PHPuVD3" role="3clF45">
        <ref role="ehGHo" to="bxmu:XZLIaPLIAd" resolve="AbstractTypeEditing" />
      </node>
    </node>
    <node concept="13i0hz" id="5_q2PHPvbQp" role="13h7CS">
      <property role="TrG5h" value="acceptsData" />
      <node concept="3Tm1VV" id="5_q2PHPvbQq" role="1B3o_S" />
      <node concept="10P_77" id="5_q2PHPvbTI" role="3clF45" />
      <node concept="3clFbS" id="5_q2PHPvbQs" role="3clF47">
        <node concept="3clFbJ" id="699fBOovsR4" role="3cqZAp">
          <node concept="3clFbS" id="699fBOovsR6" role="3clFbx">
            <node concept="3cpWs6" id="699fBOowmHK" role="3cqZAp">
              <node concept="2OqwBi" id="699fBOown6z" role="3cqZAk">
                <node concept="37vLTw" id="699fBOowmOj" role="2Oq$k0">
                  <ref role="3cqZAo" node="5_q2PHPvbTU" resolve="data" />
                </node>
                <node concept="2qgKlT" id="699fBOowo5U" role="2OqNvi">
                  <ref role="37wK5l" to="917x:699fBOov_hu" resolve="matchesHead" />
                  <node concept="2OqwBi" id="699fBOowoAk" role="37wK5m">
                    <node concept="13iPFW" id="699fBOowofw" role="2Oq$k0" />
                    <node concept="3TrEf2" id="699fBOowp31" role="2OqNvi">
                      <ref role="3Tt5mk" to="3kl9:5_q2PHPvbSn" resolve="fittedOn" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="699fBOovuiX" role="3clFbw">
            <node concept="2OqwBi" id="699fBOovt56" role="2Oq$k0">
              <node concept="13iPFW" id="699fBOovsRO" role="2Oq$k0" />
              <node concept="3TrEf2" id="699fBOovtFt" role="2OqNvi">
                <ref role="3Tt5mk" to="3kl9:5_q2PHPvbSn" resolve="fittedOn" />
              </node>
            </node>
            <node concept="3x8VRR" id="699fBOovviZ" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="699fBOowqZ1" role="3cqZAp" />
        <node concept="3SKdUt" id="5_q2PHPvd7y" role="3cqZAp">
          <node concept="3SKdUq" id="5_q2PHPvd7z" role="3SKWNk">
            <property role="3SKdUp" value="TODO: maybe better on featureset itself" />
          </node>
        </node>
        <node concept="3SKdUt" id="5_q2PHPvd7U" role="3cqZAp">
          <node concept="3SKdUq" id="5_q2PHPvd7W" role="3SKWNk">
            <property role="3SKdUp" value="truth set" />
          </node>
        </node>
        <node concept="3SKdUt" id="5_q2PHPvd8n" role="3cqZAp">
          <node concept="3SKdUq" id="5_q2PHPvd8p" role="3SKWNk">
            <property role="3SKdUp" value="all items of any numbers type" />
          </node>
        </node>
        <node concept="3clFbH" id="5_q2PHPvd9b" role="3cqZAp" />
        <node concept="3clFbH" id="699fBOovsPY" role="3cqZAp" />
        <node concept="3SKdUt" id="5_q2PHPvdar" role="3cqZAp">
          <node concept="3SKdUq" id="5_q2PHPvdat" role="3SKWNk">
            <property role="3SKdUp" value="TODO: to be checked here" />
          </node>
        </node>
        <node concept="3SKdUt" id="5_q2PHPvd8S" role="3cqZAp">
          <node concept="3SKdUq" id="5_q2PHPvd8U" role="3SKWNk">
            <property role="3SKdUp" value="matches features with featureset trained on" />
          </node>
        </node>
        <node concept="3SKdUt" id="5_q2PHPvd9K" role="3cqZAp">
          <node concept="3SKdUq" id="5_q2PHPvd9M" role="3SKWNk">
            <property role="3SKdUp" value="if validate: not same data as train/cross-validate" />
          </node>
        </node>
        <node concept="3cpWs6" id="5_q2PHPvdba" role="3cqZAp">
          <node concept="3clFbT" id="5_q2PHPvdbB" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5_q2PHPvbTU" role="3clF46">
        <property role="TrG5h" value="data" />
        <node concept="3Tqbb2" id="5_q2PHPvbTT" role="1tU5fm">
          <ref role="ehGHo" to="55s9:7OzZ9xI8jbt" resolve="FeaturesetType" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5_q2PHPvbRV" role="13h7CS">
      <property role="TrG5h" value="getDataErrors" />
      <node concept="3Tm1VV" id="5_q2PHPvbRW" role="1B3o_S" />
      <node concept="17QB3L" id="5_q2PHPvbTz" role="3clF45" />
      <node concept="3clFbS" id="5_q2PHPvbRY" role="3clF47">
        <node concept="3SKdUt" id="5_q2PHPvdd1" role="3cqZAp">
          <node concept="3SKdUq" id="5_q2PHPvdd3" role="3SKWNk">
            <property role="3SKdUp" value="TODO" />
          </node>
        </node>
        <node concept="3clFbF" id="5_q2PHPvdbV" role="3cqZAp">
          <node concept="Xl_RD" id="5_q2PHPvdbU" role="3clFbG">
            <property role="Xl_RC" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="UOeJaKFlEZ" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="loadFromServer" />
      <ref role="13i0hy" to="64zb:XZLIaPm3N0" resolve="loadFromServer" />
      <node concept="3Tm1VV" id="UOeJaKFlF0" role="1B3o_S" />
      <node concept="3clFbS" id="UOeJaKFlF3" role="3clF47">
        <node concept="3SKdUt" id="UOeJaKFlSm" role="3cqZAp">
          <node concept="3SKdUq" id="UOeJaKFlSn" role="3SKWNk">
            <property role="3SKdUp" value="TODO" />
          </node>
        </node>
        <node concept="3clFbF" id="UOeJaKFlSK" role="3cqZAp">
          <node concept="10Nm6u" id="UOeJaKFlSI" role="3clFbG" />
        </node>
      </node>
      <node concept="3Tqbb2" id="UOeJaKFlF4" role="3clF45">
        <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
      </node>
    </node>
    <node concept="13i0hz" id="UOeJaKFlF5" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="createServersideCopy" />
      <ref role="13i0hy" to="64zb:11KrhWhKNEB" resolve="createServersideCopy" />
      <node concept="3Tm1VV" id="UOeJaKFlF8" role="1B3o_S" />
      <node concept="3clFbS" id="UOeJaKFlFb" role="3clF47">
        <node concept="3SKdUt" id="UOeJaKFlT3" role="3cqZAp">
          <node concept="3SKdUq" id="UOeJaKFlT4" role="3SKWNk">
            <property role="3SKdUp" value="TODO" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="UOeJaKFlFc" role="3clF46">
        <property role="TrG5h" value="objCopy" />
        <node concept="3Tqbb2" id="UOeJaKFlFd" role="1tU5fm">
          <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
        </node>
      </node>
      <node concept="3cqZAl" id="UOeJaKFlFe" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="5_q2PHPuZdf">
    <ref role="13h7C2" to="3kl9:5_q2PHPuZcP" resolve="ModelEditing" />
    <node concept="13hLZK" id="5_q2PHPuZdg" role="13h7CW">
      <node concept="3clFbS" id="5_q2PHPuZdh" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5_q2PHPuZfI" role="13h7CS">
      <property role="TrG5h" value="getConcreteEditingStatementConcept" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="cp45:1wn8NGzhv9U" resolve="getConcreteEditingStatementConcept" />
      <node concept="3clFbS" id="5_q2PHPuZfM" role="3clF47">
        <node concept="3cpWs6" id="5_q2PHPuZgi" role="3cqZAp">
          <node concept="35c_gC" id="5_q2PHPuZgK" role="3cqZAk">
            <ref role="35c_gD" to="3kl9:5_q2PHPuVBP" resolve="AbstractModelEditingStatement" />
          </node>
        </node>
      </node>
      <node concept="3bZ5Sz" id="699fBOoxG8U" role="3clF45" />
      <node concept="3Tm1VV" id="699fBOoxG8V" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="5_q2PHPuZfO" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="5_q2PHPuZfP" role="1B3o_S" />
      <node concept="3clFbS" id="5_q2PHPuZfS" role="3clF47">
        <node concept="3clFbF" id="5_q2PHPuZjq" role="3cqZAp">
          <node concept="Xl_RD" id="5_q2PHPuZjp" role="3clFbG">
            <property role="Xl_RC" value="rr_modelEditing" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="5_q2PHPuZfT" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="5_q2PHPuZmy">
    <property role="3GE5qa" value="editing.estimator" />
    <ref role="13h7C2" to="3kl9:5_q2PHPuZm8" resolve="DetectEstimator" />
    <node concept="13hLZK" id="5_q2PHPuZmz" role="13h7CW">
      <node concept="3clFbS" id="5_q2PHPuZm$" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5_q2PHPuZmH" role="13h7CS">
      <property role="TrG5h" value="applyLocalChanges" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="64zb:4HLGmtYMVsA" resolve="applyLocalChanges" />
      <node concept="3Tm1VV" id="5_q2PHPuZmI" role="1B3o_S" />
      <node concept="3clFbS" id="5_q2PHPuZmP" role="3clF47">
        <node concept="3clFbH" id="UOeJaKFa$R" role="3cqZAp" />
        <node concept="3SKdUt" id="UOeJaKFbdy" role="3cqZAp">
          <node concept="3SKdUq" id="UOeJaKFbd$" role="3SKWNk">
            <property role="3SKdUp" value="create estimator" />
          </node>
        </node>
        <node concept="3cpWs8" id="UOeJaKF7D5" role="3cqZAp">
          <node concept="3cpWsn" id="UOeJaKF7D6" role="3cpWs9">
            <property role="TrG5h" value="newEstimator" />
            <node concept="3Tqbb2" id="UOeJaKF7D7" role="1tU5fm">
              <ref role="ehGHo" to="5t6d:6azzq4WW_L7" resolve="EstimatorType" />
            </node>
            <node concept="2ShNRf" id="UOeJaKF7D8" role="33vP2m">
              <node concept="3zrR0B" id="UOeJaKF7D9" role="2ShVmc">
                <node concept="3Tqbb2" id="UOeJaKF7Da" role="3zrR0E">
                  <ref role="ehGHo" to="5t6d:6azzq4WW_L7" resolve="EstimatorType" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="UOeJaKF7Db" role="3cqZAp">
          <node concept="37vLTI" id="UOeJaKF7Dc" role="3clFbG">
            <node concept="3cpWs3" id="UOeJaKF7Dd" role="37vLTx">
              <node concept="Xl_RD" id="UOeJaKF7De" role="3uHU7w">
                <property role="Xl_RC" value="_detectedEstimator" />
              </node>
              <node concept="2OqwBi" id="UOeJaKF7Df" role="3uHU7B">
                <node concept="2qgKlT" id="UOeJaKF7Dg" role="2OqNvi">
                  <ref role="37wK5l" to="64zb:1qp0740gxlZ" resolve="getObjectName" />
                </node>
                <node concept="2OqwBi" id="UOeJaKF94d" role="2Oq$k0">
                  <node concept="2OqwBi" id="UOeJaKF94e" role="2Oq$k0">
                    <node concept="2Xjw5R" id="UOeJaKF94f" role="2OqNvi">
                      <node concept="1xMEDy" id="UOeJaKF94g" role="1xVPHs">
                        <node concept="chp4Y" id="4IazLL4mZTk" role="ri$Ld">
                          <ref role="cht4Q" to="bxmu:XZLIaPLIoZ" resolve="EditStatement" />
                        </node>
                      </node>
                    </node>
                    <node concept="13iPFW" id="UOeJaKF94i" role="2Oq$k0" />
                  </node>
                  <node concept="3TrEf2" id="UOeJaKF94j" role="2OqNvi">
                    <ref role="3Tt5mk" to="bxmu:XZLIaPLIpf" resolve="object" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="UOeJaKF7Di" role="37vLTJ">
              <node concept="37vLTw" id="UOeJaKF7Dj" role="2Oq$k0">
                <ref role="3cqZAo" node="UOeJaKF7D6" resolve="newEstimator" />
              </node>
              <node concept="3TrcHB" id="UOeJaKF7Dk" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="UOeJaKF7uE" role="3cqZAp" />
        <node concept="3cpWs8" id="1oR6hBkhPZB" role="3cqZAp">
          <node concept="3cpWsn" id="1oR6hBkhPZC" role="3cpWs9">
            <property role="TrG5h" value="data" />
            <node concept="3Tqbb2" id="1oR6hBkhPZD" role="1tU5fm">
              <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
            </node>
            <node concept="2OqwBi" id="1oR6hBkhPZE" role="33vP2m">
              <node concept="2OqwBi" id="1oR6hBkhPZF" role="2Oq$k0">
                <node concept="13iPFW" id="1oR6hBkhPZG" role="2Oq$k0" />
                <node concept="2Xjw5R" id="1oR6hBkhPZH" role="2OqNvi">
                  <node concept="1xMEDy" id="1oR6hBkhPZI" role="1xVPHs">
                    <node concept="chp4Y" id="1oR6hBkhPZJ" role="ri$Ld">
                      <ref role="cht4Q" to="5frd:2$uHlqSzbou" resolve="Section" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2qgKlT" id="1oR6hBkhPZK" role="2OqNvi">
                <ref role="37wK5l" to="64zb:10zQN__30Uz" resolve="getObjectAtPosition" />
                <node concept="2OqwBi" id="1oR6hBkhPZL" role="37wK5m">
                  <node concept="2OqwBi" id="1oR6hBkhPZM" role="2Oq$k0">
                    <node concept="13iPFW" id="1oR6hBkhPZN" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1oR6hBkhPZO" role="2OqNvi">
                      <ref role="3Tt5mk" to="3kl9:5UZ5Kaxb6iW" resolve="data" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="1oR6hBkhPZP" role="2OqNvi">
                    <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                  </node>
                </node>
                <node concept="13iPFW" id="1oR6hBkhPZQ" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1oR6hBkhPHd" role="3cqZAp" />
        <node concept="3SKdUt" id="UOeJaKFbQj" role="3cqZAp">
          <node concept="3SKdUq" id="UOeJaKFbQl" role="3SKWNk">
            <property role="3SKdUp" value="set estomator and data" />
          </node>
        </node>
        <node concept="3clFbF" id="699fBOoxYY_" role="3cqZAp">
          <node concept="37vLTI" id="699fBOoy1JF" role="3clFbG">
            <node concept="2OqwBi" id="699fBOoxZG2" role="37vLTJ">
              <node concept="1PxgMI" id="699fBOoxZtW" role="2Oq$k0">
                <node concept="chp4Y" id="699fBOoxZuF" role="3oSUPX">
                  <ref role="cht4Q" to="3kl9:5_q2PHPuV_W" resolve="ModelType" />
                </node>
                <node concept="37vLTw" id="699fBOoxYYy" role="1m5AlR">
                  <ref role="3cqZAo" node="5_q2PHPuZmS" resolve="object" />
                </node>
              </node>
              <node concept="3TrEf2" id="699fBOoy1c0" role="2OqNvi">
                <ref role="3Tt5mk" to="3kl9:699fBOoy0w2" resolve="estimator" />
              </node>
            </node>
            <node concept="37vLTw" id="UOeJaKF8Q7" role="37vLTx">
              <ref role="3cqZAo" node="UOeJaKF7D6" resolve="newEstimator" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="699fBOoy1UO" role="3cqZAp">
          <node concept="37vLTI" id="699fBOoy4sD" role="3clFbG">
            <node concept="1PxgMI" id="699fBOoy6KL" role="37vLTx">
              <node concept="chp4Y" id="699fBOoy6U$" role="3oSUPX">
                <ref role="cht4Q" to="55s9:7OzZ9xI8jbt" resolve="FeaturesetType" />
              </node>
              <node concept="37vLTw" id="1oR6hBkhQVk" role="1m5AlR">
                <ref role="3cqZAo" node="1oR6hBkhPZC" resolve="data" />
              </node>
            </node>
            <node concept="2OqwBi" id="699fBOoy2ib" role="37vLTJ">
              <node concept="1PxgMI" id="699fBOoy245" role="2Oq$k0">
                <node concept="chp4Y" id="699fBOoy24O" role="3oSUPX">
                  <ref role="cht4Q" to="3kl9:5_q2PHPuV_W" resolve="ModelType" />
                </node>
                <node concept="37vLTw" id="699fBOoy1UM" role="1m5AlR">
                  <ref role="3cqZAo" node="5_q2PHPuZmS" resolve="object" />
                </node>
              </node>
              <node concept="3TrEf2" id="699fBOoy2WI" role="2OqNvi">
                <ref role="3Tt5mk" to="3kl9:5_q2PHPvbSn" resolve="fittedOn" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5_q2PHPuZmQ" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="5_q2PHPuZmR" role="1tU5fm">
          <ref role="3uigEE" to="2ahs:4X7QcQ31ENp" resolve="IContext" />
        </node>
      </node>
      <node concept="37vLTG" id="5_q2PHPuZmS" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3Tqbb2" id="5_q2PHPuZmT" role="1tU5fm">
          <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
        </node>
      </node>
      <node concept="3cqZAl" id="5_q2PHPuZmU" role="3clF45" />
    </node>
    <node concept="13i0hz" id="5_q2PHPuZmV" role="13h7CS">
      <property role="TrG5h" value="generateServerRequests" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="64zb:4HLGmtYMWnF" resolve="generateServerRequests" />
      <node concept="3clFbS" id="5_q2PHPuZn0" role="3clF47">
        <node concept="3cpWs8" id="UOeJaKF6k3" role="3cqZAp">
          <node concept="3cpWsn" id="UOeJaKF6k6" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <node concept="3Tqbb2" id="UOeJaKF6k1" role="1tU5fm">
              <ref role="ehGHo" to="3kl9:5_q2PHPuV_W" resolve="ModelType" />
            </node>
            <node concept="1PxgMI" id="UOeJaKFgIM" role="33vP2m">
              <node concept="chp4Y" id="UOeJaKFgRX" role="3oSUPX">
                <ref role="cht4Q" to="3kl9:5_q2PHPuV_W" resolve="ModelType" />
              </node>
              <node concept="2OqwBi" id="UOeJaKFfTZ" role="1m5AlR">
                <node concept="2OqwBi" id="UOeJaKEW4q" role="2Oq$k0">
                  <node concept="2OqwBi" id="57k_vxmYsC0" role="2Oq$k0">
                    <node concept="2Xjw5R" id="UOeJaKEVsJ" role="2OqNvi">
                      <node concept="1xMEDy" id="UOeJaKEVsL" role="1xVPHs">
                        <node concept="chp4Y" id="4IazLL4n4dX" role="ri$Ld">
                          <ref role="cht4Q" to="bxmu:XZLIaPLIoZ" resolve="EditStatement" />
                        </node>
                      </node>
                    </node>
                    <node concept="13iPFW" id="UOeJaKEUvF" role="2Oq$k0" />
                  </node>
                  <node concept="3TrEf2" id="UOeJaKEWzQ" role="2OqNvi">
                    <ref role="3Tt5mk" to="bxmu:XZLIaPLIpf" resolve="object" />
                  </node>
                </node>
                <node concept="2qgKlT" id="UOeJaKFgjG" role="2OqNvi">
                  <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="UOeJaKFdx9" role="3cqZAp" />
        <node concept="3cpWs8" id="7derDQs$$$K" role="3cqZAp">
          <node concept="3cpWsn" id="7derDQs$$$L" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="7derDQs$$$M" role="1tU5fm">
              <node concept="17QB3L" id="7derDQs$$$N" role="_ZDj9" />
            </node>
            <node concept="2ShNRf" id="UOeJaKFubw" role="33vP2m">
              <node concept="Tc6Ow" id="UOeJaKFubs" role="2ShVmc">
                <node concept="17QB3L" id="UOeJaKFubt" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="UOeJaKFyJ5" role="3cqZAp">
          <node concept="2OqwBi" id="UOeJaKFzIt" role="3clFbG">
            <node concept="37vLTw" id="UOeJaKFyJ3" role="2Oq$k0">
              <ref role="3cqZAo" node="7derDQs$$$L" resolve="result" />
            </node>
            <node concept="TSZUe" id="UOeJaKF$Qq" role="2OqNvi">
              <node concept="2OqwBi" id="UOeJaKF_eA" role="25WWJ7">
                <node concept="2YIFZM" id="UOeJaKF_42" role="2Oq$k0">
                  <ref role="37wK5l" to="essy:UOeJaKFqSH" resolve="model" />
                  <ref role="1Pybhc" to="essy:11P1wiiUL77" resolve="PyCommands" />
                </node>
                <node concept="liA8E" id="UOeJaKF_sX" role="2OqNvi">
                  <ref role="37wK5l" to="essy:UOeJaKFwza" resolve="setTrainData" />
                  <node concept="2OqwBi" id="31Bd4sdDzk2" role="37wK5m">
                    <node concept="37vLTw" id="UOeJaKFl6u" role="2Oq$k0">
                      <ref role="3cqZAo" node="UOeJaKF6k6" resolve="model" />
                    </node>
                    <node concept="3TrcHB" id="31Bd4sdDzGk" role="2OqNvi">
                      <ref role="3TsBF5" to="5frd:1UULepO1tEg" resolve="id" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="31Bd4sdDFIw" role="37wK5m">
                    <node concept="1PxgMI" id="31Bd4sdDFb0" role="2Oq$k0">
                      <node concept="chp4Y" id="31Bd4sdDFp_" role="3oSUPX">
                        <ref role="cht4Q" to="5frd:1UULepO1t7_" resolve="ISynchWithServer" />
                      </node>
                      <node concept="2OqwBi" id="31Bd4sdDCWF" role="1m5AlR">
                        <node concept="2OqwBi" id="31Bd4sdDA0n" role="2Oq$k0">
                          <node concept="3TrEf2" id="UOeJaKF5wC" role="2OqNvi">
                            <ref role="3Tt5mk" to="3kl9:5UZ5Kaxb6iW" resolve="data" />
                          </node>
                          <node concept="13iPFW" id="UOeJaKF510" role="2Oq$k0" />
                        </node>
                        <node concept="2qgKlT" id="31Bd4sdDDwx" role="2OqNvi">
                          <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                        </node>
                      </node>
                    </node>
                    <node concept="3TrcHB" id="31Bd4sdDGaB" role="2OqNvi">
                      <ref role="3TsBF5" to="5frd:1UULepO1tEg" resolve="id" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7kQo$yiGesz" role="3cqZAp">
          <node concept="3SKdUq" id="7kQo$yiGes_" role="3SKWNk">
            <property role="3SKdUp" value="TODO: make drop and plot accessable in DSL" />
          </node>
        </node>
        <node concept="3clFbF" id="UOeJaKFBit" role="3cqZAp">
          <node concept="2OqwBi" id="UOeJaKFCap" role="3clFbG">
            <node concept="37vLTw" id="UOeJaKFBir" role="2Oq$k0">
              <ref role="3cqZAo" node="7derDQs$$$L" resolve="result" />
            </node>
            <node concept="TSZUe" id="UOeJaKFDYd" role="2OqNvi">
              <node concept="2OqwBi" id="UOeJaKFEmq" role="25WWJ7">
                <node concept="2YIFZM" id="UOeJaKFEbQ" role="2Oq$k0">
                  <ref role="37wK5l" to="essy:UOeJaKFqSH" resolve="model" />
                  <ref role="1Pybhc" to="essy:11P1wiiUL77" resolve="PyCommands" />
                </node>
                <node concept="liA8E" id="UOeJaKFG__" role="2OqNvi">
                  <ref role="37wK5l" to="essy:UOeJaKFECY" resolve="findEstimator" />
                  <node concept="2OqwBi" id="UOeJaKFGS4" role="37wK5m">
                    <node concept="37vLTw" id="UOeJaKFGBU" role="2Oq$k0">
                      <ref role="3cqZAo" node="UOeJaKF6k6" resolve="model" />
                    </node>
                    <node concept="3TrcHB" id="UOeJaKFHh1" role="2OqNvi">
                      <ref role="3TsBF5" to="5frd:1UULepO1tEg" resolve="id" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="UOeJaKFHHJ" role="37wK5m">
                    <node concept="13iPFW" id="UOeJaKFHtu" role="2Oq$k0" />
                    <node concept="3TrcHB" id="UOeJaKFIdj" role="2OqNvi">
                      <ref role="3TsBF5" to="3kl9:5_q2PHPuZy2" resolve="task" />
                    </node>
                  </node>
                  <node concept="2$xPTn" id="7kQo$yiGdRt" role="37wK5m">
                    <property role="2$xPTl" value="1.0f" />
                  </node>
                  <node concept="Xl_RD" id="7kQo$yiGdtJ" role="37wK5m">
                    <property role="Xl_RC" value="roc" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="UOeJaKETDz" role="3cqZAp" />
        <node concept="3cpWs6" id="7XUYvxQ035I" role="3cqZAp">
          <node concept="37vLTw" id="UOeJaKFKub" role="3cqZAk">
            <ref role="3cqZAo" node="7derDQs$$$L" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="UOeJaKFiIH" role="3clF45">
        <node concept="17QB3L" id="UOeJaKFiII" role="_ZDj9" />
      </node>
      <node concept="3Tm1VV" id="UOeJaKFiIJ" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="5_q2PHPuZn3" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="5_q2PHPuZn4" role="1B3o_S" />
      <node concept="3clFbS" id="5_q2PHPuZn7" role="3clF47">
        <node concept="3SKdUt" id="5_q2PHPuZnS" role="3cqZAp">
          <node concept="3SKdUq" id="5_q2PHPuZnT" role="3SKWNk">
            <property role="3SKdUp" value="TODO" />
          </node>
        </node>
        <node concept="3clFbF" id="5_q2PHPuZoh" role="3cqZAp">
          <node concept="Xl_RD" id="5_q2PHPuZog" role="3clFbG">
            <property role="Xl_RC" value="rr_detectEstimator" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="5_q2PHPuZn8" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="5_q2PHPuZsn">
    <property role="3GE5qa" value="editing.estimator" />
    <ref role="13h7C2" to="3kl9:5_q2PHPuZrX" resolve="SetEstimator" />
    <node concept="13hLZK" id="5_q2PHPuZso" role="13h7CW">
      <node concept="3clFbS" id="5_q2PHPuZsp" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5_q2PHPuZsy" role="13h7CS">
      <property role="TrG5h" value="applyLocalChanges" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="64zb:4HLGmtYMVsA" resolve="applyLocalChanges" />
      <node concept="3Tm1VV" id="5_q2PHPuZsz" role="1B3o_S" />
      <node concept="3clFbS" id="5_q2PHPuZsE" role="3clF47">
        <node concept="3cpWs8" id="1oR6hBkgyE$" role="3cqZAp">
          <node concept="3cpWsn" id="1oR6hBkgyE_" role="3cpWs9">
            <property role="TrG5h" value="data" />
            <node concept="3Tqbb2" id="1oR6hBkgyEA" role="1tU5fm">
              <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
            </node>
            <node concept="2OqwBi" id="1oR6hBkgyED" role="33vP2m">
              <node concept="2OqwBi" id="1oR6hBkgyEE" role="2Oq$k0">
                <node concept="13iPFW" id="1oR6hBkhnw$" role="2Oq$k0" />
                <node concept="2Xjw5R" id="1oR6hBkgyEG" role="2OqNvi">
                  <node concept="1xMEDy" id="1oR6hBkgyEH" role="1xVPHs">
                    <node concept="chp4Y" id="1oR6hBkgyEI" role="ri$Ld">
                      <ref role="cht4Q" to="5frd:2$uHlqSzbou" resolve="Section" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2qgKlT" id="1oR6hBkgyEJ" role="2OqNvi">
                <ref role="37wK5l" to="64zb:10zQN__30Uz" resolve="getObjectAtPosition" />
                <node concept="2OqwBi" id="1oR6hBkg_U5" role="37wK5m">
                  <node concept="2OqwBi" id="1oR6hBkg_U6" role="2Oq$k0">
                    <node concept="13iPFW" id="1oR6hBkhnJ5" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1oR6hBkg_U8" role="2OqNvi">
                      <ref role="3Tt5mk" to="3kl9:5UZ5Kaxb6iW" resolve="data" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="1oR6hBkg_U9" role="2OqNvi">
                    <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                  </node>
                </node>
                <node concept="13iPFW" id="1oR6hBkhoIf" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1oR6hBkhyFe" role="3cqZAp" />
        <node concept="3clFbF" id="UOeJaKEyFn" role="3cqZAp">
          <node concept="37vLTI" id="UOeJaKEyFo" role="3clFbG">
            <node concept="1PxgMI" id="UOeJaKEyFp" role="37vLTx">
              <node concept="chp4Y" id="UOeJaKEyFq" role="3oSUPX">
                <ref role="cht4Q" to="55s9:7OzZ9xI8jbt" resolve="FeaturesetType" />
              </node>
              <node concept="37vLTw" id="1oR6hBkhtKk" role="1m5AlR">
                <ref role="3cqZAo" node="1oR6hBkgyE_" resolve="data" />
              </node>
            </node>
            <node concept="2OqwBi" id="UOeJaKEyFw" role="37vLTJ">
              <node concept="1PxgMI" id="UOeJaKEyFx" role="2Oq$k0">
                <node concept="chp4Y" id="UOeJaKEyFy" role="3oSUPX">
                  <ref role="cht4Q" to="3kl9:5_q2PHPuV_W" resolve="ModelType" />
                </node>
                <node concept="37vLTw" id="UOeJaKEyFz" role="1m5AlR">
                  <ref role="3cqZAo" node="5_q2PHPuZsH" resolve="object" />
                </node>
              </node>
              <node concept="3TrEf2" id="UOeJaKEyF$" role="2OqNvi">
                <ref role="3Tt5mk" to="3kl9:5_q2PHPvbSn" resolve="fittedOn" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1oR6hBkhVZr" role="3cqZAp" />
        <node concept="3SKdUt" id="5_q2PHPuZtH" role="3cqZAp">
          <node concept="3SKdUq" id="5_q2PHPuZtI" role="3SKWNk">
            <property role="3SKdUp" value="TODO: get also estimator at position?" />
          </node>
        </node>
        <node concept="3clFbF" id="UOeJaKEyFd" role="3cqZAp">
          <node concept="37vLTI" id="UOeJaKEyFe" role="3clFbG">
            <node concept="2OqwBi" id="UOeJaKEyFi" role="37vLTJ">
              <node concept="1PxgMI" id="UOeJaKEyFj" role="2Oq$k0">
                <node concept="chp4Y" id="UOeJaKEyFk" role="3oSUPX">
                  <ref role="cht4Q" to="3kl9:5_q2PHPuV_W" resolve="ModelType" />
                </node>
                <node concept="37vLTw" id="UOeJaKEyFl" role="1m5AlR">
                  <ref role="3cqZAo" node="5_q2PHPuZsH" resolve="object" />
                </node>
              </node>
              <node concept="3TrEf2" id="UOeJaKEyFm" role="2OqNvi">
                <ref role="3Tt5mk" to="3kl9:699fBOoy0w2" resolve="estimator" />
              </node>
            </node>
            <node concept="10QFUN" id="UOeJaKEIYx" role="37vLTx">
              <node concept="2OqwBi" id="UOeJaKEIb9" role="10QFUP">
                <node concept="13iPFW" id="UOeJaKEHT$" role="2Oq$k0" />
                <node concept="3TrEf2" id="UOeJaKEIAA" role="2OqNvi">
                  <ref role="3Tt5mk" to="3kl9:5_q2PHPv4vT" resolve="estimator" />
                </node>
              </node>
              <node concept="3Tqbb2" id="UOeJaKEIYy" role="10QFUM">
                <ref role="ehGHo" to="5t6d:6azzq4WW_L7" resolve="EstimatorType" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5_q2PHPuZsF" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="5_q2PHPuZsG" role="1tU5fm">
          <ref role="3uigEE" to="2ahs:4X7QcQ31ENp" resolve="IContext" />
        </node>
      </node>
      <node concept="37vLTG" id="5_q2PHPuZsH" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3Tqbb2" id="5_q2PHPuZsI" role="1tU5fm">
          <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
        </node>
      </node>
      <node concept="3cqZAl" id="5_q2PHPuZsJ" role="3clF45" />
    </node>
    <node concept="13i0hz" id="5_q2PHPuZsK" role="13h7CS">
      <property role="TrG5h" value="generateServerRequests" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="64zb:4HLGmtYMWnF" resolve="generateServerRequests" />
      <node concept="3Tm1VV" id="5_q2PHPuZsL" role="1B3o_S" />
      <node concept="3clFbS" id="5_q2PHPuZsP" role="3clF47">
        <node concept="3SKdUt" id="5_q2PHPuZtT" role="3cqZAp">
          <node concept="3SKdUq" id="5_q2PHPuZtU" role="3SKWNk">
            <property role="3SKdUp" value="TODO" />
          </node>
        </node>
        <node concept="3cpWs6" id="7XUYvxQ04iT" role="3cqZAp">
          <node concept="2ShNRf" id="7XUYvxQ04j$" role="3cqZAk">
            <node concept="Tc6Ow" id="7XUYvxQ04jw" role="2ShVmc">
              <node concept="17QB3L" id="7XUYvxQ04jx" role="HW$YZ" />
            </node>
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="5_q2PHPuZsQ" role="3clF45">
        <node concept="17QB3L" id="5_q2PHPuZsR" role="_ZDj9" />
      </node>
    </node>
    <node concept="13i0hz" id="5_q2PHPuZsS" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="5_q2PHPuZsT" role="1B3o_S" />
      <node concept="3clFbS" id="5_q2PHPuZsW" role="3clF47">
        <node concept="3SKdUt" id="5_q2PHPuZxo" role="3cqZAp">
          <node concept="3SKdUq" id="5_q2PHPuZxq" role="3SKWNk">
            <property role="3SKdUp" value="TODO" />
          </node>
        </node>
        <node concept="3clFbF" id="5_q2PHPuZvh" role="3cqZAp">
          <node concept="Xl_RD" id="5_q2PHPuZvg" role="3clFbG">
            <property role="Xl_RC" value="rr_setEstimator" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="5_q2PHPuZsX" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="5_q2PHPv4L0">
    <property role="3GE5qa" value="editing.execution" />
    <ref role="13h7C2" to="3kl9:5_q2PHPv4KA" resolve="TrainOnData" />
    <node concept="13hLZK" id="5_q2PHPv4L1" role="13h7CW">
      <node concept="3clFbS" id="5_q2PHPv4L2" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5_q2PHPv4Lb" role="13h7CS">
      <property role="TrG5h" value="applyLocalChanges" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="64zb:4HLGmtYMVsA" resolve="applyLocalChanges" />
      <node concept="3Tm1VV" id="5_q2PHPv4Lc" role="1B3o_S" />
      <node concept="3clFbS" id="5_q2PHPv4Lj" role="3clF47">
        <node concept="3SKdUt" id="5_q2PHPv4Mm" role="3cqZAp">
          <node concept="3SKdUq" id="5_q2PHPv4Mn" role="3SKWNk">
            <property role="3SKdUp" value="TODO: is that all?" />
          </node>
        </node>
        <node concept="3clFbF" id="1oR6hBkfcU_" role="3cqZAp">
          <node concept="37vLTI" id="1oR6hBkffd0" role="3clFbG">
            <node concept="3clFbT" id="1oR6hBkfflL" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="2OqwBi" id="1oR6hBkfdMP" role="37vLTJ">
              <node concept="1PxgMI" id="1oR6hBkfd$_" role="2Oq$k0">
                <node concept="chp4Y" id="1oR6hBkfd_k" role="3oSUPX">
                  <ref role="cht4Q" to="3kl9:5_q2PHPuV_W" resolve="ModelType" />
                </node>
                <node concept="37vLTw" id="1oR6hBkfcUz" role="1m5AlR">
                  <ref role="3cqZAo" node="5_q2PHPv4Lm" resolve="object" />
                </node>
              </node>
              <node concept="3TrcHB" id="1oR6hBkfew4" role="2OqNvi">
                <ref role="3TsBF5" to="3kl9:1oR6hBkeYPk" resolve="isTrained" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5_q2PHPv4Lk" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="5_q2PHPv4Ll" role="1tU5fm">
          <ref role="3uigEE" to="2ahs:4X7QcQ31ENp" resolve="IContext" />
        </node>
      </node>
      <node concept="37vLTG" id="5_q2PHPv4Lm" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3Tqbb2" id="5_q2PHPv4Ln" role="1tU5fm">
          <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
        </node>
      </node>
      <node concept="3cqZAl" id="5_q2PHPv4Lo" role="3clF45" />
    </node>
    <node concept="13i0hz" id="5_q2PHPv4Lp" role="13h7CS">
      <property role="TrG5h" value="generateServerRequests" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="64zb:4HLGmtYMWnF" resolve="generateServerRequests" />
      <node concept="3Tm1VV" id="5_q2PHPv4Lq" role="1B3o_S" />
      <node concept="3clFbS" id="5_q2PHPv4Lu" role="3clF47">
        <node concept="3SKdUt" id="5_q2PHPv4MI" role="3cqZAp">
          <node concept="3SKdUq" id="5_q2PHPv4MJ" role="3SKWNk">
            <property role="3SKdUp" value="TODO" />
          </node>
        </node>
        <node concept="3clFbF" id="5_q2PHPv4N8" role="3cqZAp">
          <node concept="10Nm6u" id="5_q2PHPv4N6" role="3clFbG" />
        </node>
      </node>
      <node concept="_YKpA" id="5_q2PHPv4Lv" role="3clF45">
        <node concept="17QB3L" id="5_q2PHPv4Lw" role="_ZDj9" />
      </node>
    </node>
    <node concept="13i0hz" id="5_q2PHPv4Lx" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="5_q2PHPv4Ly" role="1B3o_S" />
      <node concept="3clFbS" id="5_q2PHPv4L_" role="3clF47">
        <node concept="3clFbF" id="5_q2PHPv4Nv" role="3cqZAp">
          <node concept="Xl_RD" id="5_q2PHPv4Nu" role="3clFbG">
            <property role="Xl_RC" value="rr_setTestData" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="5_q2PHPv4LA" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="5_q2PHPv55k">
    <property role="3GE5qa" value="editing.execution" />
    <ref role="13h7C2" to="3kl9:5_q2PHPv54U" resolve="ValidateOnData" />
    <node concept="13hLZK" id="5_q2PHPv55l" role="13h7CW">
      <node concept="3clFbS" id="5_q2PHPv55m" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5_q2PHPv55v" role="13h7CS">
      <property role="TrG5h" value="applyLocalChanges" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="64zb:4HLGmtYMVsA" resolve="applyLocalChanges" />
      <node concept="3Tm1VV" id="5_q2PHPv55w" role="1B3o_S" />
      <node concept="3clFbS" id="5_q2PHPv55B" role="3clF47">
        <node concept="3SKdUt" id="5_q2PHPv594" role="3cqZAp">
          <node concept="3SKdUq" id="5_q2PHPv595" role="3SKWNk">
            <property role="3SKdUp" value="TODO" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5_q2PHPv55C" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="5_q2PHPv55D" role="1tU5fm">
          <ref role="3uigEE" to="2ahs:4X7QcQ31ENp" resolve="IContext" />
        </node>
      </node>
      <node concept="37vLTG" id="5_q2PHPv55E" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3Tqbb2" id="5_q2PHPv55F" role="1tU5fm">
          <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
        </node>
      </node>
      <node concept="3cqZAl" id="5_q2PHPv55G" role="3clF45" />
    </node>
    <node concept="13i0hz" id="5_q2PHPv55H" role="13h7CS">
      <property role="TrG5h" value="generateServerRequests" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="64zb:4HLGmtYMWnF" resolve="generateServerRequests" />
      <node concept="3Tm1VV" id="5_q2PHPv55I" role="1B3o_S" />
      <node concept="3clFbS" id="5_q2PHPv55M" role="3clF47">
        <node concept="3SKdUt" id="5_q2PHPv58K" role="3cqZAp">
          <node concept="3SKdUq" id="5_q2PHPv58M" role="3SKWNk">
            <property role="3SKdUp" value="TODO" />
          </node>
        </node>
        <node concept="3clFbF" id="5_q2PHPv58b" role="3cqZAp">
          <node concept="10Nm6u" id="5_q2PHPv58a" role="3clFbG" />
        </node>
      </node>
      <node concept="_YKpA" id="5_q2PHPv55N" role="3clF45">
        <node concept="17QB3L" id="5_q2PHPv55O" role="_ZDj9" />
      </node>
    </node>
    <node concept="13i0hz" id="5_q2PHPv55P" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="5_q2PHPv55Q" role="1B3o_S" />
      <node concept="3clFbS" id="5_q2PHPv55T" role="3clF47">
        <node concept="3clFbF" id="5_q2PHPv56F" role="3cqZAp">
          <node concept="Xl_RD" id="5_q2PHPv56E" role="3clFbG">
            <property role="Xl_RC" value="rr_validateOnData" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="5_q2PHPv55U" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="5_q2PHPv5a0">
    <property role="3GE5qa" value="editing.execution" />
    <ref role="13h7C2" to="3kl9:5_q2PHPv59A" resolve="CrossValidateOnData" />
    <node concept="13hLZK" id="5_q2PHPv5a1" role="13h7CW">
      <node concept="3clFbS" id="5_q2PHPv5a2" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5_q2PHPv5ab" role="13h7CS">
      <property role="TrG5h" value="applyLocalChanges" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="64zb:4HLGmtYMVsA" resolve="applyLocalChanges" />
      <node concept="3Tm1VV" id="5_q2PHPv5ac" role="1B3o_S" />
      <node concept="3clFbS" id="5_q2PHPv5aj" role="3clF47">
        <node concept="3SKdUt" id="5_q2PHPv5dm" role="3cqZAp">
          <node concept="3SKdUq" id="5_q2PHPv5dn" role="3SKWNk">
            <property role="3SKdUp" value="TODO: is that all" />
          </node>
        </node>
        <node concept="3clFbF" id="1oR6hBki6Lr" role="3cqZAp">
          <node concept="37vLTI" id="1oR6hBki8F0" role="3clFbG">
            <node concept="3clFbT" id="1oR6hBki8Kn" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="2OqwBi" id="1oR6hBki7gP" role="37vLTJ">
              <node concept="1PxgMI" id="1oR6hBki72_" role="2Oq$k0">
                <node concept="chp4Y" id="1oR6hBki73k" role="3oSUPX">
                  <ref role="cht4Q" to="3kl9:5_q2PHPuV_W" resolve="ModelType" />
                </node>
                <node concept="37vLTw" id="1oR6hBki6Lp" role="1m5AlR">
                  <ref role="3cqZAo" node="5_q2PHPv5am" resolve="object" />
                </node>
              </node>
              <node concept="3TrcHB" id="1oR6hBki7Y4" role="2OqNvi">
                <ref role="3TsBF5" to="3kl9:1oR6hBkeYPk" resolve="isTrained" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5_q2PHPv5ak" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="5_q2PHPv5al" role="1tU5fm">
          <ref role="3uigEE" to="2ahs:4X7QcQ31ENp" resolve="IContext" />
        </node>
      </node>
      <node concept="37vLTG" id="5_q2PHPv5am" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3Tqbb2" id="5_q2PHPv5an" role="1tU5fm">
          <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
        </node>
      </node>
      <node concept="3cqZAl" id="5_q2PHPv5ao" role="3clF45" />
    </node>
    <node concept="13i0hz" id="5_q2PHPv5ap" role="13h7CS">
      <property role="TrG5h" value="generateServerRequests" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="64zb:4HLGmtYMWnF" resolve="generateServerRequests" />
      <node concept="3Tm1VV" id="5_q2PHPv5aq" role="1B3o_S" />
      <node concept="3clFbS" id="5_q2PHPv5au" role="3clF47">
        <node concept="3SKdUt" id="5_q2PHPv5d2" role="3cqZAp">
          <node concept="3SKdUq" id="5_q2PHPv5d4" role="3SKWNk">
            <property role="3SKdUp" value="TODO" />
          </node>
        </node>
        <node concept="3clFbF" id="5_q2PHPv5ct" role="3cqZAp">
          <node concept="10Nm6u" id="5_q2PHPv5cs" role="3clFbG" />
        </node>
      </node>
      <node concept="_YKpA" id="5_q2PHPv5av" role="3clF45">
        <node concept="17QB3L" id="5_q2PHPv5aw" role="_ZDj9" />
      </node>
    </node>
    <node concept="13i0hz" id="5_q2PHPv5ax" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="5_q2PHPv5ay" role="1B3o_S" />
      <node concept="3clFbS" id="5_q2PHPv5a_" role="3clF47">
        <node concept="3clFbF" id="5_q2PHPv5bn" role="3cqZAp">
          <node concept="Xl_RD" id="5_q2PHPv5bm" role="3clFbG">
            <property role="Xl_RC" value="rr_crossValidate" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="5_q2PHPv5aA" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="1oR6hBkfExS">
    <property role="3GE5qa" value="editing.execution" />
    <ref role="13h7C2" to="3kl9:1oR6hBkfEx3" resolve="TestOnData" />
    <node concept="13hLZK" id="1oR6hBkfExT" role="13h7CW">
      <node concept="3clFbS" id="1oR6hBkfExU" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1oR6hBkfEy3" role="13h7CS">
      <property role="TrG5h" value="applyLocalChanges" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="64zb:4HLGmtYMVsA" resolve="applyLocalChanges" />
      <node concept="3Tm1VV" id="1oR6hBkfEy4" role="1B3o_S" />
      <node concept="3clFbS" id="1oR6hBkfEyb" role="3clF47">
        <node concept="3SKdUt" id="1oR6hBkfEAi" role="3cqZAp">
          <node concept="3SKdUq" id="1oR6hBkfEAj" role="3SKWNk">
            <property role="3SKdUp" value="TODO" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1oR6hBkfEyc" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="1oR6hBkfEyd" role="1tU5fm">
          <ref role="3uigEE" to="2ahs:4X7QcQ31ENp" resolve="IContext" />
        </node>
      </node>
      <node concept="37vLTG" id="1oR6hBkfEye" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3Tqbb2" id="1oR6hBkfEyf" role="1tU5fm">
          <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
        </node>
      </node>
      <node concept="3cqZAl" id="1oR6hBkfEyg" role="3clF45" />
    </node>
    <node concept="13i0hz" id="1oR6hBkfEyh" role="13h7CS">
      <property role="TrG5h" value="generateServerRequests" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="64zb:4HLGmtYMWnF" resolve="generateServerRequests" />
      <node concept="3Tm1VV" id="1oR6hBkfEyi" role="1B3o_S" />
      <node concept="3clFbS" id="1oR6hBkfEym" role="3clF47">
        <node concept="3SKdUt" id="1oR6hBkfE_y" role="3cqZAp">
          <node concept="3SKdUq" id="1oR6hBkfE_z" role="3SKWNk">
            <property role="3SKdUp" value="TODO: does only provide data - does not test it" />
          </node>
        </node>
        <node concept="3cpWs8" id="6kn8py62Vq$" role="3cqZAp">
          <node concept="3cpWsn" id="6kn8py62VqB" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="6kn8py62Vqw" role="1tU5fm">
              <node concept="17QB3L" id="6kn8py62Vr3" role="_ZDj9" />
            </node>
            <node concept="2ShNRf" id="6kn8py62Vti" role="33vP2m">
              <node concept="Tc6Ow" id="6kn8py62Vte" role="2ShVmc">
                <node concept="17QB3L" id="6kn8py62Vtf" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6kn8py62Vup" role="3cqZAp">
          <node concept="2OqwBi" id="6kn8py62WIy" role="3clFbG">
            <node concept="37vLTw" id="6kn8py62Vun" role="2Oq$k0">
              <ref role="3cqZAo" node="6kn8py62VqB" resolve="result" />
            </node>
            <node concept="TSZUe" id="6kn8py62Yhw" role="2OqNvi">
              <node concept="2OqwBi" id="6kn8py62YBU" role="25WWJ7">
                <node concept="2YIFZM" id="6kn8py62Yvd" role="2Oq$k0">
                  <ref role="37wK5l" to="essy:UOeJaKFqSH" resolve="model" />
                  <ref role="1Pybhc" to="essy:11P1wiiUL77" resolve="PyCommands" />
                </node>
                <node concept="liA8E" id="6kn8py62YQk" role="2OqNvi">
                  <ref role="37wK5l" to="essy:7kQo$yiCP6x" resolve="setTestData" />
                  <node concept="2OqwBi" id="6kn8py62ZkX" role="37wK5m">
                    <node concept="13iPFW" id="6kn8py62Z3O" role="2Oq$k0" />
                    <node concept="2qgKlT" id="6kn8py65Xcq" role="2OqNvi">
                      <ref role="37wK5l" to="cp45:1oR6hBklX1O" resolve="getTargetObjectId" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6kn8py660Iv" role="37wK5m">
                    <node concept="1PxgMI" id="6kn8py660cU" role="2Oq$k0">
                      <node concept="chp4Y" id="6kn8py660q0" role="3oSUPX">
                        <ref role="cht4Q" to="5frd:1UULepO1t7_" resolve="ISynchWithServer" />
                      </node>
                      <node concept="2OqwBi" id="6kn8py65ZcS" role="1m5AlR">
                        <node concept="2OqwBi" id="6kn8py65Y4J" role="2Oq$k0">
                          <node concept="13iPFW" id="6kn8py65XNm" role="2Oq$k0" />
                          <node concept="3TrEf2" id="6kn8py65YD4" role="2OqNvi">
                            <ref role="3Tt5mk" to="3kl9:5UZ5Kaxb6iW" resolve="data" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="6kn8py65Z$7" role="2OqNvi">
                          <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                        </node>
                      </node>
                    </node>
                    <node concept="3TrcHB" id="6kn8py6616i" role="2OqNvi">
                      <ref role="3TsBF5" to="5frd:1UULepO1tEg" resolve="id" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6kn8py6d0yF" role="3cqZAp">
          <node concept="37vLTw" id="6kn8py6d0Xy" role="3cqZAk">
            <ref role="3cqZAo" node="6kn8py62VqB" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="1oR6hBkfEyn" role="3clF45">
        <node concept="17QB3L" id="1oR6hBkfEyo" role="_ZDj9" />
      </node>
    </node>
    <node concept="13i0hz" id="1oR6hBkfEyp" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="1oR6hBkfEyq" role="1B3o_S" />
      <node concept="3clFbS" id="1oR6hBkfEyt" role="3clF47">
        <node concept="3clFbF" id="1oR6hBkfEzf" role="3cqZAp">
          <node concept="Xl_RD" id="1oR6hBkfEze" role="3clFbG">
            <property role="Xl_RC" value="rr_testOnData" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="1oR6hBkfEyu" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="3ERSFayIScI">
    <ref role="13h7C2" to="3kl9:3ERSFayISbT" resolve="AsNewModelInitialization" />
    <node concept="13hLZK" id="3ERSFayIScJ" role="13h7CW">
      <node concept="3clFbS" id="3ERSFayIScK" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3ERSFayISdV" role="13h7CS">
      <property role="TrG5h" value="isApplicableTo" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="rf90:1pFVOLkGh5r" resolve="isApplicableTo" />
      <node concept="3Tm1VV" id="3ERSFayISdW" role="1B3o_S" />
      <node concept="3clFbS" id="3ERSFayISe1" role="3clF47">
        <node concept="3clFbF" id="3ERSFayIXCF" role="3cqZAp">
          <node concept="2OqwBi" id="3ERSFayIXOk" role="3clFbG">
            <node concept="37vLTw" id="3ERSFayIXCE" role="2Oq$k0">
              <ref role="3cqZAo" node="3ERSFayISe2" resolve="type" />
            </node>
            <node concept="1mIQ4w" id="3ERSFayIYka" role="2OqNvi">
              <node concept="chp4Y" id="3ERSFayIYqn" role="cj9EA">
                <ref role="cht4Q" to="3kl9:5_q2PHPuV_W" resolve="ModelType" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3ERSFayISe2" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="3Tqbb2" id="3ERSFayISe3" role="1tU5fm">
          <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
        </node>
      </node>
      <node concept="10P_77" id="3ERSFayISe4" role="3clF45" />
    </node>
    <node concept="13i0hz" id="3ERSFayISe7" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="3ERSFayISe8" role="1B3o_S" />
      <node concept="3clFbS" id="3ERSFayISeb" role="3clF47">
        <node concept="3clFbF" id="3ERSFayIYHm" role="3cqZAp">
          <node concept="Xl_RD" id="3ERSFayIZCb" role="3clFbG">
            <property role="Xl_RC" value="rr_asNewModelInitialization" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="3ERSFayISec" role="3clF45" />
    </node>
  </node>
</model>

