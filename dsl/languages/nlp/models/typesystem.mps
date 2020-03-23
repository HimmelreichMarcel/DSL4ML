<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1da55ea3-8e64-4c9c-8c4a-ddc523911639(nlp.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="1" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="quht" ref="r:4f57b4a5-85c6-419f-a63f-0c58c2d57483(nlp.structure)" implicit="true" />
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" implicit="true" />
    <import index="j8uj" ref="r:e2c2b3d9-18ab-47eb-bfc6-892bc1ff2292(languageProcessor.structure)" implicit="true" />
    <import index="917x" ref="r:83f7a824-2d8f-4211-9c8e-802488d31e7c(features.behavior)" implicit="true" />
    <import index="55s9" ref="r:349f01e8-2ba4-49f7-be71-679bbbf4b80d(features.structure)" implicit="true" />
    <import index="5qo5" ref="r:6d93ddb1-b0b0-4eee-8079-51303666672a(org.iets3.core.expr.simpleTypes.structure)" implicit="true" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
    <import index="veum" ref="r:dd7856aa-5828-444c-bc87-c88a89a8bb82(wordlist.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6" />
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
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
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
  <node concept="18kY7G" id="1wn8NGzsirt">
    <property role="TrG5h" value="check_LanguageProcessing" />
    <node concept="3clFbS" id="1wn8NGzsiru" role="18ibNy">
      <node concept="3clFbJ" id="6Y$bjgGQj$J" role="3cqZAp">
        <node concept="1Wc70l" id="6Y$bjgGQj$K" role="3clFbw">
          <node concept="3fqX7Q" id="6Y$bjgGQj$L" role="3uHU7w">
            <node concept="2OqwBi" id="6Y$bjgGQj$M" role="3fr31v">
              <node concept="2OqwBi" id="6Y$bjgGQj$N" role="2Oq$k0">
                <node concept="2OqwBi" id="6Y$bjgGQj$O" role="2Oq$k0">
                  <node concept="1YBJjd" id="6Y$bjgGQj$P" role="2Oq$k0">
                    <ref role="1YBMHb" node="1wn8NGzsirw" resolve="lp" />
                  </node>
                  <node concept="3TrEf2" id="6Y$bjgGQj$Q" role="2OqNvi">
                    <ref role="3Tt5mk" to="quht:1wn8NGzsir2" resolve="languageProcessor" />
                  </node>
                </node>
                <node concept="2qgKlT" id="6Y$bjgGQj$R" role="2OqNvi">
                  <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                </node>
              </node>
              <node concept="1mIQ4w" id="6Y$bjgGQj$S" role="2OqNvi">
                <node concept="chp4Y" id="6Y$bjgGQj$T" role="cj9EA">
                  <ref role="cht4Q" to="j8uj:1wn8NGzgTkM" resolve="LanguageProcessorType" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6Y$bjgGQj$U" role="3uHU7B">
            <node concept="2OqwBi" id="6Y$bjgGQj$V" role="2Oq$k0">
              <node concept="1YBJjd" id="6Y$bjgGQj$W" role="2Oq$k0">
                <ref role="1YBMHb" node="1wn8NGzsirw" resolve="lp" />
              </node>
              <node concept="3TrEf2" id="6Y$bjgGQj$X" role="2OqNvi">
                <ref role="3Tt5mk" to="quht:1wn8NGzsir2" resolve="languageProcessor" />
              </node>
            </node>
            <node concept="3x8VRR" id="6Y$bjgGQj$Y" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbS" id="6Y$bjgGQj$Z" role="3clFbx">
          <node concept="2MkqsV" id="6Y$bjgGQj_0" role="3cqZAp">
            <node concept="Xl_RD" id="6Y$bjgGQj_1" role="2MkJ7o">
              <property role="Xl_RC" value="Must be of type LanguageProcessor." />
            </node>
            <node concept="2OqwBi" id="6Y$bjgGQj_2" role="2OEOjV">
              <node concept="1YBJjd" id="6Y$bjgGQj_3" role="2Oq$k0">
                <ref role="1YBMHb" node="1wn8NGzsirw" resolve="lp" />
              </node>
              <node concept="3TrEf2" id="6Y$bjgGQj_4" role="2OqNvi">
                <ref role="3Tt5mk" to="quht:1wn8NGzsir2" resolve="languageProcessor" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="6Y$bjgGQjL6" role="3cqZAp" />
      <node concept="3clFbJ" id="1wn8NGzsir$" role="3cqZAp">
        <node concept="1Wc70l" id="1wn8NGzsj6Y" role="3clFbw">
          <node concept="3fqX7Q" id="6Y$bjgGQvHg" role="3uHU7w">
            <node concept="2OqwBi" id="6Y$bjgGQvHi" role="3fr31v">
              <node concept="2OqwBi" id="6Y$bjgGQvHj" role="2Oq$k0">
                <node concept="2OqwBi" id="6Y$bjgGQvHk" role="2Oq$k0">
                  <node concept="2OqwBi" id="6Y$bjgGQvHl" role="2Oq$k0">
                    <node concept="1YBJjd" id="6Y$bjgGQvHm" role="2Oq$k0">
                      <ref role="1YBMHb" node="1wn8NGzsirw" resolve="lp" />
                    </node>
                    <node concept="3TrEf2" id="6Y$bjgGQvHn" role="2OqNvi">
                      <ref role="3Tt5mk" to="quht:1wn8NGzsnoH" resolve="stringFeature" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="6Y$bjgGQvHo" role="2OqNvi">
                    <ref role="37wK5l" to="917x:4x_I0nq8CzF" resolve="getFeature" />
                  </node>
                </node>
                <node concept="3TrEf2" id="6Y$bjgGQvHp" role="2OqNvi">
                  <ref role="3Tt5mk" to="55s9:46b_jc7VwXv" resolve="type" />
                </node>
              </node>
              <node concept="1mIQ4w" id="6Y$bjgGQvHq" role="2OqNvi">
                <node concept="chp4Y" id="6Y$bjgGQvHr" role="cj9EA">
                  <ref role="cht4Q" to="5qo5:4rZeNQ6OYR7" resolve="StringType" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1wn8NGzsi_8" role="3uHU7B">
            <node concept="2OqwBi" id="1wn8NGzsk$3" role="2Oq$k0">
              <node concept="1YBJjd" id="1wn8NGzsirN" role="2Oq$k0">
                <ref role="1YBMHb" node="1wn8NGzsirw" resolve="lp" />
              </node>
              <node concept="3TrEf2" id="6Y$bjgGQkxS" role="2OqNvi">
                <ref role="3Tt5mk" to="quht:1wn8NGzsnoH" resolve="stringFeature" />
              </node>
            </node>
            <node concept="3x8VRR" id="1wn8NGzsiGJ" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbS" id="1wn8NGzsirA" role="3clFbx">
          <node concept="2MkqsV" id="1wn8NGzsm32" role="3cqZAp">
            <node concept="Xl_RD" id="1wn8NGzsm3e" role="2MkJ7o">
              <property role="Xl_RC" value="The selected feature must be of type 'string'." />
            </node>
            <node concept="2OqwBi" id="1wn8NGzsmcz" role="2OEOjV">
              <node concept="1YBJjd" id="1wn8NGzsm4H" role="2Oq$k0">
                <ref role="1YBMHb" node="1wn8NGzsirw" resolve="lp" />
              </node>
              <node concept="3TrEf2" id="6Y$bjgGQqQW" role="2OqNvi">
                <ref role="3Tt5mk" to="quht:1wn8NGzsnoH" resolve="stringFeature" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="6Y$bjgGQjUb" role="3cqZAp" />
    </node>
    <node concept="1YaCAy" id="1wn8NGzsirw" role="1YuTPh">
      <property role="TrG5h" value="lp" />
      <ref role="1YaFvo" to="quht:zjcGs$IBpG" resolve="ExtractFromLanguageProcessing" />
    </node>
  </node>
  <node concept="18kY7G" id="7qBCLwWffbd">
    <property role="TrG5h" value="check_WordlistEntries" />
    <property role="3GE5qa" value="extractionTargets" />
    <node concept="3clFbS" id="7qBCLwWffbe" role="18ibNy">
      <node concept="3clFbJ" id="7qBCLwWffbk" role="3cqZAp">
        <node concept="22lmx$" id="7qBCLwWfgw2" role="3clFbw">
          <node concept="2OqwBi" id="7qBCLwWfhQQ" role="3uHU7w">
            <node concept="2OqwBi" id="7qBCLwWfhlK" role="2Oq$k0">
              <node concept="2OqwBi" id="7qBCLwWfgJv" role="2Oq$k0">
                <node concept="1YBJjd" id="7qBCLwWfg$k" role="2Oq$k0">
                  <ref role="1YBMHb" node="7qBCLwWffbg" resolve="we" />
                </node>
                <node concept="3TrEf2" id="7qBCLwWfh28" role="2OqNvi">
                  <ref role="3Tt5mk" to="quht:7qBCLwWffaK" resolve="wordlist" />
                </node>
              </node>
              <node concept="2yIwOk" id="7qBCLwWfhxk" role="2OqNvi" />
            </node>
            <node concept="liA8E" id="7qBCLwWficM" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractConcept.isAbstract():boolean" resolve="isAbstract" />
            </node>
          </node>
          <node concept="2OqwBi" id="7qBCLwWffPk" role="3uHU7B">
            <node concept="2OqwBi" id="7qBCLwWffkS" role="2Oq$k0">
              <node concept="1YBJjd" id="7qBCLwWffbz" role="2Oq$k0">
                <ref role="1YBMHb" node="7qBCLwWffbg" resolve="we" />
              </node>
              <node concept="3TrEf2" id="7qBCLwWffzH" role="2OqNvi">
                <ref role="3Tt5mk" to="quht:7qBCLwWffaK" resolve="wordlist" />
              </node>
            </node>
            <node concept="3w_OXm" id="7qBCLwWfg64" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbS" id="7qBCLwWffbm" role="3clFbx">
          <node concept="3cpWs6" id="7qBCLwWfiie" role="3cqZAp" />
        </node>
      </node>
      <node concept="3clFbH" id="7qBCLwWfiig" role="3cqZAp" />
      <node concept="3clFbJ" id="7qBCLwWfirG" role="3cqZAp">
        <node concept="3clFbS" id="7qBCLwWfirI" role="3clFbx">
          <node concept="2MkqsV" id="7qBCLwWfkFT" role="3cqZAp">
            <node concept="Xl_RD" id="7qBCLwWfkG8" role="2MkJ7o">
              <property role="Xl_RC" value="Object needs to be a sub-type of type 'wordlist'." />
            </node>
            <node concept="2OqwBi" id="7qBCLwWfkRR" role="2OEOjV">
              <node concept="1YBJjd" id="7qBCLwWfkJU" role="2Oq$k0">
                <ref role="1YBMHb" node="7qBCLwWffbg" resolve="we" />
              </node>
              <node concept="3TrEf2" id="7qBCLwWfli9" role="2OqNvi">
                <ref role="3Tt5mk" to="quht:7qBCLwWffaK" resolve="wordlist" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3fqX7Q" id="7qBCLwWfkw6" role="3clFbw">
          <node concept="2OqwBi" id="7qBCLwWfkw8" role="3fr31v">
            <node concept="2OqwBi" id="7qBCLwWfkw9" role="2Oq$k0">
              <node concept="2OqwBi" id="7qBCLwWfkwa" role="2Oq$k0">
                <node concept="1YBJjd" id="7qBCLwWfkwb" role="2Oq$k0">
                  <ref role="1YBMHb" node="7qBCLwWffbg" resolve="we" />
                </node>
                <node concept="3TrEf2" id="7qBCLwWfkwc" role="2OqNvi">
                  <ref role="3Tt5mk" to="quht:7qBCLwWffaK" resolve="wordlist" />
                </node>
              </node>
              <node concept="2qgKlT" id="7qBCLwWfkwd" role="2OqNvi">
                <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
              </node>
            </node>
            <node concept="1mIQ4w" id="7qBCLwWfkwe" role="2OqNvi">
              <node concept="chp4Y" id="7qBCLwWfkwf" role="cj9EA">
                <ref role="cht4Q" to="veum:4fA_w_sqrL8" resolve="AbstractWordlistType" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7qBCLwWffbg" role="1YuTPh">
      <property role="TrG5h" value="we" />
      <ref role="1YaFvo" to="quht:4kZuEukYqea" resolve="WordlistEntries" />
    </node>
  </node>
</model>

