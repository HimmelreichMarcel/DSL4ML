<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7f3d8166-a0c4-43e6-a5ac-03472e3d18ad(composition.listeners)">
  <persistence version="9" />
  <languages>
    <use id="309e0004-4976-4416-b947-ec02ae4ecef2" name="com.mbeddr.mpsutil.modellisteners" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="scux" ref="r:d14b83e6-d738-4a09-82b2-fc22620126d4(composition.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="f7op" ref="r:e1108319-e93e-4fc6-9e47-ee3963c84e4f(composition.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
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
    <language id="309e0004-4976-4416-b947-ec02ae4ecef2" name="com.mbeddr.mpsutil.modellisteners">
      <concept id="5818559022137765390" name="com.mbeddr.mpsutil.modellisteners.structure.Parameter_child" flags="ng" index="j_sak" />
      <concept id="5818559022137760597" name="com.mbeddr.mpsutil.modellisteners.structure.Parameter_instance" flags="ng" index="j_vvf" />
      <concept id="5818559022137644042" name="com.mbeddr.mpsutil.modellisteners.structure.ChildAddedListener" flags="ig" index="j_Nyg" />
      <concept id="5818559022137597839" name="com.mbeddr.mpsutil.modellisteners.structure.ConceptModelListeners" flags="ng" index="jA7cl">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="5818559022137986141" name="listeners" index="j$A37" />
      </concept>
      <concept id="6105788070830979962" name="com.mbeddr.mpsutil.modellisteners.structure.ReferenceRemovedListener" flags="ig" index="3v3Eqs" />
      <concept id="6105788070830979719" name="com.mbeddr.mpsutil.modellisteners.structure.ReferenceAddedListener" flags="ig" index="3v3Etx" />
      <concept id="6105788070830360713" name="com.mbeddr.mpsutil.modellisteners.structure.AbstractRoleListener" flags="ig" index="3v5llJ">
        <reference id="5818559022137756708" name="role" index="j_u2Y" />
      </concept>
      <concept id="6105788070833315443" name="com.mbeddr.mpsutil.modellisteners.structure.PropertyListener" flags="ig" index="3vq$el">
        <reference id="6105788070833315720" name="property" index="3vq$9I" />
      </concept>
      <concept id="6105788070832543023" name="com.mbeddr.mpsutil.modellisteners.structure.Parameter_target" flags="ng" index="3vtCz9" />
    </language>
  </registry>
  <node concept="jA7cl" id="XZk_44NrLv">
    <ref role="1M2myG" to="scux:wb0I6Vb7D5" resolve="ArtifactDescription" />
    <node concept="3vq$el" id="XZk_44NrLy" role="j$A37">
      <ref role="3vq$9I" to="scux:XZk_44NpAT" resolve="shortname" />
      <node concept="3clFbS" id="XZk_44NrLz" role="2VODD2">
        <node concept="3clFbF" id="XZk_44NrLR" role="3cqZAp">
          <node concept="37vLTI" id="XZk_44NsCH" role="3clFbG">
            <node concept="3cpWs3" id="XZk_44Ntr3" role="37vLTx">
              <node concept="Xl_RD" id="XZk_44NttI" role="3uHU7B">
                <property role="Xl_RC" value="FeatureConfig." />
              </node>
              <node concept="2OqwBi" id="XZk_44NsYW" role="3uHU7w">
                <node concept="j_vvf" id="XZk_44NsJg" role="2Oq$k0" />
                <node concept="3TrcHB" id="4T0MB1XbGY1" role="2OqNvi">
                  <ref role="3TsBF5" to="scux:XZk_44NpAT" resolve="shortname" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="XZk_44NrVn" role="37vLTJ">
              <node concept="j_vvf" id="XZk_44NrLQ" role="2Oq$k0" />
              <node concept="3TrcHB" id="XZk_44Ns6H" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7r$Cpd5P6f_" role="3cqZAp">
          <node concept="2OqwBi" id="4T0MB1Xf3Tk" role="3clFbG">
            <node concept="j_vvf" id="4T0MB1Xf3Tl" role="2Oq$k0" />
            <node concept="2qgKlT" id="4T0MB1Xf3Tm" role="2OqNvi">
              <ref role="37wK5l" to="f7op:4T0MB1XeRH6" resolve="computePath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3v3Etx" id="4T0MB1XeL2v" role="j$A37">
      <ref role="j_u2Y" to="scux:4T0MB1XdSHH" resolve="parent" />
      <node concept="3clFbS" id="4T0MB1XeL2x" role="2VODD2">
        <node concept="3clFbF" id="7r$Cpd5P7_9" role="3cqZAp">
          <node concept="2OqwBi" id="4T0MB1Xf3$4" role="3clFbG">
            <node concept="j_vvf" id="4T0MB1Xf3$5" role="2Oq$k0" />
            <node concept="2qgKlT" id="4T0MB1Xf3$6" role="2OqNvi">
              <ref role="37wK5l" to="f7op:4T0MB1XeRH6" resolve="computePath" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2$uHlqTNSt4" role="3cqZAp">
          <node concept="2OqwBi" id="2$uHlqTNS$M" role="3clFbG">
            <node concept="j_vvf" id="2$uHlqTNSt2" role="2Oq$k0" />
            <node concept="2qgKlT" id="2$uHlqTNSOo" role="2OqNvi">
              <ref role="37wK5l" to="f7op:2$uHlqTNR2D" resolve="addDependency" />
              <node concept="3vtCz9" id="2$uHlqTNWLc" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3v3Eqs" id="4T0MB1XeM0L" role="j$A37">
      <ref role="j_u2Y" to="scux:4T0MB1XdSHH" resolve="parent" />
      <node concept="3clFbS" id="4T0MB1XeM0N" role="2VODD2">
        <node concept="3clFbF" id="7r$Cpd5P7Of" role="3cqZAp">
          <node concept="2OqwBi" id="4T0MB1Xf3au" role="3clFbG">
            <node concept="j_vvf" id="4T0MB1Xf30W" role="2Oq$k0" />
            <node concept="2qgKlT" id="4T0MB1Xf3rQ" role="2OqNvi">
              <ref role="37wK5l" to="f7op:4T0MB1XeRH6" resolve="computePath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="j_Nyg" id="4T0MB1Xj_yH" role="j$A37">
      <ref role="j_u2Y" to="scux:4T0MB1Xf65x" resolve="mandatory" />
      <node concept="3clFbS" id="4T0MB1Xj_yJ" role="2VODD2">
        <node concept="3clFbF" id="2$uHlqTOArW" role="3cqZAp">
          <node concept="2OqwBi" id="2$uHlqTOArX" role="3clFbG">
            <node concept="j_vvf" id="2$uHlqTOArY" role="2Oq$k0" />
            <node concept="2qgKlT" id="2$uHlqTOArZ" role="2OqNvi">
              <ref role="37wK5l" to="f7op:2$uHlqTNR2D" resolve="addDependency" />
              <node concept="2OqwBi" id="2$uHlqTOAMv" role="37wK5m">
                <node concept="j_sak" id="2$uHlqTOA$A" role="2Oq$k0" />
                <node concept="3TrEf2" id="2$uHlqTOB1s" role="2OqNvi">
                  <ref role="3Tt5mk" to="scux:2qK8RKEIZEL" resolve="ref" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="j_Nyg" id="2$uHlqTOBkq" role="j$A37">
      <ref role="j_u2Y" to="scux:4x6uVBKxmWb" resolve="required" />
      <node concept="3clFbS" id="2$uHlqTOBks" role="2VODD2">
        <node concept="3clFbF" id="2$uHlqTOBHo" role="3cqZAp">
          <node concept="2OqwBi" id="2$uHlqTOBHp" role="3clFbG">
            <node concept="j_vvf" id="2$uHlqTOBHq" role="2Oq$k0" />
            <node concept="2qgKlT" id="2$uHlqTOBHr" role="2OqNvi">
              <ref role="37wK5l" to="f7op:2$uHlqTNR2D" resolve="addDependency" />
              <node concept="2OqwBi" id="2$uHlqTOBXC" role="37wK5m">
                <node concept="j_sak" id="2$uHlqTOBOR" role="2Oq$k0" />
                <node concept="3TrEf2" id="2$uHlqTOClS" role="2OqNvi">
                  <ref role="3Tt5mk" to="scux:2qK8RKEIZFt" resolve="ref" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="j_Nyg" id="2$uHlqTOCFl" role="j$A37">
      <ref role="j_u2Y" to="scux:4x6uVBKxmWx" resolve="excluded" />
      <node concept="3clFbS" id="2$uHlqTOCFn" role="2VODD2">
        <node concept="3clFbF" id="2$uHlqTOD8Z" role="3cqZAp">
          <node concept="2OqwBi" id="2$uHlqTOD90" role="3clFbG">
            <node concept="j_vvf" id="2$uHlqTOD91" role="2Oq$k0" />
            <node concept="2qgKlT" id="2$uHlqTOD92" role="2OqNvi">
              <ref role="37wK5l" to="f7op:2$uHlqTNR2D" resolve="addDependency" />
              <node concept="2OqwBi" id="2$uHlqTODuv" role="37wK5m">
                <node concept="j_sak" id="2$uHlqTODgA" role="2Oq$k0" />
                <node concept="3TrEf2" id="2$uHlqTODQJ" role="2OqNvi">
                  <ref role="3Tt5mk" to="scux:2qK8RKEIZFt" resolve="ref" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

