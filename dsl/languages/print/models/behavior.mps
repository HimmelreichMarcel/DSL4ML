<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b9cf29c2-6254-4b90-81e3-9f3af64f37f1(print.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="8" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="pbu6" ref="r:83e946de-2a7f-4a4c-b3c9-4f671aa7f2db(org.iets3.core.expr.base.behavior)" />
    <import index="jqrd" ref="r:a86b5aa2-977c-4dd4-975b-865365d5871c(types.structure)" />
    <import index="lkam" ref="r:b100cccc-1af1-49c1-9733-1312e9abf9e1(print.structure)" />
    <import index="w8ws" ref="r:371ff547-5eea-4440-a0bb-93d0be22bfcb(statements.behavior)" implicit="true" />
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" implicit="true" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" implicit="true" />
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
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
  <node concept="13h7C7" id="2$uHlqTNdUB">
    <property role="3GE5qa" value="output" />
    <ref role="13h7C2" to="lkam:4TFMgV46qb6" resolve="ICanBePrinted" />
    <node concept="13i0hz" id="4TFMgV46qbF" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getConcreteObjectOutputConcept" />
      <node concept="3Tm1VV" id="4TFMgV46qbG" role="1B3o_S" />
      <node concept="3bZ5Sz" id="ntYdpmw9kv" role="3clF45" />
      <node concept="3clFbS" id="4TFMgV46qbI" role="3clF47" />
    </node>
    <node concept="13hLZK" id="2$uHlqTNdUC" role="13h7CW">
      <node concept="3clFbS" id="2$uHlqTNdUD" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="1afqJykt$rQ">
    <property role="3GE5qa" value="output" />
    <ref role="13h7C2" to="lkam:2$uHlqTNdUd" resolve="PrintStatement" />
    <node concept="13hLZK" id="1afqJykt$rR" role="13h7CW">
      <node concept="3clFbS" id="1afqJykt$rS" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1afqJykt$s1" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="1afqJykt$s2" role="1B3o_S" />
      <node concept="3clFbS" id="1afqJykt$s5" role="3clF47">
        <node concept="3clFbF" id="1afqJykt$yR" role="3cqZAp">
          <node concept="Xl_RD" id="1afqJykt$yQ" role="3clFbG">
            <property role="Xl_RC" value="rr_printExpr" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="1afqJykt$s6" role="3clF45" />
    </node>
    <node concept="13i0hz" id="2t3FM7fY49a" role="13h7CS">
      <property role="TrG5h" value="getRelatedNode" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="w8ws:2t3FM7fWBTc" resolve="getRelatedNode" />
      <node concept="3Tm1VV" id="2t3FM7fY49b" role="1B3o_S" />
      <node concept="3clFbS" id="2t3FM7fY49e" role="3clF47">
        <node concept="3cpWs6" id="2t3FM7fY4cY" role="3cqZAp">
          <node concept="2OqwBi" id="2t3FM7fY5iV" role="3cqZAk">
            <node concept="2OqwBi" id="2t3FM7fY4ub" role="2Oq$k0">
              <node concept="13iPFW" id="2t3FM7fY4dt" role="2Oq$k0" />
              <node concept="3TrEf2" id="2t3FM7fY4N7" role="2OqNvi">
                <ref role="3Tt5mk" to="lkam:57k_vxmVIoe" resolve="object" />
              </node>
            </node>
            <node concept="2qgKlT" id="2t3FM7fY5wI" role="2OqNvi">
              <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="4k$35jY90LX" role="3clF45">
        <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="XZLIaPmV8w">
    <property role="3GE5qa" value="output" />
    <ref role="13h7C2" to="lkam:4Oj5iGcvoJy" resolve="ObjectOutput" />
    <node concept="13i0hz" id="XZLIaPmW9i" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <property role="TrG5h" value="initializeOutput" />
      <node concept="3Tm1VV" id="XZLIaPmW9j" role="1B3o_S" />
      <node concept="3cqZAl" id="XZLIaPmWcC" role="3clF45" />
      <node concept="3clFbS" id="XZLIaPmW9l" role="3clF47" />
      <node concept="37vLTG" id="11KrhWhoeI7" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3Tqbb2" id="11KrhWhoeI6" role="1tU5fm">
          <ref role="ehGHo" to="5frd:pBV22SMBK$" resolve="IProvideTypeObject" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="XZLIaPmV8x" role="13h7CW">
      <node concept="3clFbS" id="XZLIaPmV8y" role="2VODD2" />
    </node>
  </node>
</model>

