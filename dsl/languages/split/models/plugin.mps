<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f138ac5c-d549-4b5f-99b0-ae2bb0495504(split.plugin)">
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
    <import index="w3db" ref="r:372863d1-da2c-4d51-9ce5-ef15e0220a9a(split.structure)" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" />
    <import index="essy" ref="r:d68f6ef3-d056-4719-85f3-ab26e4e8979e(requests.classes)" />
    <import index="yies" ref="r:acb1f74c-3547-4646-b484-f6d8ad285266(statements.plugin)" implicit="true" />
    <import index="lcps" ref="r:a220a28d-d4d7-4d46-a236-0578bf554f13(split.behavior)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="5qo5" ref="r:6d93ddb1-b0b0-4eee-8079-51303666672a(org.iets3.core.expr.simpleTypes.structure)" implicit="true" />
    <import index="jqrd" ref="r:a86b5aa2-977c-4dd4-975b-865365d5871c(types.structure)" implicit="true" />
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
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534436861" name="jetbrains.mps.baseLanguage.structure.FloatType" flags="in" index="10OMs4" />
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
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
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
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
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
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="559557797393017698" name="jetbrains.mps.lang.smodel.structure.ModelReferenceExpression" flags="nn" index="BaHAS">
        <property id="559557797393021807" name="stereotype" index="BaGAP" />
        <property id="559557797393017702" name="name" index="BaHAW" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
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
  <node concept="2N9Ry$" id="crj2MTJ6lK">
    <property role="bGGJC" value="split" />
    <property role="TrG5h" value="FeatureConfig.split" />
    <property role="NrALT" value="core.statements.split" />
    <ref role="NtO4t" to="yies:2$uHlqTuZ$u" resolve="FeatureConfig.statements" />
  </node>
  <node concept="qq9qg" id="crj2MU7R3g">
    <property role="TrG5h" value="SplitInterpreter" />
    <property role="UYu25" value="arithmetic" />
    <node concept="qq9P1" id="crj2MU7R4s" role="qq9xR">
      <property role="2TnfIJ" value="true" />
      <ref role="qq9wM" to="w3db:crj2MTJ7hd" resolve="SplitStatement" />
      <node concept="3dA_Gj" id="crj2MU7R4C" role="3vQZUl">
        <node concept="9aQIb" id="crj2MU7R4E" role="3vcmbn">
          <node concept="3clFbS" id="crj2MU7R4G" role="9aQI4">
            <node concept="34ab3g" id="2yEOtRkdAUw" role="3cqZAp">
              <property role="35gtTG" value="info" />
              <node concept="Xl_RD" id="2yEOtRkdAUy" role="34bqiv">
                <property role="Xl_RC" value="split operation" />
              </node>
            </node>
            <node concept="3cpWs8" id="3MDuPPBDO7I" role="3cqZAp">
              <node concept="3cpWsn" id="3MDuPPBDO7L" role="3cpWs9">
                <property role="TrG5h" value="summedProportion" />
                <node concept="10OMs4" id="3MDuPPBDO7G" role="1tU5fm" />
                <node concept="3cmrfG" id="3MDuPPBDOpB" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="3MDuPPBDE2s" role="3cqZAp">
              <node concept="2GrKxI" id="3MDuPPBDE2u" role="2Gsz3X">
                <property role="TrG5h" value="part" />
              </node>
              <node concept="2OqwBi" id="3MDuPPBDEiB" role="2GsD0m">
                <node concept="oxGPV" id="3MDuPPBDE2Q" role="2Oq$k0" />
                <node concept="3Tsc0h" id="3MDuPPBDEHm" role="2OqNvi">
                  <ref role="3TtcxE" to="w3db:crj2MTK8yS" resolve="parts" />
                </node>
              </node>
              <node concept="3clFbS" id="3MDuPPBDE2y" role="2LFqv$">
                <node concept="3cpWs8" id="3MDuPPBEa0g" role="3cqZAp">
                  <node concept="3cpWsn" id="3MDuPPBEa0j" role="3cpWs9">
                    <property role="TrG5h" value="amount" />
                    <node concept="10OMs4" id="3MDuPPBEa0e" role="1tU5fm" />
                    <node concept="3K4zz7" id="3MDuPPBEaCr" role="33vP2m">
                      <node concept="2OqwBi" id="3MDuPPBEaCQ" role="3K4Cdx">
                        <node concept="2OqwBi" id="3MDuPPBEaCR" role="2Oq$k0">
                          <node concept="2GrUjf" id="3MDuPPBEaCS" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="3MDuPPBDE2u" resolve="part" />
                          </node>
                          <node concept="3TrEf2" id="3MDuPPBEaCT" role="2OqNvi">
                            <ref role="3Tt5mk" to="w3db:crj2MTKQut" resolve="amount" />
                          </node>
                        </node>
                        <node concept="3w_OXm" id="3MDuPPBEaCU" role="2OqNvi" />
                      </node>
                      <node concept="2OqwBi" id="3MDuPPBEb6z" role="3K4E3e">
                        <node concept="oxGPV" id="3MDuPPBEb6$" role="2Oq$k0" />
                        <node concept="2qgKlT" id="3MDuPPBEb6_" role="2OqNvi">
                          <ref role="37wK5l" to="lcps:crj2MU5VWW" resolve="getUndefinedPartAmount" />
                        </node>
                      </node>
                      <node concept="2YIFZM" id="3MDuPPBEbfs" role="3K4GZi">
                        <ref role="37wK5l" to="wyt6:~Float.parseFloat(java.lang.String):float" resolve="parseFloat" />
                        <ref role="1Pybhc" to="wyt6:~Float" resolve="Float" />
                        <node concept="2OqwBi" id="3MDuPPBEbft" role="37wK5m">
                          <node concept="2OqwBi" id="3MDuPPBEbfu" role="2Oq$k0">
                            <node concept="2GrUjf" id="3MDuPPBEbfv" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="3MDuPPBDE2u" resolve="part" />
                            </node>
                            <node concept="3TrEf2" id="3MDuPPBEbfw" role="2OqNvi">
                              <ref role="3Tt5mk" to="w3db:crj2MTKQut" resolve="amount" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="3MDuPPBEbfx" role="2OqNvi">
                            <ref role="3TsBF5" to="5qo5:4rZeNQ6Oert" resolve="value" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="7RwLiLWmfh9" role="3cqZAp" />
                <node concept="3cpWs8" id="7RwLiLWmfZR" role="3cqZAp">
                  <node concept="3cpWsn" id="7RwLiLWmfZU" role="3cpWs9">
                    <property role="TrG5h" value="obj" />
                    <node concept="3Tqbb2" id="7RwLiLWmfZP" role="1tU5fm">
                      <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
                    </node>
                    <node concept="2OqwBi" id="3MDuPPBDNpX" role="33vP2m">
                      <node concept="1PxgMI" id="3MDuPPBDMT4" role="2Oq$k0">
                        <node concept="chp4Y" id="3MDuPPBDN5N" role="3oSUPX">
                          <ref role="cht4Q" to="w3db:crj2MTJa9l" resolve="ICanBeSplit" />
                        </node>
                        <node concept="2OqwBi" id="3MDuPPBDLSp" role="1m5AlR">
                          <node concept="2OqwBi" id="3MDuPPBDKz6" role="2Oq$k0">
                            <node concept="oxGPV" id="3MDuPPBDKjf" role="2Oq$k0" />
                            <node concept="3TrEf2" id="3MDuPPBDL6_" role="2OqNvi">
                              <ref role="3Tt5mk" to="w3db:crj2MTJa9j" resolve="object" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="2efi5br6fzq" role="2OqNvi">
                            <ref role="37wK5l" to="64zb:7qBCLwWhIAp" resolve="getObjectAtPosition" />
                            <node concept="oxGPV" id="2efi5br6fEp" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                      <node concept="2qgKlT" id="3MDuPPBDNNE" role="2OqNvi">
                        <ref role="37wK5l" to="lcps:crj2MU7TJW" resolve="getSplitObject" />
                        <node concept="37vLTw" id="3MDuPPBDOtU" role="37wK5m">
                          <ref role="3cqZAo" node="3MDuPPBDO7L" resolve="summedProportion" />
                        </node>
                        <node concept="37vLTw" id="3MDuPPBDXkw" role="37wK5m">
                          <ref role="3cqZAo" node="3MDuPPBEa0j" resolve="amount" />
                        </node>
                        <node concept="2OqwBi" id="3MDuPPBHkJY" role="37wK5m">
                          <node concept="2GrUjf" id="3MDuPPBHkbN" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="3MDuPPBDE2u" resolve="part" />
                          </node>
                          <node concept="3TrcHB" id="3MDuPPBHlGG" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="HbjLPkekGV" role="3cqZAp">
                  <node concept="3SKdUq" id="HbjLPkekGX" role="3SKWNk">
                    <property role="3SKdUp" value="TODO: ugly" />
                  </node>
                </node>
                <node concept="3clFbJ" id="HbjLPkeecG" role="3cqZAp">
                  <node concept="3clFbS" id="HbjLPkeecI" role="3clFbx">
                    <node concept="3clFbF" id="7RwLiLWmhq_" role="3cqZAp">
                      <node concept="37vLTI" id="7RwLiLWmiVQ" role="3clFbG">
                        <node concept="2OqwBi" id="7RwLiLWmmJ7" role="37vLTx">
                          <node concept="1PxgMI" id="7RwLiLWmlFj" role="2Oq$k0">
                            <node concept="chp4Y" id="7RwLiLWmm92" role="3oSUPX">
                              <ref role="cht4Q" to="5frd:1UULepO1t7_" resolve="ISynchWithServer" />
                            </node>
                            <node concept="2OqwBi" id="HbjLPke1rI" role="1m5AlR">
                              <node concept="2GrUjf" id="7RwLiLWmiYE" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="3MDuPPBDE2u" resolve="part" />
                              </node>
                              <node concept="3TrEf2" id="HbjLPke32T" role="2OqNvi">
                                <ref role="3Tt5mk" to="5frd:1UULepNU6GA" resolve="type" />
                              </node>
                            </node>
                          </node>
                          <node concept="3TrcHB" id="HbjLPke3rd" role="2OqNvi">
                            <ref role="3TsBF5" to="5frd:1UULepO1tEg" resolve="id" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="7RwLiLWmigl" role="37vLTJ">
                          <node concept="1PxgMI" id="7RwLiLWmi84" role="2Oq$k0">
                            <node concept="chp4Y" id="7RwLiLWmi8P" role="3oSUPX">
                              <ref role="cht4Q" to="5frd:1UULepO1t7_" resolve="ISynchWithServer" />
                            </node>
                            <node concept="37vLTw" id="7RwLiLWmhqz" role="1m5AlR">
                              <ref role="3cqZAo" node="7RwLiLWmfZU" resolve="obj" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7RwLiLWmitm" role="2OqNvi">
                            <ref role="3TsBF5" to="5frd:1UULepO1tEg" resolve="id" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="HbjLPkehiA" role="3clFbw">
                    <node concept="2OqwBi" id="HbjLPkeeWh" role="2Oq$k0">
                      <node concept="2GrUjf" id="HbjLPkeeCM" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="3MDuPPBDE2u" resolve="part" />
                      </node>
                      <node concept="3TrEf2" id="HbjLPkegvG" role="2OqNvi">
                        <ref role="3Tt5mk" to="5frd:1UULepNU6GA" resolve="type" />
                      </node>
                    </node>
                    <node concept="1mIQ4w" id="HbjLPkeilY" role="2OqNvi">
                      <node concept="chp4Y" id="HbjLPkeioI" role="cj9EA">
                        <ref role="cht4Q" to="5frd:1UULepO1t7_" resolve="ISynchWithServer" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3MDuPPBDENH" role="3cqZAp">
                  <node concept="37vLTI" id="3MDuPPBDGQ2" role="3clFbG">
                    <node concept="3EllGN" id="3MDuPPBDFbw" role="37vLTJ">
                      <node concept="2OqwBi" id="3MDuPPBDFtY" role="3ElVtu">
                        <node concept="2GrUjf" id="3MDuPPBDFcH" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="3MDuPPBDE2u" resolve="part" />
                        </node>
                        <node concept="3TrEf2" id="3MDuPPBDGEs" role="2OqNvi">
                          <ref role="3Tt5mk" to="5frd:1UULepNU6GA" resolve="type" />
                        </node>
                      </node>
                      <node concept="TvHiN" id="3MDuPPBDENG" role="3ElQJh" />
                    </node>
                    <node concept="37vLTw" id="7RwLiLWmgQj" role="37vLTx">
                      <ref role="3cqZAo" node="7RwLiLWmfZU" resolve="obj" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3MDuPPBDY65" role="3cqZAp">
                  <node concept="d57v9" id="3MDuPPBDYRy" role="3clFbG">
                    <node concept="37vLTw" id="3MDuPPBE1Ar" role="37vLTx">
                      <ref role="3cqZAo" node="3MDuPPBEa0j" resolve="amount" />
                    </node>
                    <node concept="37vLTw" id="3MDuPPBDY63" role="37vLTJ">
                      <ref role="3cqZAo" node="3MDuPPBDO7L" resolve="summedProportion" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1oR6hBkmlYt" role="3cqZAp" />
            <node concept="3clFbJ" id="UBdn8DWTxW" role="3cqZAp">
              <node concept="3clFbS" id="UBdn8DWTxX" role="3clFbx">
                <node concept="3clFbF" id="1oR6hBkmpeD" role="3cqZAp">
                  <node concept="2OqwBi" id="1oR6hBkmr_t" role="3clFbG">
                    <node concept="1PxgMI" id="1oR6hBkmrfP" role="2Oq$k0">
                      <node concept="chp4Y" id="1oR6hBkmrnr" role="3oSUPX">
                        <ref role="cht4Q" to="w3db:crj2MTJa9l" resolve="ICanBeSplit" />
                      </node>
                      <node concept="2OqwBi" id="1oR6hBkmqth" role="1m5AlR">
                        <node concept="2OqwBi" id="1oR6hBkmpub" role="2Oq$k0">
                          <node concept="oxGPV" id="1oR6hBkmpeB" role="2Oq$k0" />
                          <node concept="3TrEf2" id="1oR6hBkmpSW" role="2OqNvi">
                            <ref role="3Tt5mk" to="w3db:crj2MTJa9j" resolve="object" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="1oR6hBkmqGT" role="2OqNvi">
                          <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                        </node>
                      </node>
                    </node>
                    <node concept="2qgKlT" id="1oR6hBkms5o" role="2OqNvi">
                      <ref role="37wK5l" to="lcps:3MDuPPBCA$1" resolve="serversideSplit" />
                      <node concept="oxGPV" id="1oR6hBkms_W" role="37wK5m" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="6Y$bjgGQCdp" role="3cqZAp" />
              </node>
              <node concept="3fqX7Q" id="1oR6hBkmp9G" role="3clFbw">
                <node concept="2OqwBi" id="1oR6hBkmp9I" role="3fr31v">
                  <node concept="1eOMI4" id="1oR6hBkmp9J" role="2Oq$k0">
                    <node concept="10QFUN" id="1oR6hBkmp9K" role="1eOMHV">
                      <node concept="3uibUv" id="1oR6hBkmp9L" role="10QFUM">
                        <ref role="3uigEE" to="essy:1cFlTWM6so1" resolve="MLEContext" />
                      </node>
                      <node concept="oxNuS" id="1oR6hBkmp9M" role="10QFUP" />
                    </node>
                  </node>
                  <node concept="2OwXpG" id="1oR6hBkmp9N" role="2OqNvi">
                    <ref role="2Oxat5" to="essy:1cFlTWM6z3Y" resolve="local" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="crj2MU7RGt" role="3cqZAp" />
            <node concept="3SKdUt" id="3MDuPPBCAgR" role="3cqZAp">
              <node concept="3SKdUq" id="3MDuPPBCAgT" role="3SKWNk">
                <property role="3SKdUp" value="featureset can be predicted without server" />
              </node>
            </node>
            <node concept="3cpWs6" id="7Xt0Sm$17wb" role="3cqZAp">
              <node concept="3clFbT" id="3MDuPPBEeGO" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="d$4Dx" id="crj2MU7R3h" role="d$6nW">
      <node concept="BaHAS" id="crj2MU7R3i" role="cpn$n">
        <property role="BaHAW" value="split.structure" />
        <property role="BaGAP" value="" />
      </node>
    </node>
  </node>
</model>

