<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fbff2a0e-c09a-4a78-bb10-24b8b89d424b(copy.plugin)">
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
    <import index="f7i1" ref="r:9f02c0c5-f908-49ca-b986-ba31e3901887(copy.structure)" />
    <import index="jqrd" ref="r:a86b5aa2-977c-4dd4-975b-865365d5871c(types.structure)" />
    <import index="yies" ref="r:acb1f74c-3547-4646-b484-f6d8ad285266(statements.plugin)" implicit="true" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" implicit="true" />
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
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
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
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
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="559557797393017698" name="jetbrains.mps.lang.smodel.structure.ModelReferenceExpression" flags="nn" index="BaHAS">
        <property id="559557797393021807" name="stereotype" index="BaGAP" />
        <property id="559557797393017702" name="name" index="BaHAW" />
      </concept>
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
    </language>
  </registry>
  <node concept="2N9Ry$" id="1o0JaC2Gad4">
    <property role="bGGJC" value="copy" />
    <property role="TrG5h" value="FeatureConfig.copy" />
    <property role="NrALT" value="core.statements.copy" />
    <ref role="NtO4t" to="yies:2$uHlqTuZ$u" resolve="FeatureConfig.statements" />
  </node>
  <node concept="qq9qg" id="1o0JaC2GbRy">
    <property role="TrG5h" value="CopyInterpreter" />
    <property role="UYu25" value="arithmetic" />
    <node concept="qq9P1" id="1o0JaC2GbRL" role="qq9xR">
      <property role="2TnfIJ" value="true" />
      <ref role="qq9wM" to="f7i1:1o0JaC2Dkg1" resolve="CopyStatement" />
      <node concept="3dA_Gj" id="1o0JaC2GbRX" role="3vQZUl">
        <node concept="9aQIb" id="1o0JaC2GbRZ" role="3vcmbn">
          <node concept="3clFbS" id="1o0JaC2GbS1" role="9aQI4">
            <node concept="3clFbF" id="1o0JaC2Gdbn" role="3cqZAp">
              <node concept="37vLTI" id="1o0JaC2GeYk" role="3clFbG">
                <node concept="2OqwBi" id="1o0JaC2GdEh" role="37vLTJ">
                  <node concept="oxGPV" id="1o0JaC2Gdbl" role="2Oq$k0" />
                  <node concept="3TrEf2" id="1o0JaC2GebQ" role="2OqNvi">
                    <ref role="3Tt5mk" to="5frd:1UULepNU6GA" resolve="type" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1o0JaC2GoEB" role="37vLTx">
                  <node concept="1eOMI4" id="1o0JaC2GolE" role="2Oq$k0">
                    <node concept="10QFUN" id="1o0JaC2Gkoc" role="1eOMHV">
                      <node concept="3EllGN" id="1o0JaC2GjW0" role="10QFUP">
                        <node concept="TvHiN" id="1o0JaC2Gjs6" role="3ElQJh" />
                        <node concept="2OqwBi" id="1o0JaC2GiKN" role="3ElVtu">
                          <node concept="1PxgMI" id="1o0JaC2GivP" role="2Oq$k0">
                            <node concept="chp4Y" id="1o0JaC2Gi$d" role="3oSUPX">
                              <ref role="cht4Q" to="5frd:pBV22SMBK$" resolve="IProvideTypeObject" />
                            </node>
                            <node concept="2OqwBi" id="1o0JaC2GfkX" role="1m5AlR">
                              <node concept="oxGPV" id="1o0JaC2Gf25" role="2Oq$k0" />
                              <node concept="3TrEf2" id="1o0JaC2Ggtp" role="2OqNvi">
                                <ref role="3Tt5mk" to="5frd:1UULepNJ9VZ" resolve="initialExpression" />
                              </node>
                            </node>
                          </node>
                          <node concept="2qgKlT" id="1o0JaC2GjeM" role="2OqNvi">
                            <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                          </node>
                        </node>
                      </node>
                      <node concept="3Tqbb2" id="1o0JaC2Gkod" role="10QFUM">
                        <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
                      </node>
                    </node>
                  </node>
                  <node concept="1$rogu" id="1o0JaC2Gpa$" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1o0JaC2GuJ3" role="3cqZAp">
              <node concept="37vLTI" id="1o0JaC2Gy5_" role="3clFbG">
                <node concept="2OqwBi" id="1o0JaC2Gyu_" role="37vLTx">
                  <node concept="oxGPV" id="1o0JaC2GybF" role="2Oq$k0" />
                  <node concept="3TrcHB" id="1o0JaC2Gz9V" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1o0JaC2Gx0o" role="37vLTJ">
                  <node concept="2OqwBi" id="1o0JaC2Gv5H" role="2Oq$k0">
                    <node concept="oxGPV" id="1o0JaC2GuJ1" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1o0JaC2Gwg3" role="2OqNvi">
                      <ref role="3Tt5mk" to="5frd:1UULepNU6GA" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="1o0JaC2GxnB" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1o0JaC2GDmn" role="3cqZAp" />
            <node concept="3clFbF" id="1o0JaC2GkXX" role="3cqZAp">
              <node concept="37vLTI" id="1o0JaC2Gprx" role="3clFbG">
                <node concept="2OqwBi" id="1o0JaC2GrGn" role="37vLTx">
                  <node concept="2OqwBi" id="1o0JaC2GpN0" role="2Oq$k0">
                    <node concept="oxGPV" id="1o0JaC2GpwB" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1o0JaC2GqVd" role="2OqNvi">
                      <ref role="3Tt5mk" to="5frd:1UULepNU6GA" resolve="type" />
                    </node>
                  </node>
                  <node concept="1$rogu" id="1o0JaC2Gs53" role="2OqNvi" />
                </node>
                <node concept="3EllGN" id="1o0JaC2Glxc" role="37vLTJ">
                  <node concept="2OqwBi" id="1o0JaC2GlN7" role="3ElVtu">
                    <node concept="oxGPV" id="1o0JaC2Glyp" role="2Oq$k0" />
                    <node concept="3TrEf2" id="2LRc08PwsHB" role="2OqNvi">
                      <ref role="3Tt5mk" to="5frd:1UULepNU6GA" resolve="type" />
                    </node>
                  </node>
                  <node concept="TvHiN" id="1o0JaC2GkXV" role="3ElQJh" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1o0JaC2GbZ0" role="3cqZAp">
              <node concept="3EllGN" id="1o0JaC2HYWy" role="3cqZAk">
                <node concept="2OqwBi" id="1o0JaC2HYWz" role="3ElVtu">
                  <node concept="oxGPV" id="1o0JaC2HYW$" role="2Oq$k0" />
                  <node concept="3TrEf2" id="1o0JaC2HYW_" role="2OqNvi">
                    <ref role="3Tt5mk" to="5frd:1UULepNU6GA" resolve="type" />
                  </node>
                </node>
                <node concept="TvHiN" id="1o0JaC2HYWA" role="3ElQJh" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="d$4Dx" id="1o0JaC2GbRz" role="d$6nW">
      <node concept="BaHAS" id="1o0JaC2GbR$" role="cpn$n">
        <property role="BaHAW" value="copy.structure" />
        <property role="BaGAP" value="" />
      </node>
    </node>
  </node>
</model>

