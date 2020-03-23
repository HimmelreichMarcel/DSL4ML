<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d83db573-48de-4605-8b9e-bc1fd4a97690(list.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="1" />
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="5" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="55s9" ref="r:349f01e8-2ba4-49f7-be71-679bbbf4b80d(features.structure)" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="mqeo" ref="r:662af3f0-a585-45ac-ad3d-fb71447b161d(featuresEditing.behavior)" />
    <import index="fd7h" ref="r:e630b3ba-b212-41e3-8805-ab1676020fd2(list.structure)" implicit="true" />
    <import index="917x" ref="r:83f7a824-2d8f-4211-9c8e-802488d31e7c(features.behavior)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
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
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
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
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1185788614172" name="jetbrains.mps.lang.typesystem.structure.NormalTypeClause" flags="ng" index="mw_s8">
        <child id="1185788644032" name="normalType" index="mwGJk" />
      </concept>
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
      <concept id="1176544042499" name="jetbrains.mps.lang.typesystem.structure.Node_TypeOperation" flags="nn" index="3JvlWi" />
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174643105530" name="jetbrains.mps.lang.typesystem.structure.InferenceRule" flags="ig" index="1YbPZF" />
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
      <concept id="1174657487114" name="jetbrains.mps.lang.typesystem.structure.TypeOfExpression" flags="nn" index="1Z2H0r">
        <child id="1174657509053" name="term" index="1Z2MuG" />
      </concept>
      <concept id="1174658326157" name="jetbrains.mps.lang.typesystem.structure.CreateEquationStatement" flags="nn" index="1Z5TYs" />
      <concept id="1174660718586" name="jetbrains.mps.lang.typesystem.structure.AbstractEquationStatement" flags="nn" index="1Zf1VF">
        <child id="1174660783413" name="leftExpression" index="1ZfhK$" />
        <child id="1174660783414" name="rightExpression" index="1ZfhKB" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
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
  <node concept="1YbPZF" id="TC21X81DK0">
    <property role="TrG5h" value="typeof_AsFeatureList" />
    <node concept="3clFbS" id="TC21X81DK1" role="18ibNy">
      <node concept="1Z5TYs" id="4d9YXW2nySA" role="3cqZAp">
        <node concept="mw_s8" id="4d9YXW2nySU" role="1ZfhKB">
          <node concept="1Z2H0r" id="5j$SRt4gjh4" role="mwGJk">
            <node concept="2OqwBi" id="5j$SRt4gjqt" role="1Z2MuG">
              <node concept="1YBJjd" id="5j$SRt4gjhk" role="2Oq$k0">
                <ref role="1YBMHb" node="TC21X81DK3" resolve="afl" />
              </node>
              <node concept="3TrEf2" id="5j$SRt4gjIJ" role="2OqNvi">
                <ref role="3Tt5mk" to="fd7h:5j$SRt4dqF_" resolve="selection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="4d9YXW2nySD" role="1ZfhK$">
          <node concept="1Z2H0r" id="4d9YXW2nyfk" role="mwGJk">
            <node concept="1YBJjd" id="4d9YXW2nyh4" role="1Z2MuG">
              <ref role="1YBMHb" node="TC21X81DK3" resolve="afl" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="TC21X81DK3" role="1YuTPh">
      <property role="TrG5h" value="afl" />
      <ref role="1YaFvo" to="fd7h:NehizIbJ55" resolve="AsFeatureList" />
    </node>
  </node>
  <node concept="18kY7G" id="TC21X81D2p">
    <property role="TrG5h" value="check_AsFeatureList" />
    <node concept="3clFbS" id="TC21X81D2q" role="18ibNy">
      <node concept="3clFbJ" id="4d9YXW2nkEM" role="3cqZAp">
        <node concept="3fqX7Q" id="4d9YXW2nlgr" role="3clFbw">
          <node concept="2OqwBi" id="4d9YXW2nlgt" role="3fr31v">
            <node concept="2OqwBi" id="5j$SRt4ghtI" role="2Oq$k0">
              <node concept="1YBJjd" id="4d9YXW2nlgu" role="2Oq$k0">
                <ref role="1YBMHb" node="TC21X81D2s" resolve="asFeatureList" />
              </node>
              <node concept="3TrEf2" id="5j$SRt4ghCm" role="2OqNvi">
                <ref role="3Tt5mk" to="fd7h:5j$SRt4dqF_" resolve="selection" />
              </node>
            </node>
            <node concept="2qgKlT" id="5j$SRt4dqYW" role="2OqNvi">
              <ref role="37wK5l" to="917x:4d9YXW2m_Ey" resolve="hasHomogeneousFeatureTypes" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="4d9YXW2nkEO" role="3clFbx">
          <node concept="2MkqsV" id="4d9YXW2nlE3" role="3cqZAp">
            <node concept="Xl_RD" id="4d9YXW2nlEf" role="2MkJ7o">
              <property role="Xl_RC" value="All Features must be of equal scale." />
            </node>
            <node concept="1YBJjd" id="4d9YXW2nlGO" role="2OEOjV">
              <ref role="1YBMHb" node="TC21X81D2s" resolve="asFeatureList" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="TC21X81D2s" role="1YuTPh">
      <property role="TrG5h" value="asFeatureList" />
      <ref role="1YaFvo" to="fd7h:NehizIbJ55" resolve="AsFeatureList" />
    </node>
  </node>
  <node concept="18kY7G" id="1Ho6EEsGyPC">
    <property role="TrG5h" value="check_AsFeatureColumn" />
    <node concept="3clFbS" id="1Ho6EEsGyPD" role="18ibNy">
      <node concept="3clFbJ" id="1Ho6EEsKlAM" role="3cqZAp">
        <node concept="3clFbS" id="1Ho6EEsKlAO" role="3clFbx">
          <node concept="2MkqsV" id="1Ho6EEsKnip" role="3cqZAp">
            <node concept="Xl_RD" id="1Ho6EEsKniC" role="2MkJ7o">
              <property role="Xl_RC" value="Parameter is missing." />
            </node>
            <node concept="1YBJjd" id="1Ho6EEsKnjm" role="2OEOjV">
              <ref role="1YBMHb" node="1Ho6EEsGyPF" resolve="afc" />
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="1Ho6EEsKms0" role="3clFbw">
          <node concept="2OqwBi" id="1Ho6EEsKlPW" role="2Oq$k0">
            <node concept="1YBJjd" id="1Ho6EEsKlF3" role="2Oq$k0">
              <ref role="1YBMHb" node="1Ho6EEsGyPF" resolve="afc" />
            </node>
            <node concept="3TrEf2" id="1Ho6EEsKm6y" role="2OqNvi">
              <ref role="3Tt5mk" to="fd7h:1Ho6EEsAosU" resolve="feature" />
            </node>
          </node>
          <node concept="3w_OXm" id="1Ho6EEsKmWi" role="2OqNvi" />
        </node>
      </node>
      <node concept="3clFbH" id="1Ho6EEsKn5w" role="3cqZAp" />
      <node concept="3clFbJ" id="1Ho6EEsGyPM" role="3cqZAp">
        <node concept="2OqwBi" id="1Ho6EEsGC12" role="3clFbw">
          <node concept="1eOMI4" id="1Ho6EEsGBzG" role="2Oq$k0">
            <node concept="3cpWs3" id="1Ho6EEsGDWJ" role="1eOMHV">
              <node concept="Xl_RD" id="1Ho6EEsGE0j" role="3uHU7w">
                <property role="Xl_RC" value="" />
              </node>
              <node concept="2OqwBi" id="1Ho6EEsGzyE" role="3uHU7B">
                <node concept="2OqwBi" id="1Ho6EEsGz0R" role="2Oq$k0">
                  <node concept="1YBJjd" id="1Ho6EEsGyPY" role="2Oq$k0">
                    <ref role="1YBMHb" node="1Ho6EEsGyPF" resolve="afc" />
                  </node>
                  <node concept="3TrEf2" id="1Ho6EEsGzb0" role="2OqNvi">
                    <ref role="3Tt5mk" to="fd7h:1Ho6EEsAosU" resolve="feature" />
                  </node>
                </node>
                <node concept="3JvlWi" id="1Ho6EEsGzM3" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="liA8E" id="1Ho6EEsGC_h" role="2OqNvi">
            <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String):boolean" resolve="endsWith" />
            <node concept="Xl_RD" id="1Ho6EEsGCLr" role="37wK5m">
              <property role="Xl_RC" value="list" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="1Ho6EEsGyPO" role="3clFbx">
          <node concept="2MkqsV" id="1Ho6EEsGCYg" role="3cqZAp">
            <node concept="Xl_RD" id="1Ho6EEsGCYs" role="2MkJ7o">
              <property role="Xl_RC" value="List-features cannot be transformed into list." />
            </node>
            <node concept="2OqwBi" id="1Ho6EEsGD9S" role="2OEOjV">
              <node concept="1YBJjd" id="1Ho6EEsGD0_" role="2Oq$k0">
                <ref role="1YBMHb" node="1Ho6EEsGyPF" resolve="afc" />
              </node>
              <node concept="3TrEf2" id="1Ho6EEsGDAn" role="2OqNvi">
                <ref role="3Tt5mk" to="fd7h:1Ho6EEsAosU" resolve="feature" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1Ho6EEsGyPF" role="1YuTPh">
      <property role="TrG5h" value="afc" />
      <ref role="1YaFvo" to="fd7h:40aEca_iBE6" resolve="AsFeatureColumn" />
    </node>
  </node>
  <node concept="1YbPZF" id="1Ho6EEsKzl9">
    <property role="TrG5h" value="typeof_AsFeatureColumn" />
    <node concept="3clFbS" id="1Ho6EEsKzla" role="18ibNy">
      <node concept="3clFbJ" id="1Ho6EEsKBph" role="3cqZAp">
        <node concept="2OqwBi" id="1Ho6EEsKIrg" role="3clFbw">
          <node concept="2OqwBi" id="1Ho6EEsKFYm" role="2Oq$k0">
            <node concept="2OqwBi" id="1Ho6EEsKCfT" role="2Oq$k0">
              <node concept="2OqwBi" id="1Ho6EEsKB$m" role="2Oq$k0">
                <node concept="1YBJjd" id="1Ho6EEsKBpt" role="2Oq$k0">
                  <ref role="1YBMHb" node="1Ho6EEsKzlc" resolve="afc" />
                </node>
                <node concept="3TrEf2" id="1Ho6EEsKBSf" role="2OqNvi">
                  <ref role="3Tt5mk" to="fd7h:1Ho6EEsAosU" resolve="feature" />
                </node>
              </node>
              <node concept="2qgKlT" id="1Ho6EEsKCFT" role="2OqNvi">
                <ref role="37wK5l" to="917x:4x_I0nq8CzF" resolve="getFeature" />
              </node>
            </node>
            <node concept="3TrcHB" id="1Ho6EEsKGee" role="2OqNvi">
              <ref role="3TsBF5" to="55s9:46b_jc7Vx81" resolve="scale" />
            </node>
          </node>
          <node concept="liA8E" id="1Ho6EEsKIRw" role="2OqNvi">
            <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
            <node concept="Xl_RD" id="1Ho6EEsKLXh" role="37wK5m">
              <property role="Xl_RC" value="string" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="1Ho6EEsKBpj" role="3clFbx">
          <node concept="1Z5TYs" id="1Ho6EEsKO79" role="3cqZAp">
            <node concept="mw_s8" id="1Ho6EEsKO7a" role="1ZfhKB">
              <node concept="2pJPEk" id="1Ho6EEsKO7b" role="mwGJk">
                <node concept="2pJPED" id="1Ho6EEsKO8B" role="2pJPEn">
                  <ref role="2pJxaS" to="55s9:209684qNLaU" resolve="StringlistFeature" />
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="1Ho6EEsKO7d" role="1ZfhK$">
              <node concept="1Z2H0r" id="1Ho6EEsKO7e" role="mwGJk">
                <node concept="1YBJjd" id="1Ho6EEsKO7f" role="1Z2MuG">
                  <ref role="1YBMHb" node="1Ho6EEsKzlc" resolve="afc" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3eNFk2" id="1Ho6EEsKMnY" role="3eNLev">
          <node concept="3clFbS" id="1Ho6EEsKMo0" role="3eOfB_">
            <node concept="1Z5TYs" id="1Ho6EEsKO66" role="3cqZAp">
              <node concept="mw_s8" id="1Ho6EEsKO67" role="1ZfhKB">
                <node concept="2pJPEk" id="1Ho6EEsKO68" role="mwGJk">
                  <node concept="2pJPED" id="1Ho6EEsKO8c" role="2pJPEn">
                    <ref role="2pJxaS" to="55s9:7EI7Z1foz0p" resolve="FloatlistFeature" />
                  </node>
                </node>
              </node>
              <node concept="mw_s8" id="1Ho6EEsKO6a" role="1ZfhK$">
                <node concept="1Z2H0r" id="1Ho6EEsKO6b" role="mwGJk">
                  <node concept="1YBJjd" id="1Ho6EEsKO6c" role="1Z2MuG">
                    <ref role="1YBMHb" node="1Ho6EEsKzlc" resolve="afc" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1Ho6EEsKMyT" role="3eO9$A">
            <node concept="2OqwBi" id="1Ho6EEsKMyU" role="2Oq$k0">
              <node concept="2OqwBi" id="1Ho6EEsKMyV" role="2Oq$k0">
                <node concept="2OqwBi" id="1Ho6EEsKMyW" role="2Oq$k0">
                  <node concept="1YBJjd" id="1Ho6EEsKMyX" role="2Oq$k0">
                    <ref role="1YBMHb" node="1Ho6EEsKzlc" resolve="afc" />
                  </node>
                  <node concept="3TrEf2" id="1Ho6EEsKMyY" role="2OqNvi">
                    <ref role="3Tt5mk" to="fd7h:1Ho6EEsAosU" resolve="feature" />
                  </node>
                </node>
                <node concept="2qgKlT" id="1Ho6EEsKMyZ" role="2OqNvi">
                  <ref role="37wK5l" to="917x:4x_I0nq8CzF" resolve="getFeature" />
                </node>
              </node>
              <node concept="3TrcHB" id="1Ho6EEsKMz0" role="2OqNvi">
                <ref role="3TsBF5" to="55s9:46b_jc7Vx81" resolve="scale" />
              </node>
            </node>
            <node concept="liA8E" id="1Ho6EEsKMz1" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="Xl_RD" id="1Ho6EEsKMz2" role="37wK5m">
                <property role="Xl_RC" value="float" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3eNFk2" id="1Ho6EEsKNhJ" role="3eNLev">
          <node concept="3clFbS" id="1Ho6EEsKNhL" role="3eOfB_">
            <node concept="1Z5TYs" id="1Ho6EEsKO5c" role="3cqZAp">
              <node concept="mw_s8" id="1Ho6EEsKO5w" role="1ZfhKB">
                <node concept="2pJPEk" id="1Ho6EEsKO5s" role="mwGJk">
                  <node concept="2pJPED" id="1Ho6EEsKO5F" role="2pJPEn">
                    <ref role="2pJxaS" to="55s9:4d9YXW2n_Ac" resolve="IntegerlistFeature" />
                  </node>
                </node>
              </node>
              <node concept="mw_s8" id="1Ho6EEsKO5f" role="1ZfhK$">
                <node concept="1Z2H0r" id="1Ho6EEsKNVj" role="mwGJk">
                  <node concept="1YBJjd" id="1Ho6EEsKNX3" role="1Z2MuG">
                    <ref role="1YBMHb" node="1Ho6EEsKzlc" resolve="afc" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1Ho6EEsKNt$" role="3eO9$A">
            <node concept="2OqwBi" id="1Ho6EEsKNt_" role="2Oq$k0">
              <node concept="2OqwBi" id="1Ho6EEsKNtA" role="2Oq$k0">
                <node concept="2OqwBi" id="1Ho6EEsKNtB" role="2Oq$k0">
                  <node concept="1YBJjd" id="1Ho6EEsKNtC" role="2Oq$k0">
                    <ref role="1YBMHb" node="1Ho6EEsKzlc" resolve="afc" />
                  </node>
                  <node concept="3TrEf2" id="1Ho6EEsKNtD" role="2OqNvi">
                    <ref role="3Tt5mk" to="fd7h:1Ho6EEsAosU" resolve="feature" />
                  </node>
                </node>
                <node concept="2qgKlT" id="1Ho6EEsKNtE" role="2OqNvi">
                  <ref role="37wK5l" to="917x:4x_I0nq8CzF" resolve="getFeature" />
                </node>
              </node>
              <node concept="3TrcHB" id="1Ho6EEsKNtF" role="2OqNvi">
                <ref role="3TsBF5" to="55s9:46b_jc7Vx81" resolve="scale" />
              </node>
            </node>
            <node concept="liA8E" id="1Ho6EEsKNtG" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="Xl_RD" id="1Ho6EEsKNtH" role="37wK5m">
                <property role="Xl_RC" value="integer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="1Ho6EEsLtFA" role="9aQIa">
          <node concept="3clFbS" id="1Ho6EEsLtFB" role="9aQI4">
            <node concept="2MkqsV" id="1Ho6EEsKOOd" role="3cqZAp">
              <node concept="Xl_RD" id="1Ho6EEsKOYZ" role="2MkJ7o">
                <property role="Xl_RC" value="NO TYPE WAS FOUND" />
              </node>
              <node concept="1YBJjd" id="1Ho6EEsKP0n" role="2OEOjV">
                <ref role="1YBMHb" node="1Ho6EEsKzlc" resolve="afc" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1Ho6EEsKzlc" role="1YuTPh">
      <property role="TrG5h" value="afc" />
      <ref role="1YaFvo" to="fd7h:40aEca_iBE6" resolve="AsFeatureColumn" />
    </node>
  </node>
</model>

