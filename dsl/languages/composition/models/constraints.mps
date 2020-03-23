<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8c117768-fd34-436b-b76c-1591e175f933(composition.constraints)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="4" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="scux" ref="r:d14b83e6-d738-4a09-82b2-fc22620126d4(composition.structure)" implicit="true" />
    <import index="f7op" ref="r:e1108319-e93e-4fc6-9e47-ee3963c84e4f(composition.behavior)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="6702802731807420587" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAParent" flags="ig" index="9SLcT" />
      <concept id="8966504967485224688" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_contextNode" flags="nn" index="2rP1CM" />
      <concept id="3906442776579556545" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Presentation" flags="in" index="Bn3R3" />
      <concept id="3906442776579549644" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_parameterNode" flags="nn" index="Bn53e" />
      <concept id="4303308395523343364" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_link" flags="ng" index="2DA6wF" />
      <concept id="1147468365020" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_node" flags="nn" index="EsrRn" />
      <concept id="5564765827938091039" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Scope" flags="ig" index="3dgokm" />
      <concept id="1159285995602" name="jetbrains.mps.lang.constraints.structure.NodeDefaultSearchScope" flags="ng" index="3EP7_v">
        <child id="3906442776579628834" name="presentation" index="Bniow" />
        <child id="1159286114227" name="searchScopeFactory" index="3EP$qY" />
      </concept>
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="6702802731807532712" name="canBeParent" index="9SGkU" />
        <child id="1213100494875" name="referent" index="1Mr941" />
        <child id="1213101058038" name="defaultScope" index="1MtirG" />
      </concept>
      <concept id="1148687176410" name="jetbrains.mps.lang.constraints.structure.NodeReferentConstraint" flags="ng" index="1N5Pfh">
        <reference id="1148687202698" name="applicableLink" index="1N5Vy1" />
        <child id="3906442776579556548" name="presentation" index="Bn3R6" />
        <child id="1148687345559" name="searchScopeFactory" index="1N6uqs" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6973815483243445083" name="jetbrains.mps.lang.smodel.structure.EnumMemberValueRefExpression" flags="nn" index="3f7Wdw">
        <reference id="6973815483243565416" name="member" index="3f7u_j" />
        <reference id="6973815483243564601" name="enum" index="3f7vo2" />
      </concept>
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="1M2fIO" id="wb0I6VdinF">
    <property role="3GE5qa" value="artifactDescription" />
    <ref role="1M2myG" to="scux:wb0I6Vb7D5" resolve="ArtifactDescription" />
    <node concept="1N5Pfh" id="4T0MB1XdToc" role="1Mr941">
      <ref role="1N5Vy1" to="scux:4T0MB1XdSHH" resolve="parent" />
      <node concept="3dgokm" id="4T0MB1XdTog" role="1N6uqs">
        <node concept="3clFbS" id="4T0MB1XdToi" role="2VODD2">
          <node concept="3cpWs8" id="4x6uVBKy4br" role="3cqZAp">
            <node concept="3cpWsn" id="4x6uVBKy4bs" role="3cpWs9">
              <property role="TrG5h" value="self" />
              <node concept="3Tqbb2" id="4x6uVBKy4bt" role="1tU5fm">
                <ref role="ehGHo" to="scux:wb0I6Vb7D5" resolve="ArtifactDescription" />
              </node>
              <node concept="2OqwBi" id="4x6uVBKy4bu" role="33vP2m">
                <node concept="2rP1CM" id="4x6uVBKy4bv" role="2Oq$k0" />
                <node concept="2Xjw5R" id="4x6uVBKy4bw" role="2OqNvi">
                  <node concept="1xMEDy" id="4x6uVBKy4bx" role="1xVPHs">
                    <node concept="chp4Y" id="2$uHlqTq0z9" role="ri$Ld">
                      <ref role="cht4Q" to="scux:wb0I6Vb7D5" resolve="ArtifactDescription" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="4x6uVBKy4bz" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4T0MB1Xfe9R" role="3cqZAp">
            <node concept="2YIFZM" id="4T0MB1XfeeK" role="3clFbG">
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <node concept="2OqwBi" id="4x6uVBKy6AW" role="37wK5m">
                <node concept="2OqwBi" id="4x6uVBKxX2P" role="2Oq$k0">
                  <node concept="35c_gC" id="4x6uVBKxX2Q" role="2Oq$k0">
                    <ref role="35c_gD" to="scux:wb0I6Vb7D5" resolve="ArtifactDescription" />
                  </node>
                  <node concept="2qgKlT" id="2$uHlqTq2Sx" role="2OqNvi">
                    <ref role="37wK5l" to="f7op:4T0MB1Xdo34" resolve="getAllFeatures" />
                  </node>
                </node>
                <node concept="3zZkjj" id="4x6uVBKy83c" role="2OqNvi">
                  <node concept="1bVj0M" id="4x6uVBKy83e" role="23t8la">
                    <node concept="3clFbS" id="4x6uVBKy83f" role="1bW5cS">
                      <node concept="3clFbF" id="4x6uVBKy8Ya" role="3cqZAp">
                        <node concept="3y3z36" id="4x6uVBKy9kS" role="3clFbG">
                          <node concept="37vLTw" id="4x6uVBKy8Y9" role="3uHU7B">
                            <ref role="3cqZAo" node="4x6uVBKy83g" resolve="it" />
                          </node>
                          <node concept="37vLTw" id="7VOscSov6Cd" role="3uHU7w">
                            <ref role="3cqZAo" node="4x6uVBKy4bs" resolve="self" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="4x6uVBKy83g" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="4x6uVBKy83h" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="Bn3R3" id="4x6uVBKxT8j" role="Bn3R6">
        <node concept="3clFbS" id="4x6uVBKxT8k" role="2VODD2">
          <node concept="3clFbF" id="4x6uVBKxTgH" role="3cqZAp">
            <node concept="2OqwBi" id="4x6uVBKxT$m" role="3clFbG">
              <node concept="Bn53e" id="4x6uVBKxTgG" role="2Oq$k0" />
              <node concept="3TrcHB" id="4x6uVBKxTOf" role="2OqNvi">
                <ref role="3TsBF5" to="scux:4T0MB1XbEo9" resolve="path" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3EP7_v" id="6183EJ2cUwS" role="1MtirG">
      <node concept="3dgokm" id="6183EJ2cUwY" role="3EP$qY">
        <node concept="3clFbS" id="6183EJ2cUx0" role="2VODD2">
          <node concept="3clFbF" id="6183EJ2cUzT" role="3cqZAp">
            <node concept="2YIFZM" id="6183EJ2cUzU" role="3clFbG">
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <node concept="2OqwBi" id="6183EJ2cUzV" role="37wK5m">
                <node concept="35c_gC" id="6183EJ2cUzW" role="2Oq$k0">
                  <ref role="35c_gD" to="scux:wb0I6Vb7D5" resolve="ArtifactDescription" />
                </node>
                <node concept="2qgKlT" id="2$uHlqTq3Je" role="2OqNvi">
                  <ref role="37wK5l" to="f7op:4T0MB1Xdo34" resolve="getAllFeatures" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="Bn3R3" id="7r$Cpd5MBsU" role="Bniow">
        <node concept="3clFbS" id="7r$Cpd5MBsV" role="2VODD2">
          <node concept="3clFbF" id="7r$Cpd5MBTH" role="3cqZAp">
            <node concept="2OqwBi" id="7r$Cpd5MCb_" role="3clFbG">
              <node concept="Bn53e" id="7r$Cpd5MBTG" role="2Oq$k0" />
              <node concept="3TrcHB" id="7r$Cpd5MCrr" role="2OqNvi">
                <ref role="3TsBF5" to="scux:4T0MB1XbEo9" resolve="path" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9SLcT" id="7r$Cpd5N9oT" role="9SGkU">
      <node concept="3clFbS" id="7r$Cpd5N9oU" role="2VODD2">
        <node concept="3cpWs8" id="7r$Cpd5OCMN" role="3cqZAp">
          <node concept="3cpWsn" id="7r$Cpd5OCMQ" role="3cpWs9">
            <property role="TrG5h" value="isOneOfMany" />
            <node concept="10P_77" id="7r$Cpd5OCML" role="1tU5fm" />
            <node concept="2OqwBi" id="7r$Cpd5OvFz" role="33vP2m">
              <node concept="2OqwBi" id="7r$Cpd5NiiW" role="2Oq$k0">
                <node concept="EsrRn" id="7r$Cpd5NiiX" role="2Oq$k0" />
                <node concept="3TrcHB" id="2$uHlqTpW3o" role="2OqNvi">
                  <ref role="3TsBF5" to="scux:wb0I6Vd19D" resolve="childrenType" />
                </node>
              </node>
              <node concept="liA8E" id="7r$Cpd5Owl6" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="3f7Wdw" id="7r$Cpd5OhOu" role="37wK5m">
                  <ref role="3f7vo2" to="scux:wb0I6Vdi5n" resolve="children_type" />
                  <ref role="3f7u_j" to="scux:wb0I6Vdi5s" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7r$Cpd5OEhf" role="3cqZAp">
          <node concept="3cpWsn" id="7r$Cpd5OEhi" role="3cpWs9">
            <property role="TrG5h" value="addsMandatory" />
            <node concept="10P_77" id="7r$Cpd5OEhd" role="1tU5fm" />
            <node concept="17R0WA" id="7r$Cpd5Nvz6" role="33vP2m">
              <node concept="2DA6wF" id="7r$Cpd5Nvz7" role="3uHU7B" />
              <node concept="359W_D" id="7r$Cpd5Nvz8" role="3uHU7w">
                <ref role="359W_E" to="scux:wb0I6Vb7D5" resolve="ArtifactDescription" />
                <ref role="359W_F" to="scux:4T0MB1Xf65x" resolve="mandatory" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7r$Cpd5NDxR" role="3cqZAp">
          <node concept="3fqX7Q" id="7r$Cpd5OGXb" role="3cqZAk">
            <node concept="1eOMI4" id="7r$Cpd5OJ6S" role="3fr31v">
              <node concept="1Wc70l" id="7r$Cpd5OIlf" role="1eOMHV">
                <node concept="37vLTw" id="7r$Cpd5OHTy" role="3uHU7B">
                  <ref role="3cqZAo" node="7r$Cpd5OCMQ" resolve="isOneOfMany" />
                </node>
                <node concept="37vLTw" id="7r$Cpd5OIwa" role="3uHU7w">
                  <ref role="3cqZAo" node="7r$Cpd5OEhi" resolve="addsMandatory" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="4T0MB1Xfe6K">
    <property role="3GE5qa" value="artifactDescription" />
    <ref role="1M2myG" to="scux:4T0MB1Xf65_" resolve="DirectChildRef" />
    <node concept="1N5Pfh" id="4T0MB1Xfe6L" role="1Mr941">
      <ref role="1N5Vy1" to="scux:2qK8RKEIZEL" resolve="ref" />
      <node concept="3dgokm" id="4T0MB1Xfe6V" role="1N6uqs">
        <node concept="3clFbS" id="4T0MB1Xfe6X" role="2VODD2">
          <node concept="3cpWs8" id="4x6uVBKwPtM" role="3cqZAp">
            <node concept="3cpWsn" id="4x6uVBKwPtP" role="3cpWs9">
              <property role="TrG5h" value="parent" />
              <node concept="3Tqbb2" id="4x6uVBKwPtK" role="1tU5fm">
                <ref role="ehGHo" to="scux:wb0I6Vb7D5" resolve="ArtifactDescription" />
              </node>
              <node concept="2OqwBi" id="4x6uVBKwR5F" role="33vP2m">
                <node concept="2rP1CM" id="4x6uVBKwQEH" role="2Oq$k0" />
                <node concept="2Xjw5R" id="4x6uVBKwRyn" role="2OqNvi">
                  <node concept="1xMEDy" id="4x6uVBKwRyp" role="1xVPHs">
                    <node concept="chp4Y" id="2$uHlqTq4zF" role="ri$Ld">
                      <ref role="cht4Q" to="scux:wb0I6Vb7D5" resolve="ArtifactDescription" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="4x6uVBKwSt9" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="4T0MB1XhIdY" role="3cqZAp">
            <node concept="2YIFZM" id="4T0MB1XhIdZ" role="3cqZAk">
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <node concept="2OqwBi" id="4x6uVBKyhc7" role="37wK5m">
                <node concept="2OqwBi" id="4T0MB1XhIdU" role="2Oq$k0">
                  <node concept="35c_gC" id="4T0MB1XhIdV" role="2Oq$k0">
                    <ref role="35c_gD" to="scux:wb0I6Vb7D5" resolve="ArtifactDescription" />
                  </node>
                  <node concept="2qgKlT" id="2$uHlqTq4UR" role="2OqNvi">
                    <ref role="37wK5l" to="f7op:4T0MB1Xdo34" resolve="getAllFeatures" />
                  </node>
                </node>
                <node concept="3zZkjj" id="4x6uVBKyiRx" role="2OqNvi">
                  <node concept="1bVj0M" id="4x6uVBKyiRz" role="23t8la">
                    <node concept="3clFbS" id="4x6uVBKyiR$" role="1bW5cS">
                      <node concept="3clFbF" id="4x6uVBKyjej" role="3cqZAp">
                        <node concept="3clFbC" id="4x6uVBKykRW" role="3clFbG">
                          <node concept="37vLTw" id="4x6uVBKyliP" role="3uHU7w">
                            <ref role="3cqZAo" node="4x6uVBKwPtP" resolve="parent" />
                          </node>
                          <node concept="2OqwBi" id="4x6uVBKyjIo" role="3uHU7B">
                            <node concept="37vLTw" id="4x6uVBKyjei" role="2Oq$k0">
                              <ref role="3cqZAo" node="4x6uVBKyiR_" resolve="it" />
                            </node>
                            <node concept="3TrEf2" id="2$uHlqTq5hH" role="2OqNvi">
                              <ref role="3Tt5mk" to="scux:4T0MB1XdSHH" resolve="parent" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="4x6uVBKyiR_" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="4x6uVBKyiRA" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="Bn3R3" id="7r$Cpd5MLZY" role="Bn3R6">
        <node concept="3clFbS" id="7r$Cpd5MLZZ" role="2VODD2">
          <node concept="3clFbF" id="7r$Cpd5MM8E" role="3cqZAp">
            <node concept="Xl_RD" id="7r$Cpd5MM8D" role="3clFbG">
              <property role="Xl_RC" value="This is my Representation for a Direct Child!" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="4x6uVBKx3ts">
    <property role="3GE5qa" value="artifactDescription" />
    <ref role="1M2myG" to="scux:4x6uVBKx3sp" resolve="NoDescendentRef" />
    <node concept="1N5Pfh" id="4x6uVBKx3tt" role="1Mr941">
      <ref role="1N5Vy1" to="scux:2qK8RKEIZFt" resolve="ref" />
      <node concept="3dgokm" id="4x6uVBKx3tv" role="1N6uqs">
        <node concept="3clFbS" id="4x6uVBKx3tw" role="2VODD2">
          <node concept="3cpWs8" id="4x6uVBKx3XR" role="3cqZAp">
            <node concept="3cpWsn" id="4x6uVBKx3XS" role="3cpWs9">
              <property role="TrG5h" value="self" />
              <node concept="3Tqbb2" id="4x6uVBKx3XT" role="1tU5fm">
                <ref role="ehGHo" to="scux:wb0I6Vb7D5" resolve="ArtifactDescription" />
              </node>
              <node concept="2OqwBi" id="4x6uVBKx3XU" role="33vP2m">
                <node concept="2rP1CM" id="4x6uVBKx3XV" role="2Oq$k0" />
                <node concept="2Xjw5R" id="4x6uVBKx3XW" role="2OqNvi">
                  <node concept="1xMEDy" id="4x6uVBKx3XX" role="1xVPHs">
                    <node concept="chp4Y" id="2$uHlqTs1w8" role="ri$Ld">
                      <ref role="cht4Q" to="scux:wb0I6Vb7D5" resolve="ArtifactDescription" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="4x6uVBKx3XZ" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="4x6uVBKx3Ym" role="3cqZAp">
            <node concept="2YIFZM" id="4x6uVBKx3Yn" role="3cqZAk">
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <node concept="2OqwBi" id="4x6uVBKyrnp" role="37wK5m">
                <node concept="2OqwBi" id="4x6uVBKx3Yi" role="2Oq$k0">
                  <node concept="35c_gC" id="4x6uVBKx3Yj" role="2Oq$k0">
                    <ref role="35c_gD" to="scux:wb0I6Vb7D5" resolve="ArtifactDescription" />
                  </node>
                  <node concept="2qgKlT" id="4x6uVBKx3Yk" role="2OqNvi">
                    <ref role="37wK5l" to="f7op:4T0MB1Xdo34" resolve="getAllFeatures" />
                  </node>
                </node>
                <node concept="3zZkjj" id="4x6uVBKysQn" role="2OqNvi">
                  <node concept="1bVj0M" id="4x6uVBKysQp" role="23t8la">
                    <node concept="3clFbS" id="4x6uVBKysQq" role="1bW5cS">
                      <node concept="3clFbF" id="4x6uVBKyt6V" role="3cqZAp">
                        <node concept="1Wc70l" id="6UA$kvQym4g" role="3clFbG">
                          <node concept="17QLQc" id="7r$Cpd5M6Lu" role="3uHU7w">
                            <node concept="2OqwBi" id="6UA$kvQymDe" role="3uHU7B">
                              <node concept="37vLTw" id="6UA$kvQymnm" role="2Oq$k0">
                                <ref role="3cqZAo" node="4x6uVBKysQr" resolve="it" />
                              </node>
                              <node concept="3TrEf2" id="6UA$kvQynjL" role="2OqNvi">
                                <ref role="3Tt5mk" to="scux:4T0MB1XdSHH" resolve="parent" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="7r$Cpd5Mc5h" role="3uHU7w">
                              <node concept="37vLTw" id="6UA$kvQyog4" role="2Oq$k0">
                                <ref role="3cqZAo" node="4x6uVBKx3XS" resolve="self" />
                              </node>
                              <node concept="3TrEf2" id="7r$Cpd5McDY" role="2OqNvi">
                                <ref role="3Tt5mk" to="scux:4T0MB1XdSHH" resolve="parent" />
                              </node>
                            </node>
                          </node>
                          <node concept="1Wc70l" id="4x6uVBKxux$" role="3uHU7B">
                            <node concept="1Wc70l" id="4x6uVBKxDCa" role="3uHU7B">
                              <node concept="3fqX7Q" id="4x6uVBKxGD8" role="3uHU7w">
                                <node concept="2OqwBi" id="4x6uVBKxGDa" role="3fr31v">
                                  <node concept="37vLTw" id="4x6uVBKxGDb" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4x6uVBKx3XS" resolve="self" />
                                  </node>
                                  <node concept="2qgKlT" id="4x6uVBKxGDc" role="2OqNvi">
                                    <ref role="37wK5l" to="f7op:4x6uVBKwYJ6" resolve="isDescendentOf" />
                                    <node concept="37vLTw" id="4x6uVBKyuru" role="37wK5m">
                                      <ref role="3cqZAo" node="4x6uVBKysQr" resolve="it" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3fqX7Q" id="4x6uVBKx6V2" role="3uHU7B">
                                <node concept="2OqwBi" id="4x6uVBKx6V4" role="3fr31v">
                                  <node concept="2qgKlT" id="4x6uVBKx6V6" role="2OqNvi">
                                    <ref role="37wK5l" to="f7op:4x6uVBKwYJ6" resolve="isDescendentOf" />
                                    <node concept="37vLTw" id="4x6uVBKx7c0" role="37wK5m">
                                      <ref role="3cqZAo" node="4x6uVBKx3XS" resolve="self" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="4x6uVBKytKc" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4x6uVBKysQr" resolve="it" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3y3z36" id="4x6uVBKxyBh" role="3uHU7w">
                              <node concept="37vLTw" id="4x6uVBKyv38" role="3uHU7B">
                                <ref role="3cqZAo" node="4x6uVBKysQr" resolve="it" />
                              </node>
                              <node concept="37vLTw" id="4x6uVBKxyTA" role="3uHU7w">
                                <ref role="3cqZAo" node="4x6uVBKx3XS" resolve="self" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="4x6uVBKysQr" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="4x6uVBKysQs" role="1tU5fm" />
                    </node>
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

