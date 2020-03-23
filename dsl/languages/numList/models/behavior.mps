<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4bd60a96-e4b6-48b4-80c7-1b6fe1714293(numList.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="1" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="pbu6" ref="r:83e946de-2a7f-4a4c-b3c9-4f671aa7f2db(org.iets3.core.expr.base.behavior)" />
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="5qo5" ref="r:6d93ddb1-b0b0-4eee-8079-51303666672a(org.iets3.core.expr.simpleTypes.structure)" />
    <import index="4i3h" ref="r:4eb8b9d8-1029-4a92-95e3-99ee93716939(numList.structure)" />
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
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153422105332" name="jetbrains.mps.baseLanguage.structure.RemExpression" flags="nn" index="2dk9JS" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534513062" name="jetbrains.mps.baseLanguage.structure.DoubleType" flags="in" index="10P55v" />
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
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
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
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
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
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670592366" name="defaultBlock" index="3Kb1Dw" />
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
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
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1205679737078" name="jetbrains.mps.baseLanguage.collections.structure.SortOperation" flags="nn" index="2S7cBI">
        <child id="1205679832066" name="ascending" index="2S7zOq" />
      </concept>
      <concept id="1162934736510" name="jetbrains.mps.baseLanguage.collections.structure.GetElementOperation" flags="nn" index="34jXtK" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1178286324487" name="jetbrains.mps.baseLanguage.collections.structure.SortDirection" flags="nn" index="1nlBCl" />
    </language>
  </registry>
  <node concept="13h7C7" id="46b_jc7UmHX">
    <ref role="13h7C2" to="4i3h:46b_jc7UmHw" resolve="AverageOp" />
    <node concept="13i0hz" id="1Ho6EEstSd2" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="evaluateOperation" />
      <ref role="13i0hy" to="64zb:1Ho6EEslho$" resolve="evaluateOperation" />
      <node concept="3Tm1VV" id="1Ho6EEstSd5" role="1B3o_S" />
      <node concept="3clFbS" id="1Ho6EEstSd8" role="3clF47">
        <node concept="3cpWs8" id="1Ho6EEsvmna" role="3cqZAp">
          <node concept="3cpWsn" id="1Ho6EEsvmnd" role="3cpWs9">
            <property role="TrG5h" value="numbersList" />
            <node concept="_YKpA" id="1Ho6EEsvmn6" role="1tU5fm">
              <node concept="10P55v" id="1Ho6EEsvmBX" role="_ZDj9" />
            </node>
            <node concept="10QFUN" id="1Ho6EEsvnnW" role="33vP2m">
              <node concept="37vLTw" id="1Ho6EEsvn9z" role="10QFUP">
                <ref role="3cqZAo" node="1Ho6EEstSd9" resolve="targetObj" />
              </node>
              <node concept="_YKpA" id="1Ho6EEsvnnX" role="10QFUM">
                <node concept="10P55v" id="1Ho6EEsvnnY" role="_ZDj9" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="1Ho6EEstSiN" role="3cqZAp">
          <node concept="2OqwBi" id="1Ho6EEstSsG" role="3KbGdf">
            <node concept="13iPFW" id="1Ho6EEstSj7" role="2Oq$k0" />
            <node concept="3TrcHB" id="1Ho6EEstSGO" role="2OqNvi">
              <ref role="3TsBF5" to="4i3h:46b_jc7UmKG" resolve="avgType" />
            </node>
          </node>
          <node concept="3KbdKl" id="1Ho6EEstSPe" role="3KbHQx">
            <node concept="3cmrfG" id="1Ho6EEstSS1" role="3Kbmr1">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="3clFbS" id="1Ho6EEstSPg" role="3Kbo56">
              <node concept="3cpWs6" id="1Ho6EEstUm1" role="3cqZAp">
                <node concept="2OqwBi" id="1Ho6EEsw7$n" role="3cqZAk">
                  <node concept="13iPFW" id="1Ho6EEsw7i_" role="2Oq$k0" />
                  <node concept="2qgKlT" id="1Ho6EEsw7XK" role="2OqNvi">
                    <ref role="37wK5l" node="1Ho6EEsvRed" resolve="getArithmeticMean" />
                    <node concept="37vLTw" id="1Ho6EEsw89N" role="37wK5m">
                      <ref role="3cqZAo" node="1Ho6EEsvmnd" resolve="numbersList" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="1Ho6EEstSUK" role="3KbHQx">
            <node concept="3cmrfG" id="1Ho6EEstSXH" role="3Kbmr1">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="3clFbS" id="1Ho6EEstSUM" role="3Kbo56">
              <node concept="3cpWs6" id="1Ho6EEstTWA" role="3cqZAp">
                <node concept="2OqwBi" id="1Ho6EEswK5D" role="3cqZAk">
                  <node concept="13iPFW" id="1Ho6EEswJNC" role="2Oq$k0" />
                  <node concept="2qgKlT" id="1Ho6EEswKL5" role="2OqNvi">
                    <ref role="37wK5l" node="1Ho6EEsw8Pi" resolve="getMedian" />
                    <node concept="37vLTw" id="1Ho6EEswKXq" role="37wK5m">
                      <ref role="3cqZAo" node="1Ho6EEsvmnd" resolve="numbersList" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1Ho6EEstTcN" role="3Kb1Dw">
            <node concept="3cpWs6" id="1Ho6EEstToN" role="3cqZAp">
              <node concept="3cmrfG" id="1Ho6EEstTrW" role="3cqZAk">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1Ho6EEstSd9" role="3clF46">
        <property role="TrG5h" value="targetObj" />
        <node concept="3uibUv" id="1Ho6EEstSda" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3uibUv" id="1Ho6EEstSdb" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
    </node>
    <node concept="13i0hz" id="1Ho6EEsvRed" role="13h7CS">
      <property role="TrG5h" value="getArithmeticMean" />
      <node concept="3Tm1VV" id="1Ho6EEsvRee" role="1B3o_S" />
      <node concept="10P55v" id="1Ho6EEsvYdA" role="3clF45" />
      <node concept="3clFbS" id="1Ho6EEsvReg" role="3clF47">
        <node concept="3cpWs8" id="1Ho6EEsvX0c" role="3cqZAp">
          <node concept="3cpWsn" id="1Ho6EEsvX0f" role="3cpWs9">
            <property role="TrG5h" value="sum" />
            <node concept="10P55v" id="1Ho6EEsvYkc" role="1tU5fm" />
            <node concept="3cmrfG" id="1Ho6EEsw2Ce" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Ho6EEsvRuC" role="3cqZAp">
          <node concept="2OqwBi" id="1Ho6EEsvU51" role="3clFbG">
            <node concept="37vLTw" id="1Ho6EEsvRuB" role="2Oq$k0">
              <ref role="3cqZAo" node="1Ho6EEsvRtF" resolve="numbers" />
            </node>
            <node concept="2es0OD" id="1Ho6EEsvWLC" role="2OqNvi">
              <node concept="1bVj0M" id="1Ho6EEsvWLE" role="23t8la">
                <node concept="3clFbS" id="1Ho6EEsvWLF" role="1bW5cS">
                  <node concept="3clFbF" id="1Ho6EEsvX67" role="3cqZAp">
                    <node concept="37vLTI" id="1Ho6EEsA6MJ" role="3clFbG">
                      <node concept="37vLTw" id="1Ho6EEsA6Vt" role="37vLTJ">
                        <ref role="3cqZAo" node="1Ho6EEsvX0f" resolve="sum" />
                      </node>
                      <node concept="3cpWs3" id="1Ho6EEsvXlI" role="37vLTx">
                        <node concept="37vLTw" id="1Ho6EEsvXph" role="3uHU7w">
                          <ref role="3cqZAo" node="1Ho6EEsvWLG" resolve="it" />
                        </node>
                        <node concept="37vLTw" id="1Ho6EEsvX66" role="3uHU7B">
                          <ref role="3cqZAo" node="1Ho6EEsvX0f" resolve="sum" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="1Ho6EEsvWLG" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="1Ho6EEsvWLH" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1Ho6EEsvYBr" role="3cqZAp">
          <node concept="FJ1c_" id="1Ho6EEsvZex" role="3cqZAk">
            <node concept="2OqwBi" id="1Ho6EEsw0i6" role="3uHU7w">
              <node concept="37vLTw" id="1Ho6EEsvZnO" role="2Oq$k0">
                <ref role="3cqZAo" node="1Ho6EEsvRtF" resolve="numbers" />
              </node>
              <node concept="34oBXx" id="1Ho6EEsw20T" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="1Ho6EEsvYLb" role="3uHU7B">
              <ref role="3cqZAo" node="1Ho6EEsvX0f" resolve="sum" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1Ho6EEsvRtF" role="3clF46">
        <property role="TrG5h" value="numbers" />
        <node concept="_YKpA" id="1Ho6EEsvRtD" role="1tU5fm">
          <node concept="10P55v" id="1Ho6EEsvYh6" role="_ZDj9" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1Ho6EEsw8Pi" role="13h7CS">
      <property role="TrG5h" value="getMedian" />
      <node concept="37vLTG" id="1Ho6EEsw93I" role="3clF46">
        <property role="TrG5h" value="numbers" />
        <node concept="_YKpA" id="1Ho6EEsw$$b" role="1tU5fm">
          <node concept="10P55v" id="1Ho6EEsw_6K" role="_ZDj9" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1Ho6EEsw8Pj" role="1B3o_S" />
      <node concept="10P55v" id="1Ho6EEsw93b" role="3clF45" />
      <node concept="3clFbS" id="1Ho6EEsw8Pl" role="3clF47">
        <node concept="3clFbF" id="1Ho6EEswc9W" role="3cqZAp">
          <node concept="37vLTI" id="1Ho6EEswcOl" role="3clFbG">
            <node concept="37vLTw" id="1Ho6EEswc9U" role="37vLTJ">
              <ref role="3cqZAo" node="1Ho6EEsw93I" resolve="numbers" />
            </node>
            <node concept="10QFUN" id="1Ho6EEswAaz" role="37vLTx">
              <node concept="2OqwBi" id="1Ho6EEswzzQ" role="10QFUP">
                <node concept="37vLTw" id="1Ho6EEsw941" role="2Oq$k0">
                  <ref role="3cqZAo" node="1Ho6EEsw93I" resolve="numbers" />
                </node>
                <node concept="2S7cBI" id="1Ho6EEswzPg" role="2OqNvi">
                  <node concept="1bVj0M" id="1Ho6EEswzPi" role="23t8la">
                    <node concept="3clFbS" id="1Ho6EEswzPj" role="1bW5cS">
                      <node concept="3clFbF" id="1Ho6EEswzZ$" role="3cqZAp">
                        <node concept="37vLTw" id="1Ho6EEswzZz" role="3clFbG">
                          <ref role="3cqZAo" node="1Ho6EEswzPk" resolve="it" />
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="1Ho6EEswzPk" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="1Ho6EEswzPl" role="1tU5fm" />
                    </node>
                  </node>
                  <node concept="1nlBCl" id="1Ho6EEswzPm" role="2S7zOq">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="_YKpA" id="1Ho6EEswAa$" role="10QFUM">
                <node concept="10P55v" id="1Ho6EEswAa_" role="_ZDj9" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1Ho6EEswkOc" role="3cqZAp" />
        <node concept="3cpWs8" id="1Ho6EEswg2j" role="3cqZAp">
          <node concept="3cpWsn" id="1Ho6EEswg2m" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <node concept="10Oyi0" id="1Ho6EEswg2h" role="1tU5fm" />
            <node concept="FJ1c_" id="1Ho6EEswh_r" role="33vP2m">
              <node concept="3cmrfG" id="1Ho6EEswh_A" role="3uHU7w">
                <property role="3cmrfH" value="2" />
              </node>
              <node concept="2OqwBi" id="1Ho6EEswghb" role="3uHU7B">
                <node concept="37vLTw" id="1Ho6EEswg3M" role="2Oq$k0">
                  <ref role="3cqZAo" node="1Ho6EEsw93I" resolve="numbers" />
                </node>
                <node concept="34oBXx" id="1Ho6EEswgHf" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1Ho6EEswhHn" role="3cqZAp">
          <node concept="3clFbS" id="1Ho6EEswhHp" role="3clFbx">
            <node concept="3cpWs6" id="1Ho6EEswF5s" role="3cqZAp">
              <node concept="FJ1c_" id="1Ho6EEswGQh" role="3cqZAk">
                <node concept="3cmrfG" id="1Ho6EEswGQI" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="1eOMI4" id="1Ho6EEswG9Y" role="3uHU7B">
                  <node concept="3cpWs3" id="1Ho6EEswBBE" role="1eOMHV">
                    <node concept="2OqwBi" id="1Ho6EEswCEb" role="3uHU7w">
                      <node concept="37vLTw" id="1Ho6EEswBD5" role="2Oq$k0">
                        <ref role="3cqZAo" node="1Ho6EEsw93I" resolve="numbers" />
                      </node>
                      <node concept="34jXtK" id="1Ho6EEswDtV" role="2OqNvi">
                        <node concept="3cpWs3" id="1Ho6EEswExs" role="25WWJ7">
                          <node concept="3cmrfG" id="1Ho6EEswExv" role="3uHU7w">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="37vLTw" id="1Ho6EEswDEH" role="3uHU7B">
                            <ref role="3cqZAo" node="1Ho6EEswg2m" resolve="index" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1Ho6EEswlXb" role="3uHU7B">
                      <node concept="37vLTw" id="1Ho6EEswlLX" role="2Oq$k0">
                        <ref role="3cqZAo" node="1Ho6EEsw93I" resolve="numbers" />
                      </node>
                      <node concept="34jXtK" id="1Ho6EEswB56" role="2OqNvi">
                        <node concept="37vLTw" id="1Ho6EEswBah" role="25WWJ7">
                          <ref role="3cqZAo" node="1Ho6EEswg2m" resolve="index" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1Ho6EEswk4v" role="3clFbw">
            <node concept="3cmrfG" id="1Ho6EEswksr" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2dk9JS" id="1Ho6EEswjaw" role="3uHU7B">
              <node concept="2OqwBi" id="1Ho6EEswhVH" role="3uHU7B">
                <node concept="37vLTw" id="1Ho6EEswhIm" role="2Oq$k0">
                  <ref role="3cqZAo" node="1Ho6EEsw93I" resolve="numbers" />
                </node>
                <node concept="34oBXx" id="1Ho6EEswia0" role="2OqNvi" />
              </node>
              <node concept="3cmrfG" id="1Ho6EEswjbk" role="3uHU7w">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1Ho6EEswHkT" role="9aQIa">
            <node concept="3clFbS" id="1Ho6EEswHkU" role="9aQI4">
              <node concept="3cpWs6" id="1Ho6EEswHVn" role="3cqZAp">
                <node concept="2OqwBi" id="1Ho6EEswHVD" role="3cqZAk">
                  <node concept="37vLTw" id="1Ho6EEswHVE" role="2Oq$k0">
                    <ref role="3cqZAo" node="1Ho6EEsw93I" resolve="numbers" />
                  </node>
                  <node concept="34jXtK" id="1Ho6EEswHVF" role="2OqNvi">
                    <node concept="3cpWs3" id="1Ho6EEswHVG" role="25WWJ7">
                      <node concept="3cmrfG" id="1Ho6EEswHVH" role="3uHU7w">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="37vLTw" id="1Ho6EEswHVI" role="3uHU7B">
                        <ref role="3cqZAo" node="1Ho6EEswg2m" resolve="index" />
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
    <node concept="13hLZK" id="46b_jc7UmHY" role="13h7CW">
      <node concept="3clFbS" id="46b_jc7UmHZ" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3CO1ndsWWo_" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="renderPythonSyntax" />
      <ref role="13i0hy" to="64zb:1Ho6EEsWzsX" resolve="renderPythonSyntax" />
      <node concept="3Tm1VV" id="3CO1ndsWWoA" role="1B3o_S" />
      <node concept="3clFbS" id="3CO1ndsWWoD" role="3clF47">
        <node concept="3SKdUt" id="1Ho6EEstSgV" role="3cqZAp">
          <node concept="3SKdUq" id="1Ho6EEstSgX" role="3SKWNk">
            <property role="3SKdUp" value="TODO: requires python server to import module statistics" />
          </node>
        </node>
        <node concept="3KaCP$" id="1Ho6EEsAb8R" role="3cqZAp">
          <node concept="2OqwBi" id="1Ho6EEsAb8S" role="3KbGdf">
            <node concept="13iPFW" id="1Ho6EEsAb8T" role="2Oq$k0" />
            <node concept="3TrcHB" id="1Ho6EEsAb8U" role="2OqNvi">
              <ref role="3TsBF5" to="4i3h:46b_jc7UmKG" resolve="avgType" />
            </node>
          </node>
          <node concept="3KbdKl" id="1Ho6EEsAb8V" role="3KbHQx">
            <node concept="3cmrfG" id="1Ho6EEsAb8W" role="3Kbmr1">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="3clFbS" id="1Ho6EEsAb8X" role="3Kbo56">
              <node concept="3cpWs6" id="1Ho6EEsAb8Y" role="3cqZAp">
                <node concept="3cpWs3" id="1Ho6EEsAn5n" role="3cqZAk">
                  <node concept="Xl_RD" id="1Ho6EEsAnnU" role="3uHU7w">
                    <property role="Xl_RC" value=")" />
                  </node>
                  <node concept="3cpWs3" id="1Ho6EEsAl7I" role="3uHU7B">
                    <node concept="Xl_RD" id="1Ho6EEsAjtj" role="3uHU7B">
                      <property role="Xl_RC" value="statistics.mean(" />
                    </node>
                    <node concept="2OqwBi" id="1Ho6EEsAlKJ" role="3uHU7w">
                      <node concept="13iPFW" id="1Ho6EEsAlpM" role="2Oq$k0" />
                      <node concept="2qgKlT" id="1Ho6EEsAmyj" role="2OqNvi">
                        <ref role="37wK5l" to="64zb:CAhoO5jzT7" resolve="getRenderedExpression" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="1Ho6EEsAb93" role="3KbHQx">
            <node concept="3cmrfG" id="1Ho6EEsAb94" role="3Kbmr1">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="3clFbS" id="1Ho6EEsAb95" role="3Kbo56">
              <node concept="3cpWs6" id="1Ho6EEsAb96" role="3cqZAp">
                <node concept="3cpWs3" id="1Ho6EEsAgJT" role="3cqZAk">
                  <node concept="Xl_RD" id="1Ho6EEsAgJW" role="3uHU7w">
                    <property role="Xl_RC" value=")" />
                  </node>
                  <node concept="3cpWs3" id="1Ho6EEsAd8f" role="3uHU7B">
                    <node concept="Xl_RD" id="1Ho6EEsAdob" role="3uHU7B">
                      <property role="Xl_RC" value="statistics.median(" />
                    </node>
                    <node concept="2OqwBi" id="1Ho6EEsAc96" role="3uHU7w">
                      <node concept="13iPFW" id="1Ho6EEsAbLG" role="2Oq$k0" />
                      <node concept="2qgKlT" id="1Ho6EEsAcSr" role="2OqNvi">
                        <ref role="37wK5l" to="64zb:CAhoO5jzT7" resolve="getRenderedExpression" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1Ho6EEsAb9b" role="3Kb1Dw">
            <node concept="3cpWs6" id="1Ho6EEsAo6C" role="3cqZAp">
              <node concept="3cpWs3" id="1Ho6EEsAo6D" role="3cqZAk">
                <node concept="Xl_RD" id="1Ho6EEsAo6E" role="3uHU7w">
                  <property role="Xl_RC" value=")" />
                </node>
                <node concept="3cpWs3" id="1Ho6EEsAo6F" role="3uHU7B">
                  <node concept="Xl_RD" id="1Ho6EEsAo6G" role="3uHU7B">
                    <property role="Xl_RC" value="statistics.mean(" />
                  </node>
                  <node concept="2OqwBi" id="1Ho6EEsAo6H" role="3uHU7w">
                    <node concept="13iPFW" id="1Ho6EEsAo6I" role="2Oq$k0" />
                    <node concept="2qgKlT" id="1Ho6EEsAo6J" role="2OqNvi">
                      <ref role="37wK5l" to="64zb:CAhoO5jzT7" resolve="getRenderedExpression" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="3CO1ndsWWoE" role="3clF45" />
    </node>
  </node>
</model>

