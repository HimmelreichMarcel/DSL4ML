<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f1ee0173-8feb-41de-82da-db873968a61f(estimator.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="1" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="55s9" ref="r:349f01e8-2ba4-49f7-be71-679bbbf4b80d(features.structure)" />
    <import index="5t6d" ref="r:74fa9f55-9024-401b-8305-653d85756786(estimator.structure)" implicit="true" />
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
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
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
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
  <node concept="18kY7G" id="7bbTq01X5Kz">
    <property role="TrG5h" value="check_EstimatorInitExpression" />
    <property role="3GE5qa" value="initializers" />
    <node concept="3clFbS" id="7bbTq01X5K$" role="18ibNy">
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
                    <node concept="1YBJjd" id="7bbTq01X7bL" role="2Oq$k0">
                      <ref role="1YBMHb" node="7bbTq01X5KA" resolve="eie" />
                    </node>
                    <node concept="3TrEf2" id="7bbTq01X7yb" role="2OqNvi">
                      <ref role="3Tt5mk" to="5t6d:7bbTq01X5K8" resolve="data" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="7bbTq01X8c1" role="2OqNvi">
                    <ref role="37wK5l" to="64zb:1qp0740gxlZ" resolve="getObjectName" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1YBJjd" id="7bbTq01XanA" role="2OEOjV">
              <ref role="1YBMHb" node="7bbTq01X5KA" resolve="eie" />
            </node>
          </node>
        </node>
        <node concept="3fqX7Q" id="7bbTq01X6OU" role="3clFbw">
          <node concept="2OqwBi" id="7bbTq01X6OW" role="3fr31v">
            <node concept="2OqwBi" id="7bbTq028EXX" role="2Oq$k0">
              <node concept="2OqwBi" id="7bbTq01X6OX" role="2Oq$k0">
                <node concept="1YBJjd" id="7bbTq01X6OY" role="2Oq$k0">
                  <ref role="1YBMHb" node="7bbTq01X5KA" resolve="eie" />
                </node>
                <node concept="3TrEf2" id="7bbTq01X6OZ" role="2OqNvi">
                  <ref role="3Tt5mk" to="5t6d:7bbTq01X5K8" resolve="data" />
                </node>
              </node>
              <node concept="2qgKlT" id="7bbTq028Fp0" role="2OqNvi">
                <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getTypeObject" />
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
    <node concept="1YaCAy" id="7bbTq01X5KA" role="1YuTPh">
      <property role="TrG5h" value="eie" />
      <ref role="1YaFvo" to="5t6d:7bbTq01X5JW" resolve="DeprecatedSetEstimatorWithImportantInterpreterStuff" />
    </node>
  </node>
</model>

