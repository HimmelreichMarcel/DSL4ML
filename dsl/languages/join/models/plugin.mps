<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0f9555dd-372c-418b-846d-b7d9a9138ead(join.plugin)">
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
    <import index="reag" ref="r:ade3e00b-044f-42e0-846c-a1a8f349d15b(join.structure)" />
    <import index="essy" ref="r:d68f6ef3-d056-4719-85f3-ab26e4e8979e(requests.classes)" />
    <import index="yies" ref="r:acb1f74c-3547-4646-b484-f6d8ad285266(statements.plugin)" implicit="true" />
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" implicit="true" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
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
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
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
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
    </language>
    <language id="47f075a6-558e-4640-a606-7ce0236c8023" name="com.mbeddr.mpsutil.interpreter">
      <concept id="7019451652830285943" name="com.mbeddr.mpsutil.interpreter.structure.ApplicableLanguage" flags="ng" index="d$4Dx">
        <child id="7019451652831666945" name="language" index="cpn$n" />
      </concept>
      <concept id="5293529713177831489" name="com.mbeddr.mpsutil.interpreter.structure.NodeExpression" flags="ng" index="oxGPV" />
      <concept id="5293529713177875074" name="com.mbeddr.mpsutil.interpreter.structure.ContextExpression" flags="ng" index="oxNuS" />
      <concept id="8615074351687299818" name="com.mbeddr.mpsutil.interpreter.structure.Interpreter" flags="ng" index="qq9qg">
        <property id="8426159527444241399" name="category" index="UYu25" />
        <child id="7019451652830298090" name="applicableLanguages" index="d$6nW" />
        <child id="8615074351687302157" name="evaluators" index="qq9xR" />
      </concept>
      <concept id="8615074351687301435" name="com.mbeddr.mpsutil.interpreter.structure.ConceptEvaluator" flags="ng" index="qq9P1">
        <reference id="8615074351687302216" name="concept" index="qq9wM" />
      </concept>
      <concept id="3406009787378976616" name="com.mbeddr.mpsutil.interpreter.structure.EnvExpression" flags="ng" index="TvHiN" />
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
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="559557797393017698" name="jetbrains.mps.lang.smodel.structure.ModelReferenceExpression" flags="nn" index="BaHAS">
        <property id="559557797393021807" name="stereotype" index="BaGAP" />
        <property id="559557797393017702" name="name" index="BaHAW" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
    </language>
  </registry>
  <node concept="2N9Ry$" id="10zQN_$VWAj">
    <property role="bGGJC" value="join" />
    <property role="TrG5h" value="FeatureConfig.join" />
    <property role="NrALT" value="core.statements.join" />
    <ref role="NtO4t" to="yies:2$uHlqTuZ$u" resolve="FeatureConfig.statements" />
  </node>
  <node concept="qq9qg" id="6uf7$58CVd1">
    <property role="TrG5h" value="JoinInterpreter" />
    <property role="UYu25" value="arithmetic" />
    <node concept="qq9P1" id="6uf7$58CVdY" role="qq9xR">
      <property role="2TnfIJ" value="true" />
      <ref role="qq9wM" to="reag:10zQN_$VSWC" resolve="JoinStatement" />
      <node concept="3dA_Gj" id="6uf7$58OhQ8" role="3vQZUl">
        <node concept="9aQIb" id="6uf7$58OhQa" role="3vcmbn">
          <node concept="3clFbS" id="6uf7$58OhQc" role="9aQI4">
            <node concept="3clFbJ" id="4HLGmtYP2Hj" role="3cqZAp">
              <node concept="3clFbS" id="4HLGmtYP2Hl" role="3clFbx">
                <node concept="2Gpval" id="LOMnt$dHH0" role="3cqZAp">
                  <node concept="2GrKxI" id="LOMnt$dHH2" role="2Gsz3X">
                    <property role="TrG5h" value="cmd" />
                  </node>
                  <node concept="3clFbS" id="LOMnt$dHH6" role="2LFqv$">
                    <node concept="3cpWs8" id="MS2eiU9$Lo" role="3cqZAp">
                      <node concept="3cpWsn" id="MS2eiU9$Lp" role="3cpWs9">
                        <property role="TrG5h" value="runner" />
                        <node concept="3uibUv" id="MS2eiU9$Lq" role="1tU5fm">
                          <ref role="3uigEE" to="essy:4Oj5iGcyQsW" resolve="RequestRunner" />
                        </node>
                        <node concept="2ShNRf" id="MS2eiU9$Lr" role="33vP2m">
                          <node concept="1pGfFk" id="MS2eiU9$Ls" role="2ShVmc">
                            <ref role="37wK5l" to="essy:4Oj5iGcyQzG" resolve="RequestRunner" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="CAhoO5lrjw" role="3cqZAp">
                      <node concept="2OqwBi" id="CAhoO5lroV" role="3clFbG">
                        <node concept="37vLTw" id="CAhoO5lrjv" role="2Oq$k0">
                          <ref role="3cqZAo" node="MS2eiU9$Lp" resolve="runner" />
                        </node>
                        <node concept="liA8E" id="CAhoO5ls1r" role="2OqNvi">
                          <ref role="37wK5l" to="essy:4Oj5iGczvh2" resolve="runRequest" />
                          <node concept="2GrUjf" id="LOMnt$dHWL" role="37wK5m">
                            <ref role="2Gs0qQ" node="LOMnt$dHH2" resolve="cmd" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="LOMnt$dGTA" role="2GsD0m">
                    <node concept="oxGPV" id="LOMnt$dGDA" role="2Oq$k0" />
                    <node concept="2qgKlT" id="LOMnt$dHmP" role="2OqNvi">
                      <ref role="37wK5l" to="64zb:4HLGmtYMWnF" resolve="generateServerRequests" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="1cFlTWMaEdD" role="3clFbw">
                <node concept="2OqwBi" id="1cFlTWMaEdF" role="3fr31v">
                  <node concept="1eOMI4" id="1cFlTWMaEdG" role="2Oq$k0">
                    <node concept="10QFUN" id="1cFlTWMaEdH" role="1eOMHV">
                      <node concept="3uibUv" id="1cFlTWMaEdI" role="10QFUM">
                        <ref role="3uigEE" to="essy:1cFlTWM6so1" resolve="MLEContext" />
                      </node>
                      <node concept="oxNuS" id="1cFlTWMaEdJ" role="10QFUP" />
                    </node>
                  </node>
                  <node concept="2OwXpG" id="1cFlTWMaEdK" role="2OqNvi">
                    <ref role="2Oxat5" to="essy:1cFlTWM6z3Y" resolve="local" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="LOMnt$e2Jq" role="3cqZAp">
              <node concept="2OqwBi" id="LOMnt$e2Yh" role="3clFbG">
                <node concept="oxGPV" id="LOMnt$e2Jo" role="2Oq$k0" />
                <node concept="2qgKlT" id="LOMnt$e3yr" role="2OqNvi">
                  <ref role="37wK5l" to="64zb:4HLGmtYMVsA" resolve="applyLocalChanges" />
                  <node concept="oxNuS" id="1XwI97ApGWX" role="37wK5m" />
                  <node concept="10QFUN" id="LOMnt$earj" role="37wK5m">
                    <node concept="3Tqbb2" id="LOMnt$ebJ5" role="10QFUM">
                      <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
                    </node>
                    <node concept="3EllGN" id="LOMnt$e6we" role="10QFUP">
                      <node concept="TvHiN" id="LOMnt$e5XX" role="3ElQJh" />
                      <node concept="2OqwBi" id="LOMnt$e5ga" role="3ElVtu">
                        <node concept="2OqwBi" id="LOMnt$e463" role="2Oq$k0">
                          <node concept="oxGPV" id="LOMnt$e3R0" role="2Oq$k0" />
                          <node concept="3TrEf2" id="LOMnt$e4Ek" role="2OqNvi">
                            <ref role="3Tt5mk" to="reag:10zQN_$VTZa" resolve="object" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="LOMnt$e5FL" role="2OqNvi">
                          <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6uf7$58PykY" role="3cqZAp">
              <node concept="3clFbT" id="6uf7$58Pypw" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="d$4Dx" id="6uf7$58CVdG" role="d$6nW">
      <node concept="BaHAS" id="6uf7$58CVdH" role="cpn$n">
        <property role="BaHAW" value="join.structure" />
        <property role="BaGAP" value="" />
      </node>
    </node>
  </node>
</model>

