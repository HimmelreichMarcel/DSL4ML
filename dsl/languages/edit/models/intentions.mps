<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:580e3eb5-ae8d-4d04-9200-164c30e88f1f(edit.intentions)">
  <persistence version="9" />
  <languages>
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="bxmu" ref="r:2caa4bf2-77af-43e0-8e72-8a12a8978a06(edit.structure)" implicit="true" />
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
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
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
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
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
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
  <node concept="2S6QgY" id="6kn8py6iukQ">
    <property role="TrG5h" value="GetCommand" />
    <ref role="2ZfgGC" to="bxmu:7WePDBhhPDV" resolve="AbstractEditingStatment" />
    <node concept="2S6ZIM" id="6kn8py6iukR" role="2ZfVej">
      <node concept="3clFbS" id="6kn8py6iukS" role="2VODD2">
        <node concept="3clFbF" id="6kn8py6iutD" role="3cqZAp">
          <node concept="Xl_RD" id="6kn8py6iutC" role="3clFbG">
            <property role="Xl_RC" value="Get Command" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="6kn8py6iukT" role="2ZfgGD">
      <node concept="3clFbS" id="6kn8py6iukU" role="2VODD2">
        <node concept="3cpWs8" id="1pFVOLkFjAo" role="3cqZAp">
          <node concept="3cpWsn" id="1pFVOLkFjAr" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="17QB3L" id="1pFVOLkFjAm" role="1tU5fm" />
            <node concept="Xl_RD" id="1pFVOLkFl$r" role="33vP2m">
              <property role="Xl_RC" value="Result: " />
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
                <node concept="2GrUjf" id="1pFVOLkFlVT" role="37vLTx">
                  <ref role="2Gs0qQ" node="1pFVOLkFksm" resolve="cmd" />
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
        <node concept="34ab3g" id="6kn8py6jGnE" role="3cqZAp">
          <property role="35gtTG" value="info" />
          <node concept="37vLTw" id="6kn8py6jG$c" role="34bqiv">
            <ref role="3cqZAo" node="1pFVOLkFjAr" resolve="text" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

