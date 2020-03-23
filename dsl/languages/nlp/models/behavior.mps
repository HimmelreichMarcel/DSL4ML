<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:75b17839-7caf-494b-abe8-c5beb79eba86(nlp.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="1" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="917x" ref="r:83f7a824-2d8f-4211-9c8e-802488d31e7c(features.behavior)" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" />
    <import index="2ahs" ref="r:ea6cf71d-29d2-478d-8027-a9f4a4de53c4(com.mbeddr.mpsutil.interpreter.rt)" />
    <import index="55s9" ref="r:349f01e8-2ba4-49f7-be71-679bbbf4b80d(features.structure)" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" />
    <import index="quht" ref="r:4f57b4a5-85c6-419f-a63f-0c58c2d57483(nlp.structure)" />
    <import index="5qo5" ref="r:6d93ddb1-b0b0-4eee-8079-51303666672a(org.iets3.core.expr.simpleTypes.structure)" />
    <import index="essy" ref="r:d68f6ef3-d056-4719-85f3-ab26e4e8979e(requests.classes)" />
    <import index="4kwy" ref="r:657c9fde-2f36-4e61-ae17-20f02b8630ad(org.iets3.core.base.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="xb2e" ref="r:d2c15c70-47a9-430a-840d-2701a52b993d(wordlist.behavior)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
    <import index="b1h1" ref="r:ac5f749f-6179-4d4f-ad24-ad9edbd8077b(org.iets3.core.expr.simpleTypes.behavior)" implicit="true" />
    <import index="veum" ref="r:dd7856aa-5828-444c-bc87-c88a89a8bb82(wordlist.structure)" implicit="true" />
    <import index="wvph" ref="r:20914789-5429-4374-8e4e-5bf172379f89(store.behavior)" implicit="true" />
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
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
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
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
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
  <node concept="13h7C7" id="zjcGs$K0UB">
    <ref role="13h7C2" to="quht:zjcGs$IBpG" resolve="ExtractFromLanguageProcessing" />
    <node concept="13hLZK" id="zjcGs$K0UC" role="13h7CW">
      <node concept="3clFbS" id="zjcGs$K0UD" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="zjcGs$K0UM" role="13h7CS">
      <property role="TrG5h" value="getType" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="64zb:1ELd1MG1vXo" resolve="getType" />
      <node concept="3clFbS" id="zjcGs$K0UQ" role="3clF47">
        <node concept="3clFbF" id="1wn8NGzz6ty" role="3cqZAp">
          <node concept="3K4zz7" id="1ELd1MGcBhE" role="3clFbG">
            <node concept="2OqwBi" id="1ELd1MGcDnD" role="3K4Cdx">
              <node concept="2OqwBi" id="1ELd1MGcDnE" role="2Oq$k0">
                <node concept="2OqwBi" id="1ELd1MGcDnF" role="2Oq$k0">
                  <node concept="13iPFW" id="1ELd1MGcDnG" role="2Oq$k0" />
                  <node concept="3TrEf2" id="1ELd1MGcDnH" role="2OqNvi">
                    <ref role="3Tt5mk" to="quht:1ELd1MFZF1x" resolve="extractionType" />
                  </node>
                </node>
                <node concept="2yIwOk" id="1ELd1MGcDnI" role="2OqNvi" />
              </node>
              <node concept="liA8E" id="1ELd1MGcDnJ" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.isAbstract():boolean" resolve="isAbstract" />
              </node>
            </node>
            <node concept="10Nm6u" id="1ELd1MGcDS9" role="3K4E3e" />
            <node concept="2OqwBi" id="1wn8NGzz79n" role="3K4GZi">
              <node concept="2OqwBi" id="1wn8NGzz6AU" role="2Oq$k0">
                <node concept="13iPFW" id="1wn8NGzz6tw" role="2Oq$k0" />
                <node concept="3TrEf2" id="1ELd1MG11p0" role="2OqNvi">
                  <ref role="3Tt5mk" to="quht:1ELd1MFZF1x" resolve="extractionType" />
                </node>
              </node>
              <node concept="2qgKlT" id="1ELd1MG11DA" role="2OqNvi">
                <ref role="37wK5l" node="1ELd1MG0ydW" resolve="getType" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="1ELd1MG8_Ck" role="3clF45">
        <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
      </node>
      <node concept="3Tm1VV" id="1ELd1MG8_Cl" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="zjcGs$K0US" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="generatePythonExtractionCommand" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="917x:zjcGs$Ey0K" resolve="generatePythonExtractionCommand" />
      <node concept="3clFbS" id="zjcGs$K0UX" role="3clF47">
        <node concept="3SKdUt" id="zjcGs$K0X2" role="3cqZAp">
          <node concept="3SKdUq" id="zjcGs$K0X3" role="3SKWNk">
            <property role="3SKdUp" value="TODO" />
          </node>
        </node>
        <node concept="3SKdUt" id="1wn8NGzEKnq" role="3cqZAp">
          <node concept="3SKdUq" id="1wn8NGzEKns" role="3SKWNk">
            <property role="3SKdUp" value="extractFeatureFromNLP(processorId, stringFeature, extraction" />
          </node>
        </node>
        <node concept="1X3_iC" id="1ELd1MG124u" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs6" id="zjcGs$K26e" role="8Wnug">
            <node concept="2YIFZM" id="1wn8NGzEK5Y" role="3cqZAk">
              <ref role="37wK5l" to="essy:1wn8NGz_KZe" resolve="extractFeatureFromNLP" />
              <ref role="1Pybhc" to="essy:11P1wiiUL77" resolve="PyCommands" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1ELd1MG125Q" role="3cqZAp">
          <node concept="3cpWs3" id="3RvSrMfFPaL" role="3clFbG">
            <node concept="3cpWs3" id="3RvSrMfFO_k" role="3uHU7B">
              <node concept="3cpWs3" id="3RvSrMfFMTh" role="3uHU7B">
                <node concept="3cpWs3" id="6Y$bjgGQ7A_" role="3uHU7B">
                  <node concept="Xl_RD" id="6Y$bjgGQ7b1" role="3uHU7w">
                    <property role="Xl_RC" value=" " />
                  </node>
                  <node concept="3cpWs3" id="6Y$bjgGQ71v" role="3uHU7B">
                    <node concept="Xl_RD" id="5_q2PHPuK32" role="3uHU7B">
                      <property role="Xl_RC" value="useNLP extract " />
                    </node>
                    <node concept="2OqwBi" id="6Y$bjgGQa9S" role="3uHU7w">
                      <node concept="2OqwBi" id="6Y$bjgGQ8Y5" role="2Oq$k0">
                        <node concept="2OqwBi" id="6Y$bjgGQ81X" role="2Oq$k0">
                          <node concept="13iPFW" id="6Y$bjgGQ7O$" role="2Oq$k0" />
                          <node concept="3TrEf2" id="6Y$bjgGQ8ov" role="2OqNvi">
                            <ref role="3Tt5mk" to="quht:1wn8NGzsnoH" resolve="stringFeature" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="6Y$bjgGQ9sE" role="2OqNvi">
                          <ref role="3Tt5mk" to="5frd:4x_I0npP4pL" resolve="val" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="6Y$bjgGQa$h" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="3RvSrMfG2ZW" role="3uHU7w">
                  <node concept="2OqwBi" id="3RvSrMfFNTC" role="2Oq$k0">
                    <node concept="13iPFW" id="3RvSrMfFNH5" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3RvSrMfFO6X" role="2OqNvi">
                      <ref role="3Tt5mk" to="quht:1wn8NGzsoZ7" resolve="extractionTarget" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="3RvSrMfG3oA" role="2OqNvi">
                    <ref role="37wK5l" node="3RvSrMfG0iB" resolve="getName" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3RvSrMfFOGj" role="3uHU7w">
                <property role="Xl_RC" value=" " />
              </node>
            </node>
            <node concept="2OqwBi" id="3RvSrMfG3QL" role="3uHU7w">
              <node concept="2OqwBi" id="3RvSrMfFPDv" role="2Oq$k0">
                <node concept="13iPFW" id="3RvSrMfFPhY" role="2Oq$k0" />
                <node concept="3TrEf2" id="3RvSrMfFPXq" role="2OqNvi">
                  <ref role="3Tt5mk" to="quht:1ELd1MFZF1x" resolve="extractionType" />
                </node>
              </node>
              <node concept="2qgKlT" id="3RvSrMfG4n7" role="2OqNvi">
                <ref role="37wK5l" node="1ELd1MGdo4P" resolve="getName" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="1wn8NGzEJRI" role="3clF45" />
      <node concept="3Tm1VV" id="1wn8NGzEJRJ" role="1B3o_S" />
    </node>
  </node>
  <node concept="13h7C7" id="1wn8NGzsQUM">
    <property role="3GE5qa" value="extractionTargets" />
    <ref role="13h7C2" to="quht:1wn8NGzsy1n" resolve="PartOfSpeech" />
    <node concept="13hLZK" id="1wn8NGzsQUN" role="13h7CW">
      <node concept="3clFbS" id="1wn8NGzsQUO" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1ELd1MGdvwJ" role="13h7CS">
      <property role="TrG5h" value="getDefaultBOWMeasure" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="1ELd1MGdvrS" resolve="getDefaultBOWMeasure" />
      <node concept="3Tm1VV" id="1ELd1MGdvwK" role="1B3o_S" />
      <node concept="3clFbS" id="1ELd1MGdvwN" role="3clF47">
        <node concept="3cpWs6" id="1ELd1MGdvx9" role="3cqZAp">
          <node concept="2ShNRf" id="1ELd1MGdvxx" role="3cqZAk">
            <node concept="3zrR0B" id="1ELd1MGdvxv" role="2ShVmc">
              <node concept="3Tqbb2" id="1ELd1MGdvxw" role="3zrR0E">
                <ref role="ehGHo" to="quht:1wn8NGzsoZk" resolve="TermFrequencyRelativeRepresentationMeasure" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="1ELd1MGdvwO" role="3clF45">
        <ref role="ehGHo" to="quht:4fA_w_st0g6" resolve="AbstractRepresentationMeasure" />
      </node>
    </node>
    <node concept="13i0hz" id="3RvSrMfG0mt" role="13h7CS">
      <property role="TrG5h" value="getName" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="3RvSrMfG0iB" resolve="getName" />
      <node concept="3Tm1VV" id="3RvSrMfG0mu" role="1B3o_S" />
      <node concept="3clFbS" id="3RvSrMfG0mx" role="3clF47">
        <node concept="3clFbF" id="3RvSrMfG0nq" role="3cqZAp">
          <node concept="Xl_RD" id="3RvSrMfG0np" role="3clFbG">
            <property role="Xl_RC" value="pos" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="3RvSrMfG0my" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="1wn8NGzsQXk">
    <property role="3GE5qa" value="extractionTargets" />
    <ref role="13h7C2" to="quht:1wn8NGzsoZ6" resolve="AbstractExtractionTarget" />
    <node concept="13i0hz" id="1ELd1MGdvrS" role="13h7CS">
      <property role="TrG5h" value="getDefaultBOWMeasure" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <node concept="3Tm1VV" id="1ELd1MGdvrT" role="1B3o_S" />
      <node concept="3Tqbb2" id="1ELd1MGdvsg" role="3clF45">
        <ref role="ehGHo" to="quht:4fA_w_st0g6" resolve="AbstractRepresentationMeasure" />
      </node>
      <node concept="3clFbS" id="1ELd1MGdvrV" role="3clF47" />
    </node>
    <node concept="13i0hz" id="3RvSrMfG0iB" role="13h7CS">
      <property role="TrG5h" value="getName" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <node concept="3Tm1VV" id="3RvSrMfG0iC" role="1B3o_S" />
      <node concept="17QB3L" id="3RvSrMfG0jb" role="3clF45" />
      <node concept="3clFbS" id="3RvSrMfG0iE" role="3clF47" />
    </node>
    <node concept="13hLZK" id="1wn8NGzsQXl" role="13h7CW">
      <node concept="3clFbS" id="1wn8NGzsQXm" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="1wn8NGzsR2z">
    <property role="3GE5qa" value="extractionTargets" />
    <ref role="13h7C2" to="quht:1wn8NGzsoZN" resolve="WordFeatures" />
    <node concept="13hLZK" id="1wn8NGzsR2$" role="13h7CW">
      <node concept="3clFbS" id="1wn8NGzsR2_" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1ELd1MGdvz8" role="13h7CS">
      <property role="TrG5h" value="getDefaultBOWMeasure" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="1ELd1MGdvrS" resolve="getDefaultBOWMeasure" />
      <node concept="3Tm1VV" id="1ELd1MGdvz9" role="1B3o_S" />
      <node concept="3clFbS" id="1ELd1MGdvzc" role="3clF47">
        <node concept="3cpWs6" id="1ELd1MGdvzy" role="3cqZAp">
          <node concept="2ShNRf" id="1ELd1MGdvzR" role="3cqZAk">
            <node concept="3zrR0B" id="1ELd1MGdwIw" role="2ShVmc">
              <node concept="3Tqbb2" id="1ELd1MGdwIy" role="3zrR0E">
                <ref role="ehGHo" to="quht:4fA_w_st0h5" resolve="TFIDFRepresentationMeasure" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="1ELd1MGdvzd" role="3clF45">
        <ref role="ehGHo" to="quht:4fA_w_st0g6" resolve="AbstractRepresentationMeasure" />
      </node>
    </node>
    <node concept="13i0hz" id="3RvSrMfG0nS" role="13h7CS">
      <property role="TrG5h" value="getName" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="3RvSrMfG0iB" resolve="getName" />
      <node concept="3Tm1VV" id="3RvSrMfG0nT" role="1B3o_S" />
      <node concept="3clFbS" id="3RvSrMfG0nW" role="3clF47">
        <node concept="3clFbF" id="3RvSrMfG0oP" role="3cqZAp">
          <node concept="Xl_RD" id="3RvSrMfG0oO" role="3clFbG">
            <property role="Xl_RC" value="word" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="3RvSrMfG0nX" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="1wn8NGzvVIi">
    <property role="3GE5qa" value="extractionTargets" />
    <ref role="13h7C2" to="quht:1wn8NGzsQTL" resolve="NamedEntities" />
    <node concept="13hLZK" id="1wn8NGzvVIj" role="13h7CW">
      <node concept="3clFbS" id="1wn8NGzvVIk" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1ELd1MGdvub" role="13h7CS">
      <property role="TrG5h" value="getDefaultBOWMeasure" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="1ELd1MGdvrS" resolve="getDefaultBOWMeasure" />
      <node concept="3Tm1VV" id="1ELd1MGdvuc" role="1B3o_S" />
      <node concept="3clFbS" id="1ELd1MGdvuf" role="3clF47">
        <node concept="3cpWs6" id="1ELd1MGdvuA" role="3cqZAp">
          <node concept="2ShNRf" id="1ELd1MGdvv8" role="3cqZAk">
            <node concept="3zrR0B" id="1ELd1MGdvv6" role="2ShVmc">
              <node concept="3Tqbb2" id="1ELd1MGdvv7" role="3zrR0E">
                <ref role="ehGHo" to="quht:4fA_w_st0gA" resolve="TermFrequencyAbsoluteRepresentationMeasure" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="1ELd1MGdvug" role="3clF45">
        <ref role="ehGHo" to="quht:4fA_w_st0g6" resolve="AbstractRepresentationMeasure" />
      </node>
    </node>
    <node concept="13i0hz" id="3RvSrMfG0k6" role="13h7CS">
      <property role="TrG5h" value="getName" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="3RvSrMfG0iB" resolve="getName" />
      <node concept="3Tm1VV" id="3RvSrMfG0k7" role="1B3o_S" />
      <node concept="3clFbS" id="3RvSrMfG0ka" role="3clF47">
        <node concept="3clFbF" id="3RvSrMfG0l3" role="3cqZAp">
          <node concept="Xl_RD" id="3RvSrMfG0l2" role="3clFbG">
            <property role="Xl_RC" value="ne_simple" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="3RvSrMfG0kb" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="1wn8NGzvWwI">
    <property role="3GE5qa" value="extractionTypes" />
    <ref role="13h7C2" to="quht:1wn8NGzsy2w" resolve="NGrams" />
    <node concept="13i0hz" id="1wn8NGzvWwT" role="13h7CS">
      <property role="TrG5h" value="getType" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" node="1ELd1MG0ydW" resolve="getType" />
      <node concept="3clFbS" id="1wn8NGzvWwV" role="3clF47">
        <node concept="3cpWs8" id="1wn8NGzvWwW" role="3cqZAp">
          <node concept="3cpWsn" id="1wn8NGzvWwX" role="3cpWs9">
            <property role="TrG5h" value="measure" />
            <node concept="3Tqbb2" id="1wn8NGzvWwY" role="1tU5fm">
              <ref role="ehGHo" to="quht:4fA_w_st0g6" resolve="AbstractRepresentationMeasure" />
            </node>
            <node concept="3K4zz7" id="1wn8NGzvWwZ" role="33vP2m">
              <node concept="2OqwBi" id="1wn8NGzvWx0" role="3K4Cdx">
                <node concept="2OqwBi" id="1wn8NGzvWx1" role="2Oq$k0">
                  <node concept="13iPFW" id="1wn8NGzvWx2" role="2Oq$k0" />
                  <node concept="3TrEf2" id="1wn8NGzvWx3" role="2OqNvi">
                    <ref role="3Tt5mk" to="quht:4kZuEukVzQm" resolve="measure" />
                  </node>
                </node>
                <node concept="3x8VRR" id="1wn8NGzvWx4" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="1wn8NGzvWx5" role="3K4E3e">
                <node concept="13iPFW" id="1wn8NGzvWx6" role="2Oq$k0" />
                <node concept="3TrEf2" id="1wn8NGzvWx7" role="2OqNvi">
                  <ref role="3Tt5mk" to="quht:4kZuEukVzQm" resolve="measure" />
                </node>
              </node>
              <node concept="2OqwBi" id="1wn8NGzvWx8" role="3K4GZi">
                <node concept="13iPFW" id="1wn8NGzvWx9" role="2Oq$k0" />
                <node concept="2qgKlT" id="1ELd1MG0zkx" role="2OqNvi">
                  <ref role="37wK5l" node="4kZuEukVAjE" resolve="getDefaultMeasure" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1wn8NGzvWxb" role="3cqZAp">
          <node concept="3cpWsn" id="1wn8NGzvWxc" role="3cpWs9">
            <property role="TrG5h" value="resultType" />
            <node concept="3Tqbb2" id="1wn8NGzvWxd" role="1tU5fm">
              <ref role="ehGHo" to="55s9:4fA_w_svabf" resolve="FeatureVectorType" />
            </node>
            <node concept="2ShNRf" id="1wn8NGzvWxe" role="33vP2m">
              <node concept="3zrR0B" id="1wn8NGzvWxf" role="2ShVmc">
                <node concept="3Tqbb2" id="1wn8NGzvWxg" role="3zrR0E">
                  <ref role="ehGHo" to="55s9:4fA_w_svabf" resolve="FeatureVectorType" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1wn8NGzvWxh" role="3cqZAp">
          <node concept="37vLTI" id="1wn8NGzvWxi" role="3clFbG">
            <node concept="2OqwBi" id="1wn8NGzvWxj" role="37vLTJ">
              <node concept="37vLTw" id="1wn8NGzvWxk" role="2Oq$k0">
                <ref role="3cqZAo" node="1wn8NGzvWxc" resolve="resultType" />
              </node>
              <node concept="3TrEf2" id="1wn8NGzvWxl" role="2OqNvi">
                <ref role="3Tt5mk" to="55s9:4fA_w_svabg" resolve="type" />
              </node>
            </node>
            <node concept="2OqwBi" id="1wn8NGzvWxm" role="37vLTx">
              <node concept="37vLTw" id="1wn8NGzvWxn" role="2Oq$k0">
                <ref role="3cqZAo" node="1wn8NGzvWwX" resolve="measure" />
              </node>
              <node concept="2qgKlT" id="1wn8NGzvWxo" role="2OqNvi">
                <ref role="37wK5l" node="1wn8NGzt0lM" resolve="getResultType" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1wn8NGzvWxp" role="3cqZAp">
          <node concept="37vLTI" id="1wn8NGzvWxq" role="3clFbG">
            <node concept="3cmrfG" id="1wn8NGzvWxr" role="37vLTx">
              <property role="3cmrfH" value="-99" />
            </node>
            <node concept="2OqwBi" id="1wn8NGzvWxs" role="37vLTJ">
              <node concept="37vLTw" id="1wn8NGzvWxt" role="2Oq$k0">
                <ref role="3cqZAo" node="1wn8NGzvWxc" resolve="resultType" />
              </node>
              <node concept="3TrcHB" id="1wn8NGzvWxu" role="2OqNvi">
                <ref role="3TsBF5" to="55s9:4fA_w_svabi" resolve="dimensions" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1wn8NGzvWxv" role="3cqZAp">
          <node concept="37vLTI" id="1wn8NGzvWxw" role="3clFbG">
            <node concept="2OqwBi" id="1wn8NGzvWxx" role="37vLTx">
              <node concept="2OqwBi" id="1wn8NGzvWxy" role="2Oq$k0">
                <node concept="13iPFW" id="1wn8NGzvWxz" role="2Oq$k0" />
                <node concept="2Xjw5R" id="1wn8NGzvWx$" role="2OqNvi">
                  <node concept="1xMEDy" id="1wn8NGzvWx_" role="1xVPHs">
                    <node concept="chp4Y" id="1wn8NGzvWxA" role="ri$Ld">
                      <ref role="cht4Q" to="4kwy:cJpacq5T0O" resolve="IValidNamedConcept" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3TrcHB" id="1wn8NGzvWxB" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="2OqwBi" id="1wn8NGzvWxC" role="37vLTJ">
              <node concept="37vLTw" id="1wn8NGzvWxD" role="2Oq$k0">
                <ref role="3cqZAo" node="1wn8NGzvWxc" resolve="resultType" />
              </node>
              <node concept="3TrcHB" id="1wn8NGzvWxE" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1wn8NGzvWxF" role="3cqZAp">
          <node concept="37vLTw" id="1wn8NGzvWxG" role="3cqZAk">
            <ref role="3cqZAo" node="1wn8NGzvWxc" resolve="resultType" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="1ELd1MG0zyL" role="3clF45">
        <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
      </node>
      <node concept="3Tm1VV" id="1ELd1MG0zyM" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="1wn8NGzvWxI" role="13h7CS">
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getDefaultMeasure" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" node="4kZuEukVAjE" resolve="getDefaultMeasure" />
      <node concept="3clFbS" id="1wn8NGzvWxK" role="3clF47">
        <node concept="3cpWs6" id="1wn8NGzvWxL" role="3cqZAp">
          <node concept="2ShNRf" id="1wn8NGzvWxM" role="3cqZAk">
            <node concept="3zrR0B" id="1wn8NGzvWxN" role="2ShVmc">
              <node concept="3Tqbb2" id="1wn8NGzvWxO" role="3zrR0E">
                <ref role="ehGHo" to="quht:1wn8NGzsoZk" resolve="TermFrequencyRelativeRepresentationMeasure" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="1ELd1MG0zLV" role="3clF45">
        <ref role="ehGHo" to="quht:4fA_w_st0g6" resolve="AbstractRepresentationMeasure" />
      </node>
      <node concept="3Tm1VV" id="1ELd1MG0zLW" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="1wn8NGzvWwJ" role="13h7CW">
      <node concept="3clFbS" id="1wn8NGzvWwK" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1ELd1MGdq8K" role="13h7CS">
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getName" />
      <ref role="13i0hy" node="1ELd1MGdo4P" resolve="getName" />
      <node concept="3Tm1VV" id="1ELd1MGdq8L" role="1B3o_S" />
      <node concept="3clFbS" id="1ELd1MGdq8O" role="3clF47">
        <node concept="3SKdUt" id="3RvSrMfG8u5" role="3cqZAp">
          <node concept="3SKdUq" id="3RvSrMfG8u7" role="3SKWNk">
            <property role="3SKdUp" value="TODO: measure" />
          </node>
        </node>
        <node concept="3cpWs6" id="1ELd1MGdqsk" role="3cqZAp">
          <node concept="3cpWs3" id="3RvSrMfFZDt" role="3cqZAk">
            <node concept="Xl_RD" id="1ELd1MGdqsy" role="3uHU7B">
              <property role="Xl_RC" value="ngram count " />
            </node>
            <node concept="2OqwBi" id="3RvSrMfFZPO" role="3uHU7w">
              <node concept="13iPFW" id="3RvSrMfFZDR" role="2Oq$k0" />
              <node concept="3TrcHB" id="3RvSrMfG0ca" role="2OqNvi">
                <ref role="3TsBF5" to="quht:1wn8NGzsy2z" resolve="n" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="1ELd1MGdq8P" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="1ELd1MG0wo1">
    <property role="3GE5qa" value="extractionTypes" />
    <ref role="13h7C2" to="quht:1ELd1MFZF1w" resolve="AbstractExtractionType" />
    <node concept="13i0hz" id="1ELd1MG0ydW" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <property role="TrG5h" value="getType" />
      <node concept="3Tm1VV" id="1ELd1MG0ydX" role="1B3o_S" />
      <node concept="3Tqbb2" id="1ELd1MG0z2e" role="3clF45">
        <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
      </node>
      <node concept="3clFbS" id="1ELd1MG0ydZ" role="3clF47" />
    </node>
    <node concept="13i0hz" id="1ELd1MGdo4P" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="1ELd1MGdo4Q" role="1B3o_S" />
      <node concept="17QB3L" id="1ELd1MGdo5H" role="3clF45" />
      <node concept="3clFbS" id="1ELd1MGdo4S" role="3clF47" />
    </node>
    <node concept="13hLZK" id="1ELd1MG0wo2" role="13h7CW">
      <node concept="3clFbS" id="1ELd1MG0wo3" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="1ELd1MGdtGD">
    <property role="3GE5qa" value="extractionTypes" />
    <ref role="13h7C2" to="quht:1ELd1MGdtGf" resolve="BagOfWords" />
    <node concept="13hLZK" id="1ELd1MGdtGE" role="13h7CW">
      <node concept="3clFbS" id="1ELd1MGdtGF" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1ELd1MGdtGO" role="13h7CS">
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getType" />
      <ref role="13i0hy" node="1ELd1MG0ydW" resolve="getType" />
      <node concept="3Tm1VV" id="1ELd1MGdtGP" role="1B3o_S" />
      <node concept="3clFbS" id="1ELd1MGdtGS" role="3clF47">
        <node concept="3cpWs8" id="1ELd1MGdxyD" role="3cqZAp">
          <node concept="3cpWsn" id="1ELd1MGdxyE" role="3cpWs9">
            <property role="TrG5h" value="measure" />
            <node concept="3Tqbb2" id="1ELd1MGdxyF" role="1tU5fm">
              <ref role="ehGHo" to="quht:4fA_w_st0g6" resolve="AbstractRepresentationMeasure" />
            </node>
            <node concept="3K4zz7" id="1ELd1MGdxyG" role="33vP2m">
              <node concept="2OqwBi" id="1ELd1MGdxyH" role="3K4Cdx">
                <node concept="2OqwBi" id="1ELd1MGdxyI" role="2Oq$k0">
                  <node concept="13iPFW" id="1ELd1MGdxyJ" role="2Oq$k0" />
                  <node concept="3TrEf2" id="1ELd1MGdxyK" role="2OqNvi">
                    <ref role="3Tt5mk" to="quht:4kZuEukVzQm" resolve="measure" />
                  </node>
                </node>
                <node concept="3x8VRR" id="1ELd1MGdxyL" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="1ELd1MGdxyM" role="3K4E3e">
                <node concept="13iPFW" id="1ELd1MGdxyN" role="2Oq$k0" />
                <node concept="3TrEf2" id="1ELd1MGdxyO" role="2OqNvi">
                  <ref role="3Tt5mk" to="quht:4kZuEukVzQm" resolve="measure" />
                </node>
              </node>
              <node concept="2OqwBi" id="1ELd1MGdxyP" role="3K4GZi">
                <node concept="13iPFW" id="1ELd1MGdxyQ" role="2Oq$k0" />
                <node concept="2qgKlT" id="1ELd1MGdxyR" role="2OqNvi">
                  <ref role="37wK5l" node="4kZuEukVAjE" resolve="getDefaultMeasure" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1ELd1MGdxyS" role="3cqZAp">
          <node concept="3cpWsn" id="1ELd1MGdxyT" role="3cpWs9">
            <property role="TrG5h" value="resultType" />
            <node concept="3Tqbb2" id="1ELd1MGdxyU" role="1tU5fm">
              <ref role="ehGHo" to="55s9:4fA_w_svabf" resolve="FeatureVectorType" />
            </node>
            <node concept="2ShNRf" id="1ELd1MGdxyV" role="33vP2m">
              <node concept="3zrR0B" id="1ELd1MGdxyW" role="2ShVmc">
                <node concept="3Tqbb2" id="1ELd1MGdxyX" role="3zrR0E">
                  <ref role="ehGHo" to="55s9:4fA_w_svabf" resolve="FeatureVectorType" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1ELd1MGdxyY" role="3cqZAp">
          <node concept="37vLTI" id="1ELd1MGdxyZ" role="3clFbG">
            <node concept="2OqwBi" id="1ELd1MGdxz0" role="37vLTJ">
              <node concept="37vLTw" id="1ELd1MGdxz1" role="2Oq$k0">
                <ref role="3cqZAo" node="1ELd1MGdxyT" resolve="resultType" />
              </node>
              <node concept="3TrEf2" id="1ELd1MGdxz2" role="2OqNvi">
                <ref role="3Tt5mk" to="55s9:4fA_w_svabg" resolve="type" />
              </node>
            </node>
            <node concept="2OqwBi" id="1ELd1MGdxz3" role="37vLTx">
              <node concept="37vLTw" id="1ELd1MGdxz4" role="2Oq$k0">
                <ref role="3cqZAo" node="1ELd1MGdxyE" resolve="measure" />
              </node>
              <node concept="2qgKlT" id="1ELd1MGdxz5" role="2OqNvi">
                <ref role="37wK5l" node="1wn8NGzt0lM" resolve="getResultType" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1ELd1MGdxz6" role="3cqZAp">
          <node concept="37vLTI" id="1ELd1MGdxz7" role="3clFbG">
            <node concept="3cmrfG" id="1ELd1MGdxz8" role="37vLTx">
              <property role="3cmrfH" value="-99" />
            </node>
            <node concept="2OqwBi" id="1ELd1MGdxz9" role="37vLTJ">
              <node concept="37vLTw" id="1ELd1MGdxza" role="2Oq$k0">
                <ref role="3cqZAo" node="1ELd1MGdxyT" resolve="resultType" />
              </node>
              <node concept="3TrcHB" id="1ELd1MGdxzb" role="2OqNvi">
                <ref role="3TsBF5" to="55s9:4fA_w_svabi" resolve="dimensions" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1ELd1MGdxzc" role="3cqZAp">
          <node concept="37vLTI" id="1ELd1MGdxzd" role="3clFbG">
            <node concept="2OqwBi" id="1ELd1MGdxze" role="37vLTx">
              <node concept="2OqwBi" id="1ELd1MGdxzf" role="2Oq$k0">
                <node concept="13iPFW" id="1ELd1MGdxzg" role="2Oq$k0" />
                <node concept="2Xjw5R" id="1ELd1MGdxzh" role="2OqNvi">
                  <node concept="1xMEDy" id="1ELd1MGdxzi" role="1xVPHs">
                    <node concept="chp4Y" id="1ELd1MGdxzj" role="ri$Ld">
                      <ref role="cht4Q" to="4kwy:cJpacq5T0O" resolve="IValidNamedConcept" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3TrcHB" id="1ELd1MGdxzk" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="2OqwBi" id="1ELd1MGdxzl" role="37vLTJ">
              <node concept="37vLTw" id="1ELd1MGdxzm" role="2Oq$k0">
                <ref role="3cqZAo" node="1ELd1MGdxyT" resolve="resultType" />
              </node>
              <node concept="3TrcHB" id="1ELd1MGdxzn" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1ELd1MGdxzo" role="3cqZAp">
          <node concept="37vLTw" id="1ELd1MGdxzp" role="3cqZAk">
            <ref role="3cqZAo" node="1ELd1MGdxyT" resolve="resultType" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="1ELd1MGdtGT" role="3clF45">
        <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
      </node>
    </node>
    <node concept="13i0hz" id="1ELd1MGdtGU" role="13h7CS">
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getName" />
      <ref role="13i0hy" node="1ELd1MGdo4P" resolve="getName" />
      <node concept="3Tm1VV" id="1ELd1MGdtGV" role="1B3o_S" />
      <node concept="3clFbS" id="1ELd1MGdtGY" role="3clF47">
        <node concept="3clFbF" id="1ELd1MGdxxq" role="3cqZAp">
          <node concept="Xl_RD" id="1ELd1MGdxxp" role="3clFbG">
            <property role="Xl_RC" value="bow tfidf" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="1ELd1MGdtGZ" role="3clF45" />
    </node>
    <node concept="13i0hz" id="1ELd1MGdtH0" role="13h7CS">
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getDefaultMeasure" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" node="4kZuEukVAjE" resolve="getDefaultMeasure" />
      <node concept="3clFbS" id="1ELd1MGdtH4" role="3clF47">
        <node concept="3SKdUt" id="4kZuEukVMAt" role="3cqZAp">
          <node concept="3SKdUq" id="4kZuEukVMAv" role="3SKWNk">
            <property role="3SKdUp" value="TODO: should not depend on target!?" />
          </node>
        </node>
        <node concept="3clFbF" id="1ELd1MGdwNa" role="3cqZAp">
          <node concept="2OqwBi" id="1ELd1MGdxet" role="3clFbG">
            <node concept="2OqwBi" id="1ELd1MGdv8o" role="2Oq$k0">
              <node concept="1PxgMI" id="1ELd1MGduRq" role="2Oq$k0">
                <node concept="chp4Y" id="1ELd1MGduXe" role="3oSUPX">
                  <ref role="cht4Q" to="quht:zjcGs$IBpG" resolve="ExtractFromLanguageProcessing" />
                </node>
                <node concept="2OqwBi" id="1ELd1MGdtRk" role="1m5AlR">
                  <node concept="13iPFW" id="1ELd1MGdtHY" role="2Oq$k0" />
                  <node concept="1mfA1w" id="1ELd1MGdu2G" role="2OqNvi" />
                </node>
              </node>
              <node concept="3TrEf2" id="1ELd1MGdvnb" role="2OqNvi">
                <ref role="3Tt5mk" to="quht:1wn8NGzsoZ7" resolve="extractionTarget" />
              </node>
            </node>
            <node concept="2qgKlT" id="1ELd1MGdxsX" role="2OqNvi">
              <ref role="37wK5l" node="1ELd1MGdvrS" resolve="getDefaultBOWMeasure" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="4kZuEukVLYy" role="3clF45">
        <ref role="ehGHo" to="quht:4fA_w_st0g6" resolve="AbstractRepresentationMeasure" />
      </node>
      <node concept="3Tm1VV" id="4kZuEukVLYz" role="1B3o_S" />
    </node>
  </node>
  <node concept="13h7C7" id="4kZuEukUsn5">
    <property role="3GE5qa" value="extractionTypes" />
    <ref role="13h7C2" to="quht:4kZuEukUsmF" resolve="ExtractionTargetList" />
    <node concept="13hLZK" id="4kZuEukUsn6" role="13h7CW">
      <node concept="3clFbS" id="4kZuEukUsn7" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="4kZuEukUsol" role="13h7CS">
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getType" />
      <ref role="13i0hy" node="1ELd1MG0ydW" resolve="getType" />
      <node concept="3Tm1VV" id="4kZuEukUsom" role="1B3o_S" />
      <node concept="3clFbS" id="4kZuEukUsop" role="3clF47">
        <node concept="3cpWs8" id="4kZuEukUtqk" role="3cqZAp">
          <node concept="3cpWsn" id="4kZuEukUtqn" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3Tqbb2" id="4kZuEukUtqi" role="1tU5fm">
              <ref role="ehGHo" to="55s9:209684qNLaU" resolve="StringlistFeature" />
            </node>
            <node concept="2ShNRf" id="4kZuEukUtrs" role="33vP2m">
              <node concept="3zrR0B" id="4kZuEukUtxt" role="2ShVmc">
                <node concept="3Tqbb2" id="4kZuEukUtxv" role="3zrR0E">
                  <ref role="ehGHo" to="55s9:209684qNLaU" resolve="StringlistFeature" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4kZuEukUspb" role="3cqZAp">
          <node concept="37vLTw" id="4kZuEukUtyn" role="3cqZAk">
            <ref role="3cqZAo" node="4kZuEukUtqn" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="4kZuEukUsoq" role="3clF45">
        <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
      </node>
    </node>
    <node concept="13i0hz" id="4kZuEukUsor" role="13h7CS">
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getName" />
      <ref role="13i0hy" node="1ELd1MGdo4P" resolve="getName" />
      <node concept="3Tm1VV" id="4kZuEukUsos" role="1B3o_S" />
      <node concept="3clFbS" id="4kZuEukUsov" role="3clF47">
        <node concept="3clFbF" id="4kZuEukUtzs" role="3cqZAp">
          <node concept="Xl_RD" id="4kZuEukUtzr" role="3clFbG">
            <property role="Xl_RC" value="list" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="4kZuEukUsow" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="4kZuEukUt$C">
    <property role="3GE5qa" value="extractionTypes" />
    <ref role="13h7C2" to="quht:4kZuEukUt$e" resolve="ExtractionTargetCount" />
    <node concept="13hLZK" id="4kZuEukUt$D" role="13h7CW">
      <node concept="3clFbS" id="4kZuEukUt$E" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="4kZuEukUt_v" role="13h7CS">
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getType" />
      <ref role="13i0hy" node="1ELd1MG0ydW" resolve="getType" />
      <node concept="3Tm1VV" id="4kZuEukUt_w" role="1B3o_S" />
      <node concept="3clFbS" id="4kZuEukUt_z" role="3clF47">
        <node concept="3SKdUt" id="4kZuEukUtGC" role="3cqZAp">
          <node concept="3SKdUq" id="4kZuEukUtGE" role="3SKWNk">
            <property role="3SKdUp" value="TODO" />
          </node>
        </node>
        <node concept="3cpWs8" id="4kZuEukUtAm" role="3cqZAp">
          <node concept="3cpWsn" id="4kZuEukUtAp" role="3cpWs9">
            <property role="TrG5h" value="num" />
            <node concept="3Tqbb2" id="4kZuEukUtAl" role="1tU5fm">
              <ref role="ehGHo" to="5qo5:78hTg1$P0UC" resolve="NumberType" />
            </node>
            <node concept="2ShNRf" id="4kZuEukUtBk" role="33vP2m">
              <node concept="3zrR0B" id="4kZuEukUtBi" role="2ShVmc">
                <node concept="3Tqbb2" id="4kZuEukUtBj" role="3zrR0E">
                  <ref role="ehGHo" to="5qo5:78hTg1$P0UC" resolve="NumberType" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4kZuEukUtBT" role="3cqZAp">
          <node concept="37vLTw" id="4kZuEukUtCv" role="3cqZAk">
            <ref role="3cqZAo" node="4kZuEukUtAp" resolve="num" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="4kZuEukUt_$" role="3clF45">
        <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
      </node>
    </node>
    <node concept="13i0hz" id="4kZuEukUt__" role="13h7CS">
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getName" />
      <ref role="13i0hy" node="1ELd1MGdo4P" resolve="getName" />
      <node concept="3Tm1VV" id="4kZuEukUt_A" role="1B3o_S" />
      <node concept="3clFbS" id="4kZuEukUt_D" role="3clF47">
        <node concept="3clFbF" id="4kZuEukUtIO" role="3cqZAp">
          <node concept="Xl_RD" id="4kZuEukUtIN" role="3clFbG">
            <property role="Xl_RC" value="count" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="4kZuEukUt_E" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="4kZuEukUtKi">
    <property role="3GE5qa" value="extractionTypes" />
    <ref role="13h7C2" to="quht:4kZuEukUtJS" resolve="ExtractionTargetPresence" />
    <node concept="13hLZK" id="4kZuEukUtKj" role="13h7CW">
      <node concept="3clFbS" id="4kZuEukUtKk" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="4kZuEukUtKt" role="13h7CS">
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getType" />
      <ref role="13i0hy" node="1ELd1MG0ydW" resolve="getType" />
      <node concept="3Tm1VV" id="4kZuEukUtKu" role="1B3o_S" />
      <node concept="3clFbS" id="4kZuEukUtKx" role="3clF47">
        <node concept="3SKdUt" id="4kZuEukUu7N" role="3cqZAp">
          <node concept="3SKdUq" id="4kZuEukUu7P" role="3SKWNk">
            <property role="3SKdUp" value="TODO" />
          </node>
        </node>
        <node concept="3cpWs6" id="4kZuEukUtRo" role="3cqZAp">
          <node concept="2ShNRf" id="4kZuEukUtRH" role="3cqZAk">
            <node concept="3zrR0B" id="4kZuEukUu3n" role="2ShVmc">
              <node concept="3Tqbb2" id="4kZuEukUu3p" role="3zrR0E">
                <ref role="ehGHo" to="5qo5:6sdnDbSlaon" resolve="BooleanType" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="4kZuEukUtKy" role="3clF45">
        <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
      </node>
    </node>
    <node concept="13i0hz" id="4kZuEukUtKz" role="13h7CS">
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getName" />
      <ref role="13i0hy" node="1ELd1MGdo4P" resolve="getName" />
      <node concept="3Tm1VV" id="4kZuEukUtK$" role="1B3o_S" />
      <node concept="3clFbS" id="4kZuEukUtKB" role="3clF47">
        <node concept="3clFbF" id="4kZuEukUu9X" role="3cqZAp">
          <node concept="Xl_RD" id="4kZuEukUu9W" role="3clFbG">
            <property role="Xl_RC" value="presence" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="4kZuEukUtKC" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="4kZuEukVaTu">
    <property role="3GE5qa" value="representationMeasure" />
    <ref role="13h7C2" to="quht:4fA_w_st0g6" resolve="AbstractRepresentationMeasure" />
    <node concept="13i0hz" id="1wn8NGzt0lM" role="13h7CS">
      <property role="TrG5h" value="getResultType" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <node concept="3Tm1VV" id="1wn8NGzt0lN" role="1B3o_S" />
      <node concept="3Tqbb2" id="1wn8NGzt0lO" role="3clF45">
        <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
      </node>
      <node concept="3clFbS" id="1wn8NGzt0lP" role="3clF47" />
    </node>
    <node concept="13hLZK" id="4kZuEukVaTv" role="13h7CW">
      <node concept="3clFbS" id="4kZuEukVaTw" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4kZuEukVeLV">
    <property role="3GE5qa" value="representationMeasure" />
    <ref role="13h7C2" to="quht:4fA_w_st0h5" resolve="TFIDFRepresentationMeasure" />
    <node concept="13i0hz" id="1wn8NGzt17p" role="13h7CS">
      <property role="TrG5h" value="getResultType" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="1wn8NGzt0lM" resolve="getResultType" />
      <node concept="3Tm1VV" id="1wn8NGzt17q" role="1B3o_S" />
      <node concept="3clFbS" id="1wn8NGzt17t" role="3clF47">
        <node concept="3cpWs8" id="1wn8NGzt1VH" role="3cqZAp">
          <node concept="3cpWsn" id="1wn8NGzt1VI" role="3cpWs9">
            <property role="TrG5h" value="num" />
            <node concept="3Tqbb2" id="1wn8NGzt1VJ" role="1tU5fm">
              <ref role="ehGHo" to="5qo5:78hTg1$P0UC" resolve="NumberType" />
            </node>
            <node concept="2ShNRf" id="1wn8NGzt1VK" role="33vP2m">
              <node concept="3zrR0B" id="1wn8NGzt1VL" role="2ShVmc">
                <node concept="3Tqbb2" id="1wn8NGzt1VM" role="3zrR0E">
                  <ref role="ehGHo" to="5qo5:78hTg1$P0UC" resolve="NumberType" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1wn8NGzt1VN" role="3cqZAp">
          <node concept="2OqwBi" id="1wn8NGzt1VO" role="3clFbG">
            <node concept="37vLTw" id="1wn8NGzt1VP" role="2Oq$k0">
              <ref role="3cqZAo" node="1wn8NGzt1VI" resolve="num" />
            </node>
            <node concept="2qgKlT" id="1wn8NGzt1VQ" role="2OqNvi">
              <ref role="37wK5l" to="b1h1:19PglA21KtA" resolve="setPrecision" />
              <node concept="3cmrfG" id="1wn8NGzt1VR" role="37wK5m">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1wn8NGzt1VS" role="3cqZAp">
          <node concept="37vLTw" id="1wn8NGzt1VT" role="3cqZAk">
            <ref role="3cqZAo" node="1wn8NGzt1VI" resolve="num" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="4kZuEukVeTK" role="3clF45">
        <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
      </node>
    </node>
    <node concept="13hLZK" id="4kZuEukVeLW" role="13h7CW">
      <node concept="3clFbS" id="4kZuEukVeLX" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4kZuEukVf0O">
    <property role="3GE5qa" value="representationMeasure" />
    <ref role="13h7C2" to="quht:4fA_w_st0gA" resolve="TermFrequencyAbsoluteRepresentationMeasure" />
    <node concept="13i0hz" id="1wn8NGzt2Eb" role="13h7CS">
      <property role="TrG5h" value="getResultType" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="1wn8NGzt0lM" resolve="getResultType" />
      <node concept="3Tm1VV" id="1wn8NGzt2Ec" role="1B3o_S" />
      <node concept="3clFbS" id="1wn8NGzt2Ef" role="3clF47">
        <node concept="3cpWs8" id="1wn8NGzt3Qc" role="3cqZAp">
          <node concept="3cpWsn" id="1wn8NGzt3Qd" role="3cpWs9">
            <property role="TrG5h" value="num" />
            <node concept="3Tqbb2" id="1wn8NGzt3Qe" role="1tU5fm">
              <ref role="ehGHo" to="5qo5:78hTg1$P0UC" resolve="NumberType" />
            </node>
            <node concept="2ShNRf" id="1wn8NGzt3Qf" role="33vP2m">
              <node concept="3zrR0B" id="1wn8NGzt3Qg" role="2ShVmc">
                <node concept="3Tqbb2" id="1wn8NGzt3Qh" role="3zrR0E">
                  <ref role="ehGHo" to="5qo5:78hTg1$P0UC" resolve="NumberType" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1wn8NGzt3Qi" role="3cqZAp">
          <node concept="2OqwBi" id="1wn8NGzt3Qj" role="3clFbG">
            <node concept="37vLTw" id="1wn8NGzt3Qk" role="2Oq$k0">
              <ref role="3cqZAo" node="1wn8NGzt3Qd" resolve="num" />
            </node>
            <node concept="2qgKlT" id="1wn8NGzt3Ql" role="2OqNvi">
              <ref role="37wK5l" to="b1h1:19PglA21KtA" resolve="setPrecision" />
              <node concept="3cmrfG" id="1wn8NGzt3Qm" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1wn8NGzt3Qn" role="3cqZAp">
          <node concept="37vLTw" id="1wn8NGzt3Qo" role="3cqZAk">
            <ref role="3cqZAo" node="1wn8NGzt3Qd" resolve="num" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="1wn8NGzt2Eg" role="3clF45">
        <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
      </node>
    </node>
    <node concept="13hLZK" id="4kZuEukVf0P" role="13h7CW">
      <node concept="3clFbS" id="4kZuEukVf0Q" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4kZuEukVfzU">
    <property role="3GE5qa" value="representationMeasure" />
    <ref role="13h7C2" to="quht:1wn8NGzsoZk" resolve="TermFrequencyRelativeRepresentationMeasure" />
    <node concept="13i0hz" id="1wn8NGzt4$E" role="13h7CS">
      <property role="TrG5h" value="getResultType" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="1wn8NGzt0lM" resolve="getResultType" />
      <node concept="3Tm1VV" id="1wn8NGzt4$F" role="1B3o_S" />
      <node concept="3clFbS" id="1wn8NGzt4$I" role="3clF47">
        <node concept="3cpWs8" id="1wn8NGzt0m0" role="3cqZAp">
          <node concept="3cpWsn" id="1wn8NGzt0m1" role="3cpWs9">
            <property role="TrG5h" value="num" />
            <node concept="3Tqbb2" id="1wn8NGzt0m2" role="1tU5fm">
              <ref role="ehGHo" to="5qo5:78hTg1$P0UC" resolve="NumberType" />
            </node>
            <node concept="2ShNRf" id="1wn8NGzt0m3" role="33vP2m">
              <node concept="3zrR0B" id="1wn8NGzt0m4" role="2ShVmc">
                <node concept="3Tqbb2" id="1wn8NGzt0m5" role="3zrR0E">
                  <ref role="ehGHo" to="5qo5:78hTg1$P0UC" resolve="NumberType" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1wn8NGzt0m6" role="3cqZAp">
          <node concept="2OqwBi" id="1wn8NGzt0m7" role="3clFbG">
            <node concept="37vLTw" id="1wn8NGzt0m8" role="2Oq$k0">
              <ref role="3cqZAo" node="1wn8NGzt0m1" resolve="num" />
            </node>
            <node concept="2qgKlT" id="1wn8NGzt0m9" role="2OqNvi">
              <ref role="37wK5l" to="b1h1:19PglA21KtA" resolve="setPrecision" />
              <node concept="3cmrfG" id="1wn8NGzt0ma" role="37wK5m">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1wn8NGzt0mb" role="3cqZAp">
          <node concept="37vLTw" id="1wn8NGzt0mc" role="3cqZAk">
            <ref role="3cqZAo" node="1wn8NGzt0m1" resolve="num" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="1wn8NGzt4$J" role="3clF45">
        <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
      </node>
    </node>
    <node concept="13hLZK" id="4kZuEukVfzV" role="13h7CW">
      <node concept="3clFbS" id="4kZuEukVfzW" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4kZuEukVg6K">
    <property role="3GE5qa" value="representationMeasure" />
    <ref role="13h7C2" to="quht:4fA_w_st0g7" resolve="TermPresenceRepresentationMeasure" />
    <node concept="13i0hz" id="1wn8NGzt6l$" role="13h7CS">
      <property role="TrG5h" value="getResultType" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="1wn8NGzt0lM" resolve="getResultType" />
      <node concept="3Tm1VV" id="1wn8NGzt6l_" role="1B3o_S" />
      <node concept="3clFbS" id="1wn8NGzt6lC" role="3clF47">
        <node concept="3cpWs6" id="1wn8NGzt0mf" role="3cqZAp">
          <node concept="2ShNRf" id="1wn8NGzt0mg" role="3cqZAk">
            <node concept="3zrR0B" id="1wn8NGzt0mh" role="2ShVmc">
              <node concept="3Tqbb2" id="1wn8NGzt0mi" role="3zrR0E">
                <ref role="ehGHo" to="5qo5:6sdnDbSlaon" resolve="BooleanType" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="1wn8NGzt6lD" role="3clF45">
        <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
      </node>
    </node>
    <node concept="13hLZK" id="4kZuEukVg6L" role="13h7CW">
      <node concept="3clFbS" id="4kZuEukVg6M" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4kZuEukVzRa">
    <property role="3GE5qa" value="representationMeasure" />
    <ref role="13h7C2" to="quht:4kZuEukVzQl" resolve="IRequireRepresentationMeasure" />
    <node concept="13i0hz" id="4kZuEukVzRl" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getMeasure" />
      <node concept="3Tm1VV" id="4kZuEukVzRm" role="1B3o_S" />
      <node concept="3Tqbb2" id="4kZuEukVzR_" role="3clF45">
        <ref role="ehGHo" to="quht:4fA_w_st0g6" resolve="AbstractRepresentationMeasure" />
      </node>
      <node concept="3clFbS" id="4kZuEukVzRo" role="3clF47">
        <node concept="3clFbJ" id="4kZuEukVzSg" role="3cqZAp">
          <node concept="2OqwBi" id="4kZuEukV$tY" role="3clFbw">
            <node concept="2OqwBi" id="4kZuEukV$11" role="2Oq$k0">
              <node concept="13iPFW" id="4kZuEukVzS$" role="2Oq$k0" />
              <node concept="3TrEf2" id="4kZuEukV$ax" role="2OqNvi">
                <ref role="3Tt5mk" to="quht:4kZuEukVzQm" resolve="measure" />
              </node>
            </node>
            <node concept="3x8VRR" id="4kZuEukV$O8" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="4kZuEukVzSi" role="3clFbx">
            <node concept="3cpWs6" id="4kZuEukV$RW" role="3cqZAp">
              <node concept="2OqwBi" id="4kZuEukV_v3" role="3cqZAk">
                <node concept="13iPFW" id="4kZuEukV$W1" role="2Oq$k0" />
                <node concept="3TrEf2" id="4kZuEukV_G9" role="2OqNvi">
                  <ref role="3Tt5mk" to="quht:4kZuEukVzQm" resolve="measure" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="4kZuEukV_Kc" role="9aQIa">
            <node concept="3clFbS" id="4kZuEukV_Kd" role="9aQI4">
              <node concept="3cpWs6" id="4kZuEukV_Ob" role="3cqZAp">
                <node concept="2OqwBi" id="4kZuEukV_Xo" role="3cqZAk">
                  <node concept="13iPFW" id="4kZuEukV_Oy" role="2Oq$k0" />
                  <node concept="2qgKlT" id="4kZuEukVAFm" role="2OqNvi">
                    <ref role="37wK5l" node="4kZuEukVAjE" resolve="getDefaultMeasure" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4kZuEukVAjE" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getDefaultMeasure" />
      <node concept="3Tm1VV" id="4kZuEukVAjF" role="1B3o_S" />
      <node concept="3Tqbb2" id="4kZuEukVAoh" role="3clF45">
        <ref role="ehGHo" to="quht:4fA_w_st0g6" resolve="AbstractRepresentationMeasure" />
      </node>
      <node concept="3clFbS" id="4kZuEukVAjH" role="3clF47" />
    </node>
    <node concept="13hLZK" id="4kZuEukVzRb" role="13h7CW">
      <node concept="3clFbS" id="4kZuEukVzRc" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4kZuEukYqe$">
    <property role="3GE5qa" value="extractionTargets" />
    <ref role="13h7C2" to="quht:4kZuEukYqea" resolve="WordlistEntries" />
    <node concept="13hLZK" id="4kZuEukYqe_" role="13h7CW">
      <node concept="3clFbS" id="4kZuEukYqeA" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="4kZuEukYqeJ" role="13h7CS">
      <property role="TrG5h" value="getDefaultBOWMeasure" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="1ELd1MGdvrS" resolve="getDefaultBOWMeasure" />
      <node concept="3Tm1VV" id="4kZuEukYqeK" role="1B3o_S" />
      <node concept="3clFbS" id="4kZuEukYqeN" role="3clF47">
        <node concept="3cpWs6" id="4kZuEukYqfj" role="3cqZAp">
          <node concept="2ShNRf" id="4kZuEukYqfF" role="3cqZAk">
            <node concept="3zrR0B" id="4kZuEukYqfD" role="2ShVmc">
              <node concept="3Tqbb2" id="4kZuEukYqfE" role="3zrR0E">
                <ref role="ehGHo" to="quht:4fA_w_st0gA" resolve="TermFrequencyAbsoluteRepresentationMeasure" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="4kZuEukYqeO" role="3clF45">
        <ref role="ehGHo" to="quht:4fA_w_st0g6" resolve="AbstractRepresentationMeasure" />
      </node>
    </node>
    <node concept="13i0hz" id="4kZuEukYqeP" role="13h7CS">
      <property role="TrG5h" value="getName" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="3RvSrMfG0iB" resolve="getName" />
      <node concept="3Tm1VV" id="4kZuEukYqeQ" role="1B3o_S" />
      <node concept="3clFbS" id="4kZuEukYqeT" role="3clF47">
        <node concept="3clFbJ" id="7qBCLwWhG_s" role="3cqZAp">
          <node concept="3clFbS" id="7qBCLwWhG_u" role="3clFbx">
            <node concept="3cpWs8" id="7qBCLwWhIqh" role="3cqZAp">
              <node concept="3cpWsn" id="7qBCLwWhIqk" role="3cpWs9">
                <property role="TrG5h" value="list" />
                <node concept="3Tqbb2" id="7qBCLwWhIqf" role="1tU5fm">
                  <ref role="ehGHo" to="veum:4fA_w_sqrL8" resolve="AbstractWordlistType" />
                </node>
                <node concept="1PxgMI" id="7qBCLwWhVrf" role="33vP2m">
                  <node concept="chp4Y" id="7qBCLwWhVys" role="3oSUPX">
                    <ref role="cht4Q" to="veum:4fA_w_sqrL8" resolve="AbstractWordlistType" />
                  </node>
                  <node concept="2OqwBi" id="7qBCLwWhP6a" role="1m5AlR">
                    <node concept="2OqwBi" id="7qBCLwWhI$K" role="2Oq$k0">
                      <node concept="13iPFW" id="7qBCLwWhIrk" role="2Oq$k0" />
                      <node concept="3TrEf2" id="7qBCLwWhOMG" role="2OqNvi">
                        <ref role="3Tt5mk" to="quht:7qBCLwWffaK" resolve="wordlist" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="7qBCLwWhSn$" role="2OqNvi">
                      <ref role="37wK5l" to="64zb:7qBCLwWhIAp" resolve="getObjectAtPosition" />
                      <node concept="13iPFW" id="7qBCLwWhV0h" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2aoocMLibbO" role="3cqZAp">
              <node concept="2OqwBi" id="2aoocMLibF_" role="3clFbG">
                <node concept="37vLTw" id="2aoocMLibbM" role="2Oq$k0">
                  <ref role="3cqZAo" node="7qBCLwWhIqk" resolve="list" />
                </node>
                <node concept="2qgKlT" id="2aoocMLicof" role="2OqNvi">
                  <ref role="37wK5l" to="wvph:2aoocMLh$Ry" resolve="storeObject" />
                  <node concept="3cpWs3" id="2aoocMLictY" role="37wK5m">
                    <node concept="Xl_RD" id="2aoocMLictZ" role="3uHU7B">
                      <property role="Xl_RC" value="C:/tmp/" />
                    </node>
                    <node concept="2OqwBi" id="2aoocMLicu0" role="3uHU7w">
                      <node concept="37vLTw" id="2aoocMLicu1" role="2Oq$k0">
                        <ref role="3cqZAo" node="7qBCLwWhIqk" resolve="list" />
                      </node>
                      <node concept="3TrcHB" id="2aoocMLicu2" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7qBCLwWihrS" role="3cqZAp">
              <node concept="3cpWs3" id="2aoocML$Ueq" role="3cqZAk">
                <node concept="Xl_RD" id="2aoocML$Uer" role="3uHU7w">
                  <property role="Xl_RC" value=".txt" />
                </node>
                <node concept="3cpWs3" id="2aoocML$Ues" role="3uHU7B">
                  <node concept="3cpWs3" id="7qBCLwWiisz" role="3uHU7B">
                    <node concept="Xl_RD" id="7qBCLwWihCt" role="3uHU7B">
                      <property role="Xl_RC" value="wordlist-entries_" />
                    </node>
                    <node concept="Xl_RD" id="2aoocML$Uet" role="3uHU7w">
                      <property role="Xl_RC" value="C:/tmp/" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2aoocML$Ueu" role="3uHU7w">
                    <node concept="37vLTw" id="2aoocML$Uev" role="2Oq$k0">
                      <ref role="3cqZAo" node="7qBCLwWhIqk" resolve="list" />
                    </node>
                    <node concept="3TrcHB" id="2aoocML$Uew" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="7qBCLwWhHhW" role="3clFbw">
            <node concept="2OqwBi" id="7qBCLwWffPk" role="3uHU7B">
              <node concept="2OqwBi" id="7qBCLwWffkS" role="2Oq$k0">
                <node concept="13iPFW" id="7qBCLwWhGNw" role="2Oq$k0" />
                <node concept="3TrEf2" id="7qBCLwWffzH" role="2OqNvi">
                  <ref role="3Tt5mk" to="quht:7qBCLwWffaK" resolve="wordlist" />
                </node>
              </node>
              <node concept="3x8VRR" id="7qBCLwWhH7l" role="2OqNvi" />
            </node>
            <node concept="3fqX7Q" id="7qBCLwWhHc4" role="3uHU7w">
              <node concept="2OqwBi" id="7qBCLwWhHc6" role="3fr31v">
                <node concept="2OqwBi" id="7qBCLwWhHc7" role="2Oq$k0">
                  <node concept="2OqwBi" id="7qBCLwWhHc8" role="2Oq$k0">
                    <node concept="13iPFW" id="7qBCLwWhHc9" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7qBCLwWhHca" role="2OqNvi">
                      <ref role="3Tt5mk" to="quht:7qBCLwWffaK" resolve="wordlist" />
                    </node>
                  </node>
                  <node concept="2yIwOk" id="7qBCLwWhHcb" role="2OqNvi" />
                </node>
                <node concept="liA8E" id="7qBCLwWhHcc" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.isAbstract():boolean" resolve="isAbstract" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7qBCLwWin7U" role="3cqZAp">
          <node concept="3SKdUq" id="7qBCLwWin7W" role="3SKWNk">
            <property role="3SKdUp" value="TODO call exception" />
          </node>
        </node>
        <node concept="3cpWs6" id="7qBCLwWikzJ" role="3cqZAp">
          <node concept="Xl_RD" id="7qBCLwWikzL" role="3cqZAk">
            <property role="Xl_RC" value="wordlist-entries_invalidPath" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="4kZuEukYqeU" role="3clF45" />
    </node>
  </node>
</model>

