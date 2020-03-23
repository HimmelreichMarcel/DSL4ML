<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1fcd6595-639d-4f32-9610-627591f4e3a6(features.intentions)">
  <persistence version="9" />
  <languages>
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" />
    <import index="55s9" ref="r:349f01e8-2ba4-49f7-be71-679bbbf4b80d(features.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
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
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
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
    </language>
    <language id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions">
      <concept id="1192794744107" name="jetbrains.mps.lang.intentions.structure.IntentionDeclaration" flags="ig" index="2S6QgY" />
      <concept id="1192794782375" name="jetbrains.mps.lang.intentions.structure.DescriptionBlock" flags="in" index="2S6ZIM" />
      <concept id="1192795911897" name="jetbrains.mps.lang.intentions.structure.ExecuteBlock" flags="in" index="2Sbjvc" />
      <concept id="1192796902958" name="jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node" flags="nn" index="2Sf5sV" />
      <concept id="2522969319638091381" name="jetbrains.mps.lang.intentions.structure.BaseIntentionDeclaration" flags="ig" index="2ZfUlf">
        <reference id="2522969319638198290" name="forConcept" index="2ZfgGC" />
        <child id="2522969319638198291" name="executeFunction" index="2ZfgGD" />
        <child id="2522969319638093993" name="descriptionFunction" index="2ZfVej" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="1167227138527" name="jetbrains.mps.baseLanguage.logging.structure.LogStatement" flags="nn" index="34ab3g">
        <property id="1167245565795" name="severity" index="35gtTG" />
        <child id="1167227463056" name="logExpression" index="34bqiv" />
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
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
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
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
    </language>
  </registry>
  <node concept="2S6QgY" id="1pFVOLkF4Pp">
    <property role="3GE5qa" value="editing" />
    <property role="TrG5h" value="GetPythonCommand" />
    <ref role="2ZfgGC" to="55s9:yCGLuIzMj9" resolve="AbstractFeaturesetEditingStatement" />
    <node concept="2S6ZIM" id="1pFVOLkF4Pq" role="2ZfVej">
      <node concept="3clFbS" id="1pFVOLkF4Pr" role="2VODD2">
        <node concept="3clFbF" id="1pFVOLkF5ME" role="3cqZAp">
          <node concept="Xl_RD" id="1pFVOLkF5MD" role="3clFbG">
            <property role="Xl_RC" value="Get Python Command." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="1pFVOLkF4Ps" role="2ZfgGD">
      <node concept="3clFbS" id="1pFVOLkF4Pt" role="2VODD2">
        <node concept="3cpWs8" id="1pFVOLkFjAo" role="3cqZAp">
          <node concept="3cpWsn" id="1pFVOLkFjAr" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="17QB3L" id="1pFVOLkFjAm" role="1tU5fm" />
            <node concept="Xl_RD" id="1pFVOLkFl$r" role="33vP2m">
              <property role="Xl_RC" value="Result: \n" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1pFVOLkFksk" role="3cqZAp">
          <node concept="2GrKxI" id="1pFVOLkFksm" role="2Gsz3X">
            <property role="TrG5h" value="cmd" />
          </node>
          <node concept="3clFbS" id="1pFVOLkFksq" role="2LFqv$">
            <node concept="3clFbF" id="1pFVOLkFlAa" role="3cqZAp">
              <node concept="d57v9" id="1pFVOLkFlVq" role="3clFbG">
                <node concept="3cpWs3" id="1pFVOLkFmlZ" role="37vLTx">
                  <node concept="Xl_RD" id="1pFVOLkFmFA" role="3uHU7w">
                    <property role="Xl_RC" value=" \n" />
                  </node>
                  <node concept="2GrUjf" id="1pFVOLkFlVT" role="3uHU7B">
                    <ref role="2Gs0qQ" node="1pFVOLkFksm" resolve="cmd" />
                  </node>
                </node>
                <node concept="37vLTw" id="1pFVOLkFlA9" role="37vLTJ">
                  <ref role="3cqZAo" node="1pFVOLkFjAr" resolve="text" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1pFVOLkFhtL" role="2GsD0m">
            <node concept="2Sf5sV" id="1pFVOLkFheb" role="2Oq$k0" />
            <node concept="2qgKlT" id="1pFVOLkFini" role="2OqNvi">
              <ref role="37wK5l" to="64zb:4HLGmtYMWnF" resolve="generateServerRequests" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1pFVOLkFiMp" role="3cqZAp" />
        <node concept="3clFbF" id="1oYSzEGJr$y" role="3cqZAp">
          <node concept="2YIFZM" id="1oYSzEGJtPT" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JOptionPane.showMessageDialog(java.awt.Component,java.lang.Object,java.lang.String,int):void" resolve="showMessageDialog" />
            <ref role="1Pybhc" to="dxuu:~JOptionPane" resolve="JOptionPane" />
            <node concept="10Nm6u" id="1oYSzEGJtQG" role="37wK5m" />
            <node concept="37vLTw" id="1pFVOLkFon8" role="37wK5m">
              <ref role="3cqZAo" node="1pFVOLkFjAr" resolve="text" />
            </node>
            <node concept="Xl_RD" id="1oYSzEGJu6z" role="37wK5m">
              <property role="Xl_RC" value="Interpreter result" />
            </node>
            <node concept="10M0yZ" id="1oYSzEGJueB" role="37wK5m">
              <ref role="3cqZAo" to="dxuu:~JOptionPane.INFORMATION_MESSAGE" resolve="INFORMATION_MESSAGE" />
              <ref role="1PxDUh" to="dxuu:~JOptionPane" resolve="JOptionPane" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="4IazLL5k54I">
    <property role="3GE5qa" value="editing.features" />
    <property role="TrG5h" value="PrintSelection" />
    <ref role="2ZfgGC" to="55s9:3RQ8TRgFzZU" resolve="DeleteFeaturesStatement" />
    <node concept="2S6ZIM" id="4IazLL5k54J" role="2ZfVej">
      <node concept="3clFbS" id="4IazLL5k54K" role="2VODD2">
        <node concept="3clFbF" id="4IazLL5k5dz" role="3cqZAp">
          <node concept="Xl_RD" id="4IazLL5k5dy" role="3clFbG">
            <property role="Xl_RC" value="Print Selection." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="4IazLL5k54L" role="2ZfgGD">
      <node concept="3clFbS" id="4IazLL5k54M" role="2VODD2">
        <node concept="3cpWs8" id="4IazLL5kaQG" role="3cqZAp">
          <node concept="3cpWsn" id="4IazLL5kaQH" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="3uibUv" id="4IazLL5kaQI" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="4IazLL5kaZP" role="33vP2m">
              <node concept="1pGfFk" id="4IazLL5kaZO" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="4IazLL5katv" role="3cqZAp">
          <node concept="2GrKxI" id="4IazLL5katw" role="2Gsz3X">
            <property role="TrG5h" value="item" />
          </node>
          <node concept="3clFbS" id="4IazLL5katy" role="2LFqv$">
            <node concept="3clFbF" id="4IazLL5keDW" role="3cqZAp">
              <node concept="2OqwBi" id="4IazLL5keDX" role="3clFbG">
                <node concept="37vLTw" id="4IazLL5keDY" role="2Oq$k0">
                  <ref role="3cqZAo" node="4IazLL5kaQH" resolve="text" />
                </node>
                <node concept="liA8E" id="4IazLL5keDZ" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                  <node concept="2OqwBi" id="4IazLL5keE0" role="37wK5m">
                    <node concept="1PxgMI" id="4IazLL5keE1" role="2Oq$k0">
                      <node concept="chp4Y" id="4IazLL5keE2" role="3oSUPX">
                        <ref role="cht4Q" to="55s9:46b_jc7VwtB" resolve="FeatureType" />
                      </node>
                      <node concept="2GrUjf" id="4IazLL5keE3" role="1m5AlR">
                        <ref role="2Gs0qQ" node="4IazLL5katw" resolve="item" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="4IazLL5keE4" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4IazLL5kb0k" role="3cqZAp">
              <node concept="2OqwBi" id="4IazLL5kbgN" role="3clFbG">
                <node concept="37vLTw" id="4IazLL5kb0j" role="2Oq$k0">
                  <ref role="3cqZAo" node="4IazLL5kaQH" resolve="text" />
                </node>
                <node concept="liA8E" id="4IazLL5kc0A" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                  <node concept="Xl_RD" id="4IazLL5kfmg" role="37wK5m">
                    <property role="Xl_RC" value="," />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4IazLL5k7aT" role="2GsD0m">
            <node concept="2OqwBi" id="4IazLL5k6kE" role="2Oq$k0">
              <node concept="2Sf5sV" id="4IazLL5k693" role="2Oq$k0" />
              <node concept="3TrEf2" id="4IazLL5k6DM" role="2OqNvi">
                <ref role="3Tt5mk" to="55s9:3RQ8TRgFRdF" resolve="features" />
              </node>
            </node>
            <node concept="2qgKlT" id="4IazLL5k7vI" role="2OqNvi">
              <ref role="37wK5l" to="64zb:1IIUr1cItWr" resolve="getSelectedItems" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4IazLL5khIL" role="3cqZAp">
          <node concept="3cpWsn" id="4IazLL5khIO" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="17QB3L" id="4IazLL5khIJ" role="1tU5fm" />
            <node concept="2OqwBi" id="4IazLL5kge3" role="33vP2m">
              <node concept="37vLTw" id="4IazLL5kfVG" role="2Oq$k0">
                <ref role="3cqZAo" node="4IazLL5kaQH" resolve="text" />
              </node>
              <node concept="liA8E" id="4IazLL5khx1" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.toString():java.lang.String" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4IazLL5kisl" role="3cqZAp">
          <node concept="3clFbS" id="4IazLL5kisn" role="3clFbx">
            <node concept="3clFbF" id="4IazLL5kl8i" role="3cqZAp">
              <node concept="37vLTI" id="4IazLL5kpAn" role="3clFbG">
                <node concept="37vLTw" id="4IazLL5kple" role="37vLTJ">
                  <ref role="3cqZAo" node="4IazLL5khIO" resolve="result" />
                </node>
                <node concept="2OqwBi" id="4IazLL5klpy" role="37vLTx">
                  <node concept="37vLTw" id="4IazLL5kl8g" role="2Oq$k0">
                    <ref role="3cqZAo" node="4IazLL5khIO" resolve="result" />
                  </node>
                  <node concept="liA8E" id="4IazLL5kms0" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.substring(int,int):java.lang.String" resolve="substring" />
                    <node concept="3cmrfG" id="4IazLL5kmvV" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cpWsd" id="4IazLL5koEC" role="37wK5m">
                      <node concept="3cmrfG" id="4IazLL5koEI" role="3uHU7w">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="2OqwBi" id="4IazLL5kn4z" role="3uHU7B">
                        <node concept="37vLTw" id="4IazLL5kmJc" role="2Oq$k0">
                          <ref role="3cqZAo" node="4IazLL5khIO" resolve="result" />
                        </node>
                        <node concept="liA8E" id="4IazLL5knWR" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4IazLL5kja$" role="3clFbw">
            <node concept="37vLTw" id="4IazLL5kiDR" role="2Oq$k0">
              <ref role="3cqZAo" node="4IazLL5khIO" resolve="result" />
            </node>
            <node concept="17RvpY" id="4IazLL5kk2_" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="4IazLL5kqa$" role="3cqZAp" />
        <node concept="34ab3g" id="4IazLL5krVD" role="3cqZAp">
          <property role="35gtTG" value="info" />
          <node concept="37vLTw" id="4IazLL5kswU" role="34bqiv">
            <ref role="3cqZAo" node="4IazLL5khIO" resolve="result" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

