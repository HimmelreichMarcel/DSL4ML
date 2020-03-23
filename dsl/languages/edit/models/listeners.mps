<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:966606e2-a584-4501-b17e-dd7e88f11cb8(edit.listeners)">
  <persistence version="9" />
  <languages>
    <use id="309e0004-4976-4416-b947-ec02ae4ecef2" name="com.mbeddr.mpsutil.modellisteners" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="cp45" ref="r:2485b9a5-23c9-4b4a-8035-41c91de74603(edit.behavior)" />
    <import index="bxmu" ref="r:2caa4bf2-77af-43e0-8e72-8a12a8978a06(edit.structure)" implicit="true" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
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
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
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
      <concept id="6105788070830360713" name="com.mbeddr.mpsutil.modellisteners.structure.AbstractRoleListener" flags="ig" index="3v5llJ">
        <reference id="5818559022137756708" name="role" index="j_u2Y" />
      </concept>
    </language>
  </registry>
  <node concept="jA7cl" id="XZLIaPNe4y">
    <ref role="1M2myG" to="bxmu:XZLIaPLIoZ" resolve="EditStatement" />
    <node concept="j_Nyg" id="XZLIaPNe5_" role="j$A37">
      <ref role="j_u2Y" to="bxmu:XZLIaPLIpf" resolve="object" />
      <node concept="3clFbS" id="XZLIaPNe5A" role="2VODD2">
        <node concept="3clFbJ" id="XZLIaPNe5V" role="3cqZAp">
          <node concept="1Wc70l" id="crj2MTNVez" role="3clFbw">
            <node concept="3fqX7Q" id="crj2MTNWC3" role="3uHU7B">
              <node concept="2OqwBi" id="crj2MTNWC5" role="3fr31v">
                <node concept="2OqwBi" id="crj2MTNWC6" role="2Oq$k0">
                  <node concept="j_sak" id="crj2MTNWC7" role="2Oq$k0" />
                  <node concept="2yIwOk" id="crj2MTNWC8" role="2OqNvi" />
                </node>
                <node concept="liA8E" id="crj2MTNWC9" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.isAbstract():boolean" resolve="isAbstract" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="XZLIaPNeJb" role="3uHU7w">
              <node concept="2OqwBi" id="XZLIaPNeeS" role="2Oq$k0">
                <node concept="j_sak" id="XZLIaPNe6i" role="2Oq$k0" />
                <node concept="2qgKlT" id="XZLIaPNexu" role="2OqNvi">
                  <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                </node>
              </node>
              <node concept="1mIQ4w" id="XZLIaPNfcp" role="2OqNvi">
                <node concept="chp4Y" id="XZLIaPNfiw" role="cj9EA">
                  <ref role="cht4Q" to="bxmu:XZLIaPLIAc" resolve="ICanBeEdited" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="XZLIaPNe5X" role="3clFbx">
            <node concept="3clFbF" id="XZLIaPNhkN" role="3cqZAp">
              <node concept="37vLTI" id="XZLIaPNj9H" role="3clFbG">
                <node concept="2OqwBi" id="XZLIaPNhul" role="37vLTJ">
                  <node concept="j_vvf" id="XZLIaPNhkM" role="2Oq$k0" />
                  <node concept="3TrEf2" id="XZLIaPNhIE" role="2OqNvi">
                    <ref role="3Tt5mk" to="bxmu:XZLIaPN1sb" resolve="expression" />
                  </node>
                </node>
                <node concept="2OqwBi" id="XZLIaPNgM2" role="37vLTx">
                  <node concept="1PxgMI" id="XZLIaPNgyE" role="2Oq$k0">
                    <node concept="chp4Y" id="XZLIaPNgB6" role="3oSUPX">
                      <ref role="cht4Q" to="bxmu:XZLIaPLIAc" resolve="ICanBeEdited" />
                    </node>
                    <node concept="2OqwBi" id="XZLIaPNfvE" role="1m5AlR">
                      <node concept="j_sak" id="XZLIaPNfoD" role="2Oq$k0" />
                      <node concept="2qgKlT" id="XZLIaPNfMe" role="2OqNvi">
                        <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                      </node>
                    </node>
                  </node>
                  <node concept="2qgKlT" id="crj2MTNV3Z" role="2OqNvi">
                    <ref role="37wK5l" to="cp45:XZLIaPLIBG" resolve="getEditingExpression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

