<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a220a28d-d4d7-4d46-a236-0578bf554f13(split.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="1" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" />
    <import index="jqrd" ref="r:a86b5aa2-977c-4dd4-975b-865365d5871c(types.structure)" />
    <import index="pbu6" ref="r:83e946de-2a7f-4a4c-b3c9-4f671aa7f2db(org.iets3.core.expr.base.behavior)" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" />
    <import index="5qo5" ref="r:6d93ddb1-b0b0-4eee-8079-51303666672a(org.iets3.core.expr.simpleTypes.structure)" />
    <import index="w3db" ref="r:372863d1-da2c-4d51-9ce5-ef15e0220a9a(split.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="w8ws" ref="r:371ff547-5eea-4440-a0bb-93d0be22bfcb(statements.behavior)" implicit="true" />
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
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534436861" name="jetbrains.mps.baseLanguage.structure.FloatType" flags="in" index="10OMs4" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
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
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
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
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
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
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="13h7C7" id="crj2MTJa8r">
    <ref role="13h7C2" to="w3db:crj2MTJ7hd" resolve="SplitStatement" />
    <node concept="13hLZK" id="crj2MTJa8s" role="13h7CW">
      <node concept="3clFbS" id="crj2MTJa8t" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="crj2MTJa8A" role="13h7CS">
      <property role="TrG5h" value="getRelatedNode" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="w8ws:2t3FM7fWBTc" resolve="getRelatedNode" />
      <node concept="3Tm1VV" id="crj2MTJa8B" role="1B3o_S" />
      <node concept="3clFbS" id="crj2MTJa8E" role="3clF47">
        <node concept="3clFbF" id="crj2MTJllj" role="3cqZAp">
          <node concept="10Nm6u" id="crj2MTJlli" role="3clFbG" />
        </node>
      </node>
      <node concept="3Tqbb2" id="crj2MTJa8F" role="3clF45">
        <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
      </node>
    </node>
    <node concept="13i0hz" id="crj2MTJa8G" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="crj2MTJa8H" role="1B3o_S" />
      <node concept="3clFbS" id="crj2MTJa8K" role="3clF47">
        <node concept="3clFbF" id="crj2MTJllP" role="3cqZAp">
          <node concept="Xl_RD" id="crj2MTJllO" role="3clFbG">
            <property role="Xl_RC" value="rr_splitStatement" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="crj2MTJa8L" role="3clF45" />
    </node>
    <node concept="13i0hz" id="crj2MTWkLB" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getVariableDeclarations" />
      <ref role="13i0hy" to="64zb:crj2MTWkKb" resolve="getVariableDeclarations" />
      <node concept="3Tm1VV" id="crj2MTWkLC" role="1B3o_S" />
      <node concept="3clFbS" id="crj2MTWkLF" role="3clF47">
        <node concept="3cpWs6" id="crj2MTWkMB" role="3cqZAp">
          <node concept="2OqwBi" id="crj2MTWl2M" role="3cqZAk">
            <node concept="13iPFW" id="crj2MTWkN6" role="2Oq$k0" />
            <node concept="3Tsc0h" id="crj2MTWlqU" role="2OqNvi">
              <ref role="3TtcxE" to="w3db:crj2MTK8yS" resolve="parts" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="crj2MTWkLG" role="3clF45">
        <ref role="2I9WkF" to="5frd:crj2MTMfPg" resolve="SublevelVariableDeclaration" />
      </node>
    </node>
    <node concept="13i0hz" id="crj2MU2KXW" role="13h7CS">
      <property role="TrG5h" value="getSummedAmount" />
      <node concept="3Tm1VV" id="crj2MU2KXX" role="1B3o_S" />
      <node concept="10OMs4" id="crj2MU2L2k" role="3clF45" />
      <node concept="3clFbS" id="crj2MU2KXZ" role="3clF47">
        <node concept="3cpWs8" id="crj2MTLa$9" role="3cqZAp">
          <node concept="3cpWsn" id="crj2MTLa$c" role="3cpWs9">
            <property role="TrG5h" value="summedAmount" />
            <node concept="10OMs4" id="crj2MTLaLU" role="1tU5fm" />
            <node concept="3cmrfG" id="crj2MTLaMh" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="crj2MTLb0T" role="3cqZAp">
          <node concept="2GrKxI" id="crj2MTLb0V" role="2Gsz3X">
            <property role="TrG5h" value="part" />
          </node>
          <node concept="3clFbS" id="crj2MTLb0Z" role="2LFqv$">
            <node concept="3clFbF" id="crj2MTLbfw" role="3cqZAp">
              <node concept="d57v9" id="crj2MTLbKq" role="3clFbG">
                <node concept="37vLTw" id="crj2MTLbfv" role="37vLTJ">
                  <ref role="3cqZAo" node="crj2MTLa$c" resolve="summedAmount" />
                </node>
                <node concept="2YIFZM" id="crj2MTLggE" role="37vLTx">
                  <ref role="37wK5l" to="wyt6:~Float.parseFloat(java.lang.String):float" resolve="parseFloat" />
                  <ref role="1Pybhc" to="wyt6:~Float" resolve="Float" />
                  <node concept="2OqwBi" id="crj2MTLdlB" role="37wK5m">
                    <node concept="2OqwBi" id="crj2MTLcdq" role="2Oq$k0">
                      <node concept="2GrUjf" id="crj2MTLbKB" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="crj2MTLb0V" resolve="part" />
                      </node>
                      <node concept="3TrEf2" id="crj2MTLf2U" role="2OqNvi">
                        <ref role="3Tt5mk" to="w3db:crj2MTKQut" resolve="amount" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="crj2MTLfDa" role="2OqNvi">
                      <ref role="3TsBF5" to="5qo5:4rZeNQ6Oert" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="crj2MTL0UI" role="2GsD0m">
            <node concept="2OqwBi" id="crj2MTKVG0" role="2Oq$k0">
              <node concept="3Tsc0h" id="crj2MTKWse" role="2OqNvi">
                <ref role="3TtcxE" to="w3db:crj2MTK8yS" resolve="parts" />
              </node>
              <node concept="13iPFW" id="crj2MU2MY$" role="2Oq$k0" />
            </node>
            <node concept="3zZkjj" id="crj2MTL4sa" role="2OqNvi">
              <node concept="1bVj0M" id="crj2MTL4sc" role="23t8la">
                <node concept="3clFbS" id="crj2MTL4sd" role="1bW5cS">
                  <node concept="3clFbF" id="crj2MTL4y0" role="3cqZAp">
                    <node concept="2OqwBi" id="crj2MTL6rw" role="3clFbG">
                      <node concept="2OqwBi" id="crj2MTL4TL" role="2Oq$k0">
                        <node concept="37vLTw" id="crj2MTL4xZ" role="2Oq$k0">
                          <ref role="3cqZAo" node="crj2MTL4se" resolve="it" />
                        </node>
                        <node concept="3TrEf2" id="crj2MTL5IB" role="2OqNvi">
                          <ref role="3Tt5mk" to="w3db:crj2MTKQut" resolve="amount" />
                        </node>
                      </node>
                      <node concept="3x8VRR" id="crj2MTL99g" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="crj2MTL4se" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="crj2MTL4sf" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="crj2MU2P1q" role="3cqZAp">
          <node concept="37vLTw" id="crj2MU2PRC" role="3cqZAk">
            <ref role="3cqZAo" node="crj2MTLa$c" resolve="summedAmount" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="crj2MU3L_m" role="13h7CS">
      <property role="TrG5h" value="getEmptyPartThreshold" />
      <node concept="3Tm1VV" id="crj2MU3L_n" role="1B3o_S" />
      <node concept="10OMs4" id="crj2MU3M3v" role="3clF45" />
      <node concept="3clFbS" id="crj2MU3L_p" role="3clF47">
        <node concept="3cpWs8" id="crj2MU3To9" role="3cqZAp">
          <node concept="3cpWsn" id="crj2MU3Toc" role="3cpWs9">
            <property role="TrG5h" value="numItems" />
            <node concept="10OMs4" id="crj2MU5DSZ" role="1tU5fm" />
            <node concept="2OqwBi" id="crj2MU3TEJ" role="33vP2m">
              <node concept="1PxgMI" id="crj2MU3TEK" role="2Oq$k0">
                <node concept="chp4Y" id="crj2MU3TEL" role="3oSUPX">
                  <ref role="cht4Q" to="w3db:crj2MTJa9l" resolve="ICanBeSplit" />
                </node>
                <node concept="2OqwBi" id="crj2MU56cp" role="1m5AlR">
                  <node concept="2OqwBi" id="crj2MU3TEM" role="2Oq$k0">
                    <node concept="13iPFW" id="crj2MU3TEN" role="2Oq$k0" />
                    <node concept="3TrEf2" id="crj2MU3TEO" role="2OqNvi">
                      <ref role="3Tt5mk" to="w3db:crj2MTJa9j" resolve="object" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="crj2MU56CM" role="2OqNvi">
                    <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                  </node>
                </node>
              </node>
              <node concept="2qgKlT" id="crj2MU3TEP" role="2OqNvi">
                <ref role="37wK5l" node="crj2MU3M5y" resolve="getNumberOfItems" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="crj2MU3M4E" role="3cqZAp">
          <node concept="3eOVzh" id="crj2MU3Srx" role="3clFbw">
            <node concept="3cmrfG" id="crj2MU3Sr$" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="crj2MU3TNQ" role="3uHU7B">
              <ref role="3cqZAo" node="crj2MU3Toc" resolve="numItems" />
            </node>
          </node>
          <node concept="3clFbS" id="crj2MU3M4G" role="3clFbx">
            <node concept="3cpWs6" id="crj2MU3SBb" role="3cqZAp">
              <node concept="3cmrfG" id="crj2MU3SMP" role="3cqZAk">
                <property role="3cmrfH" value="-1" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="crj2MU3SZ9" role="3eNLev">
            <node concept="3clFbC" id="crj2MU3UGD" role="3eO9$A">
              <node concept="3cmrfG" id="crj2MU3UYy" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="crj2MU3TTn" role="3uHU7B">
                <ref role="3cqZAo" node="crj2MU3Toc" resolve="numItems" />
              </node>
            </node>
            <node concept="3clFbS" id="crj2MU3SZb" role="3eOfB_">
              <node concept="3cpWs6" id="crj2MU3Vgp" role="3cqZAp">
                <node concept="3cmrfG" id="crj2MU3VID" role="3cqZAk">
                  <property role="3cmrfH" value="100" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="crj2MU3Wc3" role="9aQIa">
            <node concept="3clFbS" id="crj2MU3Wc4" role="9aQI4">
              <node concept="3cpWs6" id="crj2MU3WDt" role="3cqZAp">
                <node concept="FJ1c_" id="crj2MU3XLV" role="3cqZAk">
                  <node concept="37vLTw" id="crj2MU3Yfx" role="3uHU7w">
                    <ref role="3cqZAo" node="crj2MU3Toc" resolve="numItems" />
                  </node>
                  <node concept="3cmrfG" id="crj2MU3WEy" role="3uHU7B">
                    <property role="3cmrfH" value="100" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="crj2MU5VWW" role="13h7CS">
      <property role="TrG5h" value="getUndefinedPartAmount" />
      <node concept="3Tm1VV" id="crj2MU5VWX" role="1B3o_S" />
      <node concept="10OMs4" id="crj2MU5WSZ" role="3clF45" />
      <node concept="3clFbS" id="crj2MU5VWZ" role="3clF47">
        <node concept="3cpWs6" id="crj2MU6gHp" role="3cqZAp">
          <node concept="FJ1c_" id="crj2MU5KVK" role="3cqZAk">
            <node concept="2OqwBi" id="crj2MU5L_R" role="3uHU7w">
              <node concept="2OqwBi" id="crj2MU65yA" role="2Oq$k0">
                <node concept="2OqwBi" id="crj2MU5ZJ_" role="2Oq$k0">
                  <node concept="13iPFW" id="crj2MU5Zhp" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="crj2MU60s2" role="2OqNvi">
                    <ref role="3TtcxE" to="w3db:crj2MTK8yS" resolve="parts" />
                  </node>
                </node>
                <node concept="3zZkjj" id="crj2MU6bbI" role="2OqNvi">
                  <node concept="1bVj0M" id="crj2MU6bbK" role="23t8la">
                    <node concept="3clFbS" id="crj2MU6bbL" role="1bW5cS">
                      <node concept="3clFbF" id="crj2MU6bzQ" role="3cqZAp">
                        <node concept="2OqwBi" id="crj2MU6ea7" role="3clFbG">
                          <node concept="2OqwBi" id="crj2MU6c8W" role="2Oq$k0">
                            <node concept="37vLTw" id="crj2MU6bzP" role="2Oq$k0">
                              <ref role="3cqZAo" node="crj2MU6bbM" resolve="it" />
                            </node>
                            <node concept="3TrEf2" id="crj2MU6cZC" role="2OqNvi">
                              <ref role="3Tt5mk" to="w3db:crj2MTKQut" resolve="amount" />
                            </node>
                          </node>
                          <node concept="3w_OXm" id="crj2MU6gcl" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="crj2MU6bbM" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="crj2MU6bbN" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="34oBXx" id="crj2MU5LVN" role="2OqNvi" />
            </node>
            <node concept="1eOMI4" id="crj2MU5JAK" role="3uHU7B">
              <node concept="3cpWsd" id="crj2MU5KhN" role="1eOMHV">
                <node concept="2OqwBi" id="crj2MU5Yd1" role="3uHU7w">
                  <node concept="13iPFW" id="crj2MU5XST" role="2Oq$k0" />
                  <node concept="2qgKlT" id="crj2MU5YWW" role="2OqNvi">
                    <ref role="37wK5l" node="crj2MU2KXW" resolve="getSummedAmount" />
                  </node>
                </node>
                <node concept="3cmrfG" id="crj2MU5JAX" role="3uHU7B">
                  <property role="3cmrfH" value="100" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="crj2MU3M5n">
    <ref role="13h7C2" to="w3db:crj2MTJa9l" resolve="ICanBeSplit" />
    <node concept="13i0hz" id="crj2MU3M5y" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getNumberOfItems" />
      <node concept="3Tm1VV" id="crj2MU3M5z" role="1B3o_S" />
      <node concept="10Oyi0" id="crj2MU3M5M" role="3clF45" />
      <node concept="3clFbS" id="crj2MU3M5_" role="3clF47" />
    </node>
    <node concept="13i0hz" id="4kZuEukR5bB" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getSplitAnnotation" />
      <node concept="3Tm1VV" id="4kZuEukR5bC" role="1B3o_S" />
      <node concept="17QB3L" id="4kZuEukTyzY" role="3clF45" />
      <node concept="3clFbS" id="4kZuEukR5bE" role="3clF47">
        <node concept="3clFbF" id="4kZuEukR8h1" role="3cqZAp">
          <node concept="Xl_RD" id="4kZuEukTyPJ" role="3clFbG">
            <property role="Xl_RC" value="" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="3MDuPPBCO_O" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getFirstIndexOfSplit" />
      <node concept="37vLTG" id="3MDuPPBCO_P" role="3clF46">
        <property role="TrG5h" value="summedProportionBeforeSplit" />
        <node concept="10OMs4" id="3MDuPPBCO_Q" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3MDuPPBCO_R" role="3clF46">
        <property role="TrG5h" value="proportion" />
        <node concept="10OMs4" id="3MDuPPBCO_S" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="3MDuPPBCO_T" role="1B3o_S" />
      <node concept="10Oyi0" id="3MDuPPBCO_U" role="3clF45" />
      <node concept="3clFbS" id="3MDuPPBCO_V" role="3clF47">
        <node concept="3cpWs8" id="3MDuPPBCO_W" role="3cqZAp">
          <node concept="3cpWsn" id="3MDuPPBCO_X" role="3cpWs9">
            <property role="TrG5h" value="numItems" />
            <node concept="10Oyi0" id="3MDuPPBCO_Y" role="1tU5fm" />
            <node concept="2OqwBi" id="3MDuPPBCO_Z" role="33vP2m">
              <node concept="13iPFW" id="3MDuPPBCOA0" role="2Oq$k0" />
              <node concept="2qgKlT" id="3MDuPPBCOA1" role="2OqNvi">
                <ref role="37wK5l" node="crj2MU3M5y" resolve="getNumberOfItems" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3MDuPPBCOA2" role="3cqZAp">
          <node concept="2dkUwp" id="3MDuPPBCOA3" role="3clFbw">
            <node concept="3cmrfG" id="3MDuPPBCOA4" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="3MDuPPBCOA5" role="3uHU7B">
              <ref role="3cqZAo" node="3MDuPPBCO_X" resolve="numItems" />
            </node>
          </node>
          <node concept="3clFbS" id="3MDuPPBCOA6" role="3clFbx">
            <node concept="3cpWs6" id="3MDuPPBCOA7" role="3cqZAp">
              <node concept="3cmrfG" id="3MDuPPBCOA8" role="3cqZAk">
                <property role="3cmrfH" value="-1" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="3MDuPPBCOA9" role="9aQIa">
            <node concept="3clFbS" id="3MDuPPBCOAa" role="9aQI4">
              <node concept="3cpWs6" id="3MDuPPBCOAb" role="3cqZAp">
                <node concept="2YIFZM" id="3MDuPPBCOAc" role="3cqZAk">
                  <ref role="37wK5l" to="wyt6:~Math.round(float):int" resolve="round" />
                  <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                  <node concept="17qRlL" id="3MDuPPBCOAd" role="37wK5m">
                    <node concept="37vLTw" id="3MDuPPBCOAe" role="3uHU7w">
                      <ref role="3cqZAo" node="3MDuPPBCO_X" resolve="numItems" />
                    </node>
                    <node concept="FJ1c_" id="3MDuPPBCOAf" role="3uHU7B">
                      <node concept="37vLTw" id="3MDuPPBCOAg" role="3uHU7B">
                        <ref role="3cqZAo" node="3MDuPPBCO_P" resolve="summedProportionBeforeSplit" />
                      </node>
                      <node concept="3cmrfG" id="3MDuPPBCOAh" role="3uHU7w">
                        <property role="3cmrfH" value="100" />
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
    <node concept="13i0hz" id="3MDuPPBCAFa" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getLastIndexOfSplit" />
      <node concept="37vLTG" id="crj2MU7TMe" role="3clF46">
        <property role="TrG5h" value="summedProportionBeforeSplit" />
        <node concept="10OMs4" id="3MDuPPBCHVY" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3MDuPPBCAI_" role="3clF46">
        <property role="TrG5h" value="proportion" />
        <node concept="10OMs4" id="3MDuPPBCAIA" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="3MDuPPBCAFb" role="1B3o_S" />
      <node concept="10Oyi0" id="3MDuPPBCAFI" role="3clF45" />
      <node concept="3clFbS" id="3MDuPPBCAFd" role="3clF47">
        <node concept="3cpWs8" id="3MDuPPBCLio" role="3cqZAp">
          <node concept="3cpWsn" id="3MDuPPBCLir" role="3cpWs9">
            <property role="TrG5h" value="numItems" />
            <node concept="10Oyi0" id="3MDuPPBCLim" role="1tU5fm" />
            <node concept="2OqwBi" id="3MDuPPBCLu3" role="33vP2m">
              <node concept="13iPFW" id="3MDuPPBCLu4" role="2Oq$k0" />
              <node concept="2qgKlT" id="3MDuPPBCLu5" role="2OqNvi">
                <ref role="37wK5l" node="crj2MU3M5y" resolve="getNumberOfItems" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3MDuPPBCBjh" role="3cqZAp">
          <node concept="2dkUwp" id="3MDuPPBCDJv" role="3clFbw">
            <node concept="3cmrfG" id="3MDuPPBCDNx" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="3MDuPPBCLIA" role="3uHU7B">
              <ref role="3cqZAo" node="3MDuPPBCLir" resolve="numItems" />
            </node>
          </node>
          <node concept="3clFbS" id="3MDuPPBCBjj" role="3clFbx">
            <node concept="3cpWs6" id="3MDuPPBCDXB" role="3cqZAp">
              <node concept="3cmrfG" id="3MDuPPBCE80" role="3cqZAk">
                <property role="3cmrfH" value="-1" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="3MDuPPBCNP1" role="9aQIa">
            <node concept="3clFbS" id="3MDuPPBCNP2" role="9aQI4">
              <node concept="3cpWs6" id="3MDuPPBCEMI" role="3cqZAp">
                <node concept="10QFUN" id="3MDuPPBCWKZ" role="3cqZAk">
                  <node concept="2YIFZM" id="3MDuPPBCUnZ" role="10QFUP">
                    <ref role="37wK5l" to="wyt6:~Math.ceil(double):double" resolve="ceil" />
                    <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                    <node concept="3cpWsd" id="3MDuPPBCYDg" role="37wK5m">
                      <node concept="3cmrfG" id="3MDuPPBCYDj" role="3uHU7w">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="17qRlL" id="3MDuPPBCUo0" role="3uHU7B">
                        <node concept="FJ1c_" id="3MDuPPBCUo2" role="3uHU7B">
                          <node concept="3cmrfG" id="3MDuPPBCUo3" role="3uHU7w">
                            <property role="3cmrfH" value="100" />
                          </node>
                          <node concept="1eOMI4" id="3MDuPPBCUo4" role="3uHU7B">
                            <node concept="3cpWs3" id="3MDuPPBCUo5" role="1eOMHV">
                              <node concept="37vLTw" id="3MDuPPBCUo6" role="3uHU7B">
                                <ref role="3cqZAo" node="crj2MU7TMe" resolve="summedProportionBeforeSplit" />
                              </node>
                              <node concept="37vLTw" id="3MDuPPBCUo7" role="3uHU7w">
                                <ref role="3cqZAo" node="3MDuPPBCAI_" resolve="proportion" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="3MDuPPBCUo1" role="3uHU7w">
                          <ref role="3cqZAo" node="3MDuPPBCLir" resolve="numItems" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="10Oyi0" id="3MDuPPBCWL0" role="10QFUM" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="crj2MU7TJW" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getSplitObject" />
      <node concept="3Tm1VV" id="crj2MU7TJX" role="1B3o_S" />
      <node concept="3Tqbb2" id="crj2MU7TKw" role="3clF45">
        <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
      </node>
      <node concept="3clFbS" id="crj2MU7TJZ" role="3clF47" />
      <node concept="37vLTG" id="3MDuPPBCAHp" role="3clF46">
        <property role="TrG5h" value="summedProportionBeforeSplit" />
        <node concept="10OMs4" id="3MDuPPBCHVL" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="crj2MU7TLG" role="3clF46">
        <property role="TrG5h" value="proportion" />
        <node concept="10OMs4" id="3MDuPPBCAEK" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3MDuPPBHmC0" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="3MDuPPBHmCi" role="1tU5fm" />
      </node>
    </node>
    <node concept="13i0hz" id="3MDuPPBCA$1" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="serversideSplit" />
      <node concept="3Tm1VV" id="3MDuPPBCA$2" role="1B3o_S" />
      <node concept="3clFbS" id="3MDuPPBCA$4" role="3clF47" />
      <node concept="3cqZAl" id="3MDuPPBCA$U" role="3clF45" />
      <node concept="37vLTG" id="1oR6hBkmsq0" role="3clF46">
        <property role="TrG5h" value="split" />
        <node concept="3Tqbb2" id="1oR6hBkmspZ" role="1tU5fm">
          <ref role="ehGHo" to="w3db:crj2MTJ7hd" resolve="SplitStatement" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="crj2MU3M5o" role="13h7CW">
      <node concept="3clFbS" id="crj2MU3M5p" role="2VODD2" />
    </node>
  </node>
</model>

