<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fcd9f3f3-19f9-4e66-881e-0be45ff3fbb1(rootfile.intentions)">
  <persistence version="9" />
  <languages>
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="2ahs" ref="r:ea6cf71d-29d2-478d-8027-a9f4a4de53c4(com.mbeddr.mpsutil.interpreter.rt)" />
    <import index="7skk" ref="r:c33d3b05-6327-4bd1-91f0-9c47a8de45f7(rootfile.structure)" implicit="true" />
    <import index="rzzn" ref="r:76ee21ab-cfc8-4c27-9a60-7dd5562f12aa(rootfile.behavior)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="zzzn" ref="r:af0af2e7-f7e1-4536-83b5-6bf010d4afd2(org.iets3.core.expr.lambda.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
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
    <language id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions">
      <concept id="1192794744107" name="jetbrains.mps.lang.intentions.structure.IntentionDeclaration" flags="ig" index="2S6QgY" />
      <concept id="1192794782375" name="jetbrains.mps.lang.intentions.structure.DescriptionBlock" flags="in" index="2S6ZIM" />
      <concept id="1192795911897" name="jetbrains.mps.lang.intentions.structure.ExecuteBlock" flags="in" index="2Sbjvc" />
      <concept id="1192796902958" name="jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node" flags="nn" index="2Sf5sV" />
      <concept id="2522969319638091381" name="jetbrains.mps.lang.intentions.structure.BaseIntentionDeclaration" flags="ig" index="2ZfUlf">
        <property id="2522969319638091386" name="isAvailableInChildNodes" index="2ZfUl0" />
        <reference id="2522969319638198290" name="forConcept" index="2ZfgGC" />
        <child id="2522969319638198291" name="executeFunction" index="2ZfgGD" />
        <child id="2522969319638093993" name="descriptionFunction" index="2ZfVej" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
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
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="linkRole" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1227022210526" name="jetbrains.mps.baseLanguage.collections.structure.ClearAllElementsOperation" flags="nn" index="2Kehj3" />
    </language>
  </registry>
  <node concept="2S6QgY" id="36zsy7FB06y">
    <property role="3GE5qa" value="section" />
    <property role="TrG5h" value="RunSection" />
    <property role="2ZfUl0" value="true" />
    <ref role="2ZfgGC" to="7skk:7OzZ9xI8qFl" resolve="Section" />
    <node concept="2S6ZIM" id="36zsy7FB06z" role="2ZfVej">
      <node concept="3clFbS" id="36zsy7FB06$" role="2VODD2">
        <node concept="3clFbF" id="36zsy7FB0ff" role="3cqZAp">
          <node concept="Xl_RD" id="36zsy7FB0fe" role="3clFbG">
            <property role="Xl_RC" value="Run Section" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="36zsy7FB06_" role="2ZfgGD">
      <node concept="3clFbS" id="36zsy7FB06A" role="2VODD2">
        <node concept="3clFbJ" id="3L7XVs4JyoY" role="3cqZAp">
          <node concept="3clFbS" id="3L7XVs4Jyp0" role="3clFbx">
            <node concept="3cpWs8" id="3L7XVs4JArK" role="3cqZAp">
              <node concept="3cpWsn" id="3L7XVs4JArL" role="3cpWs9">
                <property role="TrG5h" value="resString" />
                <node concept="17QB3L" id="3L7XVs4JArM" role="1tU5fm" />
                <node concept="2OqwBi" id="3L7XVs4JAX9" role="33vP2m">
                  <node concept="2Sf5sV" id="3L7XVs4JAXa" role="2Oq$k0" />
                  <node concept="2qgKlT" id="36zsy7FBqtz" role="2OqNvi">
                    <ref role="37wK5l" to="rzzn:3L7XVs4J2WN" resolve="checkForErrors" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3L7XVs4JArW" role="3cqZAp">
              <node concept="2YIFZM" id="3L7XVs4JArX" role="3clFbG">
                <ref role="1Pybhc" to="dxuu:~JOptionPane" resolve="JOptionPane" />
                <ref role="37wK5l" to="dxuu:~JOptionPane.showMessageDialog(java.awt.Component,java.lang.Object,java.lang.String,int):void" resolve="showMessageDialog" />
                <node concept="10Nm6u" id="3L7XVs4JArY" role="37wK5m" />
                <node concept="3cpWs3" id="3L7XVs4JArZ" role="37wK5m">
                  <node concept="37vLTw" id="3L7XVs4JAs0" role="3uHU7w">
                    <ref role="3cqZAo" node="3L7XVs4JArL" resolve="resString" />
                  </node>
                  <node concept="Xl_RD" id="3L7XVs4JAs1" role="3uHU7B">
                    <property role="Xl_RC" value="Failure in Section: " />
                  </node>
                </node>
                <node concept="Xl_RD" id="3L7XVs4JAs2" role="37wK5m">
                  <property role="Xl_RC" value="Interpreter result" />
                </node>
                <node concept="10M0yZ" id="3L7XVs4JAs3" role="37wK5m">
                  <ref role="1PxDUh" to="dxuu:~JOptionPane" resolve="JOptionPane" />
                  <ref role="3cqZAo" to="dxuu:~JOptionPane.INFORMATION_MESSAGE" resolve="INFORMATION_MESSAGE" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3L7XVs4JDd9" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="3L7XVs4J$Lt" role="3clFbw">
            <node concept="2OqwBi" id="3L7XVs4JzJt" role="2Oq$k0">
              <node concept="2Sf5sV" id="3L7XVs4Jzgk" role="2Oq$k0" />
              <node concept="2qgKlT" id="3L7XVs4J$mv" role="2OqNvi">
                <ref role="37wK5l" to="rzzn:3L7XVs4J2WN" resolve="checkForErrors" />
              </node>
            </node>
            <node concept="17RvpY" id="3L7XVs4J_Ic" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="3L7XVs4JxVF" role="3cqZAp" />
        <node concept="3clFbJ" id="2O8mcPFwzbr" role="3cqZAp">
          <node concept="2OqwBi" id="2O8mcPFwzq4" role="3clFbw">
            <node concept="2Sf5sV" id="2O8mcPFwzbQ" role="2Oq$k0" />
            <node concept="2qgKlT" id="2O8mcPFw$RF" role="2OqNvi">
              <ref role="37wK5l" to="rzzn:2O8mcPFwzJp" resolve="readyToRun" />
            </node>
          </node>
          <node concept="3clFbS" id="2O8mcPFwzbt" role="3clFbx">
            <node concept="3SKdUt" id="2O8mcPFwZjC" role="3cqZAp">
              <node concept="3SKdUq" id="2O8mcPFwZjE" role="3SKWNk">
                <property role="3SKdUp" value="evaluate body" />
              </node>
            </node>
            <node concept="3clFbF" id="6Iu9bl6tCNP" role="3cqZAp">
              <node concept="2OqwBi" id="6Iu9bl6tFpB" role="3clFbG">
                <node concept="2OqwBi" id="6Iu9bl6tD9U" role="2Oq$k0">
                  <node concept="2Sf5sV" id="6Iu9bl6tCNN" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="6Iu9bl6tDA8" role="2OqNvi">
                    <ref role="3TtcxE" to="7skk:54xAiUPY0t2" resolve="results" />
                  </node>
                </node>
                <node concept="2Kehj3" id="6Iu9bl6tIIZ" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbH" id="1_nK1g6kwmX" role="3cqZAp" />
            <node concept="3cpWs8" id="7VOscSoFAse" role="3cqZAp">
              <node concept="3cpWsn" id="7VOscSoFAsf" role="3cpWs9">
                <property role="TrG5h" value="evaluator" />
                <node concept="3uibUv" id="7VOscSoFAsg" role="1tU5fm">
                  <ref role="3uigEE" to="2ahs:50LzNoSxDO3" resolve="InterpreterEvaluationHelper" />
                </node>
                <node concept="2ShNRf" id="7VOscSoFCMF" role="33vP2m">
                  <node concept="1pGfFk" id="7VOscSoFD3A" role="2ShVmc">
                    <ref role="37wK5l" to="2ahs:50LzNoSxJpU" resolve="InterpreterEvaluationHelper" />
                    <node concept="Xl_RD" id="7VOscSoFD43" role="37wK5m">
                      <property role="Xl_RC" value="CInterpreter" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="5XJYTS2EyjB" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3cpWs8" id="1_nK1g6lkM9" role="8Wnug">
                <node concept="3cpWsn" id="1_nK1g6lkMa" role="3cpWs9">
                  <property role="TrG5h" value="result" />
                  <node concept="3uibUv" id="1_nK1g6lkMb" role="1tU5fm">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                  <node concept="2OqwBi" id="7VOscSoFHZx" role="33vP2m">
                    <node concept="37vLTw" id="7VOscSoFF_N" role="2Oq$k0">
                      <ref role="3cqZAo" node="7VOscSoFAsf" resolve="evaluator" />
                    </node>
                    <node concept="liA8E" id="7VOscSoFItZ" role="2OqNvi">
                      <ref role="37wK5l" to="2ahs:50LzNoSxJob" resolve="evaluate" />
                      <node concept="2OqwBi" id="7r$Cpd5KM3T" role="37wK5m">
                        <node concept="2Sf5sV" id="7VOscSoFIxb" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7r$Cpd5KMIx" role="2OqNvi">
                          <ref role="3Tt5mk" to="7skk:7OzZ9xI8qH5" resolve="block" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5XJYTS2EPmD" role="3cqZAp">
              <node concept="3cpWsn" id="5XJYTS2EPmE" role="3cpWs9">
                <property role="TrG5h" value="result" />
                <node concept="3uibUv" id="5XJYTS2EPmF" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="10Nm6u" id="5XJYTS2EUMX" role="33vP2m" />
              </node>
            </node>
            <node concept="2Gpval" id="5XJYTS2EqSj" role="3cqZAp">
              <node concept="2GrKxI" id="5XJYTS2EqSl" role="2Gsz3X">
                <property role="TrG5h" value="statement" />
              </node>
              <node concept="2OqwBi" id="fN3qU6GMW2" role="2GsD0m">
                <node concept="2OqwBi" id="5XJYTS2EtsT" role="2Oq$k0">
                  <node concept="2Sf5sV" id="5XJYTS2Etbe" role="2Oq$k0" />
                  <node concept="3TrEf2" id="fN3qU6GM3z" role="2OqNvi">
                    <ref role="3Tt5mk" to="7skk:7OzZ9xI8qH5" resolve="block" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="5W_fQsnbY_v" role="2OqNvi">
                  <ref role="3TtcxE" to="zzzn:49WTic8ig5E" resolve="expressions" />
                </node>
              </node>
              <node concept="3clFbS" id="5XJYTS2EqSp" role="2LFqv$">
                <node concept="3clFbF" id="5XJYTS2EWab" role="3cqZAp">
                  <node concept="37vLTI" id="5XJYTS2EWzc" role="3clFbG">
                    <node concept="37vLTw" id="5XJYTS2EWaa" role="37vLTJ">
                      <ref role="3cqZAo" node="5XJYTS2EPmE" resolve="result" />
                    </node>
                    <node concept="2OqwBi" id="5XJYTS2EPmG" role="37vLTx">
                      <node concept="37vLTw" id="5XJYTS2EPmH" role="2Oq$k0">
                        <ref role="3cqZAo" node="7VOscSoFAsf" resolve="evaluator" />
                      </node>
                      <node concept="liA8E" id="5XJYTS2EPmI" role="2OqNvi">
                        <ref role="37wK5l" to="2ahs:50LzNoSxJob" resolve="evaluate" />
                        <node concept="2GrUjf" id="5XJYTS2EPmJ" role="37wK5m">
                          <ref role="2Gs0qQ" node="5XJYTS2EqSl" resolve="statement" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7VOscSoFxJJ" role="3cqZAp" />
            <node concept="3cpWs8" id="7kyIuXqwvT6" role="3cqZAp">
              <node concept="3cpWsn" id="7kyIuXqwvT7" role="3cpWs9">
                <property role="TrG5h" value="resString" />
                <node concept="17QB3L" id="7kyIuXqww0O" role="1tU5fm" />
                <node concept="3cpWs3" id="7kyIuXqw$$y" role="33vP2m">
                  <node concept="Xl_RD" id="7kyIuXqw$$C" role="3uHU7w">
                    <property role="Xl_RC" value="&gt;" />
                  </node>
                  <node concept="3cpWs3" id="7kyIuXqwx$1" role="3uHU7B">
                    <node concept="3cpWs3" id="7kyIuXqwwVC" role="3uHU7B">
                      <node concept="37vLTw" id="1_nK1g6luTt" role="3uHU7B">
                        <ref role="3cqZAo" node="5XJYTS2EPmE" resolve="result" />
                      </node>
                      <node concept="Xl_RD" id="7kyIuXqwxbq" role="3uHU7w">
                        <property role="Xl_RC" value=" &lt;" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7kyIuXqwze8" role="3uHU7w">
                      <node concept="2OqwBi" id="7kyIuXqwyzh" role="2Oq$k0">
                        <node concept="37vLTw" id="1_nK1g6lv3f" role="2Oq$k0">
                          <ref role="3cqZAo" node="5XJYTS2EPmE" resolve="result" />
                        </node>
                        <node concept="liA8E" id="7kyIuXqwyKS" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7kyIuXqw$6v" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Class.getName():java.lang.String" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1oYSzEGJr$y" role="3cqZAp">
              <node concept="2YIFZM" id="1oYSzEGJtPT" role="3clFbG">
                <ref role="37wK5l" to="dxuu:~JOptionPane.showMessageDialog(java.awt.Component,java.lang.Object,java.lang.String,int):void" resolve="showMessageDialog" />
                <ref role="1Pybhc" to="dxuu:~JOptionPane" resolve="JOptionPane" />
                <node concept="10Nm6u" id="1oYSzEGJtQG" role="37wK5m" />
                <node concept="3cpWs3" id="1oYSzEGJtX_" role="37wK5m">
                  <node concept="37vLTw" id="7kyIuXqwvT9" role="3uHU7w">
                    <ref role="3cqZAo" node="7kyIuXqwvT7" resolve="resString" />
                  </node>
                  <node concept="Xl_RD" id="1oYSzEGJtSf" role="3uHU7B">
                    <property role="Xl_RC" value="Result: " />
                  </node>
                </node>
                <node concept="Xl_RD" id="1oYSzEGJu6z" role="37wK5m">
                  <property role="Xl_RC" value="Interpreter result" />
                </node>
                <node concept="10M0yZ" id="1oYSzEGJueB" role="37wK5m">
                  <ref role="1PxDUh" to="dxuu:~JOptionPane" resolve="JOptionPane" />
                  <ref role="3cqZAo" to="dxuu:~JOptionPane.INFORMATION_MESSAGE" resolve="INFORMATION_MESSAGE" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2O8mcPFwZnx" role="3cqZAp" />
          </node>
          <node concept="9aQIb" id="2O8mcPFxw$Z" role="9aQIa">
            <node concept="3clFbS" id="2O8mcPFxw_0" role="9aQI4">
              <node concept="3cpWs8" id="2O8mcPFxwOq" role="3cqZAp">
                <node concept="3cpWsn" id="2O8mcPFxwOr" role="3cpWs9">
                  <property role="TrG5h" value="resString" />
                  <node concept="17QB3L" id="2O8mcPFxwOs" role="1tU5fm" />
                  <node concept="3cpWs3" id="2O8mcPFxzfO" role="33vP2m">
                    <node concept="2OqwBi" id="2O8mcPFxzCd" role="3uHU7w">
                      <node concept="2Sf5sV" id="2O8mcPFxzmX" role="2Oq$k0" />
                      <node concept="3TrcHB" id="2O8mcPFx$oY" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="2O8mcPFxFXU" role="3uHU7B">
                      <node concept="Xl_RD" id="2O8mcPFxG80" role="3uHU7w">
                        <property role="Xl_RC" value="Check depenencies in section " />
                      </node>
                      <node concept="3cpWs3" id="2O8mcPFxENI" role="3uHU7B">
                        <node concept="Xl_RD" id="2O8mcPFxx2A" role="3uHU7B">
                          <property role="Xl_RC" value="(error) not ready to run" />
                        </node>
                        <node concept="Xl_RD" id="2O8mcPFxEX_" role="3uHU7w">
                          <property role="Xl_RC" value="\n" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2O8mcPFxwOC" role="3cqZAp">
                <node concept="2YIFZM" id="2O8mcPFxwOD" role="3clFbG">
                  <ref role="37wK5l" to="dxuu:~JOptionPane.showMessageDialog(java.awt.Component,java.lang.Object,java.lang.String,int):void" resolve="showMessageDialog" />
                  <ref role="1Pybhc" to="dxuu:~JOptionPane" resolve="JOptionPane" />
                  <node concept="10Nm6u" id="2O8mcPFxwOE" role="37wK5m" />
                  <node concept="3cpWs3" id="2O8mcPFxwOF" role="37wK5m">
                    <node concept="37vLTw" id="2O8mcPFxwOG" role="3uHU7w">
                      <ref role="3cqZAo" node="2O8mcPFxwOr" resolve="resString" />
                    </node>
                    <node concept="Xl_RD" id="2O8mcPFxwOH" role="3uHU7B">
                      <property role="Xl_RC" value="Result: " />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="2O8mcPFxwOI" role="37wK5m">
                    <property role="Xl_RC" value="Interpreter result" />
                  </node>
                  <node concept="10M0yZ" id="2O8mcPFxwOJ" role="37wK5m">
                    <ref role="3cqZAo" to="dxuu:~JOptionPane.INFORMATION_MESSAGE" resolve="INFORMATION_MESSAGE" />
                    <ref role="1PxDUh" to="dxuu:~JOptionPane" resolve="JOptionPane" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="36zsy7FB0PT" role="3cqZAp" />
      </node>
    </node>
  </node>
</model>

