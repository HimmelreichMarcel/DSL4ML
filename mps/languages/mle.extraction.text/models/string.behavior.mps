<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:adac1f14-2bec-4ed4-b743-fc77215acf66(string.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="1" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="pbu6" ref="r:83e946de-2a7f-4a4c-b3c9-4f671aa7f2db(org.iets3.core.expr.base.behavior)" />
    <import index="irjj" ref="r:8f368999-d6ce-4514-9679-896d4353390f(base.behavior)" />
    <import index="ijxw" ref="r:1802a670-7921-499d-9bcf-4b17cd5a458e(string.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="13h7C7" id="2m90CjkGNk5">
    <ref role="13h7C2" to="ijxw:yww_xQrFDH" resolve="LengthOperation" />
    <node concept="13hLZK" id="2m90CjkGNk6" role="13h7CW">
      <node concept="3clFbS" id="2m90CjkGNk7" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="2m90CjkGNkZ" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="renderReadable" />
      <ref role="13i0hy" to="pbu6:6kR0qIbI2yi" resolve="renderReadable" />
      <node concept="3Tm1VV" id="2m90CjkGNl0" role="1B3o_S" />
      <node concept="3clFbS" id="2m90CjkGNl3" role="3clF47">
        <node concept="3clFbF" id="2m90CjkGNlq" role="3cqZAp">
          <node concept="Xl_RD" id="2m90CjkGNlp" role="3clFbG">
            <property role="Xl_RC" value="rr_lengthOperation" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="2m90CjkGNl4" role="3clF45" />
    </node>
    <node concept="13i0hz" id="s_$oGKvMDm" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getScale" />
      <ref role="13i0hy" to="irjj:yww_xQrhTL" resolve="getScale" />
      <node concept="3Tm1VV" id="s_$oGKvMDn" role="1B3o_S" />
      <node concept="3clFbS" id="s_$oGKvMDq" role="3clF47">
        <node concept="3clFbF" id="s_$oGKvNtu" role="3cqZAp">
          <node concept="Xl_RD" id="s_$oGKvNtt" role="3clFbG">
            <property role="Xl_RC" value="integer" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="s_$oGKvMDr" role="3clF45" />
    </node>
  </node>
</model>

