<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:467e8d56-d1e4-46da-86a5-a55b69f13201(composition.intentions)">
  <persistence version="9" />
  <languages>
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="f7op" ref="r:e1108319-e93e-4fc6-9e47-ee3963c84e4f(composition.behavior)" />
    <import index="scux" ref="r:d14b83e6-d738-4a09-82b2-fc22620126d4(composition.structure)" implicit="true" />
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
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
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions">
      <concept id="1192794744107" name="jetbrains.mps.lang.intentions.structure.IntentionDeclaration" flags="ig" index="2S6QgY" />
      <concept id="1192794782375" name="jetbrains.mps.lang.intentions.structure.DescriptionBlock" flags="in" index="2S6ZIM" />
      <concept id="1192795771125" name="jetbrains.mps.lang.intentions.structure.IsApplicableBlock" flags="in" index="2SaL7w" />
      <concept id="1192795911897" name="jetbrains.mps.lang.intentions.structure.ExecuteBlock" flags="in" index="2Sbjvc" />
      <concept id="1192796902958" name="jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node" flags="nn" index="2Sf5sV" />
      <concept id="2522969319638091381" name="jetbrains.mps.lang.intentions.structure.BaseIntentionDeclaration" flags="ig" index="2ZfUlf">
        <property id="2522969319638091386" name="isAvailableInChildNodes" index="2ZfUl0" />
        <reference id="2522969319638198290" name="forConcept" index="2ZfgGC" />
        <child id="2522969319638198291" name="executeFunction" index="2ZfgGD" />
        <child id="2522969319638093995" name="isApplicableFunction" index="2ZfVeh" />
        <child id="2522969319638093993" name="descriptionFunction" index="2ZfVej" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
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
  <node concept="2S6QgY" id="7r$Cpd5TygC">
    <property role="3GE5qa" value="artifactsTree" />
    <property role="TrG5h" value="ForceDeselect" />
    <ref role="2ZfgGC" to="scux:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
    <node concept="2S6ZIM" id="7r$Cpd5TygD" role="2ZfVej">
      <node concept="3clFbS" id="7r$Cpd5TygE" role="2VODD2">
        <node concept="3clFbF" id="7r$Cpd5Typv" role="3cqZAp">
          <node concept="Xl_RD" id="7r$Cpd5Typu" role="3clFbG">
            <property role="Xl_RC" value="COMPOSITION: Force-Deselect Artifact" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="7r$Cpd5TygF" role="2ZfgGD">
      <node concept="3clFbS" id="7r$Cpd5TygG" role="2VODD2">
        <node concept="3clFbF" id="7r$Cpd5T$XR" role="3cqZAp">
          <node concept="2OqwBi" id="7r$Cpd5T_4T" role="3clFbG">
            <node concept="2Sf5sV" id="7r$Cpd5T$XQ" role="2Oq$k0" />
            <node concept="2qgKlT" id="7r$Cpd5T_oa" role="2OqNvi">
              <ref role="37wK5l" to="f7op:7r$Cpd5RRlx" resolve="forceDeselect" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="7r$Cpd5T$go" role="2ZfVeh">
      <node concept="3clFbS" id="7r$Cpd5T$gp" role="2VODD2">
        <node concept="3clFbF" id="7r$Cpd5T$nF" role="3cqZAp">
          <node concept="1Wc70l" id="7r$Cpd5TASx" role="3clFbG">
            <node concept="3fqX7Q" id="7r$Cpd5TB20" role="3uHU7w">
              <node concept="2OqwBi" id="7r$Cpd5TBrn" role="3fr31v">
                <node concept="2Sf5sV" id="7r$Cpd5TBeQ" role="2Oq$k0" />
                <node concept="3TrcHB" id="7r$Cpd5TC4j" role="2OqNvi">
                  <ref role="3TsBF5" to="scux:2SikScA6xUZ" resolve="isPrerequisited" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7r$Cpd5T$zS" role="3uHU7B">
              <node concept="2Sf5sV" id="7r$Cpd5T$nE" role="2Oq$k0" />
              <node concept="3TrcHB" id="7r$Cpd5T$OG" role="2OqNvi">
                <ref role="3TsBF5" to="scux:6I9RXT7Mc2" resolve="isSelected" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="7r$Cpd5Rr0Z">
    <property role="3GE5qa" value="artifactsTree" />
    <property role="TrG5h" value="ForceSelection" />
    <ref role="2ZfgGC" to="scux:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
    <node concept="2S6ZIM" id="7r$Cpd5Rr10" role="2ZfVej">
      <node concept="3clFbS" id="7r$Cpd5Rr11" role="2VODD2">
        <node concept="3clFbF" id="7r$Cpd5Rr9I" role="3cqZAp">
          <node concept="Xl_RD" id="7r$Cpd5Rr9H" role="3clFbG">
            <property role="Xl_RC" value="COMPOSITION: Force-Select Artifact" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="7r$Cpd5Rr12" role="2ZfgGD">
      <node concept="3clFbS" id="7r$Cpd5Rr13" role="2VODD2">
        <node concept="3clFbF" id="7r$Cpd5TvmH" role="3cqZAp">
          <node concept="2OqwBi" id="7r$Cpd5Tv_P" role="3clFbG">
            <node concept="2Sf5sV" id="7r$Cpd5TvmG" role="2Oq$k0" />
            <node concept="2qgKlT" id="7r$Cpd5Tw2H" role="2OqNvi">
              <ref role="37wK5l" to="f7op:7r$Cpd5RJQ$" resolve="forceSelect" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="7r$Cpd5RrFX" role="2ZfVeh">
      <node concept="3clFbS" id="7r$Cpd5RrFY" role="2VODD2">
        <node concept="3clFbF" id="7r$Cpd5RBiL" role="3cqZAp">
          <node concept="3fqX7Q" id="7r$Cpd5RC9g" role="3clFbG">
            <node concept="2OqwBi" id="7r$Cpd5RC9i" role="3fr31v">
              <node concept="2Sf5sV" id="7r$Cpd5RC9j" role="2Oq$k0" />
              <node concept="3TrcHB" id="7r$Cpd5RC9k" role="2OqNvi">
                <ref role="3TsBF5" to="scux:6I9RXT7Mc2" resolve="isSelected" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="ww5GvfLVxN">
    <property role="3GE5qa" value="artifactsTree" />
    <property role="TrG5h" value="LoadFeatures" />
    <property role="2ZfUl0" value="true" />
    <ref role="2ZfgGC" to="scux:4mwbOhsXrAp" resolve="ArtifactsTree" />
    <node concept="2S6ZIM" id="ww5GvfLVxO" role="2ZfVej">
      <node concept="3clFbS" id="ww5GvfLVxP" role="2VODD2">
        <node concept="3clFbF" id="ww5GvfLVFB" role="3cqZAp">
          <node concept="Xl_RD" id="ww5GvfLVFA" role="3clFbG">
            <property role="Xl_RC" value="COMPOSITION: Load Features" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="ww5GvfLVxQ" role="2ZfgGD">
      <node concept="3clFbS" id="ww5GvfLVxR" role="2VODD2">
        <node concept="3clFbJ" id="7r$Cpd5UnBJ" role="3cqZAp">
          <node concept="3clFbS" id="7r$Cpd5UnBL" role="3clFbx">
            <node concept="3clFbF" id="ww5GvfPQ3u" role="3cqZAp">
              <node concept="2OqwBi" id="ww5GvfPQkW" role="3clFbG">
                <node concept="2Sf5sV" id="ww5GvfPQ3t" role="2Oq$k0" />
                <node concept="2qgKlT" id="ww5GvfPQuQ" role="2OqNvi">
                  <ref role="37wK5l" to="f7op:ww5GvfM6Oq" resolve="loadFeatures" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7r$Cpd5YyXa" role="3cqZAp">
              <node concept="2YIFZM" id="7r$Cpd5YyXb" role="3clFbG">
                <ref role="37wK5l" to="dxuu:~JOptionPane.showMessageDialog(java.awt.Component,java.lang.Object,java.lang.String,int):void" resolve="showMessageDialog" />
                <ref role="1Pybhc" to="dxuu:~JOptionPane" resolve="JOptionPane" />
                <node concept="10Nm6u" id="7r$Cpd5YyXc" role="37wK5m" />
                <node concept="Xl_RD" id="7r$Cpd5YzA4" role="37wK5m">
                  <property role="Xl_RC" value="Language artifacts successfully loaded." />
                </node>
                <node concept="Xl_RD" id="7r$Cpd5YyXg" role="37wK5m">
                  <property role="Xl_RC" value="Language Composition Message" />
                </node>
                <node concept="10M0yZ" id="7r$Cpd5YyXh" role="37wK5m">
                  <ref role="1PxDUh" to="dxuu:~JOptionPane" resolve="JOptionPane" />
                  <ref role="3cqZAo" to="dxuu:~JOptionPane.INFORMATION_MESSAGE" resolve="INFORMATION_MESSAGE" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7r$Cpd5UnSh" role="3clFbw">
            <node concept="2Sf5sV" id="7r$Cpd5UnFR" role="2Oq$k0" />
            <node concept="2qgKlT" id="7r$Cpd5Wn2G" role="2OqNvi">
              <ref role="37wK5l" to="f7op:7r$Cpd5VaNt" resolve="checkComposition" />
            </node>
          </node>
          <node concept="9aQIb" id="7r$Cpd5Wn6C" role="9aQIa">
            <node concept="3clFbS" id="7r$Cpd5Wn6D" role="9aQI4">
              <node concept="3clFbF" id="3L7XVs4JArW" role="3cqZAp">
                <node concept="2YIFZM" id="3L7XVs4JArX" role="3clFbG">
                  <ref role="37wK5l" to="dxuu:~JOptionPane.showMessageDialog(java.awt.Component,java.lang.Object,java.lang.String,int):void" resolve="showMessageDialog" />
                  <ref role="1Pybhc" to="dxuu:~JOptionPane" resolve="JOptionPane" />
                  <node concept="10Nm6u" id="3L7XVs4JArY" role="37wK5m" />
                  <node concept="2OqwBi" id="7r$Cpd5WrUo" role="37wK5m">
                    <node concept="2Sf5sV" id="7r$Cpd5WrM8" role="2Oq$k0" />
                    <node concept="3TrcHB" id="7r$Cpd5Wsf5" role="2OqNvi">
                      <ref role="3TsBF5" to="scux:7r$Cpd5VOh_" resolve="error" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="7r$Cpd5Wt1F" role="37wK5m">
                    <property role="Xl_RC" value="Language Composition Message" />
                  </node>
                  <node concept="10M0yZ" id="3L7XVs4JAs3" role="37wK5m">
                    <ref role="1PxDUh" to="dxuu:~JOptionPane" resolve="JOptionPane" />
                    <ref role="3cqZAo" to="dxuu:~JOptionPane.INFORMATION_MESSAGE" resolve="INFORMATION_MESSAGE" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="crj2MTJmmF">
    <property role="3GE5qa" value="artifactsTree" />
    <property role="TrG5h" value="ReloadArtifactsTree" />
    <property role="2ZfUl0" value="true" />
    <ref role="2ZfgGC" to="scux:4mwbOhsXrAp" resolve="ArtifactsTree" />
    <node concept="2S6ZIM" id="crj2MTJmmG" role="2ZfVej">
      <node concept="3clFbS" id="crj2MTJmmH" role="2VODD2">
        <node concept="3clFbF" id="crj2MTJmvG" role="3cqZAp">
          <node concept="Xl_RD" id="crj2MTJmvF" role="3clFbG">
            <property role="Xl_RC" value="Reload Artifacts Tree" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="crj2MTJmmI" role="2ZfgGD">
      <node concept="3clFbS" id="crj2MTJmmJ" role="2VODD2">
        <node concept="3clFbF" id="7Pq1P2GgK8S" role="3cqZAp">
          <node concept="37vLTI" id="7Pq1P2GgKHp" role="3clFbG">
            <node concept="2YIFZM" id="7Pq1P2GgKZM" role="37vLTx">
              <ref role="37wK5l" to="f7op:7Pq1P2GghJR" resolve="create" />
              <ref role="1Pybhc" to="f7op:7Pq1P2GckM$" resolve="ArtifactsTree" />
            </node>
            <node concept="2OqwBi" id="7Pq1P2GgKfQ" role="37vLTJ">
              <node concept="2Sf5sV" id="crj2MTJuUb" role="2Oq$k0" />
              <node concept="3TrEf2" id="crj2MTJv7r" role="2OqNvi">
                <ref role="3Tt5mk" to="scux:wb0I6Vg0al" resolve="root" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="crj2MTJzEq" role="3cqZAp">
          <node concept="2OqwBi" id="crj2MTJzLT" role="3clFbG">
            <node concept="2Sf5sV" id="crj2MTJzEo" role="2Oq$k0" />
            <node concept="2qgKlT" id="crj2MTJ$8I" role="2OqNvi">
              <ref role="37wK5l" to="f7op:4x6uVBKBQtN" resolve="preselectNode" />
              <node concept="2OqwBi" id="crj2MTJ$lh" role="37wK5m">
                <node concept="2Sf5sV" id="crj2MTJ$cw" role="2Oq$k0" />
                <node concept="3TrEf2" id="crj2MTJ$yA" role="2OqNvi">
                  <ref role="3Tt5mk" to="scux:wb0I6Vg0al" resolve="root" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

