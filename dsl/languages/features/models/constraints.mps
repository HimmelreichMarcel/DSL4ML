<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:12d48e5c-826d-4650-9892-971d3fe3d16d(features.constraints)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="4" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="1" />
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="1" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="917x" ref="r:83f7a824-2d8f-4211-9c8e-802488d31e7c(features.behavior)" />
    <import index="55s9" ref="r:349f01e8-2ba4-49f7-be71-679bbbf4b80d(features.structure)" implicit="true" />
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
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
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
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="6702802731807351367" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAChild" flags="in" index="9S07l" />
      <concept id="1202989658459" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_parentNode" flags="nn" index="nLn13" />
      <concept id="4303308395523096213" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_childConcept" flags="ng" index="2DD5aU" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="6702802731807737306" name="canBeChild" index="9Vyp8" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1181949435690" name="jetbrains.mps.lang.smodel.structure.Concept_NewInstance" flags="nn" index="LFhST" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
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
  <node concept="1M2fIO" id="2qzUg86ROLk">
    <property role="3GE5qa" value="editing.features.preprocess.action" />
    <ref role="1M2myG" to="55s9:5QpNmQnSi4F" resolve="AbstractPreprocessAction" />
    <node concept="9S07l" id="2qzUg86ROLl" role="9Vyp8">
      <node concept="3clFbS" id="2qzUg86ROLm" role="2VODD2">
        <node concept="3cpWs8" id="2qzUg86RWAR" role="3cqZAp">
          <node concept="3cpWsn" id="2qzUg86RWAU" role="3cpWs9">
            <property role="TrG5h" value="targetFeature" />
            <node concept="3Tqbb2" id="2qzUg86RWAP" role="1tU5fm">
              <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
            </node>
            <node concept="2OqwBi" id="2qzUg86RVcf" role="33vP2m">
              <node concept="2OqwBi" id="2qzUg86RTTa" role="2Oq$k0">
                <node concept="2OqwBi" id="2qzUg86RSw6" role="2Oq$k0">
                  <node concept="1PxgMI" id="2qzUg86RRO3" role="2Oq$k0">
                    <node concept="chp4Y" id="2qzUg86RS5z" role="3oSUPX">
                      <ref role="cht4Q" to="55s9:5QpNmQnSi1G" resolve="PreprocessFeature" />
                    </node>
                    <node concept="nLn13" id="2qzUg86RQLm" role="1m5AlR" />
                  </node>
                  <node concept="3TrEf2" id="2qzUg86RSZI" role="2OqNvi">
                    <ref role="3Tt5mk" to="55s9:5QpNmQnSi6j" resolve="feature" />
                  </node>
                </node>
                <node concept="2qgKlT" id="2qzUg86RUEL" role="2OqNvi">
                  <ref role="37wK5l" to="917x:4x_I0nq8CzF" resolve="getFeature" />
                </node>
              </node>
              <node concept="3TrEf2" id="2qzUg86RVMc" role="2OqNvi">
                <ref role="3Tt5mk" to="55s9:46b_jc7VwXv" resolve="type" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2qzUg86ROSv" role="3cqZAp">
          <node concept="1Wc70l" id="2qzUg86RQc6" role="3clFbG">
            <node concept="2OqwBi" id="2qzUg86RP7x" role="3uHU7B">
              <node concept="nLn13" id="2qzUg86ROSu" role="2Oq$k0" />
              <node concept="1mIQ4w" id="2qzUg86RPoi" role="2OqNvi">
                <node concept="chp4Y" id="2qzUg86RP$I" role="cj9EA">
                  <ref role="cht4Q" to="55s9:5QpNmQnSi1G" resolve="PreprocessFeature" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2qzUg86RYhz" role="3uHU7w">
              <node concept="1PxgMI" id="2qzUg86TkPe" role="2Oq$k0">
                <node concept="chp4Y" id="2qzUg86Tl28" role="3oSUPX">
                  <ref role="cht4Q" to="55s9:5QpNmQnSi4F" resolve="AbstractPreprocessAction" />
                </node>
                <node concept="2OqwBi" id="2qzUg86SpUH" role="1m5AlR">
                  <node concept="LFhST" id="2qzUg86SquG" role="2OqNvi" />
                  <node concept="2DD5aU" id="2qzUg86TfRb" role="2Oq$k0" />
                </node>
              </node>
              <node concept="2qgKlT" id="2qzUg86RYKV" role="2OqNvi">
                <ref role="37wK5l" to="917x:2qzUg86PdRJ" resolve="applicableTo" />
                <node concept="37vLTw" id="2qzUg86RZa8" role="37wK5m">
                  <ref role="3cqZAo" node="2qzUg86RWAU" resolve="targetFeature" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

