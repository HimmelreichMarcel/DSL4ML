<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c8ee5215-0f68-464d-b6fd-579e613a5a60(join.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="1" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" />
    <import index="jqrd" ref="r:a86b5aa2-977c-4dd4-975b-865365d5871c(types.structure)" />
    <import index="pbu6" ref="r:83e946de-2a7f-4a4c-b3c9-4f671aa7f2db(org.iets3.core.expr.base.behavior)" />
    <import index="reag" ref="r:ade3e00b-044f-42e0-846c-a1a8f349d15b(join.structure)" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="essy" ref="r:d68f6ef3-d056-4719-85f3-ab26e4e8979e(requests.classes)" />
    <import index="2ahs" ref="r:ea6cf71d-29d2-478d-8027-a9f4a4de53c4(com.mbeddr.mpsutil.interpreter.rt)" />
    <import index="w8ws" ref="r:371ff547-5eea-4440-a0bb-93d0be22bfcb(statements.behavior)" implicit="true" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" implicit="true" />
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
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
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
  <node concept="13h7C7" id="10zQN_$VU0C">
    <ref role="13h7C2" to="reag:10zQN_$VSWC" resolve="JoinStatement" />
    <node concept="13hLZK" id="10zQN_$VU0D" role="13h7CW">
      <node concept="3clFbS" id="10zQN_$VU0E" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="10zQN_$VU1F" role="13h7CS">
      <property role="TrG5h" value="getRelatedNode" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="w8ws:2t3FM7fWBTc" resolve="getRelatedNode" />
      <node concept="3Tm1VV" id="10zQN_$VU1G" role="1B3o_S" />
      <node concept="3clFbS" id="10zQN_$VU1J" role="3clF47">
        <node concept="3clFbF" id="10zQN_$VUQK" role="3cqZAp">
          <node concept="2OqwBi" id="10zQN_$VW8x" role="3clFbG">
            <node concept="2OqwBi" id="10zQN_$VV8k" role="2Oq$k0">
              <node concept="13iPFW" id="10zQN_$VUQJ" role="2Oq$k0" />
              <node concept="3TrEf2" id="10zQN_$VVuO" role="2OqNvi">
                <ref role="3Tt5mk" to="reag:10zQN_$VTZa" resolve="object" />
              </node>
            </node>
            <node concept="2qgKlT" id="10zQN_$VWml" role="2OqNvi">
              <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="10zQN_$VU1K" role="3clF45">
        <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
      </node>
    </node>
    <node concept="13i0hz" id="10zQN_$VU1L" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="10zQN_$VU1M" role="1B3o_S" />
      <node concept="3clFbS" id="10zQN_$VU1P" role="3clF47">
        <node concept="3clFbF" id="10zQN_$VWsH" role="3cqZAp">
          <node concept="Xl_RD" id="10zQN_$VWsG" role="3clFbG">
            <property role="Xl_RC" value="rr_joinStatement" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="10zQN_$VU1Q" role="3clF45" />
    </node>
    <node concept="13i0hz" id="LOMnt$11LA" role="13h7CS">
      <property role="TrG5h" value="applyLocalChanges" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="64zb:4HLGmtYMVsA" resolve="applyLocalChanges" />
      <node concept="3Tm1VV" id="LOMnt$11LB" role="1B3o_S" />
      <node concept="3clFbS" id="LOMnt$11LG" role="3clF47">
        <node concept="3clFbH" id="4xjFwZUkJeZ" role="3cqZAp" />
        <node concept="3cpWs8" id="4xjFwZUlf1n" role="3cqZAp">
          <node concept="3cpWsn" id="4xjFwZUlf1o" role="3cpWs9">
            <property role="TrG5h" value="thisObj" />
            <node concept="3Tqbb2" id="4xjFwZUlf1p" role="1tU5fm">
              <ref role="ehGHo" to="reag:LOMnt$1m84" resolve="ICanBeJoined" />
            </node>
            <node concept="10QFUN" id="4xjFwZUlf1q" role="33vP2m">
              <node concept="2OqwBi" id="4xjFwZUlf1r" role="10QFUP">
                <node concept="2OqwBi" id="4xjFwZUlf1s" role="2Oq$k0">
                  <node concept="37vLTw" id="4xjFwZUlf1t" role="2Oq$k0">
                    <ref role="3cqZAo" node="1XwI97ApFr5" resolve="context" />
                  </node>
                  <node concept="liA8E" id="4xjFwZUlf1u" role="2OqNvi">
                    <ref role="37wK5l" to="2ahs:2X4$XGmeh8R" resolve="getEnvironment" />
                  </node>
                </node>
                <node concept="liA8E" id="4xjFwZUlf1v" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                  <node concept="2OqwBi" id="4xjFwZUlf1w" role="37wK5m">
                    <node concept="2OqwBi" id="4xjFwZUlf1x" role="2Oq$k0">
                      <node concept="13iPFW" id="4xjFwZUlf1y" role="2Oq$k0" />
                      <node concept="3TrEf2" id="4xjFwZUlg_u" role="2OqNvi">
                        <ref role="3Tt5mk" to="reag:10zQN_$VTZa" resolve="object" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="4xjFwZUlf1$" role="2OqNvi">
                      <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3Tqbb2" id="4xjFwZUlf1_" role="10QFUM">
                <ref role="ehGHo" to="reag:LOMnt$1m84" resolve="ICanBeJoined" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4xjFwZUkQRG" role="3cqZAp">
          <node concept="3cpWsn" id="4xjFwZUkQRJ" role="3cpWs9">
            <property role="TrG5h" value="other" />
            <node concept="3Tqbb2" id="4xjFwZUkQRE" role="1tU5fm">
              <ref role="ehGHo" to="reag:LOMnt$1m84" resolve="ICanBeJoined" />
            </node>
            <node concept="10QFUN" id="4xjFwZUkS4r" role="33vP2m">
              <node concept="2OqwBi" id="4xjFwZUkR6w" role="10QFUP">
                <node concept="2OqwBi" id="4xjFwZUkR6x" role="2Oq$k0">
                  <node concept="37vLTw" id="4xjFwZUkR6y" role="2Oq$k0">
                    <ref role="3cqZAo" node="1XwI97ApFr5" resolve="context" />
                  </node>
                  <node concept="liA8E" id="4xjFwZUkR6z" role="2OqNvi">
                    <ref role="37wK5l" to="2ahs:2X4$XGmeh8R" resolve="getEnvironment" />
                  </node>
                </node>
                <node concept="liA8E" id="4xjFwZUkR6$" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                  <node concept="2OqwBi" id="4xjFwZUkR6_" role="37wK5m">
                    <node concept="2OqwBi" id="4xjFwZUkR6A" role="2Oq$k0">
                      <node concept="13iPFW" id="4xjFwZUkR6B" role="2Oq$k0" />
                      <node concept="3TrEf2" id="4xjFwZUkR6C" role="2OqNvi">
                        <ref role="3Tt5mk" to="reag:10zQN_$VTZc" resolve="other" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="4xjFwZUkR6D" role="2OqNvi">
                      <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3Tqbb2" id="4xjFwZUkS4s" role="10QFUM">
                <ref role="ehGHo" to="reag:LOMnt$1m84" resolve="ICanBeJoined" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4xjFwZUkOde" role="3cqZAp" />
        <node concept="3clFbF" id="LOMnt$9DEw" role="3cqZAp">
          <node concept="2OqwBi" id="LOMnt$9ElI" role="3clFbG">
            <node concept="1PxgMI" id="LOMnt$9E6O" role="2Oq$k0">
              <node concept="chp4Y" id="LOMnt$9E7z" role="3oSUPX">
                <ref role="cht4Q" to="reag:LOMnt$1m84" resolve="ICanBeJoined" />
              </node>
              <node concept="37vLTw" id="4xjFwZUlgJ6" role="1m5AlR">
                <ref role="3cqZAo" node="4xjFwZUlf1o" resolve="thisObj" />
              </node>
            </node>
            <node concept="2qgKlT" id="LOMnt$9EwL" role="2OqNvi">
              <ref role="37wK5l" node="LOMnt$8N25" resolve="joinWith" />
              <node concept="37vLTw" id="4xjFwZUkSiR" role="37wK5m">
                <ref role="3cqZAo" node="4xjFwZUkQRJ" resolve="other" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1XwI97ApFr5" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="1XwI97ApF$p" role="1tU5fm">
          <ref role="3uigEE" to="2ahs:4X7QcQ31ENp" resolve="IContext" />
        </node>
      </node>
      <node concept="37vLTG" id="LOMnt$11LH" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3Tqbb2" id="LOMnt$11LI" role="1tU5fm">
          <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
        </node>
      </node>
      <node concept="3cqZAl" id="LOMnt$11LJ" role="3clF45" />
    </node>
    <node concept="13i0hz" id="LOMnt$11LK" role="13h7CS">
      <property role="TrG5h" value="generateServerRequests" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="64zb:4HLGmtYMWnF" resolve="generateServerRequests" />
      <node concept="3Tm1VV" id="LOMnt$11LL" role="1B3o_S" />
      <node concept="3clFbS" id="LOMnt$11LP" role="3clF47">
        <node concept="3SKdUt" id="LOMnt$1dxT" role="3cqZAp">
          <node concept="3SKdUq" id="LOMnt$1dxV" role="3SKWNk">
            <property role="3SKdUp" value="TODO: this should be outsourced to an ICanBeJoined interface" />
          </node>
        </node>
        <node concept="3cpWs8" id="LOMnt$19n8" role="3cqZAp">
          <node concept="3cpWsn" id="LOMnt$19nb" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="LOMnt$19n4" role="1tU5fm">
              <node concept="17QB3L" id="LOMnt$19xx" role="_ZDj9" />
            </node>
            <node concept="2ShNRf" id="LOMnt$19IU" role="33vP2m">
              <node concept="Tc6Ow" id="LOMnt$19IQ" role="2ShVmc">
                <node concept="17QB3L" id="LOMnt$19IR" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="LOMnt$19XV" role="3cqZAp">
          <node concept="2OqwBi" id="LOMnt$1aJ$" role="3clFbG">
            <node concept="37vLTw" id="LOMnt$19XT" role="2Oq$k0">
              <ref role="3cqZAo" node="LOMnt$19nb" resolve="result" />
            </node>
            <node concept="TSZUe" id="LOMnt$1csg" role="2OqNvi">
              <node concept="2OqwBi" id="3RvSrMfHA8$" role="25WWJ7">
                <node concept="2YIFZM" id="3RvSrMfH_Lz" role="2Oq$k0">
                  <ref role="37wK5l" to="essy:1oR6hBkicf3" resolve="featureset" />
                  <ref role="1Pybhc" to="essy:11P1wiiUL77" resolve="PyCommands" />
                </node>
                <node concept="liA8E" id="3RvSrMfHAsb" role="2OqNvi">
                  <ref role="37wK5l" to="essy:3RvSrMfHxb6" resolve="joinWith" />
                  <node concept="2OqwBi" id="3RvSrMfH_L$" role="37wK5m">
                    <node concept="1PxgMI" id="3RvSrMfH_L_" role="2Oq$k0">
                      <node concept="chp4Y" id="3RvSrMfH_LA" role="3oSUPX">
                        <ref role="cht4Q" to="5frd:1UULepO1t7_" resolve="ISynchWithServer" />
                      </node>
                      <node concept="2OqwBi" id="3RvSrMfH_LB" role="1m5AlR">
                        <node concept="2OqwBi" id="3RvSrMfH_LC" role="2Oq$k0">
                          <node concept="13iPFW" id="3RvSrMfH_LD" role="2Oq$k0" />
                          <node concept="3TrEf2" id="3RvSrMfH_LE" role="2OqNvi">
                            <ref role="3Tt5mk" to="reag:10zQN_$VTZa" resolve="object" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="3RvSrMfH_LF" role="2OqNvi">
                          <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                        </node>
                      </node>
                    </node>
                    <node concept="3TrcHB" id="3RvSrMfH_LG" role="2OqNvi">
                      <ref role="3TsBF5" to="5frd:1UULepO1tEg" resolve="id" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3RvSrMfH_LH" role="37wK5m">
                    <node concept="1PxgMI" id="3RvSrMfH_LI" role="2Oq$k0">
                      <node concept="chp4Y" id="3RvSrMfH_LJ" role="3oSUPX">
                        <ref role="cht4Q" to="5frd:1UULepO1t7_" resolve="ISynchWithServer" />
                      </node>
                      <node concept="2OqwBi" id="3RvSrMfH_LK" role="1m5AlR">
                        <node concept="2OqwBi" id="3RvSrMfH_LL" role="2Oq$k0">
                          <node concept="13iPFW" id="3RvSrMfH_LM" role="2Oq$k0" />
                          <node concept="3TrEf2" id="3RvSrMfH_LN" role="2OqNvi">
                            <ref role="3Tt5mk" to="reag:10zQN_$VTZc" resolve="other" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="3RvSrMfH_LO" role="2OqNvi">
                          <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                        </node>
                      </node>
                    </node>
                    <node concept="3TrcHB" id="3RvSrMfH_LP" role="2OqNvi">
                      <ref role="3TsBF5" to="5frd:1UULepO1tEg" resolve="id" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="LOMnt$1d2L" role="3cqZAp">
          <node concept="37vLTw" id="LOMnt$1dhP" role="3cqZAk">
            <ref role="3cqZAo" node="LOMnt$19nb" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="LOMnt$11LQ" role="3clF45">
        <node concept="17QB3L" id="LOMnt$11LR" role="_ZDj9" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="LOMnt$1pRv">
    <ref role="13h7C2" to="reag:LOMnt$1m84" resolve="ICanBeJoined" />
    <node concept="13i0hz" id="10zQN_$WH4w" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="canJoinWith" />
      <node concept="3Tm1VV" id="10zQN_$WH4x" role="1B3o_S" />
      <node concept="10P_77" id="10zQN_$WHvn" role="3clF45" />
      <node concept="3clFbS" id="10zQN_$WH4z" role="3clF47" />
      <node concept="37vLTG" id="10zQN_$WHw6" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3Tqbb2" id="10zQN_$WHw5" role="1tU5fm">
          <ref role="ehGHo" to="reag:LOMnt$1m84" resolve="ICanBeJoined" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="10zQN_$WHwC" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getJointError" />
      <node concept="37vLTG" id="10zQN_$WZ6e" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3Tqbb2" id="10zQN_$WZ6f" role="1tU5fm">
          <ref role="ehGHo" to="reag:LOMnt$1m84" resolve="ICanBeJoined" />
        </node>
      </node>
      <node concept="3Tm1VV" id="10zQN_$WHwD" role="1B3o_S" />
      <node concept="17QB3L" id="10zQN_$WHRw" role="3clF45" />
      <node concept="3clFbS" id="10zQN_$WHwF" role="3clF47" />
    </node>
    <node concept="13i0hz" id="10zQN_$WYH1" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getJointWarning" />
      <node concept="37vLTG" id="10zQN_$WZ60" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3Tqbb2" id="10zQN_$WZ61" role="1tU5fm">
          <ref role="ehGHo" to="reag:LOMnt$1m84" resolve="ICanBeJoined" />
        </node>
      </node>
      <node concept="3Tm1VV" id="10zQN_$WYH2" role="1B3o_S" />
      <node concept="17QB3L" id="10zQN_$WZ5l" role="3clF45" />
      <node concept="3clFbS" id="10zQN_$WYH4" role="3clF47" />
    </node>
    <node concept="13i0hz" id="LOMnt$8N25" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="joinWith" />
      <node concept="37vLTG" id="LOMnt$8N32" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3Tqbb2" id="LOMnt$8N33" role="1tU5fm">
          <ref role="ehGHo" to="reag:LOMnt$1m84" resolve="ICanBeJoined" />
        </node>
      </node>
      <node concept="3Tm1VV" id="LOMnt$8N26" role="1B3o_S" />
      <node concept="3cqZAl" id="LOMnt$8N2B" role="3clF45" />
      <node concept="3clFbS" id="LOMnt$8N28" role="3clF47" />
    </node>
    <node concept="13hLZK" id="LOMnt$1pRw" role="13h7CW">
      <node concept="3clFbS" id="LOMnt$1pRx" role="2VODD2" />
    </node>
  </node>
</model>

