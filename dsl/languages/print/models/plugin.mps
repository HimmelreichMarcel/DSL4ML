<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:13417d2a-b299-427e-bc6a-a5f168f725fb(print.plugin)">
  <persistence version="9" />
  <languages>
    <use id="f159adf4-3c93-40f9-9c5a-1f245a8697af" name="jetbrains.mps.lang.aspect" version="1" />
    <use id="696c1165-4a59-463b-bc5d-902caab85dd0" name="jetbrains.mps.make.facet" version="0" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="2" />
    <use id="c9d137c4-3259-44f8-80ff-33ab2b506ee4" name="jetbrains.mps.lang.util.order" version="0" />
    <use id="68950bdf-0ae2-4759-953a-925dbfe4a386" name="composition" version="0" />
    <use id="47f075a6-558e-4640-a606-7ce0236c8023" name="com.mbeddr.mpsutil.interpreter" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="lkam" ref="r:b100cccc-1af1-49c1-9733-1312e9abf9e1(print.structure)" />
    <import index="essy" ref="r:d68f6ef3-d056-4719-85f3-ab26e4e8979e(requests.classes)" />
    <import index="yies" ref="r:acb1f74c-3547-4646-b484-f6d8ad285266(statements.plugin)" implicit="true" />
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" implicit="true" />
    <import index="4h3t" ref="r:b9cf29c2-6254-4b90-81e3-9f3af64f37f1(print.behavior)" implicit="true" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" implicit="true" />
    <import index="jqrd" ref="r:a86b5aa2-977c-4dd4-975b-865365d5871c(types.structure)" implicit="true" />
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
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
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
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
    </language>
    <language id="47f075a6-558e-4640-a606-7ce0236c8023" name="com.mbeddr.mpsutil.interpreter">
      <concept id="7019451652830285943" name="com.mbeddr.mpsutil.interpreter.structure.ApplicableLanguage" flags="ng" index="d$4Dx">
        <child id="7019451652831666945" name="language" index="cpn$n" />
      </concept>
      <concept id="2515196518060811313" name="com.mbeddr.mpsutil.interpreter.structure.DummyEvaluator" flags="ng" index="lHU7p" />
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
      <concept id="1181949435690" name="jetbrains.mps.lang.smodel.structure.Concept_NewInstance" flags="nn" index="LFhST" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
    </language>
  </registry>
  <node concept="2N9Ry$" id="2$uHlqTuZ$u">
    <property role="bGGJC" value="print" />
    <property role="TrG5h" value="FeatureConfig.print" />
    <property role="NrALT" value="core.statements.print" />
    <ref role="NtO4t" to="yies:2$uHlqTuZ$u" resolve="FeatureConfig.statements" />
  </node>
  <node concept="qq9qg" id="54xAiUQ3meW">
    <property role="TrG5h" value="PrintInterpreter" />
    <property role="UYu25" value="arithmetic" />
    <node concept="d$4Dx" id="57k_vxmXig4" role="d$6nW">
      <node concept="BaHAS" id="57k_vxmXig5" role="cpn$n">
        <property role="BaHAW" value="print.structure" />
        <property role="BaGAP" value="" />
      </node>
    </node>
    <node concept="qq9P1" id="57k_vxmXz8X" role="qq9xR">
      <property role="2TnfIJ" value="true" />
      <ref role="qq9wM" to="lkam:2$uHlqTNdUd" resolve="PrintStatement" />
      <node concept="3dA_Gj" id="57k_vxmX_hd" role="3vQZUl">
        <node concept="9aQIb" id="57k_vxmX_hf" role="3vcmbn">
          <node concept="3clFbS" id="57k_vxmX_hh" role="9aQI4">
            <node concept="3clFbJ" id="ntYdpmrCvM" role="3cqZAp">
              <node concept="3clFbS" id="ntYdpmrCvO" role="3clFbx">
                <node concept="3cpWs6" id="ntYdpmrF7N" role="3cqZAp">
                  <node concept="3clFbT" id="ntYdpmvME1" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="ntYdpmrEa1" role="3clFbw">
                <node concept="1eOMI4" id="ntYdpmrDQl" role="2Oq$k0">
                  <node concept="10QFUN" id="ntYdpmrDdn" role="1eOMHV">
                    <node concept="3uibUv" id="ntYdpmrDnH" role="10QFUM">
                      <ref role="3uigEE" to="essy:1cFlTWM6so1" resolve="MLEContext" />
                    </node>
                    <node concept="oxNuS" id="ntYdpmrD1r" role="10QFUP" />
                  </node>
                </node>
                <node concept="2OwXpG" id="ntYdpmrF3l" role="2OqNvi">
                  <ref role="2Oxat5" to="essy:1cFlTWM6z3Y" resolve="local" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4Ue$l7tbgkr" role="3cqZAp">
              <node concept="3cpWsn" id="4Ue$l7tbgku" role="3cpWs9">
                <property role="TrG5h" value="printable" />
                <node concept="3Tqbb2" id="4Ue$l7tbgkp" role="1tU5fm">
                  <ref role="ehGHo" to="lkam:4TFMgV46qb6" resolve="ICanBePrinted" />
                </node>
                <node concept="10QFUN" id="4Ue$l7tbg_C" role="33vP2m">
                  <node concept="3Tqbb2" id="4Ue$l7tbgGb" role="10QFUM">
                    <ref role="ehGHo" to="lkam:4TFMgV46qb6" resolve="ICanBePrinted" />
                  </node>
                  <node concept="2OqwBi" id="7Xt0Sm$0KZ0" role="10QFUP">
                    <node concept="2OqwBi" id="4Ue$l7tbfin" role="2Oq$k0">
                      <node concept="oxGPV" id="4Ue$l7tbeYO" role="2Oq$k0" />
                      <node concept="3TrEf2" id="4Ue$l7tbfO5" role="2OqNvi">
                        <ref role="3Tt5mk" to="lkam:57k_vxmVIoe" resolve="object" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="ntYdpmrHR$" role="2OqNvi">
                      <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="ntYdpmAZOJ" role="3cqZAp">
              <node concept="3cpWsn" id="ntYdpmAZOK" role="3cpWs9">
                <property role="TrG5h" value="output" />
                <node concept="3Tqbb2" id="ntYdpmAZOL" role="1tU5fm">
                  <ref role="ehGHo" to="lkam:4Oj5iGcvoJy" resolve="ObjectOutput" />
                </node>
                <node concept="1PxgMI" id="ntYdpmAZOM" role="33vP2m">
                  <node concept="chp4Y" id="ntYdpmAZON" role="3oSUPX">
                    <ref role="cht4Q" to="lkam:4Oj5iGcvoJy" resolve="ObjectOutput" />
                  </node>
                  <node concept="2OqwBi" id="ntYdpmAZOO" role="1m5AlR">
                    <node concept="2OqwBi" id="ntYdpmAZOP" role="2Oq$k0">
                      <node concept="2qgKlT" id="ntYdpmAZOR" role="2OqNvi">
                        <ref role="37wK5l" to="4h3t:4TFMgV46qbF" resolve="getConcreteObjectOutputConcept" />
                      </node>
                      <node concept="37vLTw" id="ntYdpmB2YI" role="2Oq$k0">
                        <ref role="3cqZAo" node="4Ue$l7tbgku" resolve="printable" />
                      </node>
                    </node>
                    <node concept="LFhST" id="ntYdpmAZOS" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="ntYdpmrF7Q" role="3cqZAp" />
            <node concept="3SKdUt" id="ntYdpmATLa" role="3cqZAp">
              <node concept="3SKdUq" id="ntYdpmATLc" role="3SKWNk">
                <property role="3SKdUp" value="load output from server or from copy of local object" />
              </node>
            </node>
            <node concept="3clFbJ" id="ntYdpmAUVd" role="3cqZAp">
              <node concept="3clFbS" id="ntYdpmAUVf" role="3clFbx">
                <node concept="3clFbF" id="ntYdpmB4wL" role="3cqZAp">
                  <node concept="37vLTI" id="ntYdpmB5Fg" role="3clFbG">
                    <node concept="2OqwBi" id="ntYdpmB4SU" role="37vLTJ">
                      <node concept="37vLTw" id="ntYdpmB4wJ" role="2Oq$k0">
                        <ref role="3cqZAo" node="ntYdpmAZOK" resolve="output" />
                      </node>
                      <node concept="3TrEf2" id="ntYdpmB5iy" role="2OqNvi">
                        <ref role="3Tt5mk" to="lkam:MS2eiU9Z$f" resolve="copy" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="ntYdpmAYY1" role="37vLTx">
                      <node concept="1PxgMI" id="ntYdpmAYD3" role="2Oq$k0">
                        <node concept="chp4Y" id="ntYdpmAYKk" role="3oSUPX">
                          <ref role="cht4Q" to="5frd:1UULepO1t7_" resolve="ISynchWithServer" />
                        </node>
                        <node concept="2OqwBi" id="ntYdpmAY2v" role="1m5AlR">
                          <node concept="2OqwBi" id="ntYdpmAY2w" role="2Oq$k0">
                            <node concept="oxGPV" id="ntYdpmAY2x" role="2Oq$k0" />
                            <node concept="3TrEf2" id="ntYdpmAY2y" role="2OqNvi">
                              <ref role="3Tt5mk" to="lkam:57k_vxmVIoe" resolve="object" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="ntYdpmAY2z" role="2OqNvi">
                            <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                          </node>
                        </node>
                      </node>
                      <node concept="2qgKlT" id="ntYdpmAZhC" role="2OqNvi">
                        <ref role="37wK5l" to="64zb:XZLIaPm3N0" resolve="loadFromServer" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="ntYdpmAZE5" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="ntYdpmAWU2" role="3clFbw">
                <node concept="2OqwBi" id="ntYdpmAWfi" role="2Oq$k0">
                  <node concept="2OqwBi" id="ntYdpmAVHK" role="2Oq$k0">
                    <node concept="oxGPV" id="ntYdpmAVuX" role="2Oq$k0" />
                    <node concept="3TrEf2" id="ntYdpmAW6L" role="2OqNvi">
                      <ref role="3Tt5mk" to="lkam:57k_vxmVIoe" resolve="object" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="ntYdpmAWuG" role="2OqNvi">
                    <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                  </node>
                </node>
                <node concept="1mIQ4w" id="ntYdpmAX$C" role="2OqNvi">
                  <node concept="chp4Y" id="ntYdpmAXHz" role="cj9EA">
                    <ref role="cht4Q" to="5frd:1UULepO1t7_" resolve="ISynchWithServer" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="ntYdpmAXTu" role="9aQIa">
                <node concept="3clFbS" id="ntYdpmAXTv" role="9aQI4">
                  <node concept="3clFbF" id="ntYdpmB8OG" role="3cqZAp">
                    <node concept="37vLTI" id="ntYdpmB9GJ" role="3clFbG">
                      <node concept="2OqwBi" id="ntYdpmB8Wh" role="37vLTJ">
                        <node concept="37vLTw" id="ntYdpmB8OF" role="2Oq$k0">
                          <ref role="3cqZAo" node="ntYdpmAZOK" resolve="output" />
                        </node>
                        <node concept="3TrEf2" id="ntYdpmB9lT" role="2OqNvi">
                          <ref role="3Tt5mk" to="lkam:MS2eiU9Z$f" resolve="copy" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7UBQZE3uv_q" role="37vLTx">
                        <node concept="1eOMI4" id="7UBQZE3uvdN" role="2Oq$k0">
                          <node concept="10QFUN" id="4rZ4tH4n3Fm" role="1eOMHV">
                            <node concept="3Tqbb2" id="4rZ4tH4n3UI" role="10QFUM">
                              <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
                            </node>
                            <node concept="3EllGN" id="4rZ4tH4n1ph" role="10QFUP">
                              <node concept="TvHiN" id="4rZ4tH4n0yo" role="3ElQJh" />
                              <node concept="2OqwBi" id="XZLIaPz_$a" role="3ElVtu">
                                <node concept="2OqwBi" id="XZLIaPz_0$" role="2Oq$k0">
                                  <node concept="oxGPV" id="XZLIaPz_0_" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="XZLIaPz_0A" role="2OqNvi">
                                    <ref role="3Tt5mk" to="lkam:57k_vxmVIoe" resolve="object" />
                                  </node>
                                </node>
                                <node concept="2qgKlT" id="UBdn8EgfQY" role="2OqNvi">
                                  <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1$rogu" id="7UBQZE3uvWh" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="ntYdpmAT9C" role="3cqZAp" />
            <node concept="3SKdUt" id="ntYdpmBcnd" role="3cqZAp">
              <node concept="3SKdUq" id="ntYdpmBcnf" role="3SKWNk">
                <property role="3SKdUp" value="initialize output and add it to section" />
              </node>
            </node>
            <node concept="3clFbF" id="XZLIaP$Uct" role="3cqZAp">
              <node concept="2OqwBi" id="XZLIaP$ULp" role="3clFbG">
                <node concept="37vLTw" id="ntYdpmBaR9" role="2Oq$k0">
                  <ref role="3cqZAo" node="ntYdpmAZOK" resolve="output" />
                </node>
                <node concept="2qgKlT" id="XZLIaP$Vb6" role="2OqNvi">
                  <ref role="37wK5l" to="4h3t:XZLIaPmW9i" resolve="initializeOutput" />
                  <node concept="2OqwBi" id="11KrhWhoeZa" role="37wK5m">
                    <node concept="oxGPV" id="11KrhWhoeMC" role="2Oq$k0" />
                    <node concept="3TrEf2" id="11KrhWhofnV" role="2OqNvi">
                      <ref role="3Tt5mk" to="lkam:57k_vxmVIoe" resolve="object" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="ntYdpmBdeV" role="3cqZAp">
              <node concept="2OqwBi" id="ntYdpmBgMI" role="3clFbG">
                <node concept="2OqwBi" id="ntYdpmBe8O" role="2Oq$k0">
                  <node concept="2OqwBi" id="57k_vxmX_Ob" role="2Oq$k0">
                    <node concept="oxGPV" id="57k_vxmX_Cv" role="2Oq$k0" />
                    <node concept="2Xjw5R" id="57k_vxmXArl" role="2OqNvi">
                      <node concept="1xMEDy" id="57k_vxmXArn" role="1xVPHs">
                        <node concept="chp4Y" id="4IazLL4$w5M" role="ri$Ld">
                          <ref role="cht4Q" to="5frd:2$uHlqSzbou" resolve="Section" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="ntYdpmBeWC" role="2OqNvi">
                    <ref role="3TtcxE" to="5frd:2$uHlqTwMzG" resolve="results" />
                  </node>
                </node>
                <node concept="TSZUe" id="ntYdpmBkCT" role="2OqNvi">
                  <node concept="37vLTw" id="ntYdpmBkP9" role="25WWJ7">
                    <ref role="3cqZAo" node="ntYdpmAZOK" resolve="output" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4rZ4tH4mVSe" role="3cqZAp" />
            <node concept="3cpWs6" id="57k_vxmXXsM" role="3cqZAp">
              <node concept="3clFbT" id="57k_vxmXXFp" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="lHU7p" id="1qp0740igqm" role="qq9xR" />
  </node>
</model>

