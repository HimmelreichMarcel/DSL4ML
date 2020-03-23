<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fd640666-bf1e-4b6e-b280-877c21b6b034(join.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="8" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="reag" ref="r:ade3e00b-044f-42e0-846c-a1a8f349d15b(join.structure)" implicit="true" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" implicit="true" />
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" implicit="true" />
    <import index="cy3q" ref="r:c8ee5215-0f68-464d-b6fd-579e613a5a60(join.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
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
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6" />
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
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1207055528241" name="jetbrains.mps.lang.typesystem.structure.WarningStatement" flags="nn" index="a7r0C">
        <child id="1207055552304" name="warningText" index="a7wSD" />
      </concept>
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1227096774658" name="jetbrains.mps.lang.typesystem.structure.MessageStatement" flags="ng" index="2OEH$v">
        <child id="1227096802790" name="nodeToReport" index="2OEOjV" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
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
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="18kY7G" id="10zQN_$WceB">
    <property role="TrG5h" value="check_JoinStatement" />
    <node concept="3clFbS" id="10zQN_$WceC" role="18ibNy">
      <node concept="3SKdUt" id="7Agrdoq852E" role="3cqZAp">
        <node concept="3SKdUq" id="7Agrdoq852G" role="3SKWNk">
          <property role="3SKdUp" value="do nothing if at least one of both vars are not set" />
        </node>
      </node>
      <node concept="3clFbJ" id="7Agrdoq7X$F" role="3cqZAp">
        <node concept="3clFbS" id="7Agrdoq7X$H" role="3clFbx">
          <node concept="3cpWs6" id="7Agrdoq846o" role="3cqZAp" />
        </node>
        <node concept="22lmx$" id="7Agrdoq80OE" role="3clFbw">
          <node concept="2OqwBi" id="6uf7$58AeIC" role="3uHU7w">
            <node concept="2OqwBi" id="7Agrdoq830E" role="2Oq$k0">
              <node concept="2OqwBi" id="7Agrdoq81x1" role="2Oq$k0">
                <node concept="1YBJjd" id="7Agrdoq81go" role="2Oq$k0">
                  <ref role="1YBMHb" node="10zQN_$WceE" resolve="js" />
                </node>
                <node concept="3TrEf2" id="7Agrdoq82cJ" role="2OqNvi">
                  <ref role="3Tt5mk" to="reag:10zQN_$VTZc" resolve="other" />
                </node>
              </node>
              <node concept="2yIwOk" id="6uf7$58AezO" role="2OqNvi" />
            </node>
            <node concept="liA8E" id="6uf7$58Afs3" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractConcept.isAbstract():boolean" resolve="isAbstract" />
            </node>
          </node>
          <node concept="2OqwBi" id="7Agrdoq7ZRZ" role="3uHU7B">
            <node concept="2OqwBi" id="6uf7$58Adyz" role="2Oq$k0">
              <node concept="2OqwBi" id="7Agrdoq7Yh4" role="2Oq$k0">
                <node concept="1YBJjd" id="7Agrdoq7Y2h" role="2Oq$k0">
                  <ref role="1YBMHb" node="10zQN_$WceE" resolve="js" />
                </node>
                <node concept="3TrEf2" id="7Agrdoq7ZsD" role="2OqNvi">
                  <ref role="3Tt5mk" to="reag:10zQN_$VTZa" resolve="object" />
                </node>
              </node>
              <node concept="2yIwOk" id="6uf7$58Aecm" role="2OqNvi" />
            </node>
            <node concept="liA8E" id="6uf7$58Aepg" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractConcept.isAbstract():boolean" resolve="isAbstract" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="7Agrdoq846r" role="3cqZAp" />
      <node concept="3cpWs8" id="10zQN__3tz6" role="3cqZAp">
        <node concept="3cpWsn" id="10zQN__3tz9" role="3cpWs9">
          <property role="TrG5h" value="object" />
          <node concept="3Tqbb2" id="10zQN__3tza" role="1tU5fm">
            <ref role="ehGHo" to="reag:LOMnt$1m84" resolve="ICanBeJoined" />
          </node>
          <node concept="10QFUN" id="10zQN__3vEO" role="33vP2m">
            <node concept="2OqwBi" id="6uf7$58CJP$" role="10QFUP">
              <node concept="2OqwBi" id="6uf7$58CHmU" role="2Oq$k0">
                <node concept="1YBJjd" id="10zQN__2XzW" role="2Oq$k0">
                  <ref role="1YBMHb" node="10zQN_$WceE" resolve="js" />
                </node>
                <node concept="2Xjw5R" id="6uf7$58CIiI" role="2OqNvi">
                  <node concept="1xMEDy" id="6uf7$58CIiK" role="1xVPHs">
                    <node concept="chp4Y" id="6uf7$58CJbT" role="ri$Ld">
                      <ref role="cht4Q" to="5frd:2$uHlqSzbou" resolve="Section" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2qgKlT" id="6uf7$58CLkK" role="2OqNvi">
                <ref role="37wK5l" to="64zb:10zQN__30Uz" resolve="getObjectAtPosition" />
                <node concept="2OqwBi" id="6uf7$58CNCw" role="37wK5m">
                  <node concept="2OqwBi" id="6uf7$58CMxV" role="2Oq$k0">
                    <node concept="1YBJjd" id="6uf7$58CM6o" role="2Oq$k0">
                      <ref role="1YBMHb" node="10zQN_$WceE" resolve="js" />
                    </node>
                    <node concept="3TrEf2" id="6uf7$58CNji" role="2OqNvi">
                      <ref role="3Tt5mk" to="reag:10zQN_$VTZa" resolve="object" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="6uf7$58COha" role="2OqNvi">
                    <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                  </node>
                </node>
                <node concept="1YBJjd" id="6uf7$58CQ3K" role="37wK5m">
                  <ref role="1YBMHb" node="10zQN_$WceE" resolve="js" />
                </node>
              </node>
            </node>
            <node concept="3Tqbb2" id="10zQN__3vEP" role="10QFUM">
              <ref role="ehGHo" to="reag:LOMnt$1m84" resolve="ICanBeJoined" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="10zQN_$YHEW" role="3cqZAp">
        <node concept="3cpWsn" id="10zQN_$YHEX" role="3cpWs9">
          <property role="TrG5h" value="other" />
          <node concept="3Tqbb2" id="10zQN_$YHEY" role="1tU5fm">
            <ref role="ehGHo" to="reag:LOMnt$1m84" resolve="ICanBeJoined" />
          </node>
          <node concept="10QFUN" id="6uf7$58CQCc" role="33vP2m">
            <node concept="2OqwBi" id="6uf7$58CQCd" role="10QFUP">
              <node concept="2OqwBi" id="6uf7$58CQCe" role="2Oq$k0">
                <node concept="1YBJjd" id="6uf7$58CQCf" role="2Oq$k0">
                  <ref role="1YBMHb" node="10zQN_$WceE" resolve="js" />
                </node>
                <node concept="2Xjw5R" id="6uf7$58CQCg" role="2OqNvi">
                  <node concept="1xMEDy" id="6uf7$58CQCh" role="1xVPHs">
                    <node concept="chp4Y" id="6uf7$58CQCi" role="ri$Ld">
                      <ref role="cht4Q" to="5frd:2$uHlqSzbou" resolve="Section" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2qgKlT" id="6uf7$58CQCj" role="2OqNvi">
                <ref role="37wK5l" to="64zb:10zQN__30Uz" resolve="getObjectAtPosition" />
                <node concept="2OqwBi" id="6uf7$58CQCk" role="37wK5m">
                  <node concept="2OqwBi" id="6uf7$58CQCl" role="2Oq$k0">
                    <node concept="1YBJjd" id="6uf7$58CQCm" role="2Oq$k0">
                      <ref role="1YBMHb" node="10zQN_$WceE" resolve="js" />
                    </node>
                    <node concept="3TrEf2" id="6uf7$58CRse" role="2OqNvi">
                      <ref role="3Tt5mk" to="reag:10zQN_$VTZc" resolve="other" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="6uf7$58CQCo" role="2OqNvi">
                    <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                  </node>
                </node>
                <node concept="1YBJjd" id="6uf7$58CQCp" role="37wK5m">
                  <ref role="1YBMHb" node="10zQN_$WceE" resolve="js" />
                </node>
              </node>
            </node>
            <node concept="3Tqbb2" id="6uf7$58CQCq" role="10QFUM">
              <ref role="ehGHo" to="reag:LOMnt$1m84" resolve="ICanBeJoined" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="10zQN__3s_C" role="3cqZAp" />
      <node concept="3SKdUt" id="10zQN__8pSP" role="3cqZAp">
        <node concept="3SKdUq" id="10zQN__8pSR" role="3SKWNk">
          <property role="3SKdUp" value="TODO: check conditions" />
        </node>
      </node>
      <node concept="3clFbJ" id="10zQN_$WjdK" role="3cqZAp">
        <node concept="2OqwBi" id="10zQN_$YKPH" role="3clFbw">
          <node concept="37vLTw" id="10zQN_$YJJ8" role="2Oq$k0">
            <ref role="3cqZAo" node="10zQN__3tz9" resolve="object" />
          </node>
          <node concept="3w_OXm" id="10zQN_$YLmj" role="2OqNvi" />
        </node>
        <node concept="3clFbS" id="10zQN_$WjdU" role="3clFbx">
          <node concept="2MkqsV" id="10zQN_$Wqll" role="3cqZAp">
            <node concept="3cpWs3" id="10zQN_$WtoA" role="2MkJ7o">
              <node concept="Xl_RD" id="10zQN_$WtCb" role="3uHU7w">
                <property role="Xl_RC" value=" cannot be joined." />
              </node>
              <node concept="3cpWs3" id="10zQN_$WqAU" role="3uHU7B">
                <node concept="Xl_RD" id="10zQN_$Wqlx" role="3uHU7B">
                  <property role="Xl_RC" value="Type " />
                </node>
                <node concept="2OqwBi" id="10zQN_$Wsh0" role="3uHU7w">
                  <node concept="2OqwBi" id="10zQN_$Wrvp" role="2Oq$k0">
                    <node concept="2OqwBi" id="10zQN_$WqR$" role="2Oq$k0">
                      <node concept="1YBJjd" id="10zQN_$WqBc" role="2Oq$k0">
                        <ref role="1YBMHb" node="10zQN_$WceE" resolve="js" />
                      </node>
                      <node concept="3TrEf2" id="10zQN_$Wriq" role="2OqNvi">
                        <ref role="3Tt5mk" to="reag:10zQN_$VTZa" resolve="object" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="10zQN_$WrSE" role="2OqNvi">
                      <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                    </node>
                  </node>
                  <node concept="2yIwOk" id="10zQN_$WsMk" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="10zQN_$WwEQ" role="2OEOjV">
              <node concept="1YBJjd" id="10zQN_$WweJ" role="2Oq$k0">
                <ref role="1YBMHb" node="10zQN_$WceE" resolve="js" />
              </node>
              <node concept="3TrEf2" id="10zQN_$Wxqs" role="2OqNvi">
                <ref role="3Tt5mk" to="reag:10zQN_$VTZa" resolve="object" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="10zQN_$WgKt" role="3cqZAp">
        <node concept="3clFbS" id="10zQN_$WgKv" role="3clFbx">
          <node concept="2MkqsV" id="10zQN_$Wxu7" role="3cqZAp">
            <node concept="3cpWs3" id="10zQN_$Wxu8" role="2MkJ7o">
              <node concept="Xl_RD" id="10zQN_$Wxu9" role="3uHU7w">
                <property role="Xl_RC" value=" cannot be joined." />
              </node>
              <node concept="3cpWs3" id="10zQN_$Wxua" role="3uHU7B">
                <node concept="Xl_RD" id="10zQN_$Wxub" role="3uHU7B">
                  <property role="Xl_RC" value="Type " />
                </node>
                <node concept="2OqwBi" id="10zQN_$Wxuc" role="3uHU7w">
                  <node concept="2OqwBi" id="10zQN_$Wxud" role="2Oq$k0">
                    <node concept="2OqwBi" id="10zQN_$Wxue" role="2Oq$k0">
                      <node concept="1YBJjd" id="10zQN_$Wxuf" role="2Oq$k0">
                        <ref role="1YBMHb" node="10zQN_$WceE" resolve="js" />
                      </node>
                      <node concept="3TrEf2" id="10zQN_$WxWF" role="2OqNvi">
                        <ref role="3Tt5mk" to="reag:10zQN_$VTZc" resolve="other" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="10zQN_$Wxuh" role="2OqNvi">
                      <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                    </node>
                  </node>
                  <node concept="2yIwOk" id="10zQN_$Wxui" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="10zQN_$Wxuj" role="2OEOjV">
              <node concept="1YBJjd" id="10zQN_$Wxuk" role="2Oq$k0">
                <ref role="1YBMHb" node="10zQN_$WceE" resolve="js" />
              </node>
              <node concept="3TrEf2" id="10zQN_$Wxul" role="2OqNvi">
                <ref role="3Tt5mk" to="reag:10zQN_$VTZa" resolve="object" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="10zQN_$YMEf" role="3clFbw">
          <node concept="37vLTw" id="10zQN_$YMp4" role="2Oq$k0">
            <ref role="3cqZAo" node="10zQN_$YHEX" resolve="other" />
          </node>
          <node concept="3w_OXm" id="10zQN_$YMYK" role="2OqNvi" />
        </node>
      </node>
      <node concept="3clFbJ" id="10zQN_$Wk0P" role="3cqZAp">
        <node concept="3clFbS" id="10zQN_$Wk0R" role="3clFbx">
          <node concept="2MkqsV" id="10zQN_$Wy8f" role="3cqZAp">
            <node concept="3cpWs3" id="10zQN_$W$fj" role="2MkJ7o">
              <node concept="3cpWs3" id="10zQN_$Wzcp" role="3uHU7B">
                <node concept="3cpWs3" id="10zQN_$WysX" role="3uHU7B">
                  <node concept="Xl_RD" id="10zQN_$WyaG" role="3uHU7B">
                    <property role="Xl_RC" value="Joint-objects are of different type: " />
                  </node>
                  <node concept="2OqwBi" id="10zQN_$WCxV" role="3uHU7w">
                    <node concept="2OqwBi" id="10zQN_$Wytf" role="2Oq$k0">
                      <node concept="2OqwBi" id="10zQN_$Wytg" role="2Oq$k0">
                        <node concept="2OqwBi" id="10zQN_$Wyth" role="2Oq$k0">
                          <node concept="1YBJjd" id="10zQN_$Wyti" role="2Oq$k0">
                            <ref role="1YBMHb" node="10zQN_$WceE" resolve="js" />
                          </node>
                          <node concept="3TrEf2" id="10zQN_$W$Zd" role="2OqNvi">
                            <ref role="3Tt5mk" to="reag:10zQN_$VTZa" resolve="object" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="10zQN_$Wytk" role="2OqNvi">
                          <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                        </node>
                      </node>
                      <node concept="2yIwOk" id="10zQN_$Wytl" role="2OqNvi" />
                    </node>
                    <node concept="liA8E" id="10zQN_$WD45" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.getName():java.lang.String" resolve="getName" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="10zQN_$Wzuv" role="3uHU7w">
                  <property role="Xl_RC" value=" and " />
                </node>
              </node>
              <node concept="2OqwBi" id="10zQN_$WDA4" role="3uHU7w">
                <node concept="2OqwBi" id="10zQN_$W$xx" role="2Oq$k0">
                  <node concept="2OqwBi" id="10zQN_$W$xy" role="2Oq$k0">
                    <node concept="2OqwBi" id="10zQN_$W$xz" role="2Oq$k0">
                      <node concept="1YBJjd" id="10zQN_$W$x$" role="2Oq$k0">
                        <ref role="1YBMHb" node="10zQN_$WceE" resolve="js" />
                      </node>
                      <node concept="3TrEf2" id="10zQN_$W$x_" role="2OqNvi">
                        <ref role="3Tt5mk" to="reag:10zQN_$VTZc" resolve="other" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="10zQN_$W$xA" role="2OqNvi">
                      <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                    </node>
                  </node>
                  <node concept="2yIwOk" id="10zQN_$W$xB" role="2OqNvi" />
                </node>
                <node concept="liA8E" id="10zQN_$WEnM" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getName():java.lang.String" resolve="getName" />
                </node>
              </node>
            </node>
            <node concept="1YBJjd" id="10zQN_$W_aq" role="2OEOjV">
              <ref role="1YBMHb" node="10zQN_$WceE" resolve="js" />
            </node>
          </node>
        </node>
        <node concept="17QLQc" id="10zQN_$Wqa5" role="3clFbw">
          <node concept="2OqwBi" id="10zQN_$WlHv" role="3uHU7B">
            <node concept="2yIwOk" id="10zQN_$Wm5s" role="2OqNvi" />
            <node concept="37vLTw" id="10zQN_$YNTd" role="2Oq$k0">
              <ref role="3cqZAo" node="10zQN__3tz9" resolve="object" />
            </node>
          </node>
          <node concept="2OqwBi" id="10zQN_$WpuT" role="3uHU7w">
            <node concept="37vLTw" id="10zQN_$YOd1" role="2Oq$k0">
              <ref role="3cqZAo" node="10zQN_$YHEX" resolve="other" />
            </node>
            <node concept="2yIwOk" id="10zQN_$WpZE" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="10zQN_$YCXW" role="3cqZAp">
        <node concept="3clFbS" id="10zQN_$YCXY" role="3clFbx">
          <node concept="2MkqsV" id="10zQN_$YQJm" role="3cqZAp">
            <node concept="2OqwBi" id="10zQN_$YQS4" role="2MkJ7o">
              <node concept="37vLTw" id="10zQN_$YQJ_" role="2Oq$k0">
                <ref role="3cqZAo" node="10zQN__3tz9" resolve="object" />
              </node>
              <node concept="2qgKlT" id="10zQN_$YR3Q" role="2OqNvi">
                <ref role="37wK5l" to="cy3q:10zQN_$WHwC" resolve="getJointError" />
                <node concept="37vLTw" id="10zQN_$YR7l" role="37wK5m">
                  <ref role="3cqZAo" node="10zQN_$YHEX" resolve="other" />
                </node>
              </node>
            </node>
            <node concept="1YBJjd" id="10zQN_$YRaR" role="2OEOjV">
              <ref role="1YBMHb" node="10zQN_$WceE" resolve="js" />
            </node>
          </node>
        </node>
        <node concept="3fqX7Q" id="10zQN_$YQF$" role="3clFbw">
          <node concept="2OqwBi" id="10zQN_$YQFA" role="3fr31v">
            <node concept="37vLTw" id="10zQN_$YQFB" role="2Oq$k0">
              <ref role="3cqZAo" node="10zQN__3tz9" resolve="object" />
            </node>
            <node concept="2qgKlT" id="10zQN_$YQFC" role="2OqNvi">
              <ref role="37wK5l" to="cy3q:10zQN_$WH4w" resolve="canJoinWith" />
              <node concept="37vLTw" id="LOMnt$5vMF" role="37wK5m">
                <ref role="3cqZAo" node="10zQN_$YHEX" resolve="other" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="10zQN_$YSEz" role="3cqZAp">
        <node concept="3cpWsn" id="10zQN_$YSEA" role="3cpWs9">
          <property role="TrG5h" value="warningMessage" />
          <node concept="17QB3L" id="10zQN_$YSEx" role="1tU5fm" />
          <node concept="2OqwBi" id="10zQN_$YS5T" role="33vP2m">
            <node concept="37vLTw" id="10zQN_$YRXt" role="2Oq$k0">
              <ref role="3cqZAo" node="10zQN__3tz9" resolve="object" />
            </node>
            <node concept="2qgKlT" id="10zQN_$YSbX" role="2OqNvi">
              <ref role="37wK5l" to="cy3q:10zQN_$WYH1" resolve="getJointWarning" />
              <node concept="37vLTw" id="10zQN_$YT5q" role="37wK5m">
                <ref role="3cqZAo" node="10zQN_$YHEX" resolve="other" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="10zQN_$YRAh" role="3cqZAp">
        <node concept="3clFbS" id="10zQN_$YRAj" role="3clFbx">
          <node concept="a7r0C" id="10zQN_$YW9f" role="3cqZAp">
            <node concept="37vLTw" id="10zQN_$YWde" role="a7wSD">
              <ref role="3cqZAo" node="10zQN_$YSEA" resolve="warningMessage" />
            </node>
            <node concept="1YBJjd" id="10zQN_$YWl6" role="2OEOjV">
              <ref role="1YBMHb" node="10zQN_$WceE" resolve="js" />
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="10zQN_$YTtO" role="3clFbw">
          <node concept="37vLTw" id="10zQN_$YT8W" role="2Oq$k0">
            <ref role="3cqZAo" node="10zQN_$YSEA" resolve="warningMessage" />
          </node>
          <node concept="17RvpY" id="10zQN_$YUkO" role="2OqNvi" />
        </node>
      </node>
      <node concept="3clFbH" id="10zQN__62pR" role="3cqZAp" />
    </node>
    <node concept="1YaCAy" id="10zQN_$WceE" role="1YuTPh">
      <property role="TrG5h" value="js" />
      <ref role="1YaFvo" to="reag:10zQN_$VSWC" resolve="JoinStatement" />
    </node>
  </node>
  <node concept="18kY7G" id="LOMnt$1m8u">
    <property role="TrG5h" value="check_ICanBeJoined" />
    <node concept="3clFbS" id="LOMnt$1m8v" role="18ibNy">
      <node concept="3clFbJ" id="LOMnt$1m8_" role="3cqZAp">
        <node concept="3fqX7Q" id="LOMnt$1mDv" role="3clFbw">
          <node concept="2OqwBi" id="LOMnt$1mDx" role="3fr31v">
            <node concept="1YBJjd" id="LOMnt$1mDy" role="2Oq$k0">
              <ref role="1YBMHb" node="LOMnt$1m8x" resolve="icbj" />
            </node>
            <node concept="1mIQ4w" id="LOMnt$1mDz" role="2OqNvi">
              <node concept="chp4Y" id="LOMnt$1mD$" role="cj9EA">
                <ref role="cht4Q" to="5frd:XZLIaPVfvV" resolve="IContainItems" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="LOMnt$1m8B" role="3clFbx">
          <node concept="2MkqsV" id="LOMnt$1mGs" role="3cqZAp">
            <node concept="Xl_RD" id="LOMnt$1mGC" role="2MkJ7o">
              <property role="Xl_RC" value="Only types that implement the 'IContainItems' interface can be joined." />
            </node>
            <node concept="1YBJjd" id="LOMnt$1mJR" role="2OEOjV">
              <ref role="1YBMHb" node="LOMnt$1m8x" resolve="icbj" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="LOMnt$1m8x" role="1YuTPh">
      <property role="TrG5h" value="icbj" />
      <ref role="1YaFvo" to="reag:LOMnt$1m84" resolve="ICanBeJoined" />
    </node>
  </node>
</model>

