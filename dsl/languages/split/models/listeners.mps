<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:01739b25-1f4e-4ca7-a64e-35b5b396beae(split.listeners)">
  <persistence version="9" />
  <languages>
    <use id="309e0004-4976-4416-b947-ec02ae4ecef2" name="com.mbeddr.mpsutil.modellisteners" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="w3db" ref="r:372863d1-da2c-4d51-9ce5-ef15e0220a9a(split.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="309e0004-4976-4416-b947-ec02ae4ecef2" name="com.mbeddr.mpsutil.modellisteners">
      <concept id="5818559022137760597" name="com.mbeddr.mpsutil.modellisteners.structure.Parameter_instance" flags="ng" index="j_vvf" />
      <concept id="5818559022137644848" name="com.mbeddr.mpsutil.modellisteners.structure.ChildRemovedListener" flags="ig" index="j_NIE" />
      <concept id="5818559022137597839" name="com.mbeddr.mpsutil.modellisteners.structure.ConceptModelListeners" flags="ng" index="jA7cl">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="5818559022137986141" name="listeners" index="j$A37" />
      </concept>
      <concept id="6105788070830360713" name="com.mbeddr.mpsutil.modellisteners.structure.AbstractRoleListener" flags="ig" index="3v5llJ">
        <reference id="5818559022137756708" name="role" index="j_u2Y" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1227022210526" name="jetbrains.mps.baseLanguage.collections.structure.ClearAllElementsOperation" flags="nn" index="2Kehj3" />
    </language>
  </registry>
  <node concept="jA7cl" id="3MDuPPBIOYC">
    <ref role="1M2myG" to="w3db:crj2MTJ7hd" resolve="SplitStatement" />
    <node concept="j_NIE" id="3MDuPPBIOZE" role="j$A37">
      <ref role="j_u2Y" to="w3db:crj2MTJa9j" resolve="object" />
      <node concept="3clFbS" id="3MDuPPBIOZG" role="2VODD2">
        <node concept="3clFbF" id="3MDuPPBIOZT" role="3cqZAp">
          <node concept="2OqwBi" id="3MDuPPBIUsw" role="3clFbG">
            <node concept="2OqwBi" id="3MDuPPBIPfM" role="2Oq$k0">
              <node concept="j_vvf" id="3MDuPPBIOZS" role="2Oq$k0" />
              <node concept="3Tsc0h" id="3MDuPPBIPBS" role="2OqNvi">
                <ref role="3TtcxE" to="w3db:crj2MTK8yS" resolve="parts" />
              </node>
            </node>
            <node concept="2Kehj3" id="3MDuPPBJ58e" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

