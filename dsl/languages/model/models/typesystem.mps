<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ed4afb73-81c2-45c8-83e7-d6aef0a5e301(model.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="1" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="55s9" ref="r:349f01e8-2ba4-49f7-be71-679bbbf4b80d(features.structure)" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" />
    <import index="3kl9" ref="r:7ba08399-0216-467f-b3ef-c722ed983539(model.structure)" implicit="true" />
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" implicit="true" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
    <import index="5t6d" ref="r:74fa9f55-9024-401b-8305-653d85756786(estimator.structure)" implicit="true" />
    <import index="ja9q" ref="r:fc597f30-d1d1-4d82-975e-209a1fdb1f96(statements.structure)" implicit="true" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" implicit="true" />
    <import index="bxmu" ref="r:2caa4bf2-77af-43e0-8e72-8a12a8978a06(edit.structure)" implicit="true" />
    <import index="jqrd" ref="r:a86b5aa2-977c-4dd4-975b-865365d5871c(types.structure)" implicit="true" />
    <import index="w8ws" ref="r:371ff547-5eea-4440-a0bb-93d0be22bfcb(statements.behavior)" implicit="true" />
    <import index="917x" ref="r:83f7a824-2d8f-4211-9c8e-802488d31e7c(features.behavior)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
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
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1227096774658" name="jetbrains.mps.lang.typesystem.structure.MessageStatement" flags="ng" index="2OEH$v">
        <child id="1227096802790" name="nodeToReport" index="2OEOjV" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
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
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
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
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
    </language>
  </registry>
  <node concept="18kY7G" id="5_q2PHPuZ$_">
    <property role="TrG5h" value="check_DetectEstimator" />
    <property role="3GE5qa" value="editing.estimator" />
    <node concept="3clFbS" id="5_q2PHPuZ$A" role="18ibNy">
      <node concept="3clFbJ" id="7bbTq01X6I6" role="3cqZAp">
        <node concept="3clFbS" id="7bbTq01X6I8" role="3clFbx">
          <node concept="2MkqsV" id="7bbTq01X6U8" role="3cqZAp">
            <node concept="3cpWs3" id="7bbTq01X8BP" role="2MkJ7o">
              <node concept="Xl_RD" id="7bbTq01X8Nj" role="3uHU7w">
                <property role="Xl_RC" value=" is no featureset." />
              </node>
              <node concept="3cpWs3" id="7bbTq01X7bv" role="3uHU7B">
                <node concept="Xl_RD" id="7bbTq01X6Uk" role="3uHU7B">
                  <property role="Xl_RC" value="Object " />
                </node>
                <node concept="2OqwBi" id="7bbTq01X7Sd" role="3uHU7w">
                  <node concept="2OqwBi" id="7bbTq01X7mT" role="2Oq$k0">
                    <node concept="1YBJjd" id="5_q2PHPv15d" role="2Oq$k0">
                      <ref role="1YBMHb" node="5_q2PHPuZ$C" resolve="de" />
                    </node>
                    <node concept="3TrEf2" id="7bbTq01X7yb" role="2OqNvi">
                      <ref role="3Tt5mk" to="3kl9:5UZ5Kaxb6iW" resolve="data" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="7bbTq01X8c1" role="2OqNvi">
                    <ref role="37wK5l" to="64zb:1qp0740gxlZ" resolve="getObjectName" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5_q2PHPvaNW" role="2OEOjV">
              <node concept="1YBJjd" id="5_q2PHPv1e0" role="2Oq$k0">
                <ref role="1YBMHb" node="5_q2PHPuZ$C" resolve="de" />
              </node>
              <node concept="3TrEf2" id="5_q2PHPvbjT" role="2OqNvi">
                <ref role="3Tt5mk" to="3kl9:5UZ5Kaxb6iW" resolve="data" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="1cFlTWMmJJy" role="3clFbw">
          <node concept="3fqX7Q" id="1cFlTWMmOf$" role="3uHU7B">
            <node concept="2OqwBi" id="1cFlTWMmOfA" role="3fr31v">
              <node concept="2OqwBi" id="1cFlTWMmOfB" role="2Oq$k0">
                <node concept="2OqwBi" id="1cFlTWMmOfC" role="2Oq$k0">
                  <node concept="1YBJjd" id="1cFlTWMmOfD" role="2Oq$k0">
                    <ref role="1YBMHb" node="5_q2PHPuZ$C" resolve="de" />
                  </node>
                  <node concept="3TrEf2" id="1cFlTWMmOfE" role="2OqNvi">
                    <ref role="3Tt5mk" to="3kl9:5UZ5Kaxb6iW" resolve="data" />
                  </node>
                </node>
                <node concept="2yIwOk" id="1cFlTWMmOfF" role="2OqNvi" />
              </node>
              <node concept="liA8E" id="1cFlTWMmOfG" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.isAbstract():boolean" resolve="isAbstract" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="7bbTq01X6OU" role="3uHU7w">
            <node concept="2OqwBi" id="7bbTq01X6OW" role="3fr31v">
              <node concept="2OqwBi" id="7bbTq028EXX" role="2Oq$k0">
                <node concept="2OqwBi" id="7bbTq01X6OX" role="2Oq$k0">
                  <node concept="1YBJjd" id="5_q2PHPv0Wj" role="2Oq$k0">
                    <ref role="1YBMHb" node="5_q2PHPuZ$C" resolve="de" />
                  </node>
                  <node concept="3TrEf2" id="7bbTq01X6OZ" role="2OqNvi">
                    <ref role="3Tt5mk" to="3kl9:5UZ5Kaxb6iW" resolve="data" />
                  </node>
                </node>
                <node concept="2qgKlT" id="7bbTq028Fp0" role="2OqNvi">
                  <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                </node>
              </node>
              <node concept="1mIQ4w" id="7bbTq01X6P0" role="2OqNvi">
                <node concept="chp4Y" id="7bbTq01X6P1" role="cj9EA">
                  <ref role="cht4Q" to="55s9:7OzZ9xI8jbt" resolve="FeaturesetType" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="5_q2PHPuZ$C" role="1YuTPh">
      <property role="TrG5h" value="de" />
      <ref role="1YaFvo" to="3kl9:5_q2PHPuZm8" resolve="DetectEstimator" />
    </node>
  </node>
  <node concept="18kY7G" id="699fBOowrbD">
    <property role="TrG5h" value="check_SetEstimator" />
    <property role="3GE5qa" value="editing.estimator" />
    <node concept="3clFbS" id="699fBOowrbE" role="18ibNy">
      <node concept="3clFbJ" id="UOeJaKE_96" role="3cqZAp">
        <node concept="1Wc70l" id="UOeJaKEB_C" role="3clFbw">
          <node concept="3fqX7Q" id="UOeJaKEDJx" role="3uHU7w">
            <node concept="2OqwBi" id="UOeJaKEDJz" role="3fr31v">
              <node concept="2OqwBi" id="UOeJaKFVRI" role="2Oq$k0">
                <node concept="2OqwBi" id="UOeJaKEDJ$" role="2Oq$k0">
                  <node concept="3TrEf2" id="UOeJaKEDJ_" role="2OqNvi">
                    <ref role="3Tt5mk" to="3kl9:5_q2PHPv4vT" resolve="estimator" />
                  </node>
                  <node concept="1YBJjd" id="UOeJaKEDJA" role="2Oq$k0">
                    <ref role="1YBMHb" node="699fBOowrbG" resolve="se" />
                  </node>
                </node>
                <node concept="2qgKlT" id="UOeJaKFWbt" role="2OqNvi">
                  <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                </node>
              </node>
              <node concept="1mIQ4w" id="UOeJaKEDJB" role="2OqNvi">
                <node concept="chp4Y" id="UOeJaKEDJC" role="cj9EA">
                  <ref role="cht4Q" to="5t6d:6azzq4WW_L7" resolve="EstimatorType" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="UOeJaKEBgc" role="3uHU7B">
            <node concept="2OqwBi" id="UOeJaKEBge" role="3fr31v">
              <node concept="2OqwBi" id="UOeJaKEBgf" role="2Oq$k0">
                <node concept="2OqwBi" id="UOeJaKEBgg" role="2Oq$k0">
                  <node concept="1YBJjd" id="UOeJaKEBgh" role="2Oq$k0">
                    <ref role="1YBMHb" node="699fBOowrbG" resolve="se" />
                  </node>
                  <node concept="3TrEf2" id="UOeJaKEBgi" role="2OqNvi">
                    <ref role="3Tt5mk" to="3kl9:5_q2PHPv4vT" resolve="estimator" />
                  </node>
                </node>
                <node concept="2yIwOk" id="UOeJaKEBgj" role="2OqNvi" />
              </node>
              <node concept="liA8E" id="UOeJaKEBgk" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.isAbstract():boolean" resolve="isAbstract" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="UOeJaKE_98" role="3clFbx">
          <node concept="2MkqsV" id="UOeJaKEDQe" role="3cqZAp">
            <node concept="Xl_RD" id="UOeJaKEDQq" role="2MkJ7o">
              <property role="Xl_RC" value="Object needs to be of type 'estimator'." />
            </node>
            <node concept="2OqwBi" id="UOeJaKEE46" role="2OEOjV">
              <node concept="1YBJjd" id="UOeJaKEDRF" role="2Oq$k0">
                <ref role="1YBMHb" node="699fBOowrbG" resolve="se" />
              </node>
              <node concept="3TrEf2" id="UOeJaKEEF4" role="2OqNvi">
                <ref role="3Tt5mk" to="3kl9:5_q2PHPv4vT" resolve="estimator" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="699fBOowrbG" role="1YuTPh">
      <property role="TrG5h" value="se" />
      <ref role="1YaFvo" to="3kl9:5_q2PHPuZrX" resolve="SetEstimator" />
    </node>
  </node>
  <node concept="18kY7G" id="UOeJaKCSIF">
    <property role="TrG5h" value="check_IDefineEstimator" />
    <property role="3GE5qa" value="editing.estimator" />
    <node concept="3clFbS" id="UOeJaKCSIG" role="18ibNy">
      <node concept="3cpWs8" id="UOeJaKD23f" role="3cqZAp">
        <node concept="3cpWsn" id="UOeJaKD23i" role="3cpWs9">
          <property role="TrG5h" value="de" />
          <node concept="3Tqbb2" id="UOeJaKD23d" role="1tU5fm">
            <ref role="ehGHo" to="3kl9:5_q2PHPuVBP" resolve="AbstractModelEditingStatement" />
          </node>
          <node concept="1PxgMI" id="UOeJaKD4zB" role="33vP2m">
            <node concept="chp4Y" id="UOeJaKD5az" role="3oSUPX">
              <ref role="cht4Q" to="3kl9:5_q2PHPuVBP" resolve="AbstractModelEditingStatement" />
            </node>
            <node concept="1YBJjd" id="UOeJaKD3LF" role="1m5AlR">
              <ref role="1YBMHb" node="UOeJaKCSII" resolve="defEst" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="699fBOoxN1p" role="3cqZAp">
        <node concept="3clFbS" id="699fBOoxN1r" role="3clFbx">
          <node concept="2MkqsV" id="699fBOoxXgH" role="3cqZAp">
            <node concept="Xl_RD" id="699fBOoxXgT" role="2MkJ7o">
              <property role="Xl_RC" value="An estimator is already selected for this model." />
            </node>
            <node concept="1YBJjd" id="UOeJaKDWnL" role="2OEOjV">
              <ref role="1YBMHb" node="UOeJaKCSII" resolve="defEst" />
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="699fBOoxWAA" role="3clFbw">
          <node concept="2OqwBi" id="699fBOoxOLP" role="3uHU7B">
            <node concept="2OqwBi" id="699fBOoxNES" role="2Oq$k0">
              <node concept="37vLTw" id="UOeJaKDaRc" role="2Oq$k0">
                <ref role="3cqZAo" node="UOeJaKD23i" resolve="de" />
              </node>
              <node concept="3TrEf2" id="699fBOoxOkI" role="2OqNvi">
                <ref role="3Tt5mk" to="ja9q:6pyCRNR1bO4" resolve="objectAtPosition" />
              </node>
            </node>
            <node concept="3x8VRR" id="699fBOoxPAq" role="2OqNvi" />
          </node>
          <node concept="2OqwBi" id="699fBOoxUkd" role="3uHU7w">
            <node concept="2OqwBi" id="699fBOoxT3R" role="2Oq$k0">
              <node concept="1PxgMI" id="699fBOoxSnG" role="2Oq$k0">
                <node concept="chp4Y" id="699fBOoxSOI" role="3oSUPX">
                  <ref role="cht4Q" to="3kl9:5_q2PHPuV_W" resolve="ModelType" />
                </node>
                <node concept="2OqwBi" id="699fBOoxPZG" role="1m5AlR">
                  <node concept="37vLTw" id="UOeJaKDaf1" role="2Oq$k0">
                    <ref role="3cqZAo" node="UOeJaKD23i" resolve="de" />
                  </node>
                  <node concept="3TrEf2" id="699fBOoxQTI" role="2OqNvi">
                    <ref role="3Tt5mk" to="ja9q:6pyCRNR1bO4" resolve="objectAtPosition" />
                  </node>
                </node>
              </node>
              <node concept="3TrEf2" id="699fBOoxTKZ" role="2OqNvi">
                <ref role="3Tt5mk" to="3kl9:5_q2PHPvbSn" resolve="fittedOn" />
              </node>
            </node>
            <node concept="3x8VRR" id="699fBOoxVyH" role="2OqNvi" />
          </node>
        </node>
        <node concept="9aQIb" id="1cFlTWMn9fK" role="9aQIa">
          <node concept="3clFbS" id="1cFlTWMn9fL" role="9aQI4">
            <node concept="3cpWs8" id="1cFlTWMncMY" role="3cqZAp">
              <node concept="3cpWsn" id="1cFlTWMncN1" role="3cpWs9">
                <property role="TrG5h" value="typeObj" />
                <node concept="3Tqbb2" id="1cFlTWMncMW" role="1tU5fm">
                  <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
                </node>
                <node concept="2OqwBi" id="1cFlTWM5ZXz" role="33vP2m">
                  <node concept="2OqwBi" id="1cFlTWM5TV6" role="2Oq$k0">
                    <node concept="1PxgMI" id="699fBOoyryv" role="2Oq$k0">
                      <node concept="chp4Y" id="4IazLL4nbY7" role="3oSUPX">
                        <ref role="cht4Q" to="bxmu:XZLIaPLIoZ" resolve="EditStatement" />
                      </node>
                      <node concept="2OqwBi" id="1cFlTWM6eT3" role="1m5AlR">
                        <node concept="2OqwBi" id="699fBOoypI$" role="2Oq$k0">
                          <node concept="37vLTw" id="UOeJaKDf1R" role="2Oq$k0">
                            <ref role="3cqZAo" node="UOeJaKD23i" resolve="de" />
                          </node>
                          <node concept="1mfA1w" id="699fBOoyqzF" role="2OqNvi" />
                        </node>
                        <node concept="1mfA1w" id="1cFlTWM6fG6" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="4IazLL4nctj" role="2OqNvi">
                      <ref role="3Tt5mk" to="bxmu:XZLIaPLIpf" resolve="object" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="4IazLL4ncP3" role="2OqNvi">
                    <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1cFlTWMnlYC" role="3cqZAp">
              <node concept="3clFbS" id="1cFlTWMnlYE" role="3clFbx">
                <node concept="2MkqsV" id="1cFlTWMn9fM" role="3cqZAp">
                  <node concept="Xl_RD" id="1cFlTWMn9fN" role="2MkJ7o">
                    <property role="Xl_RC" value="An estimator is already selected for this model." />
                  </node>
                  <node concept="1YBJjd" id="UOeJaKDWo6" role="2OEOjV">
                    <ref role="1YBMHb" node="UOeJaKCSII" resolve="defEst" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="699fBOoyG2x" role="3clFbw">
                <node concept="2OqwBi" id="699fBOoyDHF" role="2Oq$k0">
                  <node concept="1PxgMI" id="699fBOoyC4T" role="2Oq$k0">
                    <node concept="chp4Y" id="699fBOoyCQ6" role="3oSUPX">
                      <ref role="cht4Q" to="3kl9:5_q2PHPuV_W" resolve="ModelType" />
                    </node>
                    <node concept="2OqwBi" id="699fBOoyjr_" role="1m5AlR">
                      <node concept="2OqwBi" id="699fBOoyibL" role="2Oq$k0">
                        <node concept="37vLTw" id="UOeJaKDemG" role="2Oq$k0">
                          <ref role="3cqZAo" node="UOeJaKD23i" resolve="de" />
                        </node>
                        <node concept="2Xjw5R" id="699fBOoyjac" role="2OqNvi">
                          <node concept="1xMEDy" id="699fBOoyjae" role="1xVPHs">
                            <node concept="chp4Y" id="699fBOoyjc5" role="ri$Ld">
                              <ref role="cht4Q" to="5frd:2$uHlqSzbou" resolve="Section" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2qgKlT" id="699fBOoypqV" role="2OqNvi">
                        <ref role="37wK5l" to="64zb:10zQN__30Uz" resolve="getObjectAtPosition" />
                        <node concept="37vLTw" id="1cFlTWMnfVx" role="37wK5m">
                          <ref role="3cqZAo" node="1cFlTWMncN1" resolve="typeObj" />
                        </node>
                        <node concept="37vLTw" id="UOeJaKDci1" role="37wK5m">
                          <ref role="3cqZAo" node="UOeJaKD23i" resolve="de" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3TrEf2" id="5QpNmQnLNuA" role="2OqNvi">
                    <ref role="3Tt5mk" to="3kl9:5_q2PHPvbSn" resolve="fittedOn" />
                  </node>
                </node>
                <node concept="3x8VRR" id="699fBOoyHsU" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="UOeJaKCSII" role="1YuTPh">
      <property role="TrG5h" value="defEst" />
      <ref role="1YaFvo" to="3kl9:UOeJaKCSIh" resolve="IDefineEstimator" />
    </node>
  </node>
  <node concept="18kY7G" id="5UZ5Kaxb6jn">
    <property role="TrG5h" value="check_IInsertData" />
    <property role="3GE5qa" value="editing" />
    <node concept="3clFbS" id="5UZ5Kaxb6jo" role="18ibNy">
      <node concept="3clFbJ" id="699fBOowrbT" role="3cqZAp">
        <node concept="3clFbS" id="699fBOowrbV" role="3clFbx">
          <node concept="3clFbH" id="5UZ5Kaxdh1a" role="3cqZAp" />
          <node concept="3SKdUt" id="699fBOowrbK" role="3cqZAp">
            <node concept="3SKdUq" id="699fBOowrbL" role="3SKWNk">
              <property role="3SKdUp" value="------ check if it is a featureset" />
            </node>
          </node>
          <node concept="3clFbH" id="1oR6hBkdUAu" role="3cqZAp" />
          <node concept="3SKdUt" id="5UZ5KaxbWW5" role="3cqZAp">
            <node concept="3SKdUq" id="5UZ5KaxbWW7" role="3SKWNk">
              <property role="3SKdUp" value="TODO: editing of the featureset inside this section will be ignored (regarding em.data.getTypeObject())" />
            </node>
          </node>
          <node concept="3cpWs8" id="1oR6hBkgyE$" role="3cqZAp">
            <node concept="3cpWsn" id="1oR6hBkgyE_" role="3cpWs9">
              <property role="TrG5h" value="dataAtPosition" />
              <node concept="3Tqbb2" id="1oR6hBkgyEA" role="1tU5fm">
                <ref role="ehGHo" to="55s9:7OzZ9xI8jbt" resolve="FeaturesetType" />
              </node>
              <node concept="1PxgMI" id="1oR6hBkgyEB" role="33vP2m">
                <node concept="chp4Y" id="1oR6hBkgEn9" role="3oSUPX">
                  <ref role="cht4Q" to="55s9:7OzZ9xI8jbt" resolve="FeaturesetType" />
                </node>
                <node concept="2OqwBi" id="1oR6hBkgyED" role="1m5AlR">
                  <node concept="2OqwBi" id="1oR6hBkgyEE" role="2Oq$k0">
                    <node concept="1YBJjd" id="1oR6hBkgyEF" role="2Oq$k0">
                      <ref role="1YBMHb" node="5UZ5Kaxb6jq" resolve="em" />
                    </node>
                    <node concept="2Xjw5R" id="1oR6hBkgyEG" role="2OqNvi">
                      <node concept="1xMEDy" id="1oR6hBkgyEH" role="1xVPHs">
                        <node concept="chp4Y" id="1oR6hBkgyEI" role="ri$Ld">
                          <ref role="cht4Q" to="5frd:2$uHlqSzbou" resolve="Section" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2qgKlT" id="1oR6hBkgyEJ" role="2OqNvi">
                    <ref role="37wK5l" to="64zb:10zQN__30Uz" resolve="getObjectAtPosition" />
                    <node concept="2OqwBi" id="1oR6hBkg_U5" role="37wK5m">
                      <node concept="2OqwBi" id="1oR6hBkg_U6" role="2Oq$k0">
                        <node concept="1YBJjd" id="1oR6hBkg_U7" role="2Oq$k0">
                          <ref role="1YBMHb" node="5UZ5Kaxb6jq" resolve="em" />
                        </node>
                        <node concept="3TrEf2" id="1oR6hBkg_U8" role="2OqNvi">
                          <ref role="3Tt5mk" to="3kl9:5UZ5Kaxb6iW" resolve="data" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="1oR6hBkg_U9" role="2OqNvi">
                        <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                      </node>
                    </node>
                    <node concept="1PxgMI" id="1oR6hBkgyEL" role="37wK5m">
                      <node concept="chp4Y" id="1oR6hBkgyEM" role="3oSUPX">
                        <ref role="cht4Q" to="3kl9:5_q2PHPuVBP" resolve="AbstractModelEditingStatement" />
                      </node>
                      <node concept="1YBJjd" id="1oR6hBkgyEN" role="1m5AlR">
                        <ref role="1YBMHb" node="5UZ5Kaxb6jq" resolve="em" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1oR6hBkgxXa" role="3cqZAp" />
          <node concept="3clFbJ" id="699fBOowy8b" role="3cqZAp">
            <node concept="3clFbS" id="699fBOowy8d" role="3clFbx">
              <node concept="2MkqsV" id="699fBOowtGG" role="3cqZAp">
                <node concept="Xl_RD" id="699fBOowtGV" role="2MkJ7o">
                  <property role="Xl_RC" value="The data-object must be of type 'featureset'." />
                </node>
                <node concept="2OqwBi" id="699fBOowtUa" role="2OEOjV">
                  <node concept="1YBJjd" id="5UZ5KaxbtxC" role="2Oq$k0">
                    <ref role="1YBMHb" node="5UZ5Kaxb6jq" resolve="em" />
                  </node>
                  <node concept="3TrEf2" id="699fBOowulB" role="2OqNvi">
                    <ref role="3Tt5mk" to="3kl9:5UZ5Kaxb6iW" resolve="data" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="5UZ5KaxdddV" role="3cqZAp" />
            </node>
            <node concept="3fqX7Q" id="699fBOowtw6" role="3clFbw">
              <node concept="2OqwBi" id="699fBOowtw8" role="3fr31v">
                <node concept="1mIQ4w" id="699fBOowtwe" role="2OqNvi">
                  <node concept="chp4Y" id="699fBOowtwf" role="cj9EA">
                    <ref role="cht4Q" to="55s9:7OzZ9xI8jbt" resolve="FeaturesetType" />
                  </node>
                </node>
                <node concept="37vLTw" id="699fBOow_ju" role="2Oq$k0">
                  <ref role="3cqZAo" node="1oR6hBkgyE_" resolve="dataAtPosition" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5UZ5KaxbwbX" role="3cqZAp" />
          <node concept="3SKdUt" id="5UZ5Kaxdggw" role="3cqZAp">
            <node concept="3SKdUq" id="5UZ5Kaxdggx" role="3SKWNk">
              <property role="3SKdUp" value="------ check if data matches the previously used featureset" />
            </node>
          </node>
          <node concept="3clFbH" id="5UZ5KaxdfvT" role="3cqZAp" />
          <node concept="3cpWs8" id="5UZ5KaxcML_" role="3cqZAp">
            <node concept="3cpWsn" id="5UZ5KaxcMLC" role="3cpWs9">
              <property role="TrG5h" value="typeNode" />
              <node concept="3Tqbb2" id="5UZ5KaxcMLz" role="1tU5fm">
                <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
              </node>
              <node concept="2OqwBi" id="5UZ5KaxcKYu" role="33vP2m">
                <node concept="2OqwBi" id="5UZ5KaxcK24" role="2Oq$k0">
                  <node concept="1YBJjd" id="5UZ5KaxcJDw" role="2Oq$k0">
                    <ref role="1YBMHb" node="5UZ5Kaxb6jq" resolve="em" />
                  </node>
                  <node concept="2Xjw5R" id="5UZ5KaxcKGS" role="2OqNvi">
                    <node concept="1xMEDy" id="5UZ5KaxcKGU" role="1xVPHs">
                      <node concept="chp4Y" id="4IazLL4Y2qT" role="ri$Ld">
                        <ref role="cht4Q" to="ja9q:2t3FM7fJm6J" resolve="TypeRelatedStatement" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2qgKlT" id="5UZ5KaxcLZW" role="2OqNvi">
                  <ref role="37wK5l" to="w8ws:2t3FM7fWBTc" resolve="getRelatedNode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5UZ5Kaxb_zT" role="3cqZAp">
            <node concept="3cpWsn" id="5UZ5Kaxb_zW" role="3cpWs9">
              <property role="TrG5h" value="modelAtPosition" />
              <node concept="3Tqbb2" id="5UZ5Kaxb_zR" role="1tU5fm">
                <ref role="ehGHo" to="3kl9:5_q2PHPuV_W" resolve="ModelType" />
              </node>
              <node concept="1PxgMI" id="5UZ5KaxcYTI" role="33vP2m">
                <node concept="chp4Y" id="5UZ5KaxcZHr" role="3oSUPX">
                  <ref role="cht4Q" to="3kl9:5_q2PHPuV_W" resolve="ModelType" />
                </node>
                <node concept="2OqwBi" id="5UZ5KaxcPmB" role="1m5AlR">
                  <node concept="2OqwBi" id="5UZ5KaxcOhL" role="2Oq$k0">
                    <node concept="1YBJjd" id="5UZ5KaxcOaY" role="2Oq$k0">
                      <ref role="1YBMHb" node="5UZ5Kaxb6jq" resolve="em" />
                    </node>
                    <node concept="2Xjw5R" id="5UZ5KaxcP7i" role="2OqNvi">
                      <node concept="1xMEDy" id="5UZ5KaxcP7k" role="1xVPHs">
                        <node concept="chp4Y" id="5UZ5KaxcP9a" role="ri$Ld">
                          <ref role="cht4Q" to="5frd:2$uHlqSzbou" resolve="Section" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2qgKlT" id="5UZ5KaxcQzb" role="2OqNvi">
                    <ref role="37wK5l" to="64zb:10zQN__30Uz" resolve="getObjectAtPosition" />
                    <node concept="37vLTw" id="5UZ5KaxcQCJ" role="37wK5m">
                      <ref role="3cqZAo" node="5UZ5KaxcMLC" resolve="typeNode" />
                    </node>
                    <node concept="1PxgMI" id="5UZ5KaxcRXb" role="37wK5m">
                      <node concept="chp4Y" id="5UZ5KaxcSHN" role="3oSUPX">
                        <ref role="cht4Q" to="3kl9:5_q2PHPuVBP" resolve="AbstractModelEditingStatement" />
                      </node>
                      <node concept="1YBJjd" id="5UZ5KaxcQRV" role="1m5AlR">
                        <ref role="1YBMHb" node="5UZ5Kaxb6jq" resolve="em" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5UZ5Kaxd2Y0" role="3cqZAp" />
          <node concept="3clFbJ" id="5UZ5KaxbMCL" role="3cqZAp">
            <node concept="3clFbS" id="5UZ5KaxbMCN" role="3clFbx">
              <node concept="2Gpval" id="1oR6hBkhfZ7" role="3cqZAp">
                <node concept="2GrKxI" id="1oR6hBkhfZ8" role="2Gsz3X">
                  <property role="TrG5h" value="item" />
                </node>
                <node concept="2OqwBi" id="1oR6hBkhfZ9" role="2GsD0m">
                  <node concept="2OqwBi" id="1oR6hBkhfZa" role="2Oq$k0">
                    <node concept="37vLTw" id="1oR6hBkhfZb" role="2Oq$k0">
                      <ref role="3cqZAo" node="5UZ5Kaxb_zW" resolve="modelAtPosition" />
                    </node>
                    <node concept="3TrEf2" id="1oR6hBkhfZc" role="2OqNvi">
                      <ref role="3Tt5mk" to="3kl9:5_q2PHPvbSn" resolve="fittedOn" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="1oR6hBkhfZd" role="2OqNvi">
                    <ref role="3TtcxE" to="5frd:5c6KWTiqlNT" resolve="items" />
                  </node>
                </node>
                <node concept="3clFbS" id="1oR6hBkhfZe" role="2LFqv$">
                  <node concept="34ab3g" id="1oR6hBkhfZf" role="3cqZAp">
                    <property role="35gtTG" value="info" />
                    <node concept="3cpWs3" id="1oR6hBkhfZg" role="34bqiv">
                      <node concept="2GrUjf" id="1oR6hBkhfZh" role="3uHU7w">
                        <ref role="2Gs0qQ" node="1oR6hBkhfZ8" resolve="item" />
                      </node>
                      <node concept="Xl_RD" id="1oR6hBkhfZi" role="3uHU7B">
                        <property role="Xl_RC" value="item in mode is " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2Gpval" id="1oR6hBkhdQe" role="3cqZAp">
                <node concept="2GrKxI" id="1oR6hBkhdQg" role="2Gsz3X">
                  <property role="TrG5h" value="item" />
                </node>
                <node concept="2OqwBi" id="1oR6hBkhgT5" role="2GsD0m">
                  <node concept="37vLTw" id="1oR6hBkhgAF" role="2Oq$k0">
                    <ref role="3cqZAo" node="1oR6hBkgyE_" resolve="dataAtPosition" />
                  </node>
                  <node concept="3Tsc0h" id="1oR6hBkhhzY" role="2OqNvi">
                    <ref role="3TtcxE" to="5frd:5c6KWTiqlNT" resolve="items" />
                  </node>
                </node>
                <node concept="3clFbS" id="1oR6hBkhdQk" role="2LFqv$">
                  <node concept="34ab3g" id="1oR6hBkhe0W" role="3cqZAp">
                    <property role="35gtTG" value="info" />
                    <node concept="3cpWs3" id="1oR6hBkhfYv" role="34bqiv">
                      <node concept="2GrUjf" id="1oR6hBkhfYP" role="3uHU7w">
                        <ref role="2Gs0qQ" node="1oR6hBkhdQg" resolve="item" />
                      </node>
                      <node concept="Xl_RD" id="1oR6hBkhe0Y" role="3uHU7B">
                        <property role="Xl_RC" value="item in data is " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="1oR6hBkhgeN" role="3cqZAp" />
              <node concept="3clFbJ" id="5UZ5Kaxdmoi" role="3cqZAp">
                <node concept="3clFbS" id="5UZ5Kaxdmok" role="3clFbx">
                  <node concept="2MkqsV" id="5UZ5KaxbXxo" role="3cqZAp">
                    <node concept="Xl_RD" id="5UZ5KaxbXx$" role="2MkJ7o">
                      <property role="Xl_RC" value="The data-object format matches not the data that is used before on that model." />
                    </node>
                    <node concept="2OqwBi" id="5UZ5KaxbXFy" role="2OEOjV">
                      <node concept="1YBJjd" id="5UZ5KaxbX$u" role="2Oq$k0">
                        <ref role="1YBMHb" node="5UZ5Kaxb6jq" resolve="em" />
                      </node>
                      <node concept="3TrEf2" id="5UZ5KaxbYlg" role="2OqNvi">
                        <ref role="3Tt5mk" to="3kl9:5UZ5Kaxb6iW" resolve="data" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="5UZ5KaxbUCc" role="3clFbw">
                  <node concept="2OqwBi" id="5UZ5KaxbUCe" role="3fr31v">
                    <node concept="2OqwBi" id="5UZ5KaxbUCf" role="2Oq$k0">
                      <node concept="37vLTw" id="5UZ5KaxbUCg" role="2Oq$k0">
                        <ref role="3cqZAo" node="5UZ5Kaxb_zW" resolve="modelAtPosition" />
                      </node>
                      <node concept="3TrEf2" id="5UZ5KaxbUCh" role="2OqNvi">
                        <ref role="3Tt5mk" to="3kl9:5_q2PHPvbSn" resolve="fittedOn" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="5UZ5KaxbUCi" role="2OqNvi">
                      <ref role="37wK5l" to="917x:699fBOov_hu" resolve="matchesHead" />
                      <node concept="37vLTw" id="1oR6hBkdSV7" role="37wK5m">
                        <ref role="3cqZAo" node="1oR6hBkgyE_" resolve="dataAtPosition" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="5UZ5KaxdcQa" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="5UZ5KaxbwYt" role="3clFbw">
              <node concept="2OqwBi" id="5UZ5KaxbwYu" role="3uHU7B">
                <node concept="3x8VRR" id="5UZ5KaxbwYy" role="2OqNvi" />
                <node concept="37vLTw" id="5UZ5KaxbMe0" role="2Oq$k0">
                  <ref role="3cqZAo" node="5UZ5Kaxb_zW" resolve="modelAtPosition" />
                </node>
              </node>
              <node concept="2OqwBi" id="5UZ5Kaxcmq_" role="3uHU7w">
                <node concept="2OqwBi" id="5UZ5KaxcmqA" role="2Oq$k0">
                  <node concept="3TrEf2" id="5UZ5KaxcmqB" role="2OqNvi">
                    <ref role="3Tt5mk" to="3kl9:5_q2PHPvbSn" resolve="fittedOn" />
                  </node>
                  <node concept="37vLTw" id="5UZ5KaxcmqC" role="2Oq$k0">
                    <ref role="3cqZAo" node="5UZ5Kaxb_zW" resolve="modelAtPosition" />
                  </node>
                </node>
                <node concept="3x8VRR" id="5UZ5KaxcmqD" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5UZ5KaxdhLO" role="3cqZAp" />
          <node concept="3SKdUt" id="5UZ5KaxdkQI" role="3cqZAp">
            <node concept="3SKdUq" id="5UZ5KaxdkQJ" role="3SKWNk">
              <property role="3SKdUp" value="------ if no data used before: check if featureset is applicable to model" />
            </node>
          </node>
          <node concept="3clFbH" id="5UZ5Kaxbw_J" role="3cqZAp" />
          <node concept="3clFbJ" id="5UZ5Kaxd6HV" role="3cqZAp">
            <node concept="3clFbS" id="5UZ5Kaxd6HX" role="3clFbx">
              <node concept="2MkqsV" id="699fBOowBNx" role="3cqZAp">
                <node concept="3cpWs3" id="699fBOoxmsw" role="2MkJ7o">
                  <node concept="Xl_RD" id="699fBOoxmD6" role="3uHU7w">
                    <property role="Xl_RC" value="." />
                  </node>
                  <node concept="3cpWs3" id="699fBOoxlfd" role="3uHU7B">
                    <node concept="3cpWs3" id="699fBOowEeU" role="3uHU7B">
                      <node concept="3cpWs3" id="699fBOowC77" role="3uHU7B">
                        <node concept="Xl_RD" id="699fBOowBNK" role="3uHU7B">
                          <property role="Xl_RC" value="All features in " />
                        </node>
                        <node concept="2OqwBi" id="699fBOowD9_" role="3uHU7w">
                          <node concept="37vLTw" id="699fBOowC7p" role="2Oq$k0">
                            <ref role="3cqZAo" node="1oR6hBkgyE_" resolve="dataAtPosition" />
                          </node>
                          <node concept="3TrcHB" id="699fBOowDwh" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="699fBOowEnx" role="3uHU7w">
                        <property role="Xl_RC" value=" need to be numerical. number/boolean values must be extracted from " />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="699fBOoxlnY" role="3uHU7w">
                      <node concept="37vLTw" id="699fBOoxlo1" role="2Oq$k0">
                        <ref role="3cqZAo" node="1oR6hBkgyE_" resolve="dataAtPosition" />
                      </node>
                      <node concept="2qgKlT" id="699fBOoxlZZ" role="2OqNvi">
                        <ref role="37wK5l" to="917x:699fBOowGeJ" resolve="getNANFeatures" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="699fBOoxntD" role="2OEOjV">
                  <node concept="1YBJjd" id="5UZ5KaxbtG7" role="2Oq$k0">
                    <ref role="1YBMHb" node="5UZ5Kaxb6jq" resolve="em" />
                  </node>
                  <node concept="3TrEf2" id="699fBOoxo49" role="2OqNvi">
                    <ref role="3Tt5mk" to="3kl9:5UZ5Kaxb6iW" resolve="data" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="5UZ5Kaxcroq" role="3clFbw">
              <node concept="2OqwBi" id="5UZ5Kaxcror" role="3fr31v">
                <node concept="37vLTw" id="5UZ5Kaxcrou" role="2Oq$k0">
                  <ref role="3cqZAo" node="1oR6hBkgyE_" resolve="dataAtPosition" />
                </node>
                <node concept="2qgKlT" id="5UZ5Kaxcrov" role="2OqNvi">
                  <ref role="37wK5l" to="917x:699fBOou5Pc" resolve="isNumerical" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5UZ5Kaxd5Xl" role="3cqZAp" />
          <node concept="3clFbJ" id="699fBOoxoFE" role="3cqZAp">
            <node concept="3clFbS" id="699fBOoxoFG" role="3clFbx">
              <node concept="2MkqsV" id="699fBOoxt6O" role="3cqZAp">
                <node concept="Xl_RD" id="699fBOoxt73" role="2MkJ7o">
                  <property role="Xl_RC" value="The feature which provides the target value of the instances needs to be designated (use 'edit featureset: set truth')." />
                </node>
                <node concept="2OqwBi" id="699fBOoxtri" role="2OEOjV">
                  <node concept="1YBJjd" id="5UZ5KaxbtQv" role="2Oq$k0">
                    <ref role="1YBMHb" node="5UZ5Kaxb6jq" resolve="em" />
                  </node>
                  <node concept="3TrEf2" id="699fBOoxu4Z" role="2OqNvi">
                    <ref role="3Tt5mk" to="3kl9:5UZ5Kaxb6iW" resolve="data" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="699fBOoxqDp" role="3clFbw">
              <node concept="2OqwBi" id="699fBOoxp$Q" role="2Oq$k0">
                <node concept="37vLTw" id="699fBOoxp$T" role="2Oq$k0">
                  <ref role="3cqZAo" node="1oR6hBkgyE_" resolve="dataAtPosition" />
                </node>
                <node concept="3TrEf2" id="699fBOoxq2b" role="2OqNvi">
                  <ref role="3Tt5mk" to="55s9:6uf7$58OAE7" resolve="truth" />
                </node>
              </node>
              <node concept="3w_OXm" id="699fBOoxt0A" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3fqX7Q" id="699fBOowxfa" role="3clFbw">
          <node concept="2OqwBi" id="699fBOowxfc" role="3fr31v">
            <node concept="2OqwBi" id="699fBOowxfd" role="2Oq$k0">
              <node concept="2OqwBi" id="699fBOowxfe" role="2Oq$k0">
                <node concept="1YBJjd" id="5UZ5Kaxbs6L" role="2Oq$k0">
                  <ref role="1YBMHb" node="5UZ5Kaxb6jq" resolve="em" />
                </node>
                <node concept="3TrEf2" id="699fBOowxfg" role="2OqNvi">
                  <ref role="3Tt5mk" to="3kl9:5UZ5Kaxb6iW" resolve="data" />
                </node>
              </node>
              <node concept="2yIwOk" id="699fBOowxfh" role="2OqNvi" />
            </node>
            <node concept="liA8E" id="699fBOowxfi" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractConcept.isAbstract():boolean" resolve="isAbstract" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="5UZ5KaxbriG" role="3cqZAp" />
    </node>
    <node concept="1YaCAy" id="5UZ5Kaxb6jq" role="1YuTPh">
      <property role="TrG5h" value="em" />
      <ref role="1YaFvo" to="3kl9:5UZ5Kaxb6iV" resolve="IInsertData" />
    </node>
  </node>
  <node concept="18kY7G" id="1oR6hBkeYPd">
    <property role="TrG5h" value="check_ValidateOnData" />
    <property role="3GE5qa" value="editing.execution" />
    <node concept="3clFbS" id="1oR6hBkeYPe" role="18ibNy">
      <node concept="3SKdUt" id="1oR6hBkf3os" role="3cqZAp">
        <node concept="3SKdUq" id="1oR6hBkf3ot" role="3SKWNk">
          <property role="3SKdUp" value="check if model is trained" />
        </node>
      </node>
      <node concept="3clFbH" id="1oR6hBkf3ow" role="3cqZAp" />
      <node concept="3cpWs8" id="1oR6hBkf3p1" role="3cqZAp">
        <node concept="3cpWsn" id="1oR6hBkf3p2" role="3cpWs9">
          <property role="TrG5h" value="typeNode" />
          <node concept="3Tqbb2" id="1oR6hBkf3p3" role="1tU5fm">
            <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
          </node>
          <node concept="2OqwBi" id="1oR6hBkf3p4" role="33vP2m">
            <node concept="2OqwBi" id="1oR6hBkf3p5" role="2Oq$k0">
              <node concept="1YBJjd" id="1oR6hBkf3Us" role="2Oq$k0">
                <ref role="1YBMHb" node="1oR6hBkeYPg" resolve="vod" />
              </node>
              <node concept="2Xjw5R" id="1oR6hBkf3p7" role="2OqNvi">
                <node concept="1xMEDy" id="1oR6hBkf3p8" role="1xVPHs">
                  <node concept="chp4Y" id="4IazLL50zFU" role="ri$Ld">
                    <ref role="cht4Q" to="ja9q:2t3FM7fJm6J" resolve="TypeRelatedStatement" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2qgKlT" id="1oR6hBkf3pa" role="2OqNvi">
              <ref role="37wK5l" to="w8ws:2t3FM7fWBTc" resolve="getRelatedNode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="1oR6hBkf3pb" role="3cqZAp">
        <node concept="3cpWsn" id="1oR6hBkf3pc" role="3cpWs9">
          <property role="TrG5h" value="modelAtPosition" />
          <node concept="3Tqbb2" id="1oR6hBkf3pd" role="1tU5fm">
            <ref role="ehGHo" to="3kl9:5_q2PHPuV_W" resolve="ModelType" />
          </node>
          <node concept="1PxgMI" id="1oR6hBkf3pe" role="33vP2m">
            <node concept="chp4Y" id="1oR6hBkf3pf" role="3oSUPX">
              <ref role="cht4Q" to="3kl9:5_q2PHPuV_W" resolve="ModelType" />
            </node>
            <node concept="2OqwBi" id="1oR6hBkf3pg" role="1m5AlR">
              <node concept="2OqwBi" id="1oR6hBkf3ph" role="2Oq$k0">
                <node concept="1YBJjd" id="1oR6hBkf4kv" role="2Oq$k0">
                  <ref role="1YBMHb" node="1oR6hBkeYPg" resolve="vod" />
                </node>
                <node concept="2Xjw5R" id="1oR6hBkf3pj" role="2OqNvi">
                  <node concept="1xMEDy" id="1oR6hBkf3pk" role="1xVPHs">
                    <node concept="chp4Y" id="1oR6hBkf3pl" role="ri$Ld">
                      <ref role="cht4Q" to="5frd:2$uHlqSzbou" resolve="Section" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2qgKlT" id="1oR6hBkf3pm" role="2OqNvi">
                <ref role="37wK5l" to="64zb:10zQN__30Uz" resolve="getObjectAtPosition" />
                <node concept="37vLTw" id="1oR6hBkf3pn" role="37wK5m">
                  <ref role="3cqZAo" node="1oR6hBkf3p2" resolve="typeNode" />
                </node>
                <node concept="1PxgMI" id="1oR6hBkf3po" role="37wK5m">
                  <node concept="chp4Y" id="1oR6hBkf3pp" role="3oSUPX">
                    <ref role="cht4Q" to="3kl9:5_q2PHPuVBP" resolve="AbstractModelEditingStatement" />
                  </node>
                  <node concept="1YBJjd" id="1oR6hBkf4Iw" role="1m5AlR">
                    <ref role="1YBMHb" node="1oR6hBkeYPg" resolve="vod" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="1oR6hBkfkti" role="3cqZAp" />
      <node concept="3clFbJ" id="1oR6hBkf3pt" role="3cqZAp">
        <node concept="3clFbS" id="1oR6hBkf3pu" role="3clFbx">
          <node concept="2MkqsV" id="1oR6hBkf6wJ" role="3cqZAp">
            <node concept="Xl_RD" id="1oR6hBkf6wV" role="2MkJ7o">
              <property role="Xl_RC" value="The model needs to be trained before it can be validated (use 'edit model: train on')." />
            </node>
            <node concept="1YBJjd" id="1oR6hBkf6yX" role="2OEOjV">
              <ref role="1YBMHb" node="1oR6hBkeYPg" resolve="vod" />
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="1oR6hBkf3pK" role="3clFbw">
          <node concept="2OqwBi" id="1oR6hBkf3pL" role="3uHU7B">
            <node concept="3x8VRR" id="1oR6hBkf3pM" role="2OqNvi" />
            <node concept="37vLTw" id="1oR6hBkf3pN" role="2Oq$k0">
              <ref role="3cqZAo" node="1oR6hBkf3pc" resolve="modelAtPosition" />
            </node>
          </node>
          <node concept="3fqX7Q" id="1oR6hBkf6eR" role="3uHU7w">
            <node concept="2OqwBi" id="1oR6hBkf6eT" role="3fr31v">
              <node concept="37vLTw" id="1oR6hBkf6eU" role="2Oq$k0">
                <ref role="3cqZAo" node="1oR6hBkf3pc" resolve="modelAtPosition" />
              </node>
              <node concept="3TrcHB" id="1oR6hBkf6eV" role="2OqNvi">
                <ref role="3TsBF5" to="3kl9:1oR6hBkeYPk" resolve="isTrained" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="1oR6hBkf3o$" role="3cqZAp" />
    </node>
    <node concept="1YaCAy" id="1oR6hBkeYPg" role="1YuTPh">
      <property role="TrG5h" value="vod" />
      <ref role="1YaFvo" to="3kl9:5_q2PHPv54U" resolve="ValidateOnData" />
    </node>
  </node>
  <node concept="18kY7G" id="1oR6hBkfzpk">
    <property role="TrG5h" value="check_IRequireEstimator" />
    <property role="3GE5qa" value="editing.execution" />
    <node concept="3clFbS" id="1oR6hBkfzpl" role="18ibNy">
      <node concept="3cpWs8" id="1oR6hBkf$pa" role="3cqZAp">
        <node concept="3cpWsn" id="1oR6hBkf$pb" role="3cpWs9">
          <property role="TrG5h" value="typeNode" />
          <node concept="3Tqbb2" id="1oR6hBkf$pc" role="1tU5fm">
            <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
          </node>
          <node concept="2OqwBi" id="1oR6hBkf$pd" role="33vP2m">
            <node concept="2OqwBi" id="1oR6hBkf$pe" role="2Oq$k0">
              <node concept="1YBJjd" id="1oR6hBkf_jL" role="2Oq$k0">
                <ref role="1YBMHb" node="1oR6hBkfzpn" resolve="ire" />
              </node>
              <node concept="2Xjw5R" id="1oR6hBkf$pg" role="2OqNvi">
                <node concept="1xMEDy" id="1oR6hBkf$ph" role="1xVPHs">
                  <node concept="chp4Y" id="4IazLL4Y62F" role="ri$Ld">
                    <ref role="cht4Q" to="ja9q:2t3FM7fJm6J" resolve="TypeRelatedStatement" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2qgKlT" id="1oR6hBkf$pj" role="2OqNvi">
              <ref role="37wK5l" to="w8ws:2t3FM7fWBTc" resolve="getRelatedNode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="1oR6hBkf$pk" role="3cqZAp">
        <node concept="3cpWsn" id="1oR6hBkf$pl" role="3cpWs9">
          <property role="TrG5h" value="modelAtPosition" />
          <node concept="3Tqbb2" id="1oR6hBkf$pm" role="1tU5fm">
            <ref role="ehGHo" to="3kl9:5_q2PHPuV_W" resolve="ModelType" />
          </node>
          <node concept="1PxgMI" id="1oR6hBkf$pn" role="33vP2m">
            <node concept="chp4Y" id="1oR6hBkf$po" role="3oSUPX">
              <ref role="cht4Q" to="3kl9:5_q2PHPuV_W" resolve="ModelType" />
            </node>
            <node concept="2OqwBi" id="1oR6hBkf$pp" role="1m5AlR">
              <node concept="2OqwBi" id="1oR6hBkf$pq" role="2Oq$k0">
                <node concept="1YBJjd" id="1oR6hBkf_A6" role="2Oq$k0">
                  <ref role="1YBMHb" node="1oR6hBkfzpn" resolve="ire" />
                </node>
                <node concept="2Xjw5R" id="1oR6hBkf$ps" role="2OqNvi">
                  <node concept="1xMEDy" id="1oR6hBkf$pt" role="1xVPHs">
                    <node concept="chp4Y" id="1oR6hBkf$pu" role="ri$Ld">
                      <ref role="cht4Q" to="5frd:2$uHlqSzbou" resolve="Section" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2qgKlT" id="1oR6hBkf$pv" role="2OqNvi">
                <ref role="37wK5l" to="64zb:10zQN__30Uz" resolve="getObjectAtPosition" />
                <node concept="37vLTw" id="1oR6hBkf$pw" role="37wK5m">
                  <ref role="3cqZAo" node="1oR6hBkf$pb" resolve="typeNode" />
                </node>
                <node concept="1PxgMI" id="1oR6hBkf$px" role="37wK5m">
                  <node concept="chp4Y" id="1oR6hBkf$py" role="3oSUPX">
                    <ref role="cht4Q" to="3kl9:5_q2PHPuVBP" resolve="AbstractModelEditingStatement" />
                  </node>
                  <node concept="1YBJjd" id="1oR6hBkf_S6" role="1m5AlR">
                    <ref role="1YBMHb" node="1oR6hBkfzpn" resolve="ire" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="1oR6hBkf$oN" role="3cqZAp" />
      <node concept="3clFbJ" id="1oR6hBkfle_" role="3cqZAp">
        <node concept="3clFbS" id="1oR6hBkfleB" role="3clFbx">
          <node concept="2MkqsV" id="1oR6hBkfoqZ" role="3cqZAp">
            <node concept="3cpWs3" id="1oR6hBkfyR7" role="2MkJ7o">
              <node concept="Xl_RD" id="1oR6hBkfyRp" role="3uHU7w">
                <property role="Xl_RC" value="." />
              </node>
              <node concept="3cpWs3" id="1oR6hBkfoHA" role="3uHU7B">
                <node concept="Xl_RD" id="1oR6hBkfore" role="3uHU7B">
                  <property role="Xl_RC" value="No estimator is defined in model " />
                </node>
                <node concept="2OqwBi" id="1oR6hBkfoXA" role="3uHU7w">
                  <node concept="37vLTw" id="1oR6hBkfoHS" role="2Oq$k0">
                    <ref role="3cqZAo" node="1oR6hBkf$pl" resolve="modelAtPosition" />
                  </node>
                  <node concept="3TrcHB" id="1oR6hBkfpcN" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1YBJjd" id="1oR6hBkl9Sq" role="2OEOjV">
              <ref role="1YBMHb" node="1oR6hBkfzpn" resolve="ire" />
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="1oR6hBkfmKz" role="3clFbw">
          <node concept="2OqwBi" id="1oR6hBkfnPG" role="3uHU7w">
            <node concept="2OqwBi" id="1oR6hBkfn52" role="2Oq$k0">
              <node concept="37vLTw" id="1oR6hBkfmNX" role="2Oq$k0">
                <ref role="3cqZAo" node="1oR6hBkf$pl" resolve="modelAtPosition" />
              </node>
              <node concept="3TrEf2" id="1oR6hBkfnng" role="2OqNvi">
                <ref role="3Tt5mk" to="3kl9:699fBOoy0w2" resolve="estimator" />
              </node>
            </node>
            <node concept="3w_OXm" id="1oR6hBkfolb" role="2OqNvi" />
          </node>
          <node concept="2OqwBi" id="1oR6hBkflJH" role="3uHU7B">
            <node concept="37vLTw" id="1oR6hBkflxG" role="2Oq$k0">
              <ref role="3cqZAo" node="1oR6hBkf$pl" resolve="modelAtPosition" />
            </node>
            <node concept="3x8VRR" id="1oR6hBkfmdF" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1oR6hBkfzpn" role="1YuTPh">
      <property role="TrG5h" value="ire" />
      <ref role="1YaFvo" to="3kl9:1oR6hBkfzoU" resolve="IRequireEstimator" />
    </node>
  </node>
  <node concept="18kY7G" id="1oR6hBki1gR">
    <property role="TrG5h" value="check_TestOnData" />
    <property role="3GE5qa" value="editing.execution" />
    <node concept="3clFbS" id="1oR6hBki1gS" role="18ibNy">
      <node concept="3cpWs8" id="1oR6hBki1CL" role="3cqZAp">
        <node concept="3cpWsn" id="1oR6hBki1CM" role="3cpWs9">
          <property role="TrG5h" value="typeNode" />
          <node concept="3Tqbb2" id="1oR6hBki1CN" role="1tU5fm">
            <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
          </node>
          <node concept="2OqwBi" id="1oR6hBki1CO" role="33vP2m">
            <node concept="2OqwBi" id="1oR6hBki1CP" role="2Oq$k0">
              <node concept="1YBJjd" id="1oR6hBki21T" role="2Oq$k0">
                <ref role="1YBMHb" node="1oR6hBki1gU" resolve="tod" />
              </node>
              <node concept="2Xjw5R" id="1oR6hBki1CR" role="2OqNvi">
                <node concept="1xMEDy" id="1oR6hBki1CS" role="1xVPHs">
                  <node concept="chp4Y" id="4IazLL50yfp" role="ri$Ld">
                    <ref role="cht4Q" to="ja9q:2t3FM7fJm6J" resolve="TypeRelatedStatement" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2qgKlT" id="1oR6hBki1CU" role="2OqNvi">
              <ref role="37wK5l" to="w8ws:2t3FM7fWBTc" resolve="getRelatedNode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="1oR6hBki1CV" role="3cqZAp">
        <node concept="3cpWsn" id="1oR6hBki1CW" role="3cpWs9">
          <property role="TrG5h" value="modelAtPosition" />
          <node concept="3Tqbb2" id="1oR6hBki1CX" role="1tU5fm">
            <ref role="ehGHo" to="3kl9:5_q2PHPuV_W" resolve="ModelType" />
          </node>
          <node concept="1PxgMI" id="1oR6hBki1CY" role="33vP2m">
            <node concept="chp4Y" id="1oR6hBki1CZ" role="3oSUPX">
              <ref role="cht4Q" to="3kl9:5_q2PHPuV_W" resolve="ModelType" />
            </node>
            <node concept="2OqwBi" id="1oR6hBki1D0" role="1m5AlR">
              <node concept="2OqwBi" id="1oR6hBki1D1" role="2Oq$k0">
                <node concept="1YBJjd" id="1oR6hBki2kx" role="2Oq$k0">
                  <ref role="1YBMHb" node="1oR6hBki1gU" resolve="tod" />
                </node>
                <node concept="2Xjw5R" id="1oR6hBki1D3" role="2OqNvi">
                  <node concept="1xMEDy" id="1oR6hBki1D4" role="1xVPHs">
                    <node concept="chp4Y" id="1oR6hBki1D5" role="ri$Ld">
                      <ref role="cht4Q" to="5frd:2$uHlqSzbou" resolve="Section" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2qgKlT" id="1oR6hBki1D6" role="2OqNvi">
                <ref role="37wK5l" to="64zb:10zQN__30Uz" resolve="getObjectAtPosition" />
                <node concept="37vLTw" id="1oR6hBki1D7" role="37wK5m">
                  <ref role="3cqZAo" node="1oR6hBki1CM" resolve="typeNode" />
                </node>
                <node concept="1PxgMI" id="1oR6hBki1D8" role="37wK5m">
                  <node concept="chp4Y" id="1oR6hBki1D9" role="3oSUPX">
                    <ref role="cht4Q" to="3kl9:5_q2PHPuVBP" resolve="AbstractModelEditingStatement" />
                  </node>
                  <node concept="1YBJjd" id="1oR6hBki2AN" role="1m5AlR">
                    <ref role="1YBMHb" node="1oR6hBki1gU" resolve="tod" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="1oR6hBki1Dc" role="3cqZAp" />
      <node concept="3clFbJ" id="1oR6hBki1Dd" role="3cqZAp">
        <node concept="3clFbS" id="1oR6hBki1De" role="3clFbx">
          <node concept="2MkqsV" id="1oR6hBki1Df" role="3cqZAp">
            <node concept="Xl_RD" id="1oR6hBki1Dg" role="2MkJ7o">
              <property role="Xl_RC" value="The model needs to be trained before it can be tested (e.g. use 'edit model: train on')." />
            </node>
            <node concept="1YBJjd" id="1oR6hBki2Yb" role="2OEOjV">
              <ref role="1YBMHb" node="1oR6hBki1gU" resolve="tod" />
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="1oR6hBki1Di" role="3clFbw">
          <node concept="2OqwBi" id="1oR6hBki1Dj" role="3uHU7B">
            <node concept="3x8VRR" id="1oR6hBki1Dk" role="2OqNvi" />
            <node concept="37vLTw" id="1oR6hBki1Dl" role="2Oq$k0">
              <ref role="3cqZAo" node="1oR6hBki1CW" resolve="modelAtPosition" />
            </node>
          </node>
          <node concept="3fqX7Q" id="1oR6hBki1Dm" role="3uHU7w">
            <node concept="2OqwBi" id="1oR6hBki1Dn" role="3fr31v">
              <node concept="37vLTw" id="1oR6hBki1Do" role="2Oq$k0">
                <ref role="3cqZAo" node="1oR6hBki1CW" resolve="modelAtPosition" />
              </node>
              <node concept="3TrcHB" id="1oR6hBki1Dp" role="2OqNvi">
                <ref role="3TsBF5" to="3kl9:1oR6hBkeYPk" resolve="isTrained" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1oR6hBki1gU" role="1YuTPh">
      <property role="TrG5h" value="tod" />
      <ref role="1YaFvo" to="3kl9:1oR6hBkfEx3" resolve="TestOnData" />
    </node>
  </node>
</model>

