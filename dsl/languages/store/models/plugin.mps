<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:51e9eb5c-72cd-4c3c-84da-b306e7b2a607(store.plugin)">
  <persistence version="9" />
  <languages>
    <use id="f159adf4-3c93-40f9-9c5a-1f245a8697af" name="jetbrains.mps.lang.aspect" version="1" />
    <use id="696c1165-4a59-463b-bc5d-902caab85dd0" name="jetbrains.mps.make.facet" version="0" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="2" />
    <use id="c9d137c4-3259-44f8-80ff-33ab2b506ee4" name="jetbrains.mps.lang.util.order" version="0" />
    <use id="47f075a6-558e-4640-a606-7ce0236c8023" name="com.mbeddr.mpsutil.interpreter" version="0" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <use id="68950bdf-0ae2-4759-953a-925dbfe4a386" name="composition" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="u7mz" ref="r:c1927c62-1175-4830-af3a-957eac7fe707(store.structure)" />
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" implicit="true" />
    <import index="wvph" ref="r:20914789-5429-4374-8e4e-5bf172379f89(store.behavior)" implicit="true" />
    <import index="jqrd" ref="r:a86b5aa2-977c-4dd4-975b-865365d5871c(types.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" implicit="true" />
    <import index="yies" ref="r:acb1f74c-3547-4646-b484-f6d8ad285266(statements.plugin)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
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
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="47f075a6-558e-4640-a606-7ce0236c8023" name="com.mbeddr.mpsutil.interpreter">
      <concept id="7019451652830285943" name="com.mbeddr.mpsutil.interpreter.structure.ApplicableLanguage" flags="ng" index="d$4Dx">
        <child id="7019451652831666945" name="language" index="cpn$n" />
      </concept>
      <concept id="2515196518060811313" name="com.mbeddr.mpsutil.interpreter.structure.DummyEvaluator" flags="ng" index="lHU7p" />
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
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="559557797393017698" name="jetbrains.mps.lang.smodel.structure.ModelReferenceExpression" flags="nn" index="BaHAS">
        <property id="559557797393021807" name="stereotype" index="BaGAP" />
        <property id="559557797393017702" name="name" index="BaHAW" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
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
  </registry>
  <node concept="qq9qg" id="2aoocMLifIz">
    <property role="TrG5h" value="StoreInterpreter" />
    <property role="UYu25" value="arithmetic" />
    <node concept="qq9P1" id="2aoocMLifIP" role="qq9xR">
      <property role="2TnfIJ" value="true" />
      <ref role="qq9wM" to="u7mz:2aoocMLh9aI" resolve="StoreStatement" />
      <node concept="3dA_Gj" id="2aoocMLifJo" role="3vQZUl">
        <node concept="9aQIb" id="2aoocMLifJq" role="3vcmbn">
          <node concept="3clFbS" id="2aoocMLifJs" role="9aQI4">
            <node concept="3cpWs8" id="2aoocMLigkT" role="3cqZAp">
              <node concept="3cpWsn" id="2aoocMLigkW" role="3cpWs9">
                <property role="TrG5h" value="storable" />
                <node concept="3Tqbb2" id="2aoocMLigkS" role="1tU5fm">
                  <ref role="ehGHo" to="u7mz:2aoocMLhbXK" resolve="ICanBeStored" />
                </node>
                <node concept="1PxgMI" id="2aoocMLimac" role="33vP2m">
                  <node concept="chp4Y" id="2aoocMLimip" role="3oSUPX">
                    <ref role="cht4Q" to="u7mz:2aoocMLhbXK" resolve="ICanBeStored" />
                  </node>
                  <node concept="2OqwBi" id="2aoocMLihTL" role="1m5AlR">
                    <node concept="2OqwBi" id="2aoocMLig$b" role="2Oq$k0">
                      <node concept="oxGPV" id="2aoocMLigln" role="2Oq$k0" />
                      <node concept="3TrEf2" id="2aoocMLihlR" role="2OqNvi">
                        <ref role="3Tt5mk" to="u7mz:2aoocMLh9MX" resolve="object" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="2aoocMLiiR4" role="2OqNvi">
                      <ref role="37wK5l" to="64zb:7qBCLwWhIAp" resolve="getObjectAtPosition" />
                      <node concept="oxGPV" id="2aoocMLilI9" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2aoocMLin0N" role="3cqZAp">
              <node concept="2OqwBi" id="2aoocMLinfB" role="3clFbG">
                <node concept="37vLTw" id="2aoocMLin0L" role="2Oq$k0">
                  <ref role="3cqZAo" node="2aoocMLigkW" resolve="storable" />
                </node>
                <node concept="2qgKlT" id="2aoocMLinq$" role="2OqNvi">
                  <ref role="37wK5l" to="wvph:2aoocMLh$Ry" resolve="storeObject" />
                  <node concept="3cpWs3" id="2aoocML_rXi" role="37wK5m">
                    <node concept="2OqwBi" id="2aoocMLi_f9" role="3uHU7w">
                      <node concept="1PxgMI" id="2aoocMLi$T$" role="2Oq$k0">
                        <node concept="chp4Y" id="2aoocMLi$Xy" role="3oSUPX">
                          <ref role="cht4Q" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
                        </node>
                        <node concept="37vLTw" id="2aoocMLinFj" role="1m5AlR">
                          <ref role="3cqZAo" node="2aoocMLigkW" resolve="storable" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="2aoocMLi__U" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="Uc0C_mYEoo" role="3uHU7B">
                      <node concept="2OqwBi" id="2aoocML$XC$" role="3uHU7B">
                        <node concept="2OqwBi" id="2aoocML$W9z" role="2Oq$k0">
                          <node concept="oxGPV" id="2aoocML$VRV" role="2Oq$k0" />
                          <node concept="2Xjw5R" id="2aoocML$X27" role="2OqNvi">
                            <node concept="1xMEDy" id="2aoocML$X29" role="1xVPHs">
                              <node concept="chp4Y" id="2aoocML$X9w" role="ri$Ld">
                                <ref role="cht4Q" to="5frd:2$uHlqSzhDy" resolve="File" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2qgKlT" id="2aoocML$Yn6" role="2OqNvi">
                          <ref role="37wK5l" to="64zb:2aoocMLmf9b" resolve="getRepositoryFilePath" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="2aoocML_sg2" role="3uHU7w">
                        <property role="Xl_RC" value="/" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2aoocMLimGW" role="3cqZAp">
              <node concept="3clFbT" id="2aoocMLimOY" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="lHU7p" id="2aoocMLifIK" role="qq9xR" />
    <node concept="d$4Dx" id="2aoocMLifI$" role="d$6nW">
      <node concept="BaHAS" id="2aoocMLifI_" role="cpn$n">
        <property role="BaHAW" value="store.structure" />
        <property role="BaGAP" value="" />
      </node>
    </node>
  </node>
  <node concept="2N9Ry$" id="2aoocMLiHz3">
    <property role="bGGJC" value="store" />
    <property role="TrG5h" value="FeatureConfig.store" />
    <property role="NrALT" value="core.statements.store" />
    <ref role="NtO4t" to="yies:2$uHlqTuZ$u" resolve="FeatureConfig.statements" />
  </node>
</model>

