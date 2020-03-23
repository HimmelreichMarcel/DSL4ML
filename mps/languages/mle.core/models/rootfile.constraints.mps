<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8bee0d20-63a4-456d-aa63-a4adcf78d5b6(rootfile.constraints)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="4" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="7skk" ref="r:c33d3b05-6327-4bd1-91f0-9c47a8de45f7(rootfile.structure)" implicit="true" />
    <import index="yv47" ref="r:da65683e-ff6f-430d-ab68-32a77df72c93(org.iets3.core.expr.toplevel.structure)" implicit="true" />
    <import index="rzzn" ref="r:76ee21ab-cfc8-4c27-9a60-7dd5562f12aa(rootfile.behavior)" implicit="true" />
    <import index="zzzn" ref="r:af0af2e7-f7e1-4536-83b5-6bf010d4afd2(org.iets3.core.expr.lambda.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
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
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="6702802731807351367" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAChild" flags="in" index="9S07l" />
      <concept id="6702802731807420587" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAParent" flags="ig" index="9SLcT" />
      <concept id="1202989658459" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_parentNode" flags="nn" index="nLn13" />
      <concept id="8966504967485224688" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_contextNode" flags="nn" index="2rP1CM" />
      <concept id="4303308395523343364" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_link" flags="ng" index="2DA6wF" />
      <concept id="6738154313879680265" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_childNode" flags="nn" index="2H4GUG" />
      <concept id="5564765827938091039" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Scope" flags="ig" index="3dgokm" />
      <concept id="1163200647017" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_referenceNode" flags="nn" index="3kakTB" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="6702802731807532712" name="canBeParent" index="9SGkU" />
        <child id="6702802731807737306" name="canBeChild" index="9Vyp8" />
        <child id="1213100494875" name="referent" index="1Mr941" />
      </concept>
      <concept id="1148687176410" name="jetbrains.mps.lang.constraints.structure.NodeReferentConstraint" flags="ng" index="1N5Pfh">
        <reference id="1148687202698" name="applicableLink" index="1N5Vy1" />
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
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="1M2fIO" id="HP8CeVGeZL">
    <property role="3GE5qa" value="section.codeblock" />
    <ref role="1M2myG" to="7skk:4flHrhnC3AH" resolve="CodeBlock" />
    <node concept="9S07l" id="HP8CeVHEY1" role="9Vyp8">
      <node concept="3clFbS" id="HP8CeVHEY2" role="2VODD2">
        <node concept="3clFbF" id="HP8CeVHFeC" role="3cqZAp">
          <node concept="2OqwBi" id="HP8CeVHFOf" role="3clFbG">
            <node concept="nLn13" id="HP8CeVHFeB" role="2Oq$k0" />
            <node concept="1mIQ4w" id="HP8CeVHG55" role="2OqNvi">
              <node concept="chp4Y" id="HP8CeVHGhz" role="cj9EA">
                <ref role="cht4Q" to="7skk:7OzZ9xI8qFl" resolve="Section" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9SLcT" id="pBV22SMsWT" role="9SGkU">
      <node concept="3clFbS" id="pBV22SMsWU" role="2VODD2">
        <node concept="3clFbF" id="pBV22SOyla" role="3cqZAp">
          <node concept="3clFbT" id="pBV22SOyl9" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="HP8CeVI0ne">
    <property role="3GE5qa" value="section.codeblock" />
    <ref role="1M2myG" to="7skk:HP8CeVFunP" resolve="VariableDeclaration" />
  </node>
  <node concept="1M2fIO" id="54xAiUPWrUT">
    <property role="3GE5qa" value="section.ports" />
    <ref role="1M2myG" to="7skk:7OzZ9xI9f2I" resolve="OutPortRef" />
    <node concept="1N5Pfh" id="54xAiUPWrUU" role="1Mr941">
      <ref role="1N5Vy1" to="7skk:7OzZ9xI9f2J" resolve="outport" />
      <node concept="3dgokm" id="54xAiUPWrWW" role="1N6uqs">
        <node concept="3clFbS" id="54xAiUPWrWY" role="2VODD2">
          <node concept="3cpWs8" id="4HDv8l47hwA" role="3cqZAp">
            <node concept="3cpWsn" id="4HDv8l47hwD" role="3cpWs9">
              <property role="TrG5h" value="outports" />
              <node concept="2I9FWS" id="4HDv8l47hw$" role="1tU5fm">
                <ref role="2I9WkF" to="7skk:7OzZ9xI8RgQ" resolve="OutPort" />
              </node>
              <node concept="2ShNRf" id="4HDv8l47idE" role="33vP2m">
                <node concept="2T8Vx0" id="4HDv8l47idC" role="2ShVmc">
                  <node concept="2I9FWS" id="4HDv8l47idD" role="2T96Bj">
                    <ref role="2I9WkF" to="7skk:7OzZ9xI8RgQ" resolve="OutPort" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2Gpval" id="4HDv8l47isY" role="3cqZAp">
            <node concept="2GrKxI" id="4HDv8l47it0" role="2Gsz3X">
              <property role="TrG5h" value="outref" />
            </node>
            <node concept="3clFbS" id="4HDv8l47it4" role="2LFqv$">
              <node concept="3clFbF" id="4HDv8l47kAn" role="3cqZAp">
                <node concept="2OqwBi" id="4HDv8l47mB_" role="3clFbG">
                  <node concept="37vLTw" id="4HDv8l47kAm" role="2Oq$k0">
                    <ref role="3cqZAo" node="4HDv8l47hwD" resolve="outports" />
                  </node>
                  <node concept="TSZUe" id="4HDv8l47pXO" role="2OqNvi">
                    <node concept="2OqwBi" id="4HDv8l47q$N" role="25WWJ7">
                      <node concept="2GrUjf" id="4HDv8l47qdZ" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="4HDv8l47it0" resolve="outref" />
                      </node>
                      <node concept="3TrEf2" id="4HDv8l47qXr" role="2OqNvi">
                        <ref role="3Tt5mk" to="7skk:7OzZ9xI9f2J" resolve="outport" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7OzZ9xI9f5U" role="2GsD0m">
              <node concept="2OqwBi" id="7OzZ9xI9f5V" role="2Oq$k0">
                <node concept="2rP1CM" id="7OzZ9xI9f5W" role="2Oq$k0" />
                <node concept="2Xjw5R" id="7OzZ9xI9f5X" role="2OqNvi">
                  <node concept="1xMEDy" id="7OzZ9xI9f5Y" role="1xVPHs">
                    <node concept="chp4Y" id="54xAiUPWs_K" role="ri$Ld">
                      <ref role="cht4Q" to="7skk:7OzZ9xI8qFl" resolve="Section" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3Tsc0h" id="7OzZ9xI9fvw" role="2OqNvi">
                <ref role="3TtcxE" to="7skk:7OzZ9xI8Rh0" resolve="outports" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4HDv8l47jpY" role="3cqZAp" />
          <node concept="3clFbF" id="54xAiUPWrZR" role="3cqZAp">
            <node concept="2YIFZM" id="7OzZ9xI9f5T" role="3clFbG">
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <node concept="37vLTw" id="4HDv8l47rhx" role="37wK5m">
                <ref role="3cqZAo" node="4HDv8l47hwD" resolve="outports" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="54xAiUPX0ns">
    <property role="3GE5qa" value="section.ports" />
    <ref role="1M2myG" to="7skk:7OzZ9xI8RgJ" resolve="InPort" />
    <node concept="1N5Pfh" id="54xAiUPX0tJ" role="1Mr941">
      <ref role="1N5Vy1" to="7skk:5uKjkG1gJZO" resolve="outport" />
      <node concept="3dgokm" id="54xAiUPX0tL" role="1N6uqs">
        <node concept="3clFbS" id="54xAiUPX0tM" role="2VODD2">
          <node concept="1X3_iC" id="5uKjkG1gL8t" role="lGtFl">
            <property role="3V$3am" value="statement" />
            <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
            <node concept="3clFbF" id="54xAiUPX0wE" role="8Wnug">
              <node concept="2YIFZM" id="5uNOSklfJxh" role="3clFbG">
                <ref role="1Pybhc" to="o8zo:7ipADkTevLm" resolve="SimpleRoleScope" />
                <ref role="37wK5l" to="o8zo:6t3ylNOzI9Y" resolve="forNamedElements" />
                <node concept="2OqwBi" id="5uNOSklfMLm" role="37wK5m">
                  <node concept="3kakTB" id="5uNOSklfM35" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5uNOSklg0Hz" role="2OqNvi">
                    <ref role="3Tt5mk" to="7skk:5uNOSklffsJ" resolve="from" />
                  </node>
                </node>
                <node concept="359W_D" id="5uNOSklg152" role="37wK5m">
                  <ref role="359W_E" to="7skk:7OzZ9xI8qFl" resolve="Section" />
                  <ref role="359W_F" to="7skk:7OzZ9xI8Rh0" resolve="outports" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5uKjkG1gKGz" role="3cqZAp">
            <node concept="3cpWsn" id="5uKjkG1gKGA" role="3cpWs9">
              <property role="TrG5h" value="list" />
              <node concept="2I9FWS" id="5uKjkG1gKGx" role="1tU5fm">
                <ref role="2I9WkF" to="7skk:7OzZ9xI8RgQ" resolve="OutPort" />
              </node>
              <node concept="2ShNRf" id="5uKjkG1gL2x" role="33vP2m">
                <node concept="2T8Vx0" id="5uKjkG1gL2v" role="2ShVmc">
                  <node concept="2I9FWS" id="5uKjkG1gL2w" role="2T96Bj">
                    <ref role="2I9WkF" to="7skk:7OzZ9xI8RgQ" resolve="OutPort" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2Gpval" id="5uKjkG1gLfK" role="3cqZAp">
            <node concept="2GrKxI" id="5uKjkG1gLfM" role="2Gsz3X">
              <property role="TrG5h" value="outRef" />
            </node>
            <node concept="2OqwBi" id="5uKjkG1gMmy" role="2GsD0m">
              <node concept="2OqwBi" id="5uKjkG1gLFQ" role="2Oq$k0">
                <node concept="3kakTB" id="5uKjkG1gLuB" role="2Oq$k0" />
                <node concept="3TrEf2" id="5uKjkG1gLR$" role="2OqNvi">
                  <ref role="3Tt5mk" to="7skk:5uNOSklffsJ" resolve="from" />
                </node>
              </node>
              <node concept="3Tsc0h" id="5uKjkG1gMMi" role="2OqNvi">
                <ref role="3TtcxE" to="7skk:7OzZ9xI8Rh0" resolve="outports" />
              </node>
            </node>
            <node concept="3clFbS" id="5uKjkG1gLfQ" role="2LFqv$">
              <node concept="3clFbF" id="5uKjkG1gMUN" role="3cqZAp">
                <node concept="2OqwBi" id="5uKjkG1gP0I" role="3clFbG">
                  <node concept="37vLTw" id="5uKjkG1gMUM" role="2Oq$k0">
                    <ref role="3cqZAo" node="5uKjkG1gKGA" resolve="list" />
                  </node>
                  <node concept="TSZUe" id="5uKjkG1gSrH" role="2OqNvi">
                    <node concept="2OqwBi" id="5uKjkG1gTbO" role="25WWJ7">
                      <node concept="2GrUjf" id="5uKjkG1gSKt" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="5uKjkG1gLfM" resolve="outRef" />
                      </node>
                      <node concept="3TrEf2" id="5uKjkG1gT_y" role="2OqNvi">
                        <ref role="3Tt5mk" to="7skk:7OzZ9xI9f2J" resolve="outport" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5uKjkG1gV7I" role="3cqZAp">
            <node concept="2YIFZM" id="5uKjkG1h1lU" role="3clFbG">
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <node concept="37vLTw" id="5uKjkG1h1E9" role="37wK5m">
                <ref role="3cqZAo" node="5uKjkG1gKGA" resolve="list" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1N5Pfh" id="54xAiUPX4HC" role="1Mr941">
      <ref role="1N5Vy1" to="7skk:5uNOSklffsJ" resolve="from" />
      <node concept="3dgokm" id="54xAiUPX4Um" role="1N6uqs">
        <node concept="3clFbS" id="54xAiUPX4Un" role="2VODD2">
          <node concept="3cpWs8" id="54xAiUPXcBM" role="3cqZAp">
            <node concept="3cpWsn" id="54xAiUPXcBP" role="3cpWs9">
              <property role="TrG5h" value="sections" />
              <node concept="2I9FWS" id="54xAiUPXcBK" role="1tU5fm" />
              <node concept="2ShNRf" id="54xAiUPXgQh" role="33vP2m">
                <node concept="2T8Vx0" id="54xAiUPXh9y" role="2ShVmc">
                  <node concept="2I9FWS" id="54xAiUPXh9$" role="2T96Bj" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="54xAiUPX8Sm" role="3cqZAp">
            <node concept="3cpWsn" id="54xAiUPX8Sp" role="3cpWs9">
              <property role="TrG5h" value="root" />
              <node concept="3Tqbb2" id="54xAiUPX8Sk" role="1tU5fm" />
              <node concept="2OqwBi" id="54xAiUPX9hH" role="33vP2m">
                <node concept="3kakTB" id="54xAiUPX94Q" role="2Oq$k0" />
                <node concept="2Xjw5R" id="54xAiUPX9F0" role="2OqNvi">
                  <node concept="1xMEDy" id="54xAiUPX9F2" role="1xVPHs">
                    <node concept="chp4Y" id="5W_fQsnbEjc" role="ri$Ld">
                      <ref role="cht4Q" to="yv47:ub9nkyK62f" resolve="Library" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2Gpval" id="54xAiUPXaoF" role="3cqZAp">
            <node concept="2GrKxI" id="54xAiUPXaoH" role="2Gsz3X">
              <property role="TrG5h" value="child" />
            </node>
            <node concept="2OqwBi" id="54xAiUPXaH6" role="2GsD0m">
              <node concept="37vLTw" id="54xAiUPXaw9" role="2Oq$k0">
                <ref role="3cqZAo" node="54xAiUPX8Sp" resolve="root" />
              </node>
              <node concept="32TBzR" id="54xAiUPXaUd" role="2OqNvi" />
            </node>
            <node concept="3clFbS" id="54xAiUPXaoL" role="2LFqv$">
              <node concept="3clFbJ" id="54xAiUPXaYE" role="3cqZAp">
                <node concept="1Wc70l" id="54xAiUPXpue" role="3clFbw">
                  <node concept="2OqwBi" id="54xAiUPXbjy" role="3uHU7B">
                    <node concept="2GrUjf" id="54xAiUPXb7p" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="54xAiUPXaoH" resolve="child" />
                    </node>
                    <node concept="1mIQ4w" id="54xAiUPXb$r" role="2OqNvi">
                      <node concept="chp4Y" id="54xAiUPXbEz" role="cj9EA">
                        <ref role="cht4Q" to="7skk:7OzZ9xI8qFl" resolve="Section" />
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="54xAiUPXACT" role="3uHU7w">
                    <node concept="2GrUjf" id="54xAiUPXsTN" role="3uHU7B">
                      <ref role="2Gs0qQ" node="54xAiUPXaoH" resolve="child" />
                    </node>
                    <node concept="2OqwBi" id="54xAiUPXziy" role="3uHU7w">
                      <node concept="3kakTB" id="54xAiUPXyQe" role="2Oq$k0" />
                      <node concept="2Xjw5R" id="54xAiUPXzTJ" role="2OqNvi">
                        <node concept="1xMEDy" id="54xAiUPXzTL" role="1xVPHs">
                          <node concept="chp4Y" id="54xAiUPX$bI" role="ri$Ld">
                            <ref role="cht4Q" to="7skk:7OzZ9xI8qFl" resolve="Section" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="54xAiUPXaYG" role="3clFbx">
                  <node concept="3clFbF" id="54xAiUPXd$b" role="3cqZAp">
                    <node concept="2OqwBi" id="54xAiUPXeyJ" role="3clFbG">
                      <node concept="37vLTw" id="54xAiUPXd$a" role="2Oq$k0">
                        <ref role="3cqZAo" node="54xAiUPXcBP" resolve="sections" />
                      </node>
                      <node concept="TSZUe" id="54xAiUPXgcb" role="2OqNvi">
                        <node concept="2GrUjf" id="54xAiUPXgqt" role="25WWJ7">
                          <ref role="2Gs0qQ" node="54xAiUPXaoH" resolve="child" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="54xAiUPX8uy" role="3cqZAp">
            <node concept="2YIFZM" id="54xAiUPXi4p" role="3cqZAk">
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <node concept="37vLTw" id="54xAiUPXijg" role="37wK5m">
                <ref role="3cqZAo" node="54xAiUPXcBP" resolve="sections" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="5uKjkG1hsQd">
    <property role="3GE5qa" value="types.feature" />
    <ref role="1M2myG" to="7skk:4O6zKM3EyR8" resolve="FeatureRef" />
    <node concept="1N5Pfh" id="5uKjkG1ht2f" role="1Mr941">
      <ref role="1N5Vy1" to="7skk:4O6zKM3EyR9" resolve="ref" />
      <node concept="3dgokm" id="5uKjkG1ht2l" role="1N6uqs">
        <node concept="3clFbS" id="5uKjkG1ht2n" role="2VODD2">
          <node concept="3cpWs8" id="3GkVXRBQUjH" role="3cqZAp">
            <node concept="3cpWsn" id="3GkVXRBQUjI" role="3cpWs9">
              <property role="TrG5h" value="features" />
              <node concept="3Tqbb2" id="3GkVXRBQUjB" role="1tU5fm">
                <ref role="ehGHo" to="7skk:7OzZ9xI8jbt" resolve="FeaturesetType" />
              </node>
              <node concept="2OqwBi" id="3GkVXRBQUjJ" role="33vP2m">
                <node concept="2OqwBi" id="3GkVXRBQUjK" role="2Oq$k0">
                  <node concept="2rP1CM" id="3GkVXRBQUjL" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="3GkVXRBQUjM" role="2OqNvi">
                    <node concept="1xMEDy" id="3GkVXRBQUjN" role="1xVPHs">
                      <node concept="chp4Y" id="3RQ8TRgHwUq" role="ri$Ld">
                        <ref role="cht4Q" to="7skk:3RQ8TRgHtDx" resolve="IProvideFeatureRefContext" />
                      </node>
                    </node>
                    <node concept="1xIGOp" id="3GkVXRBRa4f" role="1xVPHs" />
                  </node>
                </node>
                <node concept="2qgKlT" id="3RQ8TRgHxcW" role="2OqNvi">
                  <ref role="37wK5l" to="rzzn:3RQ8TRgHtE6" resolve="getFeatureset" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7KbMtvyirs7" role="3cqZAp">
            <node concept="2YIFZM" id="7KbMtvyirB9" role="3clFbG">
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <node concept="2OqwBi" id="7KbMtvyktdP" role="37wK5m">
                <node concept="37vLTw" id="3RQ8TRgHy7U" role="2Oq$k0">
                  <ref role="3cqZAo" node="3GkVXRBQUjI" resolve="features" />
                </node>
                <node concept="3Tsc0h" id="7KbMtvykxQ4" role="2OqNvi">
                  <ref role="3TtcxE" to="7skk:5c6KWTiqlNT" resolve="coll" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="1EO_bV9Hq8c">
    <property role="3GE5qa" value="section.codeblock" />
    <ref role="1M2myG" to="7skk:1EO_bV9G$FR" resolve="MLEVariableReference" />
    <node concept="1N5Pfh" id="1EO_bV9Hq8d" role="1Mr941">
      <ref role="1N5Vy1" to="zzzn:49WTic8iI9_" resolve="val" />
      <node concept="3dgokm" id="1EO_bV9Hq8j" role="1N6uqs">
        <node concept="3clFbS" id="1EO_bV9Hq8l" role="2VODD2">
          <node concept="3clFbF" id="1EO_bV9Hqbh" role="3cqZAp">
            <node concept="2YIFZM" id="1EO_bV9HwuY" role="3clFbG">
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <node concept="2OqwBi" id="1EO_bV9Htsb" role="37wK5m">
                <node concept="2OqwBi" id="fN3qU6GtvT" role="2Oq$k0">
                  <node concept="2OqwBi" id="1EO_bV9HrgB" role="2Oq$k0">
                    <node concept="2OqwBi" id="1EO_bV9HqkC" role="2Oq$k0">
                      <node concept="2rP1CM" id="1EO_bV9Hqbg" role="2Oq$k0" />
                      <node concept="2Xjw5R" id="1EO_bV9Hqxe" role="2OqNvi">
                        <node concept="1xMEDy" id="1EO_bV9Hqxg" role="1xVPHs">
                          <node concept="chp4Y" id="1EO_bV9HqA3" role="ri$Ld">
                            <ref role="cht4Q" to="7skk:7OzZ9xI8qFl" resolve="Section" />
                          </node>
                        </node>
                        <node concept="1xIGOp" id="1EO_bV9HqPX" role="1xVPHs" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="fN3qU6GsBr" role="2OqNvi">
                      <ref role="3Tt5mk" to="7skk:7OzZ9xI8qH5" resolve="block" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="5W_fQsnbFUf" role="2OqNvi">
                    <ref role="3TtcxE" to="zzzn:49WTic8ig5E" resolve="expressions" />
                  </node>
                </node>
                <node concept="3zZkjj" id="1EO_bV9Huvq" role="2OqNvi">
                  <node concept="1bVj0M" id="1EO_bV9Huvs" role="23t8la">
                    <node concept="3clFbS" id="1EO_bV9Huvt" role="1bW5cS">
                      <node concept="3clFbF" id="1EO_bV9HuFF" role="3cqZAp">
                        <node concept="2OqwBi" id="1EO_bV9HuV0" role="3clFbG">
                          <node concept="37vLTw" id="1EO_bV9HuFE" role="2Oq$k0">
                            <ref role="3cqZAo" node="1EO_bV9Huvu" resolve="it" />
                          </node>
                          <node concept="1mIQ4w" id="1EO_bV9Hvia" role="2OqNvi">
                            <node concept="chp4Y" id="1EO_bV9Hvyj" role="cj9EA">
                              <ref role="cht4Q" to="7skk:HP8CeVFunP" resolve="VariableDeclaration" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="1EO_bV9Huvu" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="1EO_bV9Huvv" role="1tU5fm" />
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
  <node concept="1M2fIO" id="3V9DB0d7ExV">
    <property role="3GE5qa" value="section.ports" />
    <ref role="1M2myG" to="7skk:7OzZ9xI99S_" resolve="InPortRef" />
    <node concept="1N5Pfh" id="3V9DB0d7EDp" role="1Mr941">
      <ref role="1N5Vy1" to="7skk:7OzZ9xI99SG" resolve="inport" />
      <node concept="3dgokm" id="3V9DB0d7EDs" role="1N6uqs">
        <node concept="3clFbS" id="3V9DB0d7EDt" role="2VODD2">
          <node concept="3clFbF" id="7OzZ9xI9dqB" role="3cqZAp">
            <node concept="2YIFZM" id="7OzZ9xI9dEU" role="3clFbG">
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <node concept="2OqwBi" id="7OzZ9xI9ezw" role="37wK5m">
                <node concept="2OqwBi" id="7OzZ9xI9dVk" role="2Oq$k0">
                  <node concept="2rP1CM" id="7OzZ9xI9dJ9" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="7OzZ9xI9eb6" role="2OqNvi">
                    <node concept="1xMEDy" id="7OzZ9xI9eb8" role="1xVPHs">
                      <node concept="chp4Y" id="3V9DB0d7FzT" role="ri$Ld">
                        <ref role="cht4Q" to="7skk:7OzZ9xI8qFl" resolve="Section" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3Tsc0h" id="7OzZ9xI9eTG" role="2OqNvi">
                  <ref role="3TtcxE" to="7skk:7OzZ9xI8RgX" resolve="inports" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="pBV22SKUXV">
    <property role="3GE5qa" value="expressions" />
    <ref role="1M2myG" to="7skk:7OzZ9xI8gnb" resolve="LoadExpr" />
    <node concept="9SLcT" id="pBV22SKZzF" role="9SGkU">
      <node concept="3clFbS" id="pBV22SKZzG" role="2VODD2">
        <node concept="3clFbJ" id="pBV22SKV55" role="3cqZAp">
          <node concept="2OqwBi" id="pBV22SKZQy" role="3clFbw">
            <node concept="2DA6wF" id="pBV22SKXHC" role="2Oq$k0" />
            <node concept="liA8E" id="pBV22SKZQ_" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="359W_D" id="pBV22SKXs2" role="37wK5m">
                <ref role="359W_E" to="7skk:7OzZ9xI8gnb" resolve="LoadExpr" />
                <ref role="359W_F" to="zzzn:49WTic8ix6L" resolve="expr" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="pBV22SKV57" role="3clFbx">
            <node concept="3cpWs6" id="pBV22SLMeW" role="3cqZAp">
              <node concept="3clFbT" id="pBV22SLMCD" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
            <node concept="1X3_iC" id="pBV22SLMPA" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3cpWs6" id="pBV22SKZl3" role="8Wnug">
                <node concept="2OqwBi" id="pBV22SL0xe" role="3cqZAk">
                  <node concept="2H4GUG" id="pBV22SKZYO" role="2Oq$k0" />
                  <node concept="1mIQ4w" id="pBV22SL0MH" role="2OqNvi">
                    <node concept="chp4Y" id="pBV22SL0Wo" role="cj9EA">
                      <ref role="cht4Q" to="7skk:pBV22SKUXx" resolve="AbstractLoaderExpr" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="pBV22SKYOg" role="9aQIa">
            <node concept="3clFbS" id="pBV22SKYOh" role="9aQI4">
              <node concept="3cpWs6" id="pBV22SKYZs" role="3cqZAp">
                <node concept="3clFbT" id="pBV22SKZdK" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="pBV22SPAzH">
    <property role="3GE5qa" value="expressions" />
    <ref role="1M2myG" to="7skk:5c6KWTiqUTB" resolve="PrintExpr" />
    <node concept="9SLcT" id="pBV22SPAET" role="9SGkU">
      <node concept="3clFbS" id="pBV22SPAEU" role="2VODD2">
        <node concept="3SKdUt" id="pBV22SQ4Hf" role="3cqZAp">
          <node concept="3SKdUq" id="pBV22SQ4Hh" role="3SKWNk">
            <property role="3SKdUp" value="TODO: " />
          </node>
        </node>
        <node concept="3clFbF" id="pBV22SPAM3" role="3cqZAp">
          <node concept="2OqwBi" id="pBV22SPB15" role="3clFbG">
            <node concept="2OqwBi" id="pBV22SPWCP" role="2Oq$k0">
              <node concept="2OqwBi" id="pBV22SPPqu" role="2Oq$k0">
                <node concept="1PxgMI" id="pBV22SPOST" role="2Oq$k0">
                  <node concept="chp4Y" id="pBV22SPP1p" role="3oSUPX">
                    <ref role="cht4Q" to="7skk:1EO_bV9G$FR" resolve="MLEVariableReference" />
                  </node>
                  <node concept="2H4GUG" id="pBV22SPAM2" role="1m5AlR" />
                </node>
                <node concept="3TrEf2" id="pBV22SPPTp" role="2OqNvi">
                  <ref role="3Tt5mk" to="zzzn:49WTic8iI9_" resolve="val" />
                </node>
              </node>
              <node concept="3TrEf2" id="pBV22SPXgE" role="2OqNvi">
                <ref role="3Tt5mk" to="hm2y:69zaTr1EKHX" resolve="type" />
              </node>
            </node>
            <node concept="1mIQ4w" id="pBV22SPBhQ" role="2OqNvi">
              <node concept="chp4Y" id="pBV22SPBui" role="cj9EA">
                <ref role="cht4Q" to="7skk:4TFMgV46qb6" resolve="IProvideSectionOutput" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="pBV22SQ8w4" role="3cqZAp">
          <node concept="3clFbT" id="pBV22SQ93G" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

