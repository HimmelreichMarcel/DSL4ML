<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:371ff547-5eea-4440-a0bb-93d0be22bfcb(statements.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="8" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="pbu6" ref="r:83e946de-2a7f-4a4c-b3c9-4f671aa7f2db(org.iets3.core.expr.base.behavior)" />
    <import index="oq0c" ref="r:6c6155f0-4bbe-4af5-8c26-244d570e21e4(org.iets3.core.expr.base.plugin)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="jqrd" ref="r:a86b5aa2-977c-4dd4-975b-865365d5871c(types.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="ja9q" ref="r:fc597f30-d1d1-4d82-975e-209a1fdb1f96(statements.structure)" />
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" />
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
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
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
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
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
  <node concept="13h7C7" id="2t3FM7fJm7e">
    <property role="3GE5qa" value="statements.type" />
    <ref role="13h7C2" to="ja9q:2t3FM7fJm6M" resolve="ReadTypeStatement" />
    <node concept="13i0hz" id="2t3FM7fJm8S" role="13h7CS">
      <property role="TrG5h" value="effectDescriptor" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="pbu6:6GySMNjjWfO" resolve="effectDescriptor" />
      <node concept="3clFbS" id="2t3FM7fJm8V" role="3clF47">
        <node concept="3cpWs6" id="2t3FM7fJnkG" role="3cqZAp">
          <node concept="2ShNRf" id="2t3FM7fJnlc" role="3cqZAk">
            <node concept="1pGfFk" id="2t3FM7fJnlb" role="2ShVmc">
              <ref role="37wK5l" to="oq0c:3ni3WieuVew" resolve="EffectDescriptor" />
              <node concept="3clFbT" id="2t3FM7fJEVG" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
              <node concept="3clFbT" id="2t3FM7fJEWi" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
              <node concept="3clFbT" id="2t3FM7fJEXu" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2t3FM7fJnkt" role="3clF45">
        <ref role="3uigEE" to="oq0c:3ni3WieuV7z" resolve="EffectDescriptor" />
      </node>
      <node concept="3Tm1VV" id="2t3FM7fJnku" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="2t3FM7fJm7f" role="13h7CW">
      <node concept="3clFbS" id="2t3FM7fJm7g" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="2t3FM7fJEYT">
    <property role="3GE5qa" value="statements.type" />
    <ref role="13h7C2" to="ja9q:2t3FM7fJm6K" resolve="ProvideTypeStatement" />
    <node concept="13i0hz" id="2t3FM7fJEZ4" role="13h7CS">
      <property role="TrG5h" value="effectDescriptor" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="pbu6:6GySMNjjWfO" resolve="effectDescriptor" />
      <node concept="3clFbS" id="2t3FM7fJEZ7" role="3clF47">
        <node concept="3cpWs6" id="2t3FM7fJEZW" role="3cqZAp">
          <node concept="2ShNRf" id="2t3FM7fJF0s" role="3cqZAk">
            <node concept="1pGfFk" id="2t3FM7fJF0r" role="2ShVmc">
              <ref role="37wK5l" to="oq0c:3ni3WieuVew" resolve="EffectDescriptor" />
              <node concept="3clFbT" id="2t3FM7fJF5u" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="3clFbT" id="2t3FM7fJF64" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
              <node concept="3clFbT" id="2t3FM7fJF6M" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2t3FM7fJEZH" role="3clF45">
        <ref role="3uigEE" to="oq0c:3ni3WieuV7z" resolve="EffectDescriptor" />
      </node>
      <node concept="3Tm1VV" id="2t3FM7fJEZI" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="2t3FM7fJEYU" role="13h7CW">
      <node concept="3clFbS" id="2t3FM7fJEYV" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="2t3FM7fJF7O">
    <property role="3GE5qa" value="statements.type" />
    <ref role="13h7C2" to="ja9q:2t3FM7fJm6L" resolve="WriteTypeStatement" />
    <node concept="13i0hz" id="2t3FM7fJF7Z" role="13h7CS">
      <property role="TrG5h" value="effectDescriptor" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="pbu6:6GySMNjjWfO" resolve="effectDescriptor" />
      <node concept="3clFbS" id="2t3FM7fJF82" role="3clF47">
        <node concept="3cpWs6" id="2t3FM7fJGdO" role="3cqZAp">
          <node concept="2ShNRf" id="2t3FM7fJGek" role="3cqZAk">
            <node concept="1pGfFk" id="2t3FM7fJGej" role="2ShVmc">
              <ref role="37wK5l" to="oq0c:3ni3WieuVew" resolve="EffectDescriptor" />
              <node concept="3clFbT" id="2t3FM7fJGeH" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="3clFbT" id="2t3FM7fJGfG" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
              <node concept="3clFbT" id="2t3FM7fJGgq" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2t3FM7fJF8w" role="3clF45">
        <ref role="3uigEE" to="oq0c:3ni3WieuV7z" resolve="EffectDescriptor" />
      </node>
      <node concept="3Tm1VV" id="2t3FM7fJF8x" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="2t3FM7fJF7P" role="13h7CW">
      <node concept="3clFbS" id="2t3FM7fJF7Q" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="2t3FM7fWBT1">
    <property role="3GE5qa" value="statements.type" />
    <ref role="13h7C2" to="ja9q:2t3FM7fJm6J" resolve="TypeRelatedStatement" />
    <node concept="13i0hz" id="2t3FM7fWBTc" role="13h7CS">
      <property role="TrG5h" value="getRelatedNode" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <node concept="3Tm1VV" id="2t3FM7fWBTd" role="1B3o_S" />
      <node concept="3Tqbb2" id="2t3FM7fWBTt" role="3clF45">
        <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
      </node>
      <node concept="3clFbS" id="2t3FM7fWBTf" role="3clF47" />
    </node>
    <node concept="13i0hz" id="6Y$bjgGDdCB" role="13h7CS">
      <property role="TrG5h" value="getRelatedNodeAtPosition" />
      <node concept="3Tm1VV" id="6Y$bjgGDdCC" role="1B3o_S" />
      <node concept="3Tqbb2" id="6Y$bjgGDi1v" role="3clF45">
        <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
      </node>
      <node concept="3clFbS" id="6Y$bjgGDdCE" role="3clF47">
        <node concept="3cpWs8" id="6Y$bjgGDj$$" role="3cqZAp">
          <node concept="3cpWsn" id="6Y$bjgGDj$B" role="3cpWs9">
            <property role="TrG5h" value="section" />
            <node concept="3Tqbb2" id="6Y$bjgGDj$y" role="1tU5fm">
              <ref role="ehGHo" to="5frd:2$uHlqSzbou" resolve="Section" />
            </node>
            <node concept="2OqwBi" id="6Y$bjgGDk5G" role="33vP2m">
              <node concept="13iPFW" id="6Y$bjgGDjEu" role="2Oq$k0" />
              <node concept="2Xjw5R" id="6Y$bjgGDkFU" role="2OqNvi">
                <node concept="1xMEDy" id="6Y$bjgGDkFW" role="1xVPHs">
                  <node concept="chp4Y" id="4IazLL4R2tM" role="ri$Ld">
                    <ref role="cht4Q" to="5frd:2$uHlqSzbou" resolve="Section" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6Y$bjgGDkMX" role="3cqZAp">
          <node concept="3cpWsn" id="6Y$bjgGDkMY" role="3cpWs9">
            <property role="TrG5h" value="pos" />
            <node concept="3Tqbb2" id="6Y$bjgGDkMZ" role="1tU5fm">
              <ref role="ehGHo" to="ja9q:6pyCRNQL2EL" resolve="AbstractStatement" />
            </node>
            <node concept="2OqwBi" id="6Y$bjgGDkN0" role="33vP2m">
              <node concept="37vLTw" id="6Y$bjgGDlE5" role="2Oq$k0">
                <ref role="3cqZAo" node="6Y$bjgGDkZJ" resolve="position" />
              </node>
              <node concept="2Xjw5R" id="6Y$bjgGDkN2" role="2OqNvi">
                <node concept="1xMEDy" id="6Y$bjgGDkN3" role="1xVPHs">
                  <node concept="chp4Y" id="6Y$bjgGDkN4" role="ri$Ld">
                    <ref role="cht4Q" to="ja9q:6pyCRNQL2EL" resolve="AbstractStatement" />
                  </node>
                </node>
                <node concept="1xIGOp" id="6Y$bjgGJMrg" role="1xVPHs" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6Y$bjgGDm1z" role="3cqZAp" />
        <node concept="3SKdUt" id="6Y$bjgGDkN5" role="3cqZAp">
          <node concept="3SKdUq" id="6Y$bjgGDkN6" role="3SKWNk">
            <property role="3SKdUp" value="TODO: catch section = null" />
          </node>
        </node>
        <node concept="3cpWs6" id="6Y$bjgGDkN7" role="3cqZAp">
          <node concept="2OqwBi" id="6Y$bjgGDkN8" role="3cqZAk">
            <node concept="37vLTw" id="6Y$bjgGDkN9" role="2Oq$k0">
              <ref role="3cqZAo" node="6Y$bjgGDj$B" resolve="section" />
            </node>
            <node concept="2qgKlT" id="6Y$bjgGDkNa" role="2OqNvi">
              <ref role="37wK5l" to="64zb:10zQN__30Uz" resolve="getObjectAtPosition" />
              <node concept="2OqwBi" id="6Y$bjgGDlum" role="37wK5m">
                <node concept="13iPFW" id="6Y$bjgGDlun" role="2Oq$k0" />
                <node concept="2qgKlT" id="6Y$bjgGDluo" role="2OqNvi">
                  <ref role="37wK5l" node="2t3FM7fWBTc" resolve="getRelatedNode" />
                </node>
              </node>
              <node concept="37vLTw" id="6Y$bjgGDkNe" role="37wK5m">
                <ref role="3cqZAo" node="6Y$bjgGDkMY" resolve="pos" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6Y$bjgGDkZJ" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="3Tqbb2" id="6Y$bjgGDkZI" role="1tU5fm" />
      </node>
    </node>
    <node concept="13hLZK" id="2t3FM7fWBT2" role="13h7CW">
      <node concept="3clFbS" id="2t3FM7fWBT3" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4k$35jY17A6">
    <property role="3GE5qa" value="" />
    <ref role="13h7C2" to="ja9q:6pyCRNQL2EL" resolve="AbstractStatement" />
    <node concept="13i0hz" id="4k$35jYfrE6" role="13h7CS">
      <property role="TrG5h" value="getHiddenCopy" />
      <node concept="3Tm1VV" id="4k$35jYfrE7" role="1B3o_S" />
      <node concept="3Tqbb2" id="4k$35jYfrFk" role="3clF45">
        <ref role="ehGHo" to="ja9q:6pyCRNQL2EL" resolve="AbstractStatement" />
      </node>
      <node concept="3clFbS" id="4k$35jYfrE9" role="3clF47">
        <node concept="3cpWs8" id="4k$35jYfrFD" role="3cqZAp">
          <node concept="3cpWsn" id="4k$35jYfrFG" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3Tqbb2" id="4k$35jYfrFC" role="1tU5fm">
              <ref role="ehGHo" to="ja9q:6pyCRNQL2EL" resolve="AbstractStatement" />
            </node>
            <node concept="2OqwBi" id="3nKj30XTk4X" role="33vP2m">
              <node concept="13iPFW" id="3nKj30XTjUC" role="2Oq$k0" />
              <node concept="1$rogu" id="3nKj30XUf$j" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="49oIsx4zXEi" role="3cqZAp">
          <node concept="2OqwBi" id="49oIsx4zXEm" role="3clFbG">
            <node concept="2OqwBi" id="49oIsx4zXEn" role="2Oq$k0">
              <node concept="13iPFW" id="49oIsx4zXEo" role="2Oq$k0" />
              <node concept="2Xjw5R" id="49oIsx4zXEp" role="2OqNvi">
                <node concept="1xMEDy" id="49oIsx4zXEq" role="1xVPHs">
                  <node concept="chp4Y" id="4IazLL4R0D8" role="ri$Ld">
                    <ref role="cht4Q" to="5frd:2$uHlqSzhDy" resolve="File" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2qgKlT" id="4rZ4tH4e962" role="2OqNvi">
              <ref role="37wK5l" to="64zb:1ecbQBfuZVU" resolve="addHiddenContent" />
              <node concept="37vLTw" id="4rZ4tH4e9gd" role="37wK5m">
                <ref role="3cqZAo" node="4k$35jYfrFG" resolve="result" />
              </node>
              <node concept="2OqwBi" id="7X7UKPAGTj1" role="37wK5m">
                <node concept="13iPFW" id="7X7UKPAGSZB" role="2Oq$k0" />
                <node concept="2Xjw5R" id="7X7UKPAGTTf" role="2OqNvi">
                  <node concept="1xMEDy" id="7X7UKPAGTTh" role="1xVPHs">
                    <node concept="chp4Y" id="4IazLL4R1Mc" role="ri$Ld">
                      <ref role="cht4Q" to="5frd:2$uHlqSzbou" resolve="Section" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4k$35jYfs8q" role="3cqZAp">
          <node concept="37vLTw" id="4k$35jYfs9T" role="3cqZAk">
            <ref role="3cqZAo" node="4k$35jYfrFG" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="4k$35jY17A7" role="13h7CW">
      <node concept="3clFbS" id="4k$35jY17A8" role="2VODD2">
        <node concept="3clFbF" id="4k$35jY18hY" role="3cqZAp">
          <node concept="37vLTI" id="4k$35jY18hZ" role="3clFbG">
            <node concept="2OqwBi" id="4k$35jY18i0" role="37vLTJ">
              <node concept="13iPFW" id="4k$35jY18i1" role="2Oq$k0" />
              <node concept="3TrcHB" id="4k$35jY3UiM" role="2OqNvi">
                <ref role="3TsBF5" to="ja9q:4k$35jY17_C" resolve="relativeId" />
              </node>
            </node>
            <node concept="2OqwBi" id="4k$35jY18ZX" role="37vLTx">
              <node concept="2OqwBi" id="4k$35jY18i5" role="2Oq$k0">
                <node concept="1eOMI4" id="4k$35jY18i6" role="2Oq$k0">
                  <node concept="10QFUN" id="4k$35jY18i7" role="1eOMHV">
                    <node concept="3uibUv" id="4k$35jY18i8" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="13iPFW" id="4k$35jY18i9" role="10QFUP" />
                  </node>
                </node>
                <node concept="liA8E" id="4k$35jY18ia" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                </node>
              </node>
              <node concept="liA8E" id="4k$35jY19lL" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="4rZ4tH4gaQu">
    <property role="3GE5qa" value="statements.structure" />
    <ref role="13h7C2" to="ja9q:4rZ4tH4gay7" resolve="EmptyStatement" />
    <node concept="13hLZK" id="4rZ4tH4gaQv" role="13h7CW">
      <node concept="3clFbS" id="4rZ4tH4gaQw" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="4rZ4tH4gaRb" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="4rZ4tH4gaRc" role="1B3o_S" />
      <node concept="3clFbS" id="4rZ4tH4gaRf" role="3clF47">
        <node concept="3clFbF" id="4rZ4tH4gaRv" role="3cqZAp">
          <node concept="Xl_RD" id="4rZ4tH4gaRu" role="3clFbG">
            <property role="Xl_RC" value="" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="4rZ4tH4gaRg" role="3clF45" />
    </node>
    <node concept="13i0hz" id="4rZ4tH4gaRK" role="13h7CS">
      <property role="TrG5h" value="isStaticallyEvaluatable" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="pbu6:3NBP8_O4e8l" resolve="isStaticallyEvaluatable" />
      <node concept="3clFbS" id="4rZ4tH4gaRN" role="3clF47">
        <node concept="3clFbF" id="4rZ4tH4gaS_" role="3cqZAp">
          <node concept="3clFbT" id="4rZ4tH4gaS$" role="3clFbG">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="4rZ4tH4gaSn" role="3clF45" />
      <node concept="3Tm1VV" id="4rZ4tH4gaSo" role="1B3o_S" />
    </node>
  </node>
  <node concept="13h7C7" id="3KhNVPMZtTT">
    <property role="3GE5qa" value="statements.structure" />
    <ref role="13h7C2" to="ja9q:4rZ4tH4gay8" resolve="VisibleStructureStatement" />
    <node concept="13i0hz" id="3KhNVPMZtU4" role="13h7CS">
      <property role="TrG5h" value="effectDescriptor" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="pbu6:6GySMNjjWfO" resolve="effectDescriptor" />
      <node concept="3clFbS" id="3KhNVPMZtU7" role="3clF47">
        <node concept="3cpWs6" id="3KhNVPMZtU$" role="3cqZAp">
          <node concept="2ShNRf" id="3KhNVPMZtV4" role="3cqZAk">
            <node concept="1pGfFk" id="3KhNVPMZtV3" role="2ShVmc">
              <ref role="37wK5l" to="oq0c:3ni3WieuVew" resolve="EffectDescriptor" />
              <node concept="3clFbT" id="3KhNVPMZuJD" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
              <node concept="3clFbT" id="3KhNVPMZuKf" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
              <node concept="3clFbT" id="3KhNVPMZuLr" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3KhNVPMZtUl" role="3clF45">
        <ref role="3uigEE" to="oq0c:3ni3WieuV7z" resolve="EffectDescriptor" />
      </node>
      <node concept="3Tm1VV" id="3KhNVPMZtUm" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="3KhNVPMZtTU" role="13h7CW">
      <node concept="3clFbS" id="3KhNVPMZtTV" role="2VODD2" />
    </node>
  </node>
</model>

