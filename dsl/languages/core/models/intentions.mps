<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2eebefca-8cf9-4b7d-b2c2-bf6d67ffea4b(core.intentions)">
  <persistence version="9" />
  <languages>
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="0" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="jkny" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.wm(MPS.IDEA/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="2ahs" ref="r:ea6cf71d-29d2-478d-8027-a9f4a4de53c4(com.mbeddr.mpsutil.interpreter.rt)" />
    <import index="zzzn" ref="r:af0af2e7-f7e1-4536-83b5-6bf010d4afd2(org.iets3.core.expr.lambda.structure)" />
    <import index="pbu6" ref="r:83e946de-2a7f-4a4c-b3c9-4f671aa7f2db(org.iets3.core.expr.base.behavior)" />
    <import index="essy" ref="r:d68f6ef3-d056-4719-85f3-ab26e4e8979e(requests.classes)" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" implicit="true" />
    <import index="71xd" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.tools(MPS.Platform/)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="rzzn" ref="r:76ee21ab-cfc8-4c27-9a60-7dd5562f12aa(rootfile.behavior)" implicit="true" />
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" implicit="true" />
    <import index="ja9q" ref="r:fc597f30-d1d1-4d82-975e-209a1fdb1f96(statements.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts">
      <concept id="1194033889146" name="jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1XNTG" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
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
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
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
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
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
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
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
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
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
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1227022210526" name="jetbrains.mps.baseLanguage.collections.structure.ClearAllElementsOperation" flags="nn" index="2Kehj3" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="2S6QgY" id="7sjoTLguFKU">
    <property role="3GE5qa" value="file" />
    <property role="TrG5h" value="OpenDetailedView" />
    <ref role="2ZfgGC" to="5frd:2$uHlqSzhDy" resolve="File" />
    <node concept="2S6ZIM" id="7sjoTLguFKV" role="2ZfVej">
      <node concept="3clFbS" id="7sjoTLguFKW" role="2VODD2">
        <node concept="3clFbF" id="7sjoTLguGI7" role="3cqZAp">
          <node concept="Xl_RD" id="7sjoTLguGI6" role="3clFbG">
            <property role="Xl_RC" value="Open detailed view" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="7sjoTLguFKX" role="2ZfgGD">
      <node concept="3clFbS" id="7sjoTLguFKY" role="2VODD2">
        <node concept="3cpWs8" id="24cUtD3KuhA" role="3cqZAp">
          <node concept="3cpWsn" id="24cUtD3KuhB" role="3cpWs9">
            <property role="TrG5h" value="inspectorTool" />
            <node concept="3uibUv" id="24cUtD3KuhC" role="1tU5fm">
              <ref role="3uigEE" to="exr9:~InspectorTool" resolve="InspectorTool" />
            </node>
            <node concept="2OqwBi" id="24cUtD3KDHy" role="33vP2m">
              <node concept="2OqwBi" id="24cUtD3KDn1" role="2Oq$k0">
                <node concept="1XNTG" id="24cUtD3KDhc" role="2Oq$k0" />
                <node concept="liA8E" id="24cUtD3KDB6" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.getOperationContext():jetbrains.mps.smodel.IOperationContext" resolve="getOperationContext" />
                </node>
              </node>
              <node concept="liA8E" id="24cUtD3KDYT" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~IOperationContext.getComponent(java.lang.Class):java.lang.Object" resolve="getComponent" />
                <node concept="3VsKOn" id="24cUtD3KF7q" role="37wK5m">
                  <ref role="3VsUkX" to="exr9:~InspectorTool" resolve="InspectorTool" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="24cUtD3KFgi" role="3cqZAp">
          <node concept="2OqwBi" id="24cUtD3KJoL" role="3clFbG">
            <node concept="2OqwBi" id="24cUtD3KFDf" role="2Oq$k0">
              <node concept="37vLTw" id="24cUtD3KFgg" role="2Oq$k0">
                <ref role="3cqZAo" node="24cUtD3KuhB" resolve="inspectorTool" />
              </node>
              <node concept="liA8E" id="24cUtD3KGxA" role="2OqNvi">
                <ref role="37wK5l" to="71xd:~BaseTool.getToolWindow():com.intellij.openapi.wm.ToolWindow" resolve="getToolWindow" />
              </node>
            </node>
            <node concept="liA8E" id="24cUtD3KJX3" role="2OqNvi">
              <ref role="37wK5l" to="jkny:~ToolWindow.setAnchor(com.intellij.openapi.wm.ToolWindowAnchor,java.lang.Runnable):void" resolve="setAnchor" />
              <node concept="10M0yZ" id="24cUtD3KL67" role="37wK5m">
                <ref role="3cqZAo" to="jkny:~ToolWindowAnchor.RIGHT" resolve="RIGHT" />
                <ref role="1PxDUh" to="jkny:~ToolWindowAnchor" resolve="ToolWindowAnchor" />
              </node>
              <node concept="2ShNRf" id="24cUtD3KLnr" role="37wK5m">
                <node concept="YeOm9" id="24cUtD3KZpQ" role="2ShVmc">
                  <node concept="1Y3b0j" id="24cUtD3KZpT" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="24cUtD3KZpU" role="1B3o_S" />
                    <node concept="3clFb_" id="24cUtD3KZpV" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="run" />
                      <property role="DiZV1" value="false" />
                      <property role="od$2w" value="false" />
                      <node concept="3Tm1VV" id="24cUtD3KZpW" role="1B3o_S" />
                      <node concept="3cqZAl" id="24cUtD3KZpY" role="3clF45" />
                      <node concept="3clFbS" id="24cUtD3KZpZ" role="3clF47" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="24cUtD3KFen" role="3cqZAp" />
        <node concept="3clFbF" id="7sjoTLguZAf" role="3cqZAp">
          <node concept="2OqwBi" id="7sjoTLguZGH" role="3clFbG">
            <node concept="1XNTG" id="7sjoTLguZAd" role="2Oq$k0" />
            <node concept="liA8E" id="7sjoTLguZWY" role="2OqNvi">
              <ref role="37wK5l" to="cj4x:~EditorContext.openInspector():void" resolve="openInspector" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="36zsy7FB06y">
    <property role="3GE5qa" value="section" />
    <property role="TrG5h" value="RunSection" />
    <property role="2ZfUl0" value="true" />
    <ref role="2ZfgGC" to="5frd:2$uHlqSzbou" resolve="Section" />
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
        <node concept="1X3_iC" id="57k_vxn0VT1" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbJ" id="3L7XVs4JyoY" role="8Wnug">
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
        </node>
        <node concept="3clFbH" id="3L7XVs4JxVF" role="3cqZAp" />
        <node concept="3SKdUt" id="57k_vxn13N4" role="3cqZAp">
          <node concept="3SKdUq" id="57k_vxn13N6" role="3SKWNk">
            <property role="3SKdUp" value="condition: " />
          </node>
        </node>
        <node concept="1X3_iC" id="57k_vxn19ep" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="57k_vxn16ET" role="8Wnug">
            <node concept="2OqwBi" id="2O8mcPFwzq4" role="3clFbG">
              <node concept="2Sf5sV" id="2O8mcPFwzbQ" role="2Oq$k0" />
              <node concept="2qgKlT" id="2O8mcPFw$RF" role="2OqNvi">
                <ref role="37wK5l" to="rzzn:2O8mcPFwzJp" resolve="readyToRun" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2O8mcPFwzbr" role="3cqZAp">
          <node concept="3clFbS" id="2O8mcPFwzbt" role="3clFbx">
            <node concept="3clFbF" id="6Iu9bl6tCNP" role="3cqZAp">
              <node concept="2OqwBi" id="6Iu9bl6tFpB" role="3clFbG">
                <node concept="2OqwBi" id="6Iu9bl6tD9U" role="2Oq$k0">
                  <node concept="2Sf5sV" id="6Iu9bl6tCNN" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="6Iu9bl6tDA8" role="2OqNvi">
                    <ref role="3TtcxE" to="5frd:2$uHlqTwMzG" resolve="results" />
                  </node>
                </node>
                <node concept="2Kehj3" id="6Iu9bl6tIIZ" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbF" id="4_Ybdo9LyET" role="3cqZAp">
              <node concept="2OqwBi" id="4_Ybdo9L_5X" role="3clFbG">
                <node concept="2Sf5sV" id="4_Ybdo9LyER" role="2Oq$k0" />
                <node concept="2qgKlT" id="4_Ybdo9LE6V" role="2OqNvi">
                  <ref role="37wK5l" to="64zb:2kN28RP5ZOg" resolve="reloadInports" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4k$35jXOQV0" role="3cqZAp" />
            <node concept="3SKdUt" id="4k$35jXPycI" role="3cqZAp">
              <node concept="3SKdUq" id="4k$35jXPycK" role="3SKWNk">
                <property role="3SKdUp" value="prepare interpreter" />
              </node>
            </node>
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
                      <property role="Xl_RC" value="arithmetic" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6uXN529cfPU" role="3cqZAp">
              <node concept="3cpWsn" id="6uXN529cfPV" role="3cpWs9">
                <property role="TrG5h" value="context" />
                <node concept="3uibUv" id="1cFlTWMac0f" role="1tU5fm">
                  <ref role="3uigEE" to="essy:1cFlTWM6so1" resolve="MLEContext" />
                </node>
                <node concept="2ShNRf" id="4Ue$l7tawkr" role="33vP2m">
                  <node concept="1pGfFk" id="1cFlTWMaq4E" role="2ShVmc">
                    <ref role="37wK5l" to="essy:1cFlTWM6ymP" resolve="MLEContext" />
                    <node concept="3clFbT" id="1cFlTWMaqsv" role="37wK5m">
                      <property role="3clFbU" value="false" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2xc7vlk8vu$" role="3cqZAp" />
            <node concept="3SKdUt" id="2t3FM7g8NOm" role="3cqZAp">
              <node concept="3SKdUq" id="2t3FM7g8NOo" role="3SKWNk">
                <property role="3SKdUp" value="load inports" />
              </node>
            </node>
            <node concept="2Gpval" id="2t3FM7g8OlX" role="3cqZAp">
              <node concept="2GrKxI" id="2t3FM7g8OlZ" role="2Gsz3X">
                <property role="TrG5h" value="inport" />
              </node>
              <node concept="2OqwBi" id="2t3FM7g8PlN" role="2GsD0m">
                <node concept="2Sf5sV" id="4k$35jXPay2" role="2Oq$k0" />
                <node concept="3Tsc0h" id="2t3FM7g8PWx" role="2OqNvi">
                  <ref role="3TtcxE" to="5frd:2$uHlqTwKJO" resolve="inports" />
                </node>
              </node>
              <node concept="3clFbS" id="2t3FM7g8Om3" role="2LFqv$">
                <node concept="3clFbF" id="2t3FM7g8QcY" role="3cqZAp">
                  <node concept="2OqwBi" id="2t3FM7g8Qi$" role="3clFbG">
                    <node concept="37vLTw" id="2t3FM7g8QcX" role="2Oq$k0">
                      <ref role="3cqZAo" node="7VOscSoFAsf" resolve="evaluator" />
                    </node>
                    <node concept="liA8E" id="2t3FM7g8Q$H" role="2OqNvi">
                      <ref role="37wK5l" to="2ahs:6iqfHNCcJ7_" resolve="evaluateWithContext" />
                      <node concept="2GrUjf" id="2t3FM7g8QAM" role="37wK5m">
                        <ref role="2Gs0qQ" node="2t3FM7g8OlZ" resolve="inport" />
                      </node>
                      <node concept="37vLTw" id="2t3FM7g8QXG" role="37wK5m">
                        <ref role="3cqZAo" node="6uXN529cfPV" resolve="context" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4k$35jXP3c2" role="3cqZAp" />
            <node concept="3SKdUt" id="4k$35jXPtd$" role="3cqZAp">
              <node concept="3SKdUq" id="4k$35jXPtdA" role="3SKWNk">
                <property role="3SKdUp" value="evaluate statements" />
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
                <property role="TrG5h" value="expr" />
              </node>
              <node concept="2OqwBi" id="4fA_w_sq1Fu" role="2GsD0m">
                <node concept="2OqwBi" id="fN3qU6GMW2" role="2Oq$k0">
                  <node concept="2OqwBi" id="5XJYTS2EtsT" role="2Oq$k0">
                    <node concept="2Sf5sV" id="57k_vxn1PDk" role="2Oq$k0" />
                    <node concept="3TrEf2" id="57k_vxn1Qdq" role="2OqNvi">
                      <ref role="3Tt5mk" to="5frd:2$uHlqTwM8L" resolve="codeblock" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="57k_vxn1QIk" role="2OqNvi">
                    <ref role="3TtcxE" to="zzzn:49WTic8ig5E" resolve="expressions" />
                  </node>
                </node>
                <node concept="3zZkjj" id="4fA_w_sq3Un" role="2OqNvi">
                  <node concept="1bVj0M" id="4fA_w_sq3Up" role="23t8la">
                    <node concept="3clFbS" id="4fA_w_sq3Uq" role="1bW5cS">
                      <node concept="3clFbF" id="4fA_w_sq683" role="3cqZAp">
                        <node concept="3fqX7Q" id="4fA_w_sq8ur" role="3clFbG">
                          <node concept="2OqwBi" id="4fA_w_sq8ut" role="3fr31v">
                            <node concept="1mIQ4w" id="4fA_w_sq8uu" role="2OqNvi">
                              <node concept="chp4Y" id="3KhNVPN0LY0" role="cj9EA">
                                <ref role="cht4Q" to="ja9q:4rZ4tH4gay8" resolve="VisibleStructureStatement" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="4fA_w_sq8uw" role="2Oq$k0">
                              <ref role="3cqZAo" node="4fA_w_sq3Ur" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="4fA_w_sq3Ur" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="4fA_w_sq3Us" role="1tU5fm" />
                    </node>
                  </node>
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
                        <ref role="37wK5l" to="2ahs:6iqfHNCcJ7_" resolve="evaluateWithContext" />
                        <node concept="2GrUjf" id="5XJYTS2EPmJ" role="37wK5m">
                          <ref role="2Gs0qQ" node="5XJYTS2EqSl" resolve="expr" />
                        </node>
                        <node concept="37vLTw" id="1MGGFP5LAKL" role="37wK5m">
                          <ref role="3cqZAo" node="6uXN529cfPV" resolve="context" />
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
            <node concept="3clFbH" id="1cFlTWMayLv" role="3cqZAp" />
            <node concept="3SKdUt" id="4k$35jXPL4J" role="3cqZAp">
              <node concept="3SKdUq" id="4k$35jXPL4L" role="3SKWNk">
                <property role="3SKdUp" value="clear temp vars on server" />
              </node>
            </node>
            <node concept="1X3_iC" id="4k$35jXPZZY" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3cpWs8" id="3rycTsjDZxg" role="8Wnug">
                <node concept="3cpWsn" id="3rycTsjDZxh" role="3cpWs9">
                  <property role="TrG5h" value="runner" />
                  <node concept="3uibUv" id="3rycTsjDZxi" role="1tU5fm">
                    <ref role="3uigEE" to="essy:4Oj5iGcyQsW" resolve="RequestRunner" />
                  </node>
                  <node concept="2ShNRf" id="3rycTsjE22O" role="33vP2m">
                    <node concept="1pGfFk" id="3rycTsjE21n" role="2ShVmc">
                      <ref role="37wK5l" to="essy:4Oj5iGcyQzG" resolve="RequestRunner" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="4k$35jXQ2uM" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3clFbF" id="3rycTsjE4wu" role="8Wnug">
                <node concept="2OqwBi" id="3rycTsjE6Qj" role="3clFbG">
                  <node concept="37vLTw" id="3rycTsjE4ws" role="2Oq$k0">
                    <ref role="3cqZAo" node="3rycTsjDZxh" resolve="runner" />
                  </node>
                  <node concept="liA8E" id="3rycTsjE7pJ" role="2OqNvi">
                    <ref role="37wK5l" to="essy:4Oj5iGczvh2" resolve="runRequest" />
                    <node concept="Xl_RD" id="3rycTsjE7rc" role="37wK5m">
                      <property role="Xl_RC" value="end" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4k$35jXPSv5" role="3cqZAp" />
          </node>
          <node concept="3clFbT" id="57k_vxn1bMF" role="3clFbw">
            <property role="3clFbU" value="true" />
          </node>
        </node>
        <node concept="3SKdUt" id="57k_vxn1r7D" role="3cqZAp">
          <node concept="3SKdUq" id="57k_vxn1r7F" role="3SKWNk">
            <property role="3SKdUp" value="else block" />
          </node>
        </node>
        <node concept="1X3_iC" id="57k_vxn1jWD" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="2O8mcPFxwOC" role="8Wnug">
            <node concept="2YIFZM" id="2O8mcPFxwOD" role="3clFbG">
              <ref role="1Pybhc" to="dxuu:~JOptionPane" resolve="JOptionPane" />
              <ref role="37wK5l" to="dxuu:~JOptionPane.showMessageDialog(java.awt.Component,java.lang.Object,java.lang.String,int):void" resolve="showMessageDialog" />
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
                <ref role="1PxDUh" to="dxuu:~JOptionPane" resolve="JOptionPane" />
                <ref role="3cqZAo" to="dxuu:~JOptionPane.INFORMATION_MESSAGE" resolve="INFORMATION_MESSAGE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="57k_vxn1mkR" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="2O8mcPFxwOq" role="8Wnug">
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
        </node>
        <node concept="3clFbH" id="36zsy7FB0PT" role="3cqZAp" />
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="37IcDEOYACm">
    <property role="3GE5qa" value="file" />
    <property role="TrG5h" value="RevealTypes" />
    <ref role="2ZfgGC" to="5frd:2$uHlqSzhDy" resolve="File" />
    <node concept="2S6ZIM" id="37IcDEOYACn" role="2ZfVej">
      <node concept="3clFbS" id="37IcDEOYACo" role="2VODD2">
        <node concept="3clFbJ" id="37IcDEOYHfR" role="3cqZAp">
          <node concept="2OqwBi" id="37IcDEOYNCH" role="3clFbw">
            <node concept="2Sf5sV" id="37IcDEOYNfO" role="2Oq$k0" />
            <node concept="3TrcHB" id="37IcDEOYOQ8" role="2OqNvi">
              <ref role="3TsBF5" to="5frd:37IcDEOYvS0" resolve="revealTypes" />
            </node>
          </node>
          <node concept="3clFbS" id="37IcDEOYHfT" role="3clFbx">
            <node concept="3cpWs6" id="37IcDEOYS4D" role="3cqZAp">
              <node concept="Xl_RD" id="37IcDEOYSt9" role="3cqZAk">
                <property role="Xl_RC" value="Hide Types " />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="37IcDEOYU$A" role="9aQIa">
            <node concept="3clFbS" id="37IcDEOYU$B" role="9aQI4">
              <node concept="3cpWs6" id="37IcDEOYUL2" role="3cqZAp">
                <node concept="Xl_RD" id="37IcDEOYV6i" role="3cqZAk">
                  <property role="Xl_RC" value="Reveal Types" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="37IcDEOYACp" role="2ZfgGD">
      <node concept="3clFbS" id="37IcDEOYACq" role="2VODD2">
        <node concept="3clFbF" id="37IcDEOYWE1" role="3cqZAp">
          <node concept="37vLTI" id="37IcDEOYYKE" role="3clFbG">
            <node concept="3fqX7Q" id="37IcDEOYYS_" role="37vLTx">
              <node concept="2OqwBi" id="37IcDEOYZlv" role="3fr31v">
                <node concept="2Sf5sV" id="37IcDEOYZ0r" role="2Oq$k0" />
                <node concept="3TrcHB" id="37IcDEOZ0yf" role="2OqNvi">
                  <ref role="3TsBF5" to="5frd:37IcDEOYvS0" resolve="revealTypes" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="37IcDEOYWVf" role="37vLTJ">
              <node concept="2Sf5sV" id="37IcDEOYWE0" role="2Oq$k0" />
              <node concept="3TrcHB" id="37IcDEOYY0H" role="2OqNvi">
                <ref role="3TsBF5" to="5frd:37IcDEOYvS0" resolve="revealTypes" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="MS2eiU5rdQ">
    <property role="3GE5qa" value="section.ports" />
    <property role="TrG5h" value="ReloadInports" />
    <ref role="2ZfgGC" to="5frd:2$uHlqTwKh_" resolve="Inport" />
    <node concept="2S6ZIM" id="MS2eiU5rdR" role="2ZfVej">
      <node concept="3clFbS" id="MS2eiU5rdS" role="2VODD2">
        <node concept="3clFbF" id="MS2eiU5$$4" role="3cqZAp">
          <node concept="Xl_RD" id="MS2eiU5$$3" role="3clFbG">
            <property role="Xl_RC" value="Reload Inports" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="MS2eiU5rdT" role="2ZfgGD">
      <node concept="3clFbS" id="MS2eiU5rdU" role="2VODD2">
        <node concept="3clFbF" id="MS2eiU5_6b" role="3cqZAp">
          <node concept="2OqwBi" id="MS2eiU5Aj9" role="3clFbG">
            <node concept="2OqwBi" id="MS2eiU5_j5" role="2Oq$k0">
              <node concept="2Sf5sV" id="MS2eiU5_6a" role="2Oq$k0" />
              <node concept="2Xjw5R" id="MS2eiU5A32" role="2OqNvi">
                <node concept="1xMEDy" id="MS2eiU5A34" role="1xVPHs">
                  <node concept="chp4Y" id="MS2eiU5A5i" role="ri$Ld">
                    <ref role="cht4Q" to="5frd:2$uHlqSzbou" resolve="Section" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2qgKlT" id="MS2eiU5AFR" role="2OqNvi">
              <ref role="37wK5l" to="64zb:2kN28RP5ZOg" resolve="reloadInports" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

