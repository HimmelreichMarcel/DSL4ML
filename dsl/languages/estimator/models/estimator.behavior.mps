<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8d8fe0f0-3fda-4342-a84d-5cbb381df82f(estimator.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="1" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="pbu6" ref="r:83e946de-2a7f-4a4c-b3c9-4f671aa7f2db(org.iets3.core.expr.base.behavior)" />
    <import index="jqrd" ref="r:a86b5aa2-977c-4dd4-975b-865365d5871c(types.structure)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="5t6d" ref="r:74fa9f55-9024-401b-8305-653d85756786(estimator.structure)" />
    <import index="rfu" ref="r:6e9b2235-0fe7-42b9-bb5a-8f85b71f42e3(types.behavior)" implicit="true" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
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
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
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
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="1167227138527" name="jetbrains.mps.baseLanguage.logging.structure.LogStatement" flags="nn" index="34ab3g">
        <property id="1167245565795" name="severity" index="35gtTG" />
        <child id="1167227463056" name="logExpression" index="34bqiv" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
  <node concept="13h7C7" id="6azzq4WW_LB">
    <ref role="13h7C2" to="5t6d:6azzq4WW_L7" resolve="EstimatorType" />
    <node concept="13hLZK" id="6azzq4WW_LC" role="13h7CW">
      <node concept="3clFbS" id="6azzq4WW_LD" role="2VODD2">
        <node concept="3clFbF" id="7g3NvkvQHhA" role="3cqZAp">
          <node concept="37vLTI" id="7g3NvkvQI_a" role="3clFbG">
            <node concept="2ShNRf" id="7g3NvkvQIEh" role="37vLTx">
              <node concept="3zrR0B" id="7g3NvkvQIEf" role="2ShVmc">
                <node concept="3Tqbb2" id="7g3NvkvQIEg" role="3zrR0E">
                  <ref role="ehGHo" to="5t6d:7bbTq01X5JW" resolve="DeprecatedSetEstimatorWithImportantInterpreterStuff" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7g3NvkvQHsV" role="37vLTJ">
              <node concept="13iPFW" id="7g3NvkvQHh_" role="2Oq$k0" />
              <node concept="3TrEf2" id="7g3NvkvQI3u" role="2OqNvi">
                <ref role="3Tt5mk" to="jqrd:7g3NvkvQEiO" resolve="initialExpression" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="6azzq4WW_MG" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="loadFromServer" />
      <ref role="13i0hy" to="64zb:XZLIaPm3N0" resolve="loadFromServer" />
      <node concept="3Tm1VV" id="6azzq4WW_MH" role="1B3o_S" />
      <node concept="3clFbS" id="6azzq4WW_MK" role="3clF47">
        <node concept="3SKdUt" id="6azzq4WWACY" role="3cqZAp">
          <node concept="3SKdUq" id="6azzq4WWAD0" role="3SKWNk">
            <property role="3SKdUp" value="TODO" />
          </node>
        </node>
        <node concept="3cpWs6" id="6azzq4WWABQ" role="3cqZAp">
          <node concept="10Nm6u" id="6azzq4WWACl" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tqbb2" id="6azzq4WW_ML" role="3clF45">
        <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
      </node>
    </node>
    <node concept="13i0hz" id="11KrhWhT5vW" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="pushToServer" />
      <ref role="13i0hy" to="64zb:11KrhWhKNEB" resolve="createServersideCopy" />
      <node concept="3Tm1VV" id="11KrhWhT5vX" role="1B3o_S" />
      <node concept="3clFbS" id="11KrhWhT5w0" role="3clF47">
        <node concept="3SKdUt" id="11KrhWhT5_z" role="3cqZAp">
          <node concept="3SKdUq" id="11KrhWhT5_$" role="3SKWNk">
            <property role="3SKdUp" value="TODO" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="55_guBAFvgV" role="3clF45" />
      <node concept="37vLTG" id="55_guBAFvgW" role="3clF46">
        <property role="TrG5h" value="objCopy" />
        <node concept="3Tqbb2" id="55_guBAFvgX" role="1tU5fm">
          <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="7bbTq01XhRJ">
    <property role="3GE5qa" value="initializers" />
    <ref role="13h7C2" to="5t6d:7bbTq01X5JW" resolve="DeprecatedSetEstimatorWithImportantInterpreterStuff" />
    <node concept="13hLZK" id="7bbTq01XhRK" role="13h7CW">
      <node concept="3clFbS" id="7bbTq01XhRL" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7bbTq01XhRU" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="7bbTq01XhRV" role="1B3o_S" />
      <node concept="3clFbS" id="7bbTq01XhRY" role="3clF47">
        <node concept="3clFbF" id="7bbTq01XhSd" role="3cqZAp">
          <node concept="Xl_RD" id="7bbTq01XhSc" role="3clFbG">
            <property role="Xl_RC" value="rr_estimatorInitExpression" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="7bbTq01XhRZ" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="1pFVOLkMnzu">
    <property role="3GE5qa" value="initializers" />
    <ref role="13h7C2" to="5t6d:1pFVOLkMnz4" resolve="AbstractEstimatorInitialExpression" />
    <node concept="13i0hz" id="1pFVOLkMnzD" role="13h7CS">
      <property role="TrG5h" value="isApplicableTo" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="rfu:1pFVOLkGh5r" resolve="isApplicableTo" />
      <node concept="3clFbS" id="1pFVOLkMnzG" role="3clF47">
        <node concept="34ab3g" id="1pFVOLkM_pA" role="3cqZAp">
          <property role="35gtTG" value="info" />
          <node concept="Xl_RD" id="1pFVOLkM_pC" role="34bqiv">
            <property role="Xl_RC" value="checking it here" />
          </node>
        </node>
        <node concept="3cpWs6" id="1pFVOLkMn$b" role="3cqZAp">
          <node concept="2OqwBi" id="1pFVOLkMnKl" role="3cqZAk">
            <node concept="37vLTw" id="1pFVOLkMn$C" role="2Oq$k0">
              <ref role="3cqZAo" node="1pFVOLkMnzT" resolve="type" />
            </node>
            <node concept="1mIQ4w" id="1pFVOLkMog9" role="2OqNvi">
              <node concept="chp4Y" id="1pFVOLkMoiR" role="cj9EA">
                <ref role="cht4Q" to="5t6d:6azzq4WW_L7" resolve="EstimatorType" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1pFVOLkMnzT" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="3Tqbb2" id="1pFVOLkMnzU" role="1tU5fm">
          <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
        </node>
      </node>
      <node concept="10P_77" id="1pFVOLkMnzV" role="3clF45" />
      <node concept="3Tm1VV" id="1pFVOLkMnzW" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="1pFVOLkMnzv" role="13h7CW">
      <node concept="3clFbS" id="1pFVOLkMnzw" role="2VODD2" />
    </node>
  </node>
</model>

