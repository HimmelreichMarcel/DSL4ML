<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:93bf76e2-c39a-4af1-bb92-38c1fc57b701(string.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="1" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="pbu6" ref="r:83e946de-2a7f-4a4c-b3c9-4f671aa7f2db(org.iets3.core.expr.base.behavior)" />
    <import index="917x" ref="r:83f7a824-2d8f-4211-9c8e-802488d31e7c(features.behavior)" />
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="tpbt" ref="r:65aadb5c-2f1e-4a2a-b988-9153ab74365c(string.structure)" />
    <import index="5qo5" ref="r:6d93ddb1-b0b0-4eee-8079-51303666672a(org.iets3.core.expr.simpleTypes.structure)" />
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
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
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271546410" name="jetbrains.mps.baseLanguage.structure.TrimOperation" flags="nn" index="17S1cR" />
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
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
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
  </registry>
  <node concept="13h7C7" id="58ojJcwsu3S">
    <property role="3GE5qa" value="length" />
    <ref role="13h7C2" to="tpbt:58ojJcwsu23" resolve="LengthOperation" />
    <node concept="13i0hz" id="3CO1ndt0oCK" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="renderPythonSyntax" />
      <ref role="13i0hy" to="64zb:1Ho6EEsWzsX" resolve="renderPythonSyntax" />
      <node concept="3Tm1VV" id="3CO1ndt0oCL" role="1B3o_S" />
      <node concept="3clFbS" id="3CO1ndt0oCO" role="3clF47">
        <node concept="3cpWs6" id="58ojJcwsu4y" role="3cqZAp">
          <node concept="3cpWs3" id="58ojJcwsu4z" role="3cqZAk">
            <node concept="Xl_RD" id="58ojJcwsu4$" role="3uHU7w">
              <property role="Xl_RC" value=")" />
            </node>
            <node concept="3cpWs3" id="58ojJcwsu4_" role="3uHU7B">
              <node concept="Xl_RD" id="58ojJcwsu4B" role="3uHU7B">
                <property role="Xl_RC" value="len(" />
              </node>
              <node concept="2OqwBi" id="58ojJcwsu4D" role="3uHU7w">
                <node concept="13iPFW" id="58ojJcwsu4E" role="2Oq$k0" />
                <node concept="2qgKlT" id="58ojJcwsu4F" role="2OqNvi">
                  <ref role="37wK5l" to="64zb:CAhoO5jzT7" resolve="getRenderedExpression" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="3CO1ndt0oCP" role="3clF45" />
    </node>
    <node concept="13i0hz" id="28$5p7psLzv" role="13h7CS">
      <property role="TrG5h" value="charLength" />
      <node concept="3Tm1VV" id="28$5p7psLzw" role="1B3o_S" />
      <node concept="10Oyi0" id="28$5p7psLHd" role="3clF45" />
      <node concept="3clFbS" id="28$5p7psLzy" role="3clF47">
        <node concept="3cpWs6" id="28$5p7psLIN" role="3cqZAp">
          <node concept="2OqwBi" id="28$5p7psM4d" role="3cqZAk">
            <node concept="37vLTw" id="28$5p7psLJg" role="2Oq$k0">
              <ref role="3cqZAo" node="28$5p7psLIh" resolve="target" />
            </node>
            <node concept="liA8E" id="28$5p7psMKx" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="28$5p7psLIh" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="17QB3L" id="28$5p7psLIg" role="1tU5fm" />
      </node>
    </node>
    <node concept="13i0hz" id="28$5p7psMLp" role="13h7CS">
      <property role="TrG5h" value="tokenLength" />
      <node concept="3Tm1VV" id="28$5p7psMLq" role="1B3o_S" />
      <node concept="10Oyi0" id="28$5p7psMV6" role="3clF45" />
      <node concept="3clFbS" id="28$5p7psMLs" role="3clF47">
        <node concept="3cpWs8" id="28$5p7psMW7" role="3cqZAp">
          <node concept="3cpWsn" id="28$5p7psMWa" role="3cpWs9">
            <property role="TrG5h" value="copy" />
            <node concept="17QB3L" id="28$5p7psMW6" role="1tU5fm" />
            <node concept="2OqwBi" id="28$5p7psOlc" role="33vP2m">
              <node concept="37vLTw" id="28$5p7psO4h" role="2Oq$k0">
                <ref role="3cqZAo" node="28$5p7psMV$" resolve="target" />
              </node>
              <node concept="17S1cR" id="28$5p7psOFA" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="28$5p7psOGy" role="3cqZAp">
          <node concept="3cpWsn" id="28$5p7psOG_" role="3cpWs9">
            <property role="TrG5h" value="token" />
            <node concept="10Q1$e" id="28$5p7psOGX" role="1tU5fm">
              <node concept="17QB3L" id="28$5p7psOGw" role="10Q1$1" />
            </node>
            <node concept="2OqwBi" id="28$5p7psP3O" role="33vP2m">
              <node concept="37vLTw" id="1Ho6EEslurm" role="2Oq$k0">
                <ref role="3cqZAo" node="28$5p7psMWa" resolve="copy" />
              </node>
              <node concept="liA8E" id="28$5p7psPKr" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.split(java.lang.String):java.lang.String[]" resolve="split" />
                <node concept="Xl_RD" id="28$5p7psPMq" role="37wK5m">
                  <property role="Xl_RC" value="\\s+" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="28$5p7psPVk" role="3cqZAp">
          <node concept="2OqwBi" id="28$5p7psQkz" role="3cqZAk">
            <node concept="37vLTw" id="28$5p7psPZ9" role="2Oq$k0">
              <ref role="3cqZAo" node="28$5p7psOG_" resolve="token" />
            </node>
            <node concept="1Rwk04" id="28$5p7psR5t" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="28$5p7psMV$" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="17QB3L" id="28$5p7psMVz" role="1tU5fm" />
      </node>
    </node>
    <node concept="13hLZK" id="58ojJcwsu3T" role="13h7CW">
      <node concept="3clFbS" id="58ojJcwsu3U" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1Ho6EEsll5E" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="evaluateOperation" />
      <ref role="13i0hy" to="64zb:1Ho6EEslho$" resolve="evaluateOperation" />
      <node concept="3Tm1VV" id="1Ho6EEsll5F" role="1B3o_S" />
      <node concept="3clFbS" id="1Ho6EEsll5I" role="3clF47">
        <node concept="3cpWs8" id="1Ho6EEslmjn" role="3cqZAp">
          <node concept="3cpWsn" id="1Ho6EEslmjq" role="3cpWs9">
            <property role="TrG5h" value="targetString" />
            <node concept="17QB3L" id="1Ho6EEslmjl" role="1tU5fm" />
            <node concept="10QFUN" id="1Ho6EEslmZ2" role="33vP2m">
              <node concept="17QB3L" id="1Ho6EEslmZ0" role="10QFUM" />
              <node concept="37vLTw" id="1Ho6EEsln2Y" role="10QFUP">
                <ref role="3cqZAo" node="1Ho6EEslm4N" resolve="targetObject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="28$5p7pquq7" role="3cqZAp">
          <node concept="2OqwBi" id="28$5p7pqxir" role="3KbGdf">
            <node concept="3TrcHB" id="1Ho6EEslnyl" role="2OqNvi">
              <ref role="3TsBF5" to="tpbt:7WePDBgM91T" resolve="measure" />
            </node>
            <node concept="13iPFW" id="1Ho6EEslncj" role="2Oq$k0" />
          </node>
          <node concept="3KbdKl" id="28$5p7pqxDx" role="3KbHQx">
            <node concept="3cmrfG" id="28$5p7pqxGa" role="3Kbmr1">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="3clFbS" id="28$5p7pqxDz" role="3Kbo56">
              <node concept="3cpWs6" id="28$5p7psRar" role="3cqZAp">
                <node concept="2OqwBi" id="28$5p7psRY1" role="3cqZAk">
                  <node concept="2qgKlT" id="28$5p7psSg8" role="2OqNvi">
                    <ref role="37wK5l" node="28$5p7psLzv" resolve="charLength" />
                    <node concept="37vLTw" id="1Ho6EEslpDR" role="37wK5m">
                      <ref role="3cqZAo" node="1Ho6EEslmjq" resolve="targetString" />
                    </node>
                  </node>
                  <node concept="13iPFW" id="1Ho6EEslnJL" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="28$5p7pqxIJ" role="3KbHQx">
            <node concept="3cmrfG" id="28$5p7pqxLy" role="3Kbmr1">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="3clFbS" id="28$5p7pqxIL" role="3Kbo56">
              <node concept="3cpWs6" id="28$5p7psSxo" role="3cqZAp">
                <node concept="2OqwBi" id="28$5p7psSF4" role="3cqZAk">
                  <node concept="2qgKlT" id="28$5p7psTeX" role="2OqNvi">
                    <ref role="37wK5l" node="28$5p7psMLp" resolve="tokenLength" />
                    <node concept="37vLTw" id="1Ho6EEslquf" role="37wK5m">
                      <ref role="3cqZAo" node="1Ho6EEslmjq" resolve="targetString" />
                    </node>
                  </node>
                  <node concept="13iPFW" id="1Ho6EEslpOQ" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="28$5p7pqxOb" role="3Kb1Dw">
            <node concept="3cpWs6" id="28$5p7psSp_" role="3cqZAp">
              <node concept="2OqwBi" id="28$5p7psSpA" role="3cqZAk">
                <node concept="2qgKlT" id="28$5p7psSpC" role="2OqNvi">
                  <ref role="37wK5l" node="28$5p7psLzv" resolve="charLength" />
                  <node concept="37vLTw" id="1Ho6EEslqkd" role="37wK5m">
                    <ref role="3cqZAo" node="1Ho6EEslmjq" resolve="targetString" />
                  </node>
                </node>
                <node concept="13iPFW" id="1Ho6EEslq4y" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1Ho6EEsll5J" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="37vLTG" id="1Ho6EEslm4N" role="3clF46">
        <property role="TrG5h" value="targetObject" />
        <node concept="3uibUv" id="1Ho6EEslm4M" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="1Ho6EEsofUq">
    <property role="3GE5qa" value="correspondence" />
    <ref role="13h7C2" to="tpbt:7WePDBgMhw8" resolve="ContainsOp" />
    <node concept="13hLZK" id="1Ho6EEsofUr" role="13h7CW">
      <node concept="3clFbS" id="1Ho6EEsofUs" role="2VODD2">
        <node concept="3SKdUt" id="1Ho6EEsokCP" role="3cqZAp">
          <node concept="3SKdUq" id="1Ho6EEsokCQ" role="3SKWNk">
            <property role="3SKdUp" value="TODO: this currently is substring search - i.e. looking for &quot;use&quot; in &quot;house&quot; returns true - which might not be desired" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1Ho6EEsofU_" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="evaluateOperation" />
      <ref role="13i0hy" to="64zb:1Ho6EEslho$" resolve="evaluateOperation" />
      <node concept="3Tm1VV" id="1Ho6EEsofUC" role="1B3o_S" />
      <node concept="3clFbS" id="1Ho6EEsofUF" role="3clF47">
        <node concept="3cpWs8" id="1Ho6EEsokEe" role="3cqZAp">
          <node concept="3cpWsn" id="1Ho6EEsokEh" role="3cpWs9">
            <property role="TrG5h" value="targetString" />
            <node concept="17QB3L" id="1Ho6EEsokEc" role="1tU5fm" />
            <node concept="10QFUN" id="1Ho6EEsokMx" role="33vP2m">
              <node concept="37vLTw" id="1Ho6EEsokF6" role="10QFUP">
                <ref role="3cqZAo" node="1Ho6EEsofUG" resolve="targetObj" />
              </node>
              <node concept="17QB3L" id="1Ho6EEsokMy" role="10QFUM" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1Ho6EEsooH0" role="3cqZAp">
          <node concept="2OqwBi" id="1Ho6EEsooH1" role="3cqZAk">
            <node concept="37vLTw" id="1Ho6EEsooH2" role="2Oq$k0">
              <ref role="3cqZAo" node="1Ho6EEsokEh" resolve="targetString" />
            </node>
            <node concept="liA8E" id="1Ho6EEsooH3" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence):boolean" resolve="contains" />
              <node concept="2OqwBi" id="1Ho6EEsooH4" role="37wK5m">
                <node concept="2OqwBi" id="1Ho6EEsooH5" role="2Oq$k0">
                  <node concept="13iPFW" id="1Ho6EEsooH6" role="2Oq$k0" />
                  <node concept="3TrEf2" id="1Ho6EEsooH7" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpbt:7WePDBgMhwz" resolve="searchString" />
                  </node>
                </node>
                <node concept="3TrcHB" id="1Ho6EEsooH8" role="2OqNvi">
                  <ref role="3TsBF5" to="5qo5:4rZeNQ6OYRb" resolve="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1Ho6EEsofUG" role="3clF46">
        <property role="TrG5h" value="targetObj" />
        <node concept="3uibUv" id="1Ho6EEsofUH" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3uibUv" id="1Ho6EEsofUI" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
    </node>
    <node concept="13i0hz" id="3CO1ndt0mHi" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="renderPythonSyntax" />
      <ref role="13i0hy" to="64zb:1Ho6EEsWzsX" resolve="renderPythonSyntax" />
      <node concept="3Tm1VV" id="3CO1ndt0mHj" role="1B3o_S" />
      <node concept="3clFbS" id="3CO1ndt0mHm" role="3clF47">
        <node concept="3cpWs6" id="1Ho6EEsogpx" role="3cqZAp">
          <node concept="3cpWs3" id="1Ho6EEsokbI" role="3cqZAk">
            <node concept="Xl_RD" id="1Ho6EEsoklD" role="3uHU7w">
              <property role="Xl_RC" value=")" />
            </node>
            <node concept="3cpWs3" id="1Ho6EEsoiPh" role="3uHU7B">
              <node concept="3cpWs3" id="1Ho6EEsohGb" role="3uHU7B">
                <node concept="3cpWs3" id="1Ho6EEsogGo" role="3uHU7B">
                  <node concept="Xl_RD" id="1Ho6EEsogr2" role="3uHU7B">
                    <property role="Xl_RC" value="(" />
                  </node>
                  <node concept="2OqwBi" id="1Ho6EEsogU_" role="3uHU7w">
                    <node concept="13iPFW" id="1Ho6EEsogGM" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1Ho6EEsohaO" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpbt:7WePDBgMhwz" resolve="searchString" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="1Ho6EEsohNm" role="3uHU7w">
                  <property role="Xl_RC" value=" in " />
                </node>
              </node>
              <node concept="2OqwBi" id="1Ho6EEsojaO" role="3uHU7w">
                <node concept="13iPFW" id="1Ho6EEsoiWC" role="2Oq$k0" />
                <node concept="2qgKlT" id="1Ho6EEsojLu" role="2OqNvi">
                  <ref role="37wK5l" to="64zb:CAhoO5jzT7" resolve="getRenderedExpression" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="3CO1ndt0mHn" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="1Ho6EEsooUl">
    <property role="3GE5qa" value="correspondence" />
    <ref role="13h7C2" to="tpbt:7WePDBgMhw9" resolve="MatchesExpressionOp" />
    <node concept="13hLZK" id="1Ho6EEsooUm" role="13h7CW">
      <node concept="3clFbS" id="1Ho6EEsooUn" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1Ho6EEsooUw" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="evaluateOperation" />
      <ref role="13i0hy" to="64zb:1Ho6EEslho$" resolve="evaluateOperation" />
      <node concept="3Tm1VV" id="1Ho6EEsooUz" role="1B3o_S" />
      <node concept="3clFbS" id="1Ho6EEsooUA" role="3clF47">
        <node concept="3cpWs8" id="1Ho6EEsowd8" role="3cqZAp">
          <node concept="3cpWsn" id="1Ho6EEsowd9" role="3cpWs9">
            <property role="TrG5h" value="targetString" />
            <node concept="17QB3L" id="1Ho6EEsowda" role="1tU5fm" />
            <node concept="10QFUN" id="1Ho6EEsowdb" role="33vP2m">
              <node concept="17QB3L" id="1Ho6EEsowdc" role="10QFUM" />
              <node concept="37vLTw" id="1Ho6EEsowEe" role="10QFUP">
                <ref role="3cqZAo" node="1Ho6EEsooUB" resolve="targetObject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1Ho6EEsowck" role="3cqZAp" />
        <node concept="3cpWs6" id="1Ho6EEsowbQ" role="3cqZAp">
          <node concept="2OqwBi" id="1Ho6EEsox3i" role="3cqZAk">
            <node concept="37vLTw" id="1Ho6EEsoxjG" role="2Oq$k0">
              <ref role="3cqZAo" node="1Ho6EEsowd9" resolve="targetString" />
            </node>
            <node concept="liA8E" id="1Ho6EEsoxDW" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.matches(java.lang.String):boolean" resolve="matches" />
              <node concept="2OqwBi" id="1Ho6EEsoxVA" role="37wK5m">
                <node concept="13iPFW" id="1Ho6EEsoxIL" role="2Oq$k0" />
                <node concept="3TrcHB" id="1Ho6EEsoyz5" role="2OqNvi">
                  <ref role="3TsBF5" to="tpbt:7WePDBgMsLu" resolve="targetExpression" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1Ho6EEsooUB" role="3clF46">
        <property role="TrG5h" value="targetObject" />
        <node concept="3uibUv" id="1Ho6EEsooUC" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3uibUv" id="1Ho6EEsooUD" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
    </node>
    <node concept="13i0hz" id="3CO1ndt0nEm" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="renderPythonSyntax" />
      <ref role="13i0hy" to="64zb:1Ho6EEsWzsX" resolve="renderPythonSyntax" />
      <node concept="3Tm1VV" id="3CO1ndt0nEn" role="1B3o_S" />
      <node concept="3clFbS" id="3CO1ndt0nEq" role="3clF47">
        <node concept="3SKdUt" id="1Ho6EEsooVr" role="3cqZAp">
          <node concept="3SKdUq" id="1Ho6EEsooVs" role="3SKWNk">
            <property role="3SKdUp" value="TODO: import re is required on python side" />
          </node>
        </node>
        <node concept="3cpWs6" id="1Ho6EEsooVN" role="3cqZAp">
          <node concept="3cpWs3" id="1Ho6EEsozm0" role="3cqZAk">
            <node concept="Xl_RD" id="1Ho6EEsoz$C" role="3uHU7w">
              <property role="Xl_RC" value=")" />
            </node>
            <node concept="3cpWs3" id="1Ho6EEsozeD" role="3uHU7B">
              <node concept="3cpWs3" id="1Ho6EEsopoO" role="3uHU7B">
                <node concept="3cpWs3" id="1Ho6EEsopfw" role="3uHU7B">
                  <node concept="Xl_RD" id="1Ho6EEsooWj" role="3uHU7B">
                    <property role="Xl_RC" value="re.match('" />
                  </node>
                  <node concept="2OqwBi" id="1Ho6EEsopFq" role="3uHU7w">
                    <node concept="13iPFW" id="1Ho6EEsoptu" role="2Oq$k0" />
                    <node concept="3TrcHB" id="1Ho6EEsopVI" role="2OqNvi">
                      <ref role="3TsBF5" to="tpbt:7WePDBgMsLu" resolve="targetExpression" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="1Ho6EEsopfU" role="3uHU7w">
                  <property role="Xl_RC" value="', " />
                </node>
              </node>
              <node concept="2OqwBi" id="1Ho6EEso$3G" role="3uHU7w">
                <node concept="13iPFW" id="1Ho6EEsozMU" role="2Oq$k0" />
                <node concept="2qgKlT" id="1Ho6EEso$qK" role="2OqNvi">
                  <ref role="37wK5l" to="64zb:CAhoO5jzT7" resolve="getRenderedExpression" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="3CO1ndt0nEr" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="1Ho6EEsoyBt">
    <property role="3GE5qa" value="correspondence" />
    <ref role="13h7C2" to="tpbt:7WePDBgMhw5" resolve="StartsWithOp" />
    <node concept="13hLZK" id="1Ho6EEsoyBu" role="13h7CW">
      <node concept="3clFbS" id="1Ho6EEsoyBv" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1Ho6EEsoyBC" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="evaluateOperation" />
      <ref role="13i0hy" to="64zb:1Ho6EEslho$" resolve="evaluateOperation" />
      <node concept="3Tm1VV" id="1Ho6EEsoyBF" role="1B3o_S" />
      <node concept="3clFbS" id="1Ho6EEsoyBI" role="3clF47">
        <node concept="3cpWs8" id="1Ho6EEsoCiL" role="3cqZAp">
          <node concept="3cpWsn" id="1Ho6EEsoCiO" role="3cpWs9">
            <property role="TrG5h" value="objString" />
            <node concept="17QB3L" id="1Ho6EEsoCiK" role="1tU5fm" />
            <node concept="10QFUN" id="1Ho6EEsoCrQ" role="33vP2m">
              <node concept="37vLTw" id="1Ho6EEsoCjP" role="10QFUP">
                <ref role="3cqZAo" node="1Ho6EEsoyBJ" resolve="targetObj" />
              </node>
              <node concept="17QB3L" id="1Ho6EEsoCrR" role="10QFUM" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1Ho6EEsoCD8" role="3cqZAp">
          <node concept="2OqwBi" id="1Ho6EEsoCV_" role="3cqZAk">
            <node concept="37vLTw" id="1Ho6EEsoCDJ" role="2Oq$k0">
              <ref role="3cqZAo" node="1Ho6EEsoCiO" resolve="objString" />
            </node>
            <node concept="liA8E" id="1Ho6EEsoDi0" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String):boolean" resolve="startsWith" />
              <node concept="2OqwBi" id="1Ho6EEsoEsq" role="37wK5m">
                <node concept="2OqwBi" id="1Ho6EEsoDzL" role="2Oq$k0">
                  <node concept="13iPFW" id="1Ho6EEsoDmU" role="2Oq$k0" />
                  <node concept="3TrEf2" id="1Ho6EEsoDVB" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpbt:7WePDBgMWZj" resolve="targetString" />
                  </node>
                </node>
                <node concept="3TrcHB" id="1Ho6EEsoEVI" role="2OqNvi">
                  <ref role="3TsBF5" to="5qo5:4rZeNQ6OYRb" resolve="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1Ho6EEsoyBJ" role="3clF46">
        <property role="TrG5h" value="targetObj" />
        <node concept="3uibUv" id="1Ho6EEsoyBK" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3uibUv" id="1Ho6EEsoyBL" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
    </node>
    <node concept="13i0hz" id="3CO1ndt0pG8" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="renderPythonSyntax" />
      <ref role="13i0hy" to="64zb:1Ho6EEsWzsX" resolve="renderPythonSyntax" />
      <node concept="3Tm1VV" id="3CO1ndt0pG9" role="1B3o_S" />
      <node concept="3clFbS" id="3CO1ndt0pGc" role="3clF47">
        <node concept="3clFbF" id="1Ho6EEso$Ha" role="3cqZAp">
          <node concept="3cpWs3" id="1Ho6EEsoBcb" role="3clFbG">
            <node concept="Xl_RD" id="1Ho6EEsoAU1" role="3uHU7w">
              <property role="Xl_RC" value=")" />
            </node>
            <node concept="3cpWs3" id="1Ho6EEsoAKL" role="3uHU7B">
              <node concept="3cpWs3" id="1Ho6EEso_Ig" role="3uHU7B">
                <node concept="2OqwBi" id="1Ho6EEso$SQ" role="3uHU7B">
                  <node concept="13iPFW" id="1Ho6EEso$H9" role="2Oq$k0" />
                  <node concept="2qgKlT" id="1Ho6EEso_oD" role="2OqNvi">
                    <ref role="37wK5l" to="64zb:CAhoO5jzT7" resolve="getRenderedExpression" />
                  </node>
                </node>
                <node concept="Xl_RD" id="1Ho6EEso_Nh" role="3uHU7w">
                  <property role="Xl_RC" value=".startswith(" />
                </node>
              </node>
              <node concept="2OqwBi" id="1Ho6EEsoBGj" role="3uHU7w">
                <node concept="13iPFW" id="1Ho6EEsoBlC" role="2Oq$k0" />
                <node concept="3TrEf2" id="1Ho6EEsoC5e" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpbt:7WePDBgMWZj" resolve="targetString" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="3CO1ndt0pGd" role="3clF45" />
    </node>
  </node>
</model>

