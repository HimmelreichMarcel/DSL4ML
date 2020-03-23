<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:dcdb2f51-7f20-4d42-a5f1-d778853b358b(list.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="1" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="7skk" ref="r:c33d3b05-6327-4bd1-91f0-9c47a8de45f7(rootfile.structure)" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="66j9" ref="r:e38347d2-35e3-4bda-ae4b-73191f908d84(list.behavior)" implicit="true" />
    <import index="we56" ref="r:84dc007d-c175-477b-91bd-22dfa9af3343(list.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
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
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="18kY7G" id="4d9YXW2mz9o">
    <property role="TrG5h" value="check_AsFeatureList" />
    <node concept="3clFbS" id="4d9YXW2mz9p" role="18ibNy">
      <node concept="3clFbJ" id="4d9YXW2nkEM" role="3cqZAp">
        <node concept="3fqX7Q" id="4d9YXW2nlgr" role="3clFbw">
          <node concept="2OqwBi" id="4d9YXW2nlgt" role="3fr31v">
            <node concept="1YBJjd" id="4d9YXW2nlgu" role="2Oq$k0">
              <ref role="1YBMHb" node="4d9YXW2mz9r" resolve="afl" />
            </node>
            <node concept="2qgKlT" id="4d9YXW2nlgv" role="2OqNvi">
              <ref role="37wK5l" to="66j9:4d9YXW2m_Ey" resolve="hasHomogeneousFeatureTypes" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="4d9YXW2nkEO" role="3clFbx">
          <node concept="2MkqsV" id="4d9YXW2nlE3" role="3cqZAp">
            <node concept="Xl_RD" id="4d9YXW2nlEf" role="2MkJ7o">
              <property role="Xl_RC" value="All Features must be of equal scale." />
            </node>
            <node concept="1YBJjd" id="4d9YXW2nlGO" role="2OEOjV">
              <ref role="1YBMHb" node="4d9YXW2mz9r" resolve="afl" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="4d9YXW2mz9r" role="1YuTPh">
      <property role="TrG5h" value="afl" />
      <ref role="1YaFvo" to="we56:NehizIbJ55" resolve="AsFeatureList" />
    </node>
  </node>
  <node concept="1YbPZF" id="4d9YXW2nuOJ">
    <property role="TrG5h" value="typeof_AsFeatureList" />
    <node concept="3clFbS" id="4d9YXW2nuOK" role="18ibNy">
      <node concept="3clFbJ" id="4d9YXW2nuOT" role="3cqZAp">
        <node concept="3clFbC" id="4d9YXW2nxVg" role="3clFbw">
          <node concept="10Nm6u" id="4d9YXW2ny9o" role="3uHU7w" />
          <node concept="2OqwBi" id="4d9YXW2nv3U" role="3uHU7B">
            <node concept="1YBJjd" id="4d9YXW2nuP5" role="2Oq$k0">
              <ref role="1YBMHb" node="4d9YXW2nuOM" resolve="afl" />
            </node>
            <node concept="2qgKlT" id="4d9YXW2nwmt" role="2OqNvi">
              <ref role="37wK5l" to="66j9:4d9YXW2nrfb" resolve="getFeatureType" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="4d9YXW2nuOV" role="3clFbx">
          <node concept="1Z5TYs" id="4d9YXW2nySA" role="3cqZAp">
            <node concept="mw_s8" id="4d9YXW2nySU" role="1ZfhKB">
              <node concept="2pJPEk" id="4d9YXW2nz31" role="mwGJk">
                <node concept="2pJPED" id="5W_fQsndjSl" role="2pJPEn">
                  <ref role="2pJxaS" to="hm2y:6sdnDbSla17" resolve="Expression" />
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="4d9YXW2nySD" role="1ZfhK$">
              <node concept="1Z2H0r" id="4d9YXW2nyfk" role="mwGJk">
                <node concept="1YBJjd" id="4d9YXW2nyh4" role="1Z2MuG">
                  <ref role="1YBMHb" node="4d9YXW2nuOM" resolve="afl" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3eNFk2" id="4d9YXW2nzcv" role="3eNLev">
          <node concept="3clFbS" id="4d9YXW2nzcx" role="3eOfB_">
            <node concept="1Z5TYs" id="4d9YXW2n_lu" role="3cqZAp">
              <node concept="mw_s8" id="4d9YXW2n_lM" role="1ZfhKB">
                <node concept="2pJPEk" id="4d9YXW2n_lI" role="mwGJk">
                  <node concept="2pJPED" id="4d9YXW2n_tq" role="2pJPEn">
                    <ref role="2pJxaS" to="7skk:209684qNLaU" resolve="StringlistFeature" />
                  </node>
                </node>
              </node>
              <node concept="mw_s8" id="4d9YXW2n_lx" role="1ZfhK$">
                <node concept="1Z2H0r" id="4d9YXW2n_7E" role="mwGJk">
                  <node concept="1YBJjd" id="4d9YXW2n_9q" role="1Z2MuG">
                    <ref role="1YBMHb" node="4d9YXW2nuOM" resolve="afl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4d9YXW2n$1a" role="3eO9$A">
            <node concept="2OqwBi" id="4d9YXW2nziA" role="2Oq$k0">
              <node concept="1YBJjd" id="4d9YXW2nziB" role="2Oq$k0">
                <ref role="1YBMHb" node="4d9YXW2nuOM" resolve="afl" />
              </node>
              <node concept="2qgKlT" id="4d9YXW2nziC" role="2OqNvi">
                <ref role="37wK5l" to="66j9:4d9YXW2nrfb" resolve="getFeatureType" />
              </node>
            </node>
            <node concept="liA8E" id="4d9YXW2n$$Y" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="Xl_RD" id="4d9YXW2n$Fu" role="37wK5m">
                <property role="Xl_RC" value="string" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3eNFk2" id="4d9YXW2n_uA" role="3eNLev">
          <node concept="3clFbS" id="4d9YXW2n_uC" role="3eOfB_">
            <node concept="1Z5TYs" id="4d9YXW2nBHE" role="3cqZAp">
              <node concept="mw_s8" id="4d9YXW2nBHY" role="1ZfhKB">
                <node concept="2pJPEk" id="4d9YXW2nBHU" role="mwGJk">
                  <node concept="2pJPED" id="4d9YXW2nBI9" role="2pJPEn">
                    <ref role="2pJxaS" to="7skk:4d9YXW2n_Ac" resolve="IntegerlistFeature" />
                  </node>
                </node>
              </node>
              <node concept="mw_s8" id="4d9YXW2nBHH" role="1ZfhK$">
                <node concept="1Z2H0r" id="4d9YXW2nByO" role="mwGJk">
                  <node concept="1YBJjd" id="4d9YXW2nB$$" role="1Z2MuG">
                    <ref role="1YBMHb" node="4d9YXW2nuOM" resolve="afl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4d9YXW2n_OV" role="3eO9$A">
            <node concept="2OqwBi" id="4d9YXW2n_OW" role="2Oq$k0">
              <node concept="1YBJjd" id="4d9YXW2n_OX" role="2Oq$k0">
                <ref role="1YBMHb" node="4d9YXW2nuOM" resolve="afl" />
              </node>
              <node concept="2qgKlT" id="4d9YXW2n_OY" role="2OqNvi">
                <ref role="37wK5l" to="66j9:4d9YXW2nrfb" resolve="getFeatureType" />
              </node>
            </node>
            <node concept="liA8E" id="4d9YXW2n_OZ" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="Xl_RD" id="4d9YXW2n_P0" role="37wK5m">
                <property role="Xl_RC" value="integer" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="4d9YXW2nuOM" role="1YuTPh">
      <property role="TrG5h" value="afl" />
      <ref role="1YaFvo" to="we56:NehizIbJ55" resolve="AsFeatureList" />
    </node>
  </node>
</model>

