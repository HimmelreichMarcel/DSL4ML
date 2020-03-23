<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:294be041-e7bf-4c3a-bcc2-82ada151287d(core.actions)">
  <persistence version="9" />
  <languages>
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" implicit="true" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
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
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
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
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
    </language>
  </registry>
  <node concept="37WguZ" id="432kJCyA3sC">
    <property role="3GE5qa" value="expressions" />
    <property role="TrG5h" value="SectionPorts" />
    <node concept="37WvkG" id="432kJCyA3sD" role="37WGs$">
      <ref role="37XkoT" to="5frd:5uNOSkli4V2" resolve="ProvideOutportExpr" />
      <node concept="37Y9Zx" id="432kJCyA3sE" role="37ZfLb">
        <node concept="3clFbS" id="432kJCyA3sF" role="2VODD2">
          <node concept="3SKdUt" id="432kJCyAAo7" role="3cqZAp">
            <node concept="3SKdUq" id="432kJCyAAo9" role="3SKWNk">
              <property role="3SKdUp" value="create outport" />
            </node>
          </node>
          <node concept="3cpWs8" id="432kJCyA4A1" role="3cqZAp">
            <node concept="3cpWsn" id="432kJCyA4A4" role="3cpWs9">
              <property role="TrG5h" value="outport" />
              <node concept="3Tqbb2" id="432kJCyA4_Z" role="1tU5fm">
                <ref role="ehGHo" to="5frd:2$uHlqTwKhB" resolve="Outport" />
              </node>
              <node concept="2ShNRf" id="432kJCyA4Bf" role="33vP2m">
                <node concept="3zrR0B" id="432kJCyA6SM" role="2ShVmc">
                  <node concept="3Tqbb2" id="432kJCyA6SO" role="3zrR0E">
                    <ref role="ehGHo" to="5frd:2$uHlqTwKhB" resolve="Outport" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="432kJCyAdFa" role="3cqZAp">
            <node concept="37vLTI" id="432kJCyAe$d" role="3clFbG">
              <node concept="37vLTw" id="432kJCyAeCZ" role="37vLTx">
                <ref role="3cqZAo" node="432kJCyA4A4" resolve="outport" />
              </node>
              <node concept="2OqwBi" id="432kJCyAdP5" role="37vLTJ">
                <node concept="1r4Lsj" id="432kJCyAdF8" role="2Oq$k0" />
                <node concept="3TrEf2" id="432kJCyACxB" role="2OqNvi">
                  <ref role="3Tt5mk" to="5frd:432kJCyAB3S" resolve="outport" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="432kJCyAAz8" role="3cqZAp" />
          <node concept="3SKdUt" id="432kJCyACAg" role="3cqZAp">
            <node concept="3SKdUq" id="432kJCyACAi" role="3SKWNk">
              <property role="3SKdUp" value="create outport ref" />
            </node>
          </node>
          <node concept="3cpWs8" id="432kJCyA$MB" role="3cqZAp">
            <node concept="3cpWsn" id="432kJCyA$ME" role="3cpWs9">
              <property role="TrG5h" value="ref" />
              <node concept="3Tqbb2" id="432kJCyA$M_" role="1tU5fm">
                <ref role="ehGHo" to="5frd:2$uHlqTwKhC" resolve="OutportRef" />
              </node>
              <node concept="2ShNRf" id="432kJCyA$Qo" role="33vP2m">
                <node concept="3zrR0B" id="432kJCyA$Qm" role="2ShVmc">
                  <node concept="3Tqbb2" id="432kJCyA$Qn" role="3zrR0E">
                    <ref role="ehGHo" to="5frd:2$uHlqTwKhC" resolve="OutportRef" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="432kJCyA$QJ" role="3cqZAp">
            <node concept="37vLTI" id="432kJCyA_W8" role="3clFbG">
              <node concept="37vLTw" id="432kJCyAA0o" role="37vLTx">
                <ref role="3cqZAo" node="432kJCyA4A4" resolve="outport" />
              </node>
              <node concept="2OqwBi" id="432kJCyA_95" role="37vLTJ">
                <node concept="37vLTw" id="432kJCyA$QH" role="2Oq$k0">
                  <ref role="3cqZAo" node="432kJCyA$ME" resolve="ref" />
                </node>
                <node concept="3TrEf2" id="432kJCyA_A2" role="2OqNvi">
                  <ref role="3Tt5mk" to="5frd:432kJCyA_iQ" resolve="val" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="432kJCyA42g" role="3cqZAp">
            <node concept="3cpWsn" id="432kJCyA42j" role="3cpWs9">
              <property role="TrG5h" value="section" />
              <node concept="3Tqbb2" id="432kJCyA42f" role="1tU5fm">
                <ref role="ehGHo" to="5frd:2$uHlqSzbou" resolve="Section" />
              </node>
              <node concept="2OqwBi" id="432kJCyA3$L" role="33vP2m">
                <node concept="1r4N1M" id="432kJCyA3sQ" role="2Oq$k0" />
                <node concept="2Xjw5R" id="432kJCyA3OC" role="2OqNvi">
                  <node concept="1xMEDy" id="432kJCyA3OE" role="1xVPHs">
                    <node concept="chp4Y" id="432kJCyA3Q$" role="ri$Ld">
                      <ref role="cht4Q" to="5frd:2$uHlqSzbou" resolve="Section" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="432kJCyA3Wt" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="432kJCyAD$C" role="3cqZAp">
            <node concept="2OqwBi" id="432kJCyAFT$" role="3clFbG">
              <node concept="2OqwBi" id="432kJCyADN$" role="2Oq$k0">
                <node concept="37vLTw" id="432kJCyAD$A" role="2Oq$k0">
                  <ref role="3cqZAo" node="432kJCyA42j" resolve="section" />
                </node>
                <node concept="3Tsc0h" id="432kJCyAE8L" role="2OqNvi">
                  <ref role="3TtcxE" to="5frd:2$uHlqTwKJR" resolve="outports" />
                </node>
              </node>
              <node concept="TSZUe" id="432kJCyAJeo" role="2OqNvi">
                <node concept="37vLTw" id="432kJCyAJmO" role="25WWJ7">
                  <ref role="3cqZAo" node="432kJCyA$ME" resolve="ref" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

