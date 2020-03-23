<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d5a69f3d-7e1c-4b42-8ee1-41b35e768d86(comment.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="1" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="pbu6" ref="r:83e946de-2a7f-4a4c-b3c9-4f671aa7f2db(org.iets3.core.expr.base.behavior)" />
    <import index="gp8g" ref="r:a3c890d1-ba29-4628-8336-00501786ff69(comment.structure)" implicit="true" />
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
        <property id="5864038008284099149" name="isStatic" index="2Ki8OM" />
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="13h7C7" id="3KhNVPMZmBi">
    <ref role="13h7C2" to="gp8g:3KhNVPMZ3DZ" resolve="ExplainationComment" />
    <node concept="13hLZK" id="3KhNVPMZmBj" role="13h7CW">
      <node concept="3clFbS" id="3KhNVPMZmBk" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3KhNVPMZmCa" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="3KhNVPMZmCb" role="1B3o_S" />
      <node concept="3clFbS" id="3KhNVPMZmCe" role="3clF47">
        <node concept="3clFbF" id="3KhNVPMZnsJ" role="3cqZAp">
          <node concept="3cpWs3" id="3KhNVPMZp7d" role="3clFbG">
            <node concept="2OqwBi" id="3KhNVPMZpIw" role="3uHU7w">
              <node concept="13iPFW" id="3KhNVPMZp7z" role="2Oq$k0" />
              <node concept="3TrcHB" id="3KhNVPMZq1T" role="2OqNvi">
                <ref role="3TsBF5" to="gp8g:3KhNVPMZ9$m" resolve="comment" />
              </node>
            </node>
            <node concept="Xl_RD" id="3KhNVPMZnsI" role="3uHU7B">
              <property role="Xl_RC" value="! " />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="3KhNVPMZmCf" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="3KhNVPMZPA5">
    <ref role="13h7C2" to="gp8g:3KhNVPMZP_E" resolve="QuestionComment" />
    <node concept="13i0hz" id="3KhNVPMZPAg" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="2Ki8OM" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3clFbS" id="3KhNVPMZPAj" role="3clF47">
        <node concept="3cpWs6" id="3KhNVPMZPAW" role="3cqZAp">
          <node concept="3cpWs3" id="3KhNVPMZPSM" role="3cqZAk">
            <node concept="2OqwBi" id="3KhNVPMZQ8X" role="3uHU7w">
              <node concept="13iPFW" id="3KhNVPMZPTc" role="2Oq$k0" />
              <node concept="3TrcHB" id="3KhNVPMZR_I" role="2OqNvi">
                <ref role="3TsBF5" to="gp8g:3KhNVPMZP_F" resolve="comment" />
              </node>
            </node>
            <node concept="Xl_RD" id="3KhNVPMZPBb" role="3uHU7B">
              <property role="Xl_RC" value="? " />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="3KhNVPMZPAK" role="3clF45" />
      <node concept="3Tm1VV" id="3KhNVPMZPAL" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="3KhNVPMZPA6" role="13h7CW">
      <node concept="3clFbS" id="3KhNVPMZPA7" role="2VODD2" />
    </node>
  </node>
</model>

