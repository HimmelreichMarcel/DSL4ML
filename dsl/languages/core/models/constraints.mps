<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:141d1300-09a8-43ff-b91c-db30e8f49024(core.constraints)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="4" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="yv47" ref="r:da65683e-ff6f-430d-ab68-32a77df72c93(org.iets3.core.expr.toplevel.structure)" />
    <import index="zzzn" ref="r:af0af2e7-f7e1-4536-83b5-6bf010d4afd2(org.iets3.core.expr.lambda.structure)" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="f7i1" ref="r:9f02c0c5-f908-49ca-b986-ba31e3901887(copy.structure)" />
    <import index="pz2c" ref="r:2a308ea0-c7e3-4fa5-a624-ad74ee5cfab5(jetbrains.mps.baseLanguage.util)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="25x5" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.text(JDK/)" />
    <import index="w3db" ref="r:372863d1-da2c-4d51-9ce5-ef15e0220a9a(split.structure)" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" />
    <import index="ja9q" ref="r:fc597f30-d1d1-4d82-975e-209a1fdb1f96(statements.structure)" implicit="true" />
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" implicit="true" />
    <import index="jqrd" ref="r:a86b5aa2-977c-4dd4-975b-865365d5871c(types.structure)" implicit="true" />
    <import index="w8ws" ref="r:371ff547-5eea-4440-a0bb-93d0be22bfcb(statements.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
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
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
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
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
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
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
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
      <concept id="6702802731807424858" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAnAncestor" flags="in" index="9SQb8" />
      <concept id="1202989658459" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_parentNode" flags="nn" index="nLn13" />
      <concept id="8966504967485224688" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_contextNode" flags="nn" index="2rP1CM" />
      <concept id="4303308395523343364" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_link" flags="ng" index="2DA6wF" />
      <concept id="4303308395523096213" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_childConcept" flags="ng" index="2DD5aU" />
      <concept id="6738154313879680265" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_childNode" flags="nn" index="2H4GUG" />
      <concept id="5564765827938091039" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Scope" flags="ig" index="3dgokm" />
      <concept id="1163200647017" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_referenceNode" flags="nn" index="3kakTB" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="6702802731807532730" name="canBeAncestor" index="9SGkC" />
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
      <concept id="1181949435690" name="jetbrains.mps.lang.smodel.structure.Concept_NewInstance" flags="nn" index="LFhST" />
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1227264722563" name="jetbrains.mps.lang.smodel.structure.EqualsStructurallyExpression" flags="nn" index="2YFouu" />
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
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
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
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
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="9042586985346099698" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachStatement" flags="nn" index="1_o_46">
        <child id="9042586985346099734" name="forEach" index="1_o_by" />
      </concept>
      <concept id="9042586985346099733" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachPair" flags="ng" index="1_o_bx">
        <child id="9042586985346099778" name="variable" index="1_o_aQ" />
        <child id="9042586985346099735" name="input" index="1_o_bz" />
      </concept>
      <concept id="9042586985346099736" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachVariable" flags="ng" index="1_o_bG" />
      <concept id="8293956702609956630" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachVariableReference" flags="nn" index="3M$PaV">
        <reference id="8293956702609966325" name="variable" index="3M$S_o" />
      </concept>
    </language>
  </registry>
  <node concept="1M2fIO" id="1afqJyktxx2">
    <property role="3GE5qa" value="section" />
    <ref role="1M2myG" to="5frd:2$uHlqTwLPc" resolve="Codeblock" />
    <node concept="9S07l" id="1afqJyktxKu" role="9Vyp8">
      <node concept="3clFbS" id="1afqJyktxKv" role="2VODD2">
        <node concept="3clFbF" id="1afqJyktxRE" role="3cqZAp">
          <node concept="2OqwBi" id="1afqJykty6I" role="3clFbG">
            <node concept="nLn13" id="1afqJyktxRD" role="2Oq$k0" />
            <node concept="1mIQ4w" id="1afqJyktyn$" role="2OqNvi">
              <node concept="chp4Y" id="1afqJyktyMV" role="cj9EA">
                <ref role="cht4Q" to="5frd:2$uHlqSzbou" resolve="Section" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9SLcT" id="1afqJyktHwO" role="9SGkU">
      <node concept="3clFbS" id="1afqJyktHwP" role="2VODD2">
        <node concept="3cpWs6" id="1afqJykufwW" role="3cqZAp">
          <node concept="2OqwBi" id="1afqJyktQqn" role="3cqZAk">
            <node concept="2OqwBi" id="1afqJyktPAe" role="2Oq$k0">
              <node concept="2DD5aU" id="1afqJyktPgA" role="2Oq$k0" />
              <node concept="LFhST" id="1afqJyktQ3h" role="2OqNvi" />
            </node>
            <node concept="1mIQ4w" id="1afqJyktQO1" role="2OqNvi">
              <node concept="chp4Y" id="4fxn4ASmuLu" role="cj9EA">
                <ref role="cht4Q" to="ja9q:4fxn4ASmiCo" resolve="IToplevelStatement" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="26bEYU6$gff">
    <property role="3GE5qa" value="section.ports" />
    <ref role="1M2myG" to="5frd:2$uHlqTwKh_" resolve="Inport" />
    <node concept="1N5Pfh" id="26bEYU6$quK" role="1Mr941">
      <ref role="1N5Vy1" to="5frd:26bEYU6$gdJ" resolve="from" />
      <node concept="3dgokm" id="26bEYU6$r7U" role="1N6uqs">
        <node concept="3clFbS" id="26bEYU6$r7W" role="2VODD2">
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
                    <node concept="chp4Y" id="26bEYU6$rJN" role="ri$Ld">
                      <ref role="cht4Q" to="5frd:2$uHlqSzhDy" resolve="File" />
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
                      <node concept="chp4Y" id="26bEYU6$s0B" role="cj9EA">
                        <ref role="cht4Q" to="5frd:2$uHlqSzbou" resolve="Section" />
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
                          <node concept="chp4Y" id="26bEYU6$sjg" role="ri$Ld">
                            <ref role="cht4Q" to="5frd:2$uHlqSzbou" resolve="Section" />
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
    <node concept="1N5Pfh" id="26bEYU6$nun" role="1Mr941">
      <ref role="1N5Vy1" to="5frd:26bEYU6$gdM" resolve="outport" />
      <node concept="3dgokm" id="26bEYU6$nut" role="1N6uqs">
        <node concept="3clFbS" id="26bEYU6$nuv" role="2VODD2">
          <node concept="3cpWs8" id="5uKjkG1gKGz" role="3cqZAp">
            <node concept="3cpWsn" id="5uKjkG1gKGA" role="3cpWs9">
              <property role="TrG5h" value="list" />
              <node concept="2I9FWS" id="5uKjkG1gKGx" role="1tU5fm">
                <ref role="2I9WkF" to="5frd:2$uHlqTwKhB" resolve="Outport" />
              </node>
              <node concept="2ShNRf" id="5uKjkG1gL2x" role="33vP2m">
                <node concept="2T8Vx0" id="5uKjkG1gL2v" role="2ShVmc">
                  <node concept="2I9FWS" id="5uKjkG1gL2w" role="2T96Bj">
                    <ref role="2I9WkF" to="5frd:2$uHlqTwKhB" resolve="Outport" />
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
                  <ref role="3Tt5mk" to="5frd:26bEYU6$gdJ" resolve="from" />
                </node>
              </node>
              <node concept="3Tsc0h" id="5uKjkG1gMMi" role="2OqNvi">
                <ref role="3TtcxE" to="5frd:2$uHlqTwKJR" resolve="outports" />
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
                      <node concept="2GrUjf" id="26bEYU6$pjZ" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="5uKjkG1gLfM" resolve="outRef" />
                      </node>
                      <node concept="3TrEf2" id="26bEYU6$q6y" role="2OqNvi">
                        <ref role="3Tt5mk" to="5frd:432kJCyA_iQ" resolve="val" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="2kN28RP3KWD" role="3cqZAp">
            <node concept="2YIFZM" id="2kN28RP3KWE" role="3cqZAk">
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <node concept="37vLTw" id="2kN28RP3KWF" role="37wK5m">
                <ref role="3cqZAo" node="5uKjkG1gKGA" resolve="list" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="26bEYU6_xKe">
    <property role="3GE5qa" value="section.ports" />
    <ref role="1M2myG" to="5frd:2$uHlqTwKhA" resolve="InportRef" />
    <node concept="1N5Pfh" id="26bEYU6GD6c" role="1Mr941">
      <ref role="1N5Vy1" to="5frd:26bEYU6GCYE" resolve="inport" />
      <node concept="3dgokm" id="26bEYU6GDMz" role="1N6uqs">
        <node concept="3clFbS" id="26bEYU6GDM$" role="2VODD2">
          <node concept="3clFbF" id="7OzZ9xI9dqB" role="3cqZAp">
            <node concept="2YIFZM" id="7OzZ9xI9dEU" role="3clFbG">
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <node concept="2OqwBi" id="7OzZ9xI9ezw" role="37wK5m">
                <node concept="2OqwBi" id="7OzZ9xI9dVk" role="2Oq$k0">
                  <node concept="2rP1CM" id="7OzZ9xI9dJ9" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="7OzZ9xI9eb6" role="2OqNvi">
                    <node concept="1xMEDy" id="7OzZ9xI9eb8" role="1xVPHs">
                      <node concept="chp4Y" id="26bEYU6GFI7" role="ri$Ld">
                        <ref role="cht4Q" to="5frd:2$uHlqSzbou" resolve="Section" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3Tsc0h" id="7OzZ9xI9eTG" role="2OqNvi">
                  <ref role="3TtcxE" to="5frd:2$uHlqTwKJO" resolve="inports" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="26bEYU6G2jz">
    <property role="3GE5qa" value="variables" />
    <ref role="1M2myG" to="5frd:1EO_bV9G$FR" resolve="VariableReference" />
    <node concept="1N5Pfh" id="26bEYU6G2Gt" role="1Mr941">
      <ref role="1N5Vy1" to="5frd:1UULepNKcNI" resolve="val" />
      <node concept="3dgokm" id="26bEYU6G2Gw" role="1N6uqs">
        <node concept="3clFbS" id="26bEYU6G2Gx" role="2VODD2">
          <node concept="3cpWs8" id="crj2MTLD1r" role="3cqZAp">
            <node concept="3cpWsn" id="crj2MTLD1u" role="3cpWs9">
              <property role="TrG5h" value="parts" />
              <node concept="2I9FWS" id="crj2MTLD1p" role="1tU5fm">
                <ref role="2I9WkF" to="5frd:1UULepNJ9io" resolve="VariableDeclaration" />
              </node>
              <node concept="2ShNRf" id="crj2MTLDhM" role="33vP2m">
                <node concept="2T8Vx0" id="crj2MTLDhK" role="2ShVmc">
                  <node concept="2I9FWS" id="crj2MTLDhL" role="2T96Bj">
                    <ref role="2I9WkF" to="5frd:1UULepNJ9io" resolve="VariableDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="crj2MTWGtQ" role="3cqZAp">
            <node concept="3SKdUq" id="crj2MTWGtS" role="3SKWNk">
              <property role="3SKdUp" value="collect all toplevel declarations" />
            </node>
          </node>
          <node concept="2Gpval" id="crj2MTP1Kx" role="3cqZAp">
            <node concept="2GrKxI" id="crj2MTP1Kz" role="2Gsz3X">
              <property role="TrG5h" value="vd" />
            </node>
            <node concept="3clFbS" id="crj2MTP1KB" role="2LFqv$">
              <node concept="3clFbF" id="crj2MTP2qn" role="3cqZAp">
                <node concept="2OqwBi" id="crj2MTP7cd" role="3clFbG">
                  <node concept="37vLTw" id="crj2MTP2qm" role="2Oq$k0">
                    <ref role="3cqZAo" node="crj2MTLD1u" resolve="parts" />
                  </node>
                  <node concept="TSZUe" id="crj2MTPdFi" role="2OqNvi">
                    <node concept="1PxgMI" id="crj2MTPfSS" role="25WWJ7">
                      <node concept="chp4Y" id="4IazLL4PO7n" role="3oSUPX">
                        <ref role="cht4Q" to="5frd:1UULepNJ9io" resolve="VariableDeclaration" />
                      </node>
                      <node concept="2GrUjf" id="crj2MTPe0P" role="1m5AlR">
                        <ref role="2Gs0qQ" node="crj2MTP1Kz" resolve="vd" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="crj2MTOQzN" role="2GsD0m">
              <node concept="2OqwBi" id="crj2MTOQzO" role="2Oq$k0">
                <node concept="2OqwBi" id="crj2MTOQzP" role="2Oq$k0">
                  <node concept="2OqwBi" id="crj2MTOQzQ" role="2Oq$k0">
                    <node concept="2rP1CM" id="crj2MTOQzR" role="2Oq$k0" />
                    <node concept="2Xjw5R" id="crj2MTOQzS" role="2OqNvi">
                      <node concept="1xMEDy" id="crj2MTOQzT" role="1xVPHs">
                        <node concept="chp4Y" id="crj2MTOQzU" role="ri$Ld">
                          <ref role="cht4Q" to="5frd:2$uHlqSzbou" resolve="Section" />
                        </node>
                      </node>
                      <node concept="1xIGOp" id="crj2MTOQzV" role="1xVPHs" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="crj2MTOQzW" role="2OqNvi">
                    <ref role="3Tt5mk" to="5frd:2$uHlqTwM8L" resolve="codeblock" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="crj2MTOQzX" role="2OqNvi">
                  <ref role="3TtcxE" to="zzzn:49WTic8ig5E" resolve="expressions" />
                </node>
              </node>
              <node concept="3zZkjj" id="crj2MTOQzY" role="2OqNvi">
                <node concept="1bVj0M" id="crj2MTOQzZ" role="23t8la">
                  <node concept="3clFbS" id="crj2MTOQ$0" role="1bW5cS">
                    <node concept="3clFbF" id="crj2MTOQ$1" role="3cqZAp">
                      <node concept="2OqwBi" id="crj2MTOQ$2" role="3clFbG">
                        <node concept="37vLTw" id="crj2MTOQ$3" role="2Oq$k0">
                          <ref role="3cqZAo" node="crj2MTOQ$6" resolve="it" />
                        </node>
                        <node concept="1mIQ4w" id="crj2MTOQ$4" role="2OqNvi">
                          <node concept="chp4Y" id="crj2MTOQ$5" role="cj9EA">
                            <ref role="cht4Q" to="5frd:1UULepNJ9io" resolve="VariableDeclaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="crj2MTOQ$6" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="crj2MTOQ$7" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="crj2MTWwRC" role="3cqZAp" />
          <node concept="3SKdUt" id="crj2MTWmBG" role="3cqZAp">
            <node concept="3SKdUq" id="crj2MTWmBI" role="3SKWNk">
              <property role="3SKdUp" value="collect sublevel declarations" />
            </node>
          </node>
          <node concept="3cpWs8" id="crj2MTLAwd" role="3cqZAp">
            <node concept="3cpWsn" id="crj2MTLAwg" role="3cpWs9">
              <property role="TrG5h" value="declarationContainers" />
              <node concept="2OqwBi" id="crj2MTNYuI" role="33vP2m">
                <node concept="2OqwBi" id="crj2MTNYuJ" role="2Oq$k0">
                  <node concept="2OqwBi" id="crj2MTNYuK" role="2Oq$k0">
                    <node concept="2OqwBi" id="crj2MTNYuL" role="2Oq$k0">
                      <node concept="2rP1CM" id="crj2MTNYuM" role="2Oq$k0" />
                      <node concept="2Xjw5R" id="crj2MTNYuN" role="2OqNvi">
                        <node concept="1xMEDy" id="crj2MTNYuO" role="1xVPHs">
                          <node concept="chp4Y" id="crj2MTNYuP" role="ri$Ld">
                            <ref role="cht4Q" to="5frd:2$uHlqSzbou" resolve="Section" />
                          </node>
                        </node>
                        <node concept="1xIGOp" id="crj2MTNYuQ" role="1xVPHs" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="crj2MTNYuR" role="2OqNvi">
                      <ref role="3Tt5mk" to="5frd:2$uHlqTwM8L" resolve="codeblock" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="crj2MTNYuS" role="2OqNvi">
                    <ref role="3TtcxE" to="zzzn:49WTic8ig5E" resolve="expressions" />
                  </node>
                </node>
                <node concept="3zZkjj" id="crj2MTNYuT" role="2OqNvi">
                  <node concept="1bVj0M" id="crj2MTNYuU" role="23t8la">
                    <node concept="3clFbS" id="crj2MTNYuV" role="1bW5cS">
                      <node concept="3clFbF" id="crj2MTNYuW" role="3cqZAp">
                        <node concept="2OqwBi" id="crj2MTNYuX" role="3clFbG">
                          <node concept="37vLTw" id="crj2MTNYuY" role="2Oq$k0">
                            <ref role="3cqZAo" node="crj2MTNYv0" resolve="it" />
                          </node>
                          <node concept="1mIQ4w" id="crj2MTNYuZ" role="2OqNvi">
                            <node concept="chp4Y" id="crj2MTWo0I" role="cj9EA">
                              <ref role="cht4Q" to="5frd:crj2MTWkJA" resolve="IContainSublevelVariableDeclarations" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="crj2MTNYv0" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="crj2MTNYv1" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="A3Dl8" id="crj2MTPqUA" role="1tU5fm">
                <node concept="3Tqbb2" id="crj2MTPxBs" role="A3Ik2" />
              </node>
            </node>
          </node>
          <node concept="1_o_46" id="crj2MTLCBF" role="3cqZAp">
            <node concept="1_o_bx" id="crj2MTLCBH" role="1_o_by">
              <node concept="1_o_bG" id="crj2MTLCBJ" role="1_o_aQ">
                <property role="TrG5h" value="container" />
              </node>
              <node concept="37vLTw" id="crj2MTLCSP" role="1_o_bz">
                <ref role="3cqZAo" node="crj2MTLAwg" resolve="declarationContainers" />
              </node>
            </node>
            <node concept="3clFbS" id="crj2MTLCBN" role="2LFqv$">
              <node concept="3clFbF" id="crj2MTLDlQ" role="3cqZAp">
                <node concept="2OqwBi" id="crj2MTLM9y" role="3clFbG">
                  <node concept="37vLTw" id="crj2MTLDwE" role="2Oq$k0">
                    <ref role="3cqZAo" node="crj2MTLD1u" resolve="parts" />
                  </node>
                  <node concept="X8dFx" id="crj2MTLSTL" role="2OqNvi">
                    <node concept="2OqwBi" id="crj2MTM3E9" role="25WWJ7">
                      <node concept="1PxgMI" id="crj2MTP_FW" role="2Oq$k0">
                        <node concept="chp4Y" id="crj2MTWp78" role="3oSUPX">
                          <ref role="cht4Q" to="5frd:crj2MTWkJA" resolve="IContainSublevelVariableDeclarations" />
                        </node>
                        <node concept="3M$PaV" id="crj2MTLWxY" role="1m5AlR">
                          <ref role="3M$S_o" node="crj2MTLCBJ" resolve="container" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="crj2MTWsV2" role="2OqNvi">
                        <ref role="37wK5l" to="64zb:crj2MTWkKb" resolve="getVariableDeclarations" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="crj2MTWAAu" role="3cqZAp" />
          <node concept="3clFbF" id="crj2MTL_ib" role="3cqZAp">
            <node concept="2YIFZM" id="crj2MTNYv2" role="3clFbG">
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <node concept="37vLTw" id="crj2MTMbZe" role="37wK5m">
                <ref role="3cqZAo" node="crj2MTLD1u" resolve="parts" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="crj2MTNYcf" role="3cqZAp" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="5j$SRt4bFWo">
    <property role="3GE5qa" value="file" />
    <ref role="1M2myG" to="5frd:2$uHlqSzhDy" resolve="File" />
    <node concept="9SQb8" id="5j$SRt4bFWp" role="9SGkC">
      <node concept="3clFbS" id="5j$SRt4bFWq" role="2VODD2">
        <node concept="3clFbJ" id="5j$SRt4bGBK" role="3cqZAp">
          <node concept="3clFbS" id="5j$SRt4bGBM" role="3clFbx">
            <node concept="3cpWs6" id="5j$SRt4bTse" role="3cqZAp">
              <node concept="3clFbT" id="5j$SRt4bT_b" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5j$SRt4bHmp" role="3clFbw">
            <node concept="2H4GUG" id="5j$SRt4bGJo" role="2Oq$k0" />
            <node concept="1mIQ4w" id="5j$SRt4bHBq" role="2OqNvi">
              <node concept="chp4Y" id="5j$SRt4bHKw" role="cj9EA">
                <ref role="cht4Q" to="hm2y:S$tO8ocnpq" resolve="TupleValue" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5j$SRt4bGaG" role="3cqZAp">
          <node concept="3clFbT" id="5j$SRt4bGp3" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="1UULepNJ9Wt">
    <property role="3GE5qa" value="variables" />
    <ref role="1M2myG" to="5frd:1UULepNJ9io" resolve="VariableDeclaration" />
    <node concept="9S07l" id="1UULepNJa7z" role="9Vyp8">
      <node concept="3clFbS" id="1UULepNJa7$" role="2VODD2">
        <node concept="3clFbF" id="1UULepNJaeH" role="3cqZAp">
          <node concept="2OqwBi" id="1UULepNJatJ" role="3clFbG">
            <node concept="nLn13" id="1UULepNJaeG" role="2Oq$k0" />
            <node concept="1mIQ4w" id="1UULepNJaIw" role="2OqNvi">
              <node concept="chp4Y" id="1UULepNJaUW" role="cj9EA">
                <ref role="cht4Q" to="zzzn:49WTic8ig5D" resolve="BlockExpression" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="4x_I0npY4Em">
    <property role="3GE5qa" value="util.items.selection" />
    <ref role="1M2myG" to="5frd:4x_I0npP4pK" resolve="ItemRef" />
    <node concept="1N5Pfh" id="4x_I0npY4N0" role="1Mr941">
      <ref role="1N5Vy1" to="5frd:4x_I0npP4pL" resolve="val" />
      <node concept="3dgokm" id="4x_I0npY4N4" role="1N6uqs">
        <node concept="3clFbS" id="4x_I0npY4N6" role="2VODD2">
          <node concept="3SKdUt" id="7AgrdoqaAiu" role="3cqZAp">
            <node concept="3SKdUq" id="7AgrdoqaAiw" role="3SKWNk">
              <property role="3SKdUp" value="abort if context not inside section (temp object)" />
            </node>
          </node>
          <node concept="3clFbJ" id="6uf7$58_rmj" role="3cqZAp">
            <node concept="3clFbS" id="6uf7$58_rml" role="3clFbx">
              <node concept="3cpWs6" id="6uf7$58_z4V" role="3cqZAp">
                <node concept="2ShNRf" id="6uf7$58_z4W" role="3cqZAk">
                  <node concept="HV5vD" id="6uf7$58_z4X" role="2ShVmc">
                    <ref role="HV5vE" to="o8zo:7ipADkTfAzR" resolve="EmptyScope" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6uf7$58_uF7" role="3clFbw">
              <node concept="2OqwBi" id="6uf7$58_sgu" role="2Oq$k0">
                <node concept="2rP1CM" id="6uf7$58_rK_" role="2Oq$k0" />
                <node concept="2Xjw5R" id="6uf7$58_sMd" role="2OqNvi">
                  <node concept="1xMEDy" id="6uf7$58_sMf" role="1xVPHs">
                    <node concept="chp4Y" id="6uf7$58_tcc" role="ri$Ld">
                      <ref role="cht4Q" to="5frd:4rZ4tH4lGwS" resolve="HiddenContent" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="6uf7$58_u3d" role="1xVPHs" />
                </node>
              </node>
              <node concept="3x8VRR" id="6uf7$58_vCb" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbH" id="6uf7$58_FC5" role="3cqZAp" />
          <node concept="3cpWs8" id="6pyCRNQUXuH" role="3cqZAp">
            <node concept="3cpWsn" id="6pyCRNQUXuK" role="3cpWs9">
              <property role="TrG5h" value="pos" />
              <node concept="3Tqbb2" id="6pyCRNQUXuF" role="1tU5fm">
                <ref role="ehGHo" to="ja9q:6pyCRNQL2EL" resolve="AbstractStatement" />
              </node>
              <node concept="2OqwBi" id="6pyCRNQV09z" role="33vP2m">
                <node concept="2rP1CM" id="6pyCRNQV09$" role="2Oq$k0" />
                <node concept="2Xjw5R" id="6pyCRNQV09_" role="2OqNvi">
                  <node concept="1xMEDy" id="6pyCRNQV09A" role="1xVPHs">
                    <node concept="chp4Y" id="4IazLL4Pw7U" role="ri$Ld">
                      <ref role="cht4Q" to="ja9q:6pyCRNQL2EL" resolve="AbstractStatement" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="6pyCRNQV09C" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4IazLL5bzPt" role="3cqZAp">
            <node concept="3cpWsn" id="4IazLL5bzPw" role="3cpWs9">
              <property role="TrG5h" value="newObject" />
              <node concept="3Tqbb2" id="4IazLL5bzPr" role="1tU5fm">
                <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
              </node>
              <node concept="2OqwBi" id="4IazLL5bCWh" role="33vP2m">
                <node concept="2OqwBi" id="4IazLL5bCl6" role="2Oq$k0">
                  <node concept="2rP1CM" id="4IazLL5bCl7" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="4IazLL5bCl8" role="2OqNvi">
                    <node concept="1xMEDy" id="4IazLL5bCl9" role="1xVPHs">
                      <node concept="chp4Y" id="4IazLL5bCla" role="ri$Ld">
                        <ref role="cht4Q" to="ja9q:2t3FM7fJm6J" resolve="TypeRelatedStatement" />
                      </node>
                    </node>
                    <node concept="1xIGOp" id="4IazLL5bClb" role="1xVPHs" />
                  </node>
                </node>
                <node concept="2qgKlT" id="4IazLL5bDLP" role="2OqNvi">
                  <ref role="37wK5l" to="w8ws:6Y$bjgGDdCB" resolve="getRelatedNodeAtPosition" />
                  <node concept="2rP1CM" id="4IazLL5bEbu" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="4k$35jXTt$s" role="3cqZAp">
            <node concept="3clFbS" id="4k$35jXTt$u" role="3clFbx">
              <node concept="3clFbF" id="4k$35jXTwsm" role="3cqZAp">
                <node concept="2OqwBi" id="4k$35jXTxN3" role="3clFbG">
                  <node concept="1PxgMI" id="7AbWZaxkr1F" role="2Oq$k0">
                    <node concept="chp4Y" id="7AbWZaxkrm8" role="3oSUPX">
                      <ref role="cht4Q" to="5frd:XZLIaPVfvV" resolve="IContainItems" />
                    </node>
                    <node concept="2OqwBi" id="4k$35jXTwEH" role="1m5AlR">
                      <node concept="37vLTw" id="4k$35jXTwsk" role="2Oq$k0">
                        <ref role="3cqZAo" node="6pyCRNQUXuK" resolve="pos" />
                      </node>
                      <node concept="3TrEf2" id="4IazLL4Pxvi" role="2OqNvi">
                        <ref role="3Tt5mk" to="ja9q:6pyCRNR1bO4" resolve="objectAtPosition" />
                      </node>
                    </node>
                  </node>
                  <node concept="2qgKlT" id="4k$35jXTyyg" role="2OqNvi">
                    <ref role="37wK5l" to="64zb:7AbWZaxl5uk" resolve="replaceNodePreservingItemRefs" />
                    <node concept="1PxgMI" id="7AbWZaxksm5" role="37wK5m">
                      <node concept="chp4Y" id="7AbWZaxksFO" role="3oSUPX">
                        <ref role="cht4Q" to="5frd:XZLIaPVfvV" resolve="IContainItems" />
                      </node>
                      <node concept="37vLTw" id="4IazLL5bJwB" role="1m5AlR">
                        <ref role="3cqZAo" node="4IazLL5bzPw" resolve="newObject" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="4IazLL5byvR" role="3clFbw">
              <node concept="3fqX7Q" id="4IazLL5bHoA" role="3uHU7w">
                <node concept="1eOMI4" id="4IazLL5bIzS" role="3fr31v">
                  <node concept="2YFouu" id="4IazLL5bHoC" role="1eOMHV">
                    <node concept="2OqwBi" id="4IazLL5bHoE" role="3uHU7B">
                      <node concept="37vLTw" id="4IazLL5bHoF" role="2Oq$k0">
                        <ref role="3cqZAo" node="6pyCRNQUXuK" resolve="pos" />
                      </node>
                      <node concept="3TrEf2" id="4IazLL5bHoG" role="2OqNvi">
                        <ref role="3Tt5mk" to="ja9q:6pyCRNR1bO4" resolve="objectAtPosition" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4IazLL5bHoD" role="3uHU7w">
                      <ref role="3cqZAo" node="4IazLL5bzPw" resolve="newObject" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4k$35jXTvl7" role="3uHU7B">
                <node concept="2OqwBi" id="4k$35jXTubc" role="2Oq$k0">
                  <node concept="37vLTw" id="4k$35jXTtUO" role="2Oq$k0">
                    <ref role="3cqZAo" node="6pyCRNQUXuK" resolve="pos" />
                  </node>
                  <node concept="3TrEf2" id="4IazLL4PwYb" role="2OqNvi">
                    <ref role="3Tt5mk" to="ja9q:6pyCRNR1bO4" resolve="objectAtPosition" />
                  </node>
                </node>
                <node concept="3x8VRR" id="4k$35jXTw4l" role="2OqNvi" />
              </node>
            </node>
            <node concept="3eNFk2" id="4IazLL5hC$5" role="3eNLev">
              <node concept="3clFbS" id="4IazLL5hC$6" role="3eOfB_">
                <node concept="3clFbF" id="4IazLL5hC$7" role="3cqZAp">
                  <node concept="37vLTI" id="4IazLL5hC$8" role="3clFbG">
                    <node concept="2OqwBi" id="4IazLL5hC$9" role="37vLTJ">
                      <node concept="37vLTw" id="4IazLL5hC$a" role="2Oq$k0">
                        <ref role="3cqZAo" node="6pyCRNQUXuK" resolve="pos" />
                      </node>
                      <node concept="3TrEf2" id="4IazLL5hC$b" role="2OqNvi">
                        <ref role="3Tt5mk" to="ja9q:6pyCRNR1bO4" resolve="objectAtPosition" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4IazLL5hC$c" role="37vLTx">
                      <ref role="3cqZAo" node="4IazLL5bzPw" resolve="newObject" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4IazLL5hCUV" role="3eO9$A">
                <node concept="2OqwBi" id="4IazLL5hCUW" role="2Oq$k0">
                  <node concept="37vLTw" id="4IazLL5hCUX" role="2Oq$k0">
                    <ref role="3cqZAo" node="6pyCRNQUXuK" resolve="pos" />
                  </node>
                  <node concept="3TrEf2" id="4IazLL5hCUY" role="2OqNvi">
                    <ref role="3Tt5mk" to="ja9q:6pyCRNR1bO4" resolve="objectAtPosition" />
                  </node>
                </node>
                <node concept="3w_OXm" id="4IazLL5hDux" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1ecbQBfsFb_" role="3cqZAp" />
          <node concept="3clFbF" id="7KbMtvyirs7" role="3cqZAp">
            <node concept="2YIFZM" id="7KbMtvyirB9" role="3clFbG">
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <node concept="2OqwBi" id="6pyCRNQVe4U" role="37wK5m">
                <node concept="1PxgMI" id="6pyCRNQVdhH" role="2Oq$k0">
                  <node concept="chp4Y" id="6pyCRNQVdB9" role="3oSUPX">
                    <ref role="cht4Q" to="5frd:XZLIaPVfvV" resolve="IContainItems" />
                  </node>
                  <node concept="2OqwBi" id="6pyCRNQVaLa" role="1m5AlR">
                    <node concept="37vLTw" id="6pyCRNQVagF" role="2Oq$k0">
                      <ref role="3cqZAo" node="6pyCRNQUXuK" resolve="pos" />
                    </node>
                    <node concept="3TrEf2" id="6pyCRNQVcBL" role="2OqNvi">
                      <ref role="3Tt5mk" to="ja9q:6pyCRNR1bO4" resolve="objectAtPosition" />
                    </node>
                  </node>
                </node>
                <node concept="3Tsc0h" id="6pyCRNQVexl" role="2OqNvi">
                  <ref role="3TtcxE" to="5frd:5c6KWTiqlNT" resolve="items" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="58ojJcwsFJi">
    <property role="3GE5qa" value="util.dotexpression" />
    <ref role="1M2myG" to="5frd:CAhoO5jugf" resolve="IDotOperation" />
    <node concept="9S07l" id="58ojJcwsFJj" role="9Vyp8">
      <node concept="3clFbS" id="58ojJcwsFJk" role="2VODD2">
        <node concept="3cpWs6" id="58ojJcwsG9P" role="3cqZAp">
          <node concept="2OqwBi" id="58ojJcwoJ2W" role="3cqZAk">
            <node concept="nLn13" id="58ojJcwoJ2X" role="2Oq$k0" />
            <node concept="1mIQ4w" id="58ojJcwoJ2Y" role="2OqNvi">
              <node concept="chp4Y" id="7WePDBgTm0j" role="cj9EA">
                <ref role="cht4Q" to="5frd:CAhoO5mCkr" resolve="DotExpression" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="58ojJcwt4NT">
    <property role="3GE5qa" value="util.dotexpression" />
    <ref role="1M2myG" to="5frd:CAhoO5mCkr" resolve="DotExpression" />
    <node concept="9SLcT" id="58ojJcwt4NW" role="9SGkU">
      <node concept="3clFbS" id="58ojJcwt4NX" role="2VODD2">
        <node concept="3clFbJ" id="58ojJcwtg3E" role="3cqZAp">
          <node concept="17R0WA" id="58ojJcwtgJy" role="3clFbw">
            <node concept="359W_D" id="58ojJcwtgQT" role="3uHU7w">
              <ref role="359W_E" to="5frd:CAhoO5mCkr" resolve="DotExpression" />
              <ref role="359W_F" to="hm2y:7NJy08a3O9b" resolve="target" />
            </node>
            <node concept="2DA6wF" id="58ojJcwtgaY" role="3uHU7B" />
          </node>
          <node concept="3clFbS" id="58ojJcwtg3G" role="3clFbx">
            <node concept="3cpWs6" id="58ojJcwthyg" role="3cqZAp">
              <node concept="2OqwBi" id="58ojJcwthyh" role="3cqZAk">
                <node concept="2OqwBi" id="58ojJcwthyi" role="2Oq$k0">
                  <node concept="2DD5aU" id="58ojJcwthyj" role="2Oq$k0" />
                  <node concept="LFhST" id="58ojJcwthyk" role="2OqNvi" />
                </node>
                <node concept="1mIQ4w" id="58ojJcwthyl" role="2OqNvi">
                  <node concept="chp4Y" id="7WePDBgPd88" role="cj9EA">
                    <ref role="cht4Q" to="5frd:CAhoO5jugf" resolve="IDotOperation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1Ho6EEsWcjn" role="3eNLev">
            <node concept="3clFbS" id="1Ho6EEsWcjp" role="3eOfB_">
              <node concept="3cpWs6" id="1Ho6EEsWd4Y" role="3cqZAp">
                <node concept="22lmx$" id="1pFVOLkBI$n" role="3cqZAk">
                  <node concept="2OqwBi" id="1Ho6EEsWf1x" role="3uHU7B">
                    <node concept="2OqwBi" id="1Ho6EEsWe7V" role="2Oq$k0">
                      <node concept="2DD5aU" id="1Ho6EEsWdrV" role="2Oq$k0" />
                      <node concept="LFhST" id="1Ho6EEsWerp" role="2OqNvi" />
                    </node>
                    <node concept="1mIQ4w" id="1Ho6EEsWfnk" role="2OqNvi">
                      <node concept="chp4Y" id="1Ho6EEsZxf9" role="cj9EA">
                        <ref role="cht4Q" to="5frd:1Ho6EEsY2ow" resolve="PythonExpression" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1pFVOLkBINd" role="3uHU7w">
                    <node concept="2OqwBi" id="1pFVOLkBINe" role="2Oq$k0">
                      <node concept="2DD5aU" id="1pFVOLkBINf" role="2Oq$k0" />
                      <node concept="LFhST" id="1pFVOLkBINg" role="2OqNvi" />
                    </node>
                    <node concept="1mIQ4w" id="1pFVOLkBINh" role="2OqNvi">
                      <node concept="chp4Y" id="1pFVOLkBJ2p" role="cj9EA">
                        <ref role="cht4Q" to="5frd:CAhoO5mCkr" resolve="DotExpression" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="17R0WA" id="1Ho6EEsWcHK" role="3eO9$A">
              <node concept="359W_D" id="1Ho6EEsWcHL" role="3uHU7w">
                <ref role="359W_E" to="5frd:CAhoO5mCkr" resolve="DotExpression" />
                <ref role="359W_F" to="hm2y:4rZeNQ6NgXF" resolve="expr" />
              </node>
              <node concept="2DA6wF" id="1Ho6EEsWcHM" role="3uHU7B" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="58ojJcwthT4" role="3cqZAp">
          <node concept="3clFbT" id="58ojJcwtifS" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="1Ho6EEsY2xH">
    <property role="3GE5qa" value="util.synch" />
    <ref role="1M2myG" to="5frd:1Ho6EEsY2ow" resolve="PythonExpression" />
    <node concept="9SQb8" id="3CO1ndsYV35" role="9SGkC">
      <node concept="3clFbS" id="3CO1ndsYV36" role="2VODD2">
        <node concept="3clFbJ" id="7WePDBhgFqT" role="3cqZAp">
          <node concept="3clFbS" id="7WePDBhgFqU" role="3clFbx">
            <node concept="3cpWs6" id="7WePDBhgFqV" role="3cqZAp">
              <node concept="2OqwBi" id="7WePDBhgFqW" role="3cqZAk">
                <node concept="2OqwBi" id="7WePDBhgFqX" role="2Oq$k0">
                  <node concept="2DD5aU" id="7WePDBhgFqY" role="2Oq$k0" />
                  <node concept="LFhST" id="7WePDBhgFqZ" role="2OqNvi" />
                </node>
                <node concept="1mIQ4w" id="7WePDBhgFr0" role="2OqNvi">
                  <node concept="chp4Y" id="1Ho6EEsNh6J" role="cj9EA">
                    <ref role="cht4Q" to="5frd:CAhoO5mCkr" resolve="DotExpression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7WePDBhgFr2" role="3clFbw">
            <node concept="2OqwBi" id="7WePDBhgFr3" role="2Oq$k0">
              <node concept="2DD5aU" id="7WePDBhgFr4" role="2Oq$k0" />
              <node concept="LFhST" id="7WePDBhgFr5" role="2OqNvi" />
            </node>
            <node concept="1mIQ4w" id="7WePDBhgFr6" role="2OqNvi">
              <node concept="chp4Y" id="7WePDBhgFr7" role="cj9EA">
                <ref role="cht4Q" to="hm2y:7NJy08a3O99" resolve="DotExpression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7WePDBhgFr8" role="3cqZAp">
          <node concept="3clFbT" id="7WePDBhgFr9" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="7YOY7Y$EPoT">
    <property role="3GE5qa" value="util.items.expression" />
    <ref role="1M2myG" to="5frd:fN3qU6G$xK" resolve="ItemDependentExpression" />
    <node concept="9SQb8" id="7YOY7Y$EPoU" role="9SGkC">
      <node concept="3clFbS" id="7YOY7Y$EPoV" role="2VODD2">
        <node concept="3SKdUt" id="7YOY7Y$ER97" role="3cqZAp">
          <node concept="3SKdUq" id="7YOY7Y$ER99" role="3SKWNk">
            <property role="3SKdUp" value="TODO" />
          </node>
        </node>
        <node concept="3SKdUt" id="7YOY7Y$EQd3" role="3cqZAp">
          <node concept="3SKdUq" id="7YOY7Y$EQd4" role="3SKWNk">
            <property role="3SKdUp" value="allow only items" />
          </node>
        </node>
        <node concept="3SKdUt" id="7YOY7Y$EQsh" role="3cqZAp">
          <node concept="3SKdUq" id="7YOY7Y$EQsj" role="3SKWNk">
            <property role="3SKdUp" value="allow operations (Dot, +,-,*,/" />
          </node>
        </node>
        <node concept="3cpWs6" id="7YOY7Y$EQG2" role="3cqZAp">
          <node concept="3clFbT" id="7YOY7Y$EQUr" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="crj2MTNnn9">
    <property role="3GE5qa" value="variables" />
    <ref role="1M2myG" to="5frd:crj2MTMfPg" resolve="SublevelVariableDeclaration" />
    <node concept="9S07l" id="crj2MTNny8" role="9Vyp8">
      <node concept="3clFbS" id="crj2MTNny9" role="2VODD2">
        <node concept="3clFbF" id="crj2MTNnDi" role="3cqZAp">
          <node concept="2OqwBi" id="crj2MTNogX" role="3clFbG">
            <node concept="2OqwBi" id="crj2MTNnOH" role="2Oq$k0">
              <node concept="nLn13" id="crj2MTNnDh" role="2Oq$k0" />
              <node concept="1mfA1w" id="crj2MTNo0O" role="2OqNvi" />
            </node>
            <node concept="1mIQ4w" id="crj2MTNoy0" role="2OqNvi">
              <node concept="chp4Y" id="crj2MTNoIv" role="cj9EA">
                <ref role="cht4Q" to="zzzn:49WTic8ig5D" resolve="BlockExpression" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

