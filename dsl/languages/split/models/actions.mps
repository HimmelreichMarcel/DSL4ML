<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f3916607-de5f-47fa-99f9-5ced9364c6c5(split.actions)">
  <persistence version="9" />
  <languages>
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="w3db" ref="r:372863d1-da2c-4d51-9ce5-ef15e0220a9a(split.structure)" implicit="true" />
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
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
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
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
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="1158700664498" name="jetbrains.mps.lang.actions.structure.NodeFactories" flags="ng" index="37WguZ">
        <child id="1158700779049" name="nodeFactory" index="37WGs$" />
      </concept>
      <concept id="1158700725281" name="jetbrains.mps.lang.actions.structure.NodeFactory" flags="ig" index="37WvkG">
        <reference id="1158700943156" name="applicableConcept" index="37XkoT" />
        <child id="1158701448518" name="setupFunction" index="37ZfLb" />
      </concept>
      <concept id="1158701162220" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction" flags="in" index="37Y9Zx" />
      <concept id="5584396657084912703" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction_NewNode" flags="nn" index="1r4Lsj" />
      <concept id="5584396657084920670" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction_EnclosingNode" flags="nn" index="1r4N1M" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1181949435690" name="jetbrains.mps.lang.smodel.structure.Concept_NewInstance" flags="nn" index="LFhST" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
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
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
    </language>
  </registry>
  <node concept="37WguZ" id="crj2MTK8L3">
    <property role="TrG5h" value="PartStatementInitialization" />
    <node concept="37WvkG" id="crj2MTK8LR" role="37WGs$">
      <ref role="37XkoT" to="w3db:crj2MTJZed" resolve="PartStatement" />
      <node concept="37Y9Zx" id="crj2MTK8LS" role="37ZfLb">
        <node concept="3clFbS" id="crj2MTK8LT" role="2VODD2">
          <node concept="3cpWs8" id="crj2MTKptf" role="3cqZAp">
            <node concept="3cpWsn" id="crj2MTKpti" role="3cpWs9">
              <property role="TrG5h" value="baseName" />
              <node concept="17QB3L" id="crj2MTKptd" role="1tU5fm" />
              <node concept="2OqwBi" id="crj2MTKrks" role="33vP2m">
                <node concept="2OqwBi" id="crj2MTKq4x" role="2Oq$k0">
                  <node concept="1PxgMI" id="crj2MTKpJ3" role="2Oq$k0">
                    <node concept="chp4Y" id="crj2MTKpP9" role="3oSUPX">
                      <ref role="cht4Q" to="w3db:crj2MTJ7hd" resolve="SplitStatement" />
                    </node>
                    <node concept="1r4N1M" id="crj2MTKpuG" role="1m5AlR" />
                  </node>
                  <node concept="3TrEf2" id="crj2MTKqMA" role="2OqNvi">
                    <ref role="3Tt5mk" to="w3db:crj2MTJa9j" resolve="object" />
                  </node>
                </node>
                <node concept="2qgKlT" id="crj2MTKt7S" role="2OqNvi">
                  <ref role="37wK5l" to="64zb:1qp0740gxlZ" resolve="getObjectName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="crj2MTK8M6" role="3cqZAp">
            <node concept="3cpWsn" id="crj2MTK8M9" role="3cpWs9">
              <property role="TrG5h" value="partNumber" />
              <node concept="10Oyi0" id="crj2MTK8M5" role="1tU5fm" />
              <node concept="3cpWs3" id="crj2MTKG9N" role="33vP2m">
                <node concept="3cmrfG" id="crj2MTKG9Q" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="crj2MTKfcf" role="3uHU7B">
                  <node concept="2OqwBi" id="crj2MTK9rb" role="2Oq$k0">
                    <node concept="1PxgMI" id="crj2MTK91o" role="2Oq$k0">
                      <node concept="chp4Y" id="crj2MTK9bN" role="3oSUPX">
                        <ref role="cht4Q" to="w3db:crj2MTJ7hd" resolve="SplitStatement" />
                      </node>
                      <node concept="1r4N1M" id="crj2MTK8Nk" role="1m5AlR" />
                    </node>
                    <node concept="3Tsc0h" id="crj2MTK9MJ" role="2OqNvi">
                      <ref role="3TtcxE" to="w3db:crj2MTK8yS" resolve="parts" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="crj2MTKpnM" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="crj2MTKppb" role="3cqZAp">
            <node concept="37vLTI" id="crj2MTKwrW" role="3clFbG">
              <node concept="3cpWs3" id="crj2MTKxwv" role="37vLTx">
                <node concept="37vLTw" id="crj2MTKxGA" role="3uHU7w">
                  <ref role="3cqZAo" node="crj2MTK8M9" resolve="partNumber" />
                </node>
                <node concept="3cpWs3" id="crj2MTKwZQ" role="3uHU7B">
                  <node concept="37vLTw" id="crj2MTKwBh" role="3uHU7B">
                    <ref role="3cqZAo" node="crj2MTKpti" resolve="baseName" />
                  </node>
                  <node concept="Xl_RD" id="crj2MTKwZT" role="3uHU7w">
                    <property role="Xl_RC" value="_" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="crj2MTKv7L" role="37vLTJ">
                <node concept="1r4Lsj" id="crj2MTKpp9" role="2Oq$k0" />
                <node concept="3TrcHB" id="crj2MTKvAg" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="crj2MTLq5H" role="3cqZAp">
            <node concept="37vLTI" id="crj2MTLsdj" role="3clFbG">
              <node concept="2OqwBi" id="crj2MTLwC8" role="37vLTx">
                <node concept="2OqwBi" id="crj2MTLvif" role="2Oq$k0">
                  <node concept="2OqwBi" id="crj2MTLuw3" role="2Oq$k0">
                    <node concept="2OqwBi" id="crj2MTLtTO" role="2Oq$k0">
                      <node concept="1PxgMI" id="crj2MTLtyV" role="2Oq$k0">
                        <node concept="chp4Y" id="crj2MTLtAX" role="3oSUPX">
                          <ref role="cht4Q" to="w3db:crj2MTJ7hd" resolve="SplitStatement" />
                        </node>
                        <node concept="1r4N1M" id="crj2MTLsro" role="1m5AlR" />
                      </node>
                      <node concept="3TrEf2" id="crj2MTLumW" role="2OqNvi">
                        <ref role="3Tt5mk" to="w3db:crj2MTJa9j" resolve="object" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="crj2MTLuYv" role="2OqNvi">
                      <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getTypeObject" />
                    </node>
                  </node>
                  <node concept="2yIwOk" id="crj2MTLvYM" role="2OqNvi" />
                </node>
                <node concept="LFhST" id="crj2MTLxvj" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="crj2MTLqqp" role="37vLTJ">
                <node concept="1r4Lsj" id="crj2MTLq5F" role="2Oq$k0" />
                <node concept="3TrEf2" id="crj2MTLryc" role="2OqNvi">
                  <ref role="3Tt5mk" to="5frd:1UULepNU6GA" resolve="type" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

