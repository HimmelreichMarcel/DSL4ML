<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4387fdaa-9c6a-40d7-959e-01e6f4f30727(create.actions)">
  <persistence version="9" />
  <languages>
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" />
    <import index="ckmh" ref="r:a0b09593-26bd-4d75-98f1-657e49dea4f1(create.structure)" implicit="true" />
    <import index="rf90" ref="r:78ffb9c2-583d-4056-875e-4c4f6c2b2f2f(create.behavior)" implicit="true" />
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
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
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
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="1158700664498" name="jetbrains.mps.lang.actions.structure.NodeFactories" flags="ng" index="37WguZ">
        <child id="1158700779049" name="nodeFactory" index="37WGs$" />
      </concept>
      <concept id="1158700725281" name="jetbrains.mps.lang.actions.structure.NodeFactory" flags="ig" index="37WvkG">
        <reference id="1158700943156" name="applicableConcept" index="37XkoT" />
        <child id="1158701448518" name="setupFunction" index="37ZfLb" />
      </concept>
      <concept id="1158701162220" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction" flags="in" index="37Y9Zx" />
      <concept id="5584396657084912703" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction_NewNode" flags="nn" index="1r4Lsj" />
      <concept id="5584396657084920670" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction_EnclosingNode" flags="nn" index="1r4N1M" />
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
  <node concept="37WguZ" id="4IazLL3PEH$">
    <property role="3GE5qa" value="fromFile" />
    <property role="TrG5h" value="InitFileLoader" />
    <node concept="37WvkG" id="4IazLL3PEH_" role="37WGs$">
      <ref role="37XkoT" to="ckmh:7bbTq01XjrK" resolve="CreateFromFileInitialization" />
      <node concept="37Y9Zx" id="4IazLL3PEID" role="37ZfLb">
        <node concept="3clFbS" id="4IazLL3PEIE" role="2VODD2">
          <node concept="3cpWs8" id="7YOY7Y$OsAV" role="3cqZAp">
            <node concept="3cpWsn" id="7YOY7Y$OsAY" role="3cpWs9">
              <property role="TrG5h" value="type" />
              <node concept="3Tqbb2" id="7YOY7Y$OsAT" role="1tU5fm" />
              <node concept="2OqwBi" id="7YOY7Y$OtrT" role="33vP2m">
                <node concept="1PxgMI" id="7YOY7Y$Ota$" role="2Oq$k0">
                  <node concept="chp4Y" id="4IazLL3SQpq" role="3oSUPX">
                    <ref role="cht4Q" to="ckmh:4Z2dWAVu5W2" resolve="CreateStatement" />
                  </node>
                  <node concept="1r4N1M" id="7YOY7Y$OsJh" role="1m5AlR" />
                </node>
                <node concept="3TrEf2" id="7YOY7Y$OtW4" role="2OqNvi">
                  <ref role="3Tt5mk" to="5frd:1UULepNU6GA" resolve="type" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7YOY7Y$Ou8l" role="3cqZAp">
            <node concept="37vLTI" id="7YOY7Y$Owfo" role="3clFbG">
              <node concept="2OqwBi" id="7YOY7Y$Ovtx" role="37vLTJ">
                <node concept="1r4Lsj" id="7YOY7Y$Ovct" role="2Oq$k0" />
                <node concept="3TrEf2" id="4IazLL3SSeu" role="2OqNvi">
                  <ref role="3Tt5mk" to="ckmh:7bbTq01Z0VP" resolve="loader" />
                </node>
              </node>
              <node concept="2OqwBi" id="7YOY7Y$OuH9" role="37vLTx">
                <node concept="1PxgMI" id="7YOY7Y$Ouu0" role="2Oq$k0">
                  <node concept="chp4Y" id="4IazLL3SQj1" role="3oSUPX">
                    <ref role="cht4Q" to="ckmh:4Z2dWAVu5W3" resolve="ICanBeLoaded" />
                  </node>
                  <node concept="37vLTw" id="7YOY7Y$Ou8j" role="1m5AlR">
                    <ref role="3cqZAo" node="7YOY7Y$OsAY" resolve="type" />
                  </node>
                </node>
                <node concept="2qgKlT" id="4IazLL3SQJn" role="2OqNvi">
                  <ref role="37wK5l" to="rf90:57k_vxmTFj_" resolve="getFileLoaderExpression" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

