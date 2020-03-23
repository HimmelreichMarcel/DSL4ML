<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:662af3f0-a585-45ac-ad3d-fb71447b161d(featuresEditing.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="1" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="55s9" ref="r:349f01e8-2ba4-49f7-be71-679bbbf4b80d(features.structure)" />
    <import index="pbu6" ref="r:83e946de-2a7f-4a4c-b3c9-4f671aa7f2db(org.iets3.core.expr.base.behavior)" />
    <import index="917x" ref="r:83f7a824-2d8f-4211-9c8e-802488d31e7c(features.behavior)" />
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" />
    <import index="z82i" ref="r:0a2eb21f-fd0b-49b5-8a4c-2ff8b9d2f6c8(featuresEditing.structure)" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" />
    <import index="rfu" ref="r:6e9b2235-0fe7-42b9-bb5a-8f85b71f42e3(types.behavior)" />
    <import index="essy" ref="r:d68f6ef3-d056-4719-85f3-ab26e4e8979e(requests.classes)" />
    <import index="2ahs" ref="r:ea6cf71d-29d2-478d-8027-a9f4a4de53c4(com.mbeddr.mpsutil.interpreter.rt)" />
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
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
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
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1227264722563" name="jetbrains.mps.lang.smodel.structure.EqualsStructurallyExpression" flags="nn" index="2YFouu" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
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
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
    </language>
  </registry>
  <node concept="13h7C7" id="5TCgtqd_gFo">
    <property role="3GE5qa" value="composition" />
    <ref role="13h7C2" to="z82i:5TCgtqdzv5u" resolve="FeaturesetComposition" />
    <node concept="13hLZK" id="5TCgtqd_gFp" role="13h7CW">
      <node concept="3clFbS" id="5TCgtqd_gFq" role="2VODD2">
        <node concept="3clFbF" id="5TCgtqdB69Z" role="3cqZAp">
          <node concept="37vLTI" id="5TCgtqdB7EQ" role="3clFbG">
            <node concept="3clFbT" id="5TCgtqdB7Fg" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="2OqwBi" id="5TCgtqdB6lA" role="37vLTJ">
              <node concept="13iPFW" id="5TCgtqdB69Y" role="2Oq$k0" />
              <node concept="3TrcHB" id="5TCgtqdB6Z5" role="2OqNvi">
                <ref role="3TsBF5" to="z82i:5TCgtqdAHML" resolve="detectJointFeature" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5TCgtqd_hEO" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="5TCgtqd_hEP" role="1B3o_S" />
      <node concept="3clFbS" id="5TCgtqd_hES" role="3clF47">
        <node concept="3clFbF" id="5TCgtqd_hFf" role="3cqZAp">
          <node concept="Xl_RD" id="5TCgtqd_hFe" role="3clFbG">
            <property role="Xl_RC" value="rr_compositionBlock" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="5TCgtqd_hET" role="3clF45" />
    </node>
    <node concept="13i0hz" id="5ho9GAQVDqu" role="13h7CS">
      <property role="TrG5h" value="addJointFeatureStatement" />
      <node concept="3Tm1VV" id="5ho9GAQVDqv" role="1B3o_S" />
      <node concept="3cqZAl" id="5ho9GAQVDu2" role="3clF45" />
      <node concept="3clFbS" id="5ho9GAQVDqx" role="3clF47">
        <node concept="2Gpval" id="5ho9GAQVDvv" role="3cqZAp">
          <node concept="2GrKxI" id="5ho9GAQVDvw" role="2Gsz3X">
            <property role="TrG5h" value="statement" />
          </node>
          <node concept="2OqwBi" id="5ho9GAQVDLG" role="2GsD0m">
            <node concept="13iPFW" id="5ho9GAQVDzu" role="2Oq$k0" />
            <node concept="3Tsc0h" id="5ho9GAQVE6C" role="2OqNvi">
              <ref role="3TtcxE" to="z82i:5TCgtqdzE1L" resolve="jointFeatures" />
            </node>
          </node>
          <node concept="3clFbS" id="5ho9GAQVDvy" role="2LFqv$">
            <node concept="3clFbJ" id="5ho9GAQVEek" role="3cqZAp">
              <node concept="2YFouu" id="5ho9GAQVFo7" role="3clFbw">
                <node concept="37vLTw" id="5ho9GAQVFsr" role="3uHU7w">
                  <ref role="3cqZAo" node="5ho9GAQVE9U" resolve="target" />
                </node>
                <node concept="2GrUjf" id="5ho9GAQVEeC" role="3uHU7B">
                  <ref role="2Gs0qQ" node="5ho9GAQVDvw" resolve="statement" />
                </node>
              </node>
              <node concept="3clFbS" id="5ho9GAQVEem" role="3clFbx">
                <node concept="3cpWs6" id="5ho9GAQVFwF" role="3cqZAp" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5ho9GAQVF_m" role="3cqZAp">
          <node concept="2OqwBi" id="5ho9GAQVI21" role="3clFbG">
            <node concept="2OqwBi" id="5ho9GAQVFMz" role="2Oq$k0">
              <node concept="13iPFW" id="5ho9GAQVF_k" role="2Oq$k0" />
              <node concept="3Tsc0h" id="5ho9GAQVGa4" role="2OqNvi">
                <ref role="3TtcxE" to="z82i:5TCgtqdzE1L" resolve="jointFeatures" />
              </node>
            </node>
            <node concept="TSZUe" id="5ho9GAQVLTO" role="2OqNvi">
              <node concept="37vLTw" id="5ho9GAQVM8y" role="25WWJ7">
                <ref role="3cqZAo" node="5ho9GAQVE9U" resolve="target" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5ho9GAQVE9U" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="5ho9GAQVE9T" role="1tU5fm">
          <ref role="ehGHo" to="z82i:5TCgtqdAnQi" resolve="JointFeatureStatement" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="5A1koKOPwtb">
    <property role="3GE5qa" value="composition" />
    <ref role="13h7C2" to="z82i:2I8Ps5Ng5cV" resolve="SelectExpr" />
    <node concept="13hLZK" id="5A1koKOPwtc" role="13h7CW">
      <node concept="3clFbS" id="5A1koKOPwtd" role="2VODD2">
        <node concept="3clFbF" id="5A1koKOPxgL" role="3cqZAp">
          <node concept="37vLTI" id="5A1koKOPy1D" role="3clFbG">
            <node concept="2ShNRf" id="5A1koKOPy65" role="37vLTx">
              <node concept="3zrR0B" id="5A1koKOPy3V" role="2ShVmc">
                <node concept="3Tqbb2" id="5A1koKOPy3W" role="3zrR0E">
                  <ref role="ehGHo" to="55s9:6Quy7yTSu7D" resolve="FeatureSelection" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5A1koKOPxnH" role="37vLTJ">
              <node concept="13iPFW" id="5A1koKOPxgK" role="2Oq$k0" />
              <node concept="3TrEf2" id="5A1koKOPxEK" role="2OqNvi">
                <ref role="3Tt5mk" to="z82i:5A1koKOPwsJ" resolve="features" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="5A1koKOSN0Q">
    <property role="3GE5qa" value="composition" />
    <ref role="13h7C2" to="z82i:5TCgtqdAnQi" resolve="JointFeatureStatement" />
    <node concept="13hLZK" id="5A1koKOSN0R" role="13h7CW">
      <node concept="3clFbS" id="5A1koKOSN0S" role="2VODD2" />
    </node>
  </node>
</model>

