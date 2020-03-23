<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b10d3576-3032-46ab-b82c-d60ca5f3c2ae(create.constraints)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="4" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" />
    <import index="ckmh" ref="r:a0b09593-26bd-4d75-98f1-657e49dea4f1(create.structure)" implicit="true" />
    <import index="rf90" ref="r:78ffb9c2-583d-4056-875e-4c4f6c2b2f2f(create.behavior)" implicit="true" />
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
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
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
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="6702802731807351367" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAChild" flags="in" index="9S07l" />
      <concept id="6702802731807420587" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAParent" flags="ig" index="9SLcT" />
      <concept id="1202989658459" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_parentNode" flags="nn" index="nLn13" />
      <concept id="4303308395523343364" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_link" flags="ng" index="2DA6wF" />
      <concept id="4303308395523096213" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_childConcept" flags="ng" index="2DD5aU" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="6702802731807532712" name="canBeParent" index="9SGkU" />
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
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
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
  <node concept="1M2fIO" id="4IazLL3PbjQ">
    <property role="3GE5qa" value="" />
    <ref role="1M2myG" to="ckmh:4Z2dWAVu5W2" resolve="CreateStatement" />
    <node concept="9SLcT" id="4IazLL3Pdpk" role="9SGkU">
      <node concept="3clFbS" id="4IazLL3Pdpl" role="2VODD2">
        <node concept="3clFbJ" id="1pFVOLkFWRI" role="3cqZAp">
          <node concept="3clFbS" id="1pFVOLkFWRK" role="3clFbx">
            <node concept="3cpWs6" id="1pFVOLkFMmG" role="3cqZAp">
              <node concept="2OqwBi" id="1pFVOLkGbwL" role="3cqZAk">
                <node concept="2OqwBi" id="1pFVOLkGa_F" role="2Oq$k0">
                  <node concept="2DD5aU" id="1pFVOLkFMmJ" role="2Oq$k0" />
                  <node concept="LFhST" id="1pFVOLkGaWM" role="2OqNvi" />
                </node>
                <node concept="1mIQ4w" id="1pFVOLkGbOr" role="2OqNvi">
                  <node concept="chp4Y" id="4IazLL3Pep3" role="cj9EA">
                    <ref role="cht4Q" to="ckmh:1pFVOLkFKeb" resolve="AbstractTypeInitializator" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="1pFVOLkFXu1" role="3clFbw">
            <node concept="359W_D" id="1pFVOLkFXD3" role="3uHU7w">
              <ref role="359W_F" to="5frd:1UULepNJ9VZ" resolve="initialExpression" />
              <ref role="359W_E" to="ckmh:4Z2dWAVu5W2" resolve="CreateStatement" />
            </node>
            <node concept="2DA6wF" id="1pFVOLkFX2L" role="3uHU7B" />
          </node>
        </node>
        <node concept="3cpWs6" id="1pFVOLkFYLS" role="3cqZAp">
          <node concept="3clFbT" id="1pFVOLkFYWV" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="4IazLL3Pjb5">
    <property role="3GE5qa" value="" />
    <ref role="1M2myG" to="ckmh:1pFVOLkFKeb" resolve="AbstractTypeInitializator" />
    <node concept="9S07l" id="4IazLL3Pjb6" role="9Vyp8">
      <node concept="3clFbS" id="4IazLL3Pjb7" role="2VODD2">
        <node concept="3SKdUt" id="6uf7$58A7c7" role="3cqZAp">
          <node concept="3SKdUq" id="6uf7$58A7c9" role="3SKWNk">
            <property role="3SKdUp" value="works only on create statement" />
          </node>
        </node>
        <node concept="3clFbJ" id="1pFVOLkMfPV" role="3cqZAp">
          <node concept="3fqX7Q" id="1pFVOLkMgNI" role="3clFbw">
            <node concept="2OqwBi" id="1pFVOLkMgNK" role="3fr31v">
              <node concept="nLn13" id="1pFVOLkMgNL" role="2Oq$k0" />
              <node concept="1mIQ4w" id="1pFVOLkMgNM" role="2OqNvi">
                <node concept="chp4Y" id="4IazLL3SZ_j" role="cj9EA">
                  <ref role="cht4Q" to="ckmh:4Z2dWAVu5W2" resolve="CreateStatement" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1pFVOLkMfPX" role="3clFbx">
            <node concept="3cpWs6" id="1pFVOLkMgZf" role="3cqZAp">
              <node concept="3clFbT" id="1pFVOLkMh6t" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6uf7$58A6HJ" role="3cqZAp" />
        <node concept="3cpWs8" id="1pFVOLkN09g" role="3cqZAp">
          <node concept="3cpWsn" id="1pFVOLkN09j" role="3cpWs9">
            <property role="TrG5h" value="conceptInstance" />
            <node concept="3Tqbb2" id="1pFVOLkN09e" role="1tU5fm" />
            <node concept="2OqwBi" id="1pFVOLkMJd6" role="33vP2m">
              <node concept="LFhST" id="1pFVOLkMJWS" role="2OqNvi" />
              <node concept="2DD5aU" id="1pFVOLkMX30" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1pFVOLkMjTA" role="3cqZAp">
          <node concept="2OqwBi" id="1pFVOLkMKux" role="3cqZAk">
            <node concept="2qgKlT" id="1pFVOLkMKZX" role="2OqNvi">
              <ref role="37wK5l" to="rf90:1pFVOLkGh5r" resolve="isApplicableTo" />
              <node concept="2OqwBi" id="1pFVOLkMLmT" role="37wK5m">
                <node concept="1PxgMI" id="1pFVOLkMLmU" role="2Oq$k0">
                  <node concept="chp4Y" id="4IazLL3T1Vb" role="3oSUPX">
                    <ref role="cht4Q" to="ckmh:4Z2dWAVu5W2" resolve="CreateStatement" />
                  </node>
                  <node concept="nLn13" id="1pFVOLkMLmW" role="1m5AlR" />
                </node>
                <node concept="3TrEf2" id="4IazLL3T2yI" role="2OqNvi">
                  <ref role="3Tt5mk" to="5frd:1UULepNU6GA" resolve="type" />
                </node>
              </node>
            </node>
            <node concept="1PxgMI" id="1pFVOLkN5ud" role="2Oq$k0">
              <node concept="chp4Y" id="4IazLL3T1yo" role="3oSUPX">
                <ref role="cht4Q" to="ckmh:1pFVOLkFKeb" resolve="AbstractTypeInitializator" />
              </node>
              <node concept="37vLTw" id="1pFVOLkN53J" role="1m5AlR">
                <ref role="3cqZAo" node="1pFVOLkN09j" resolve="conceptInstance" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

