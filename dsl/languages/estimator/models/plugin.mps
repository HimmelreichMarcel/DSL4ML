<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:07dfdcbd-7f0b-4cd8-833d-3f2296fce41b(estimator.plugin)">
  <persistence version="9" />
  <languages>
    <use id="f159adf4-3c93-40f9-9c5a-1f245a8697af" name="jetbrains.mps.lang.aspect" version="1" />
    <use id="696c1165-4a59-463b-bc5d-902caab85dd0" name="jetbrains.mps.make.facet" version="0" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="2" />
    <use id="c9d137c4-3259-44f8-80ff-33ab2b506ee4" name="jetbrains.mps.lang.util.order" version="0" />
    <use id="47f075a6-558e-4640-a606-7ce0236c8023" name="com.mbeddr.mpsutil.interpreter" version="0" />
    <use id="68950bdf-0ae2-4759-953a-925dbfe4a386" name="composition" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="5t6d" ref="r:74fa9f55-9024-401b-8305-653d85756786(estimator.structure)" />
    <import index="essy" ref="r:d68f6ef3-d056-4719-85f3-ab26e4e8979e(requests.classes)" />
    <import index="4kwy" ref="r:657c9fde-2f36-4e61-ae17-20f02b8630ad(org.iets3.core.base.structure)" />
    <import index="riuk" ref="r:d11bbe93-812a-4d69-aed5-b2420e4cff94(types.plugin)" implicit="true" />
    <import index="ckmh" ref="r:a0b09593-26bd-4d75-98f1-657e49dea4f1(create.structure)" implicit="true" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
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
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
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
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
    </language>
    <language id="47f075a6-558e-4640-a606-7ce0236c8023" name="com.mbeddr.mpsutil.interpreter">
      <concept id="7019451652830285943" name="com.mbeddr.mpsutil.interpreter.structure.ApplicableLanguage" flags="ng" index="d$4Dx">
        <child id="7019451652831666945" name="language" index="cpn$n" />
      </concept>
      <concept id="5293529713177831489" name="com.mbeddr.mpsutil.interpreter.structure.NodeExpression" flags="ng" index="oxGPV" />
      <concept id="8615074351687299818" name="com.mbeddr.mpsutil.interpreter.structure.Interpreter" flags="ng" index="qq9qg">
        <property id="8426159527444241399" name="category" index="UYu25" />
        <child id="7019451652830298090" name="applicableLanguages" index="d$6nW" />
        <child id="8615074351687302157" name="evaluators" index="qq9xR" />
      </concept>
      <concept id="8615074351687301435" name="com.mbeddr.mpsutil.interpreter.structure.ConceptEvaluator" flags="ng" index="qq9P1">
        <reference id="8615074351687302216" name="concept" index="qq9wM" />
      </concept>
      <concept id="5712773029518214110" name="com.mbeddr.mpsutil.interpreter.structure.ConceptEvaluatorBody" flags="ng" index="3dA_Gj">
        <child id="5934114435582613364" name="body" index="3vcmbn" />
      </concept>
      <concept id="5934114435583058812" name="com.mbeddr.mpsutil.interpreter.structure.AbstractEvaluator" flags="ng" index="3va1rv">
        <property id="8845772667389641968" name="cache" index="2TnfIJ" />
        <child id="5934114435584084790" name="evaluator" index="3vQZUl" />
      </concept>
    </language>
    <language id="68950bdf-0ae2-4759-953a-925dbfe4a386" name="composition">
      <concept id="579560145578392133" name="composition.structure.ArtifactDescription" flags="ng" index="2N9Ry$">
        <property id="1116701740537584057" name="shortname" index="bGGJC" />
        <property id="5638729317953218057" name="path" index="NrALT" />
        <reference id="5638729317953801069" name="parent" index="NtO4t" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="559557797393017698" name="jetbrains.mps.lang.smodel.structure.ModelReferenceExpression" flags="nn" index="BaHAS">
        <property id="559557797393021807" name="stereotype" index="BaGAP" />
        <property id="559557797393017702" name="name" index="BaHAW" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
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
  </registry>
  <node concept="2N9Ry$" id="6azzq4WXpgj">
    <property role="bGGJC" value="estimator" />
    <property role="TrG5h" value="FeatureConfig.estimator" />
    <property role="NrALT" value="core.types.estimator" />
    <ref role="NtO4t" to="riuk:2$uHlqTwPYO" resolve="FeatureConfig.types" />
  </node>
  <node concept="qq9qg" id="UOeJaKG7Ak">
    <property role="TrG5h" value="EstimatorInterpreter" />
    <property role="UYu25" value="arithmetic" />
    <node concept="qq9P1" id="UOeJaKG7Az" role="qq9xR">
      <property role="2TnfIJ" value="true" />
      <ref role="qq9wM" to="5t6d:UOeJaKFLEu" resolve="RandomForestEstimator" />
      <node concept="3dA_Gj" id="UOeJaKG7AJ" role="3vQZUl">
        <node concept="9aQIb" id="UOeJaKG7AL" role="3vcmbn">
          <node concept="3clFbS" id="UOeJaKG7AN" role="9aQI4">
            <node concept="3cpWs8" id="UOeJaKGei5" role="3cqZAp">
              <node concept="3cpWsn" id="UOeJaKGei8" role="3cpWs9">
                <property role="TrG5h" value="est" />
                <node concept="3Tqbb2" id="UOeJaKGei4" role="1tU5fm">
                  <ref role="ehGHo" to="5t6d:6azzq4WW_L7" resolve="EstimatorType" />
                </node>
                <node concept="10QFUN" id="UOeJaKGj7r" role="33vP2m">
                  <node concept="2OqwBi" id="UOeJaKGdA8" role="10QFUP">
                    <node concept="2OqwBi" id="UOeJaKGck0" role="2Oq$k0">
                      <node concept="1PxgMI" id="UOeJaKGbwc" role="2Oq$k0">
                        <node concept="chp4Y" id="4IazLL3VHqt" role="3oSUPX">
                          <ref role="cht4Q" to="ckmh:4Z2dWAVu5W2" resolve="CreateStatement" />
                        </node>
                        <node concept="2OqwBi" id="UOeJaKGaC2" role="1m5AlR">
                          <node concept="oxGPV" id="UOeJaKGauv" role="2Oq$k0" />
                          <node concept="1mfA1w" id="UOeJaKGaUd" role="2OqNvi" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="UOeJaKGcQV" role="2OqNvi">
                        <ref role="3Tt5mk" to="5frd:1UULepNU6GA" resolve="type" />
                      </node>
                    </node>
                    <node concept="1$rogu" id="UOeJaKGeH1" role="2OqNvi" />
                  </node>
                  <node concept="3Tqbb2" id="UOeJaKGj7s" role="10QFUM">
                    <ref role="ehGHo" to="5t6d:6azzq4WW_L7" resolve="EstimatorType" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="UOeJaKGfdo" role="3cqZAp">
              <node concept="37vLTI" id="UOeJaKGigR" role="3clFbG">
                <node concept="Xl_RD" id="UOeJaKGij_" role="37vLTx">
                  <property role="Xl_RC" value="random_forest" />
                </node>
                <node concept="2OqwBi" id="UOeJaKGfui" role="37vLTJ">
                  <node concept="37vLTw" id="UOeJaKGfdm" role="2Oq$k0">
                    <ref role="3cqZAo" node="UOeJaKGei8" resolve="est" />
                  </node>
                  <node concept="3TrcHB" id="UOeJaKGgvN" role="2OqNvi">
                    <ref role="3TsBF5" to="5t6d:UOeJaKGc3V" resolve="estimatorKey" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="UOeJaKGf3B" role="3cqZAp">
              <node concept="37vLTw" id="UOeJaKGfak" role="3cqZAk">
                <ref role="3cqZAo" node="UOeJaKGei8" resolve="est" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="d$4Dx" id="UOeJaKG7Al" role="d$6nW">
      <node concept="BaHAS" id="UOeJaKG7Am" role="cpn$n">
        <property role="BaHAW" value="estimator.structure" />
        <property role="BaGAP" value="" />
      </node>
    </node>
  </node>
</model>

