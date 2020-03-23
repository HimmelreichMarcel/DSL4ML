<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cbae234c-55ec-4478-be4f-d0ee6b2892c9(features.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="1" />
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="55s9" ref="r:349f01e8-2ba4-49f7-be71-679bbbf4b80d(features.structure)" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" />
    <import index="pz2c" ref="r:2a308ea0-c7e3-4fa5-a624-ad74ee5cfab5(jetbrains.mps.baseLanguage.util)" />
    <import index="917x" ref="r:83f7a824-2d8f-4211-9c8e-802488d31e7c(features.behavior)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="ja9q" ref="r:fc597f30-d1d1-4d82-975e-209a1fdb1f96(statements.structure)" implicit="true" />
    <import index="w8ws" ref="r:371ff547-5eea-4440-a0bb-93d0be22bfcb(statements.behavior)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
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
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
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
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
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
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1766949807893567867" name="jetbrains.mps.lang.typesystem.structure.OverridesConceptFunction" flags="ig" index="bXqS6" />
      <concept id="1185788614172" name="jetbrains.mps.lang.typesystem.structure.NormalTypeClause" flags="ng" index="mw_s8">
        <child id="1185788644032" name="normalType" index="mwGJk" />
      </concept>
      <concept id="1175147569072" name="jetbrains.mps.lang.typesystem.structure.AbstractSubtypingRule" flags="ig" index="2sgdUx">
        <child id="1175147624276" name="body" index="2sgrp5" />
      </concept>
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1227096774658" name="jetbrains.mps.lang.typesystem.structure.MessageStatement" flags="ng" index="2OEH$v">
        <child id="1227096802790" name="nodeToReport" index="2OEOjV" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1766949807893591548" name="overridesFun" index="bX4a1" />
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="1188811367543" name="jetbrains.mps.lang.typesystem.structure.ComparisonRule" flags="ig" index="3aFulz">
        <child id="1188820750135" name="anotherNode" index="3bfgSz" />
      </concept>
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174643105530" name="jetbrains.mps.lang.typesystem.structure.InferenceRule" flags="ig" index="1YbPZF" />
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
      <concept id="1174657487114" name="jetbrains.mps.lang.typesystem.structure.TypeOfExpression" flags="nn" index="1Z2H0r">
        <child id="1174657509053" name="term" index="1Z2MuG" />
      </concept>
      <concept id="1174658326157" name="jetbrains.mps.lang.typesystem.structure.CreateEquationStatement" flags="nn" index="1Z5TYs" />
      <concept id="1174660718586" name="jetbrains.mps.lang.typesystem.structure.AbstractEquationStatement" flags="nn" index="1Zf1VF">
        <property id="1206359757216" name="checkOnly" index="3wDh2S" />
        <child id="1174660783413" name="leftExpression" index="1ZfhK$" />
        <child id="1174660783414" name="rightExpression" index="1ZfhKB" />
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
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
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
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="1YbPZF" id="57k_vxmVDAI">
    <property role="TrG5h" value="typeof_FeaturesetLoader" />
    <property role="3GE5qa" value="featureset" />
    <node concept="3clFbS" id="57k_vxmVDAJ" role="18ibNy">
      <node concept="1Z5TYs" id="57k_vxmVDJ7" role="3cqZAp">
        <node concept="mw_s8" id="57k_vxmVDJr" role="1ZfhKB">
          <node concept="2pJPEk" id="2Q52iU_C5cR" role="mwGJk">
            <node concept="2pJPED" id="2Q52iU_C5d9" role="2pJPEn">
              <ref role="2pJxaS" to="55s9:7OzZ9xI8jbt" resolve="FeaturesetType" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="57k_vxmVDJa" role="1ZfhK$">
          <node concept="1Z2H0r" id="57k_vxmVDAS" role="mwGJk">
            <node concept="1YBJjd" id="57k_vxmVDCC" role="1Z2MuG">
              <ref role="1YBMHb" node="57k_vxmVDAL" resolve="fl" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="57k_vxmVDAL" role="1YuTPh">
      <property role="TrG5h" value="fl" />
      <ref role="1YaFvo" to="55s9:57k_vxmTpVN" resolve="FeaturesetLoader" />
    </node>
  </node>
  <node concept="1YbPZF" id="1Q2Nv2iWjpq">
    <property role="TrG5h" value="typeof_StringlistFeature" />
    <property role="3GE5qa" value="simple" />
    <node concept="3clFbS" id="1Q2Nv2iWjpr" role="18ibNy">
      <node concept="1Z5TYs" id="1Q2Nv2iWj$t" role="3cqZAp">
        <node concept="mw_s8" id="1Q2Nv2iWj$T" role="1ZfhKB">
          <node concept="1YBJjd" id="46b_jc7Vwf$" role="mwGJk">
            <ref role="1YBMHb" node="1Q2Nv2iWjpt" resolve="slf" />
          </node>
        </node>
        <node concept="mw_s8" id="1Q2Nv2iWj$w" role="1ZfhK$">
          <node concept="1Z2H0r" id="1Q2Nv2iWjpK" role="mwGJk">
            <node concept="1YBJjd" id="1Q2Nv2iWjrz" role="1Z2MuG">
              <ref role="1YBMHb" node="1Q2Nv2iWjpt" resolve="slf" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1Q2Nv2iWjpt" role="1YuTPh">
      <property role="TrG5h" value="slf" />
      <ref role="1YaFvo" to="55s9:209684qNLaU" resolve="StringlistFeature" />
    </node>
  </node>
  <node concept="3aFulz" id="7Xt0Sm$1ZVr">
    <property role="3GE5qa" value="featureset" />
    <property role="TrG5h" value="AnyName" />
    <node concept="1YaCAy" id="7Xt0Sm$1ZWd" role="3bfgSz">
      <property role="TrG5h" value="right" />
      <ref role="1YaFvo" to="55s9:7OzZ9xI8jbt" resolve="FeaturesetType" />
    </node>
    <node concept="3clFbS" id="7Xt0Sm$1ZVt" role="2sgrp5">
      <node concept="3cpWs6" id="7Xt0Sm$1ZXZ" role="3cqZAp">
        <node concept="3clFbT" id="7Xt0Sm$1ZYE" role="3cqZAk">
          <property role="3clFbU" value="true" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7Xt0Sm$1ZVv" role="1YuTPh">
      <property role="TrG5h" value="left" />
      <ref role="1YaFvo" to="55s9:7OzZ9xI8jbt" resolve="FeaturesetType" />
    </node>
  </node>
  <node concept="1YbPZF" id="7Xt0Sm$2ErE">
    <property role="TrG5h" value="typeof_FeaturesetType" />
    <property role="3GE5qa" value="featureset" />
    <node concept="3clFbS" id="7Xt0Sm$2ErF" role="18ibNy">
      <node concept="1Z5TYs" id="7Xt0Sm$2E$x" role="3cqZAp">
        <node concept="mw_s8" id="7Xt0Sm$2E$P" role="1ZfhKB">
          <node concept="2pJPEk" id="7Xt0Sm$2E$L" role="mwGJk">
            <node concept="2pJPED" id="7Xt0Sm$2E_0" role="2pJPEn">
              <ref role="2pJxaS" to="55s9:7OzZ9xI8jbt" resolve="FeaturesetType" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="7Xt0Sm$2E$$" role="1ZfhK$">
          <node concept="1Z2H0r" id="7Xt0Sm$2ErL" role="mwGJk">
            <node concept="1YBJjd" id="7Xt0Sm$2Etx" role="1Z2MuG">
              <ref role="1YBMHb" node="7Xt0Sm$2ErH" resolve="featuresetType" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7Xt0Sm$2ErH" role="1YuTPh">
      <property role="TrG5h" value="featuresetType" />
      <ref role="1YaFvo" to="55s9:7OzZ9xI8jbt" resolve="FeaturesetType" />
    </node>
    <node concept="bXqS6" id="7Xt0Sm$2F02" role="bX4a1">
      <node concept="3clFbS" id="7Xt0Sm$2F03" role="2VODD2">
        <node concept="3clFbF" id="7Xt0Sm$2F79" role="3cqZAp">
          <node concept="3clFbT" id="7Xt0Sm$2F78" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="5j$SRt4g8zk">
    <property role="TrG5h" value="typeof_FeatureSelection" />
    <property role="3GE5qa" value="feature" />
    <node concept="3clFbS" id="5j$SRt4g8zl" role="18ibNy">
      <node concept="3SKdUt" id="2L5U6Iovpv" role="3cqZAp">
        <node concept="3SKdUq" id="2L5U6Iovpx" role="3SKWNk">
          <property role="3SKdUp" value="TODO: typer inference may be generalized for ItemSelection" />
        </node>
      </node>
      <node concept="3SKdUt" id="5j$SRt4g9qY" role="3cqZAp">
        <node concept="3SKdUq" id="5j$SRt4g9r0" role="3SKWNk">
          <property role="3SKdUp" value="TODO: make generic" />
        </node>
      </node>
      <node concept="3clFbJ" id="4d9YXW2nuOT" role="3cqZAp">
        <node concept="3clFbC" id="4d9YXW2nxVg" role="3clFbw">
          <node concept="10Nm6u" id="4d9YXW2ny9o" role="3uHU7w" />
          <node concept="2OqwBi" id="4d9YXW2nv3U" role="3uHU7B">
            <node concept="1YBJjd" id="5j$SRt4g94Y" role="2Oq$k0">
              <ref role="1YBMHb" node="5j$SRt4g8zn" resolve="fs" />
            </node>
            <node concept="2qgKlT" id="5j$SRt4dq4e" role="2OqNvi">
              <ref role="37wK5l" to="917x:4d9YXW2nrfb" resolve="getFeatureType" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="4d9YXW2nuOV" role="3clFbx">
          <node concept="1Z5TYs" id="4d9YXW2nySA" role="3cqZAp">
            <node concept="mw_s8" id="4d9YXW2nySU" role="1ZfhKB">
              <node concept="2pJPEk" id="5j$SRt4f4SQ" role="mwGJk">
                <node concept="2pJPED" id="5j$SRt4f4T4" role="2pJPEn">
                  <ref role="2pJxaS" to="hm2y:1Ez$z58DYVm" resolve="ErrorLiteral" />
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="4d9YXW2nySD" role="1ZfhK$">
              <node concept="1Z2H0r" id="4d9YXW2nyfk" role="mwGJk">
                <node concept="1YBJjd" id="5j$SRt4g987" role="1Z2MuG">
                  <ref role="1YBMHb" node="5j$SRt4g8zn" resolve="fs" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3eNFk2" id="4d9YXW2nzcv" role="3eNLev">
          <node concept="3clFbS" id="4d9YXW2nzcx" role="3eOfB_">
            <node concept="1Z5TYs" id="4d9YXW2n_lu" role="3cqZAp">
              <node concept="mw_s8" id="4d9YXW2n_lM" role="1ZfhKB">
                <node concept="2pJPEk" id="TC21X81Kyt" role="mwGJk">
                  <node concept="2pJPED" id="TC21X81KBJ" role="2pJPEn">
                    <ref role="2pJxaS" to="55s9:209684qNLaU" resolve="StringlistFeature" />
                  </node>
                </node>
              </node>
              <node concept="mw_s8" id="4d9YXW2n_lx" role="1ZfhK$">
                <node concept="1Z2H0r" id="4d9YXW2n_7E" role="mwGJk">
                  <node concept="1YBJjd" id="5j$SRt4g9eB" role="1Z2MuG">
                    <ref role="1YBMHb" node="5j$SRt4g8zn" resolve="fs" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4d9YXW2n$1a" role="3eO9$A">
            <node concept="2OqwBi" id="4d9YXW2nziA" role="2Oq$k0">
              <node concept="1YBJjd" id="5j$SRt4g9bn" role="2Oq$k0">
                <ref role="1YBMHb" node="5j$SRt4g8zn" resolve="fs" />
              </node>
              <node concept="2qgKlT" id="5j$SRt4dqjU" role="2OqNvi">
                <ref role="37wK5l" to="917x:4d9YXW2nrfb" resolve="getFeatureType" />
              </node>
            </node>
            <node concept="liA8E" id="4d9YXW2n$$Y" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="Xl_RD" id="4d9YXW2n$Fu" role="37wK5m">
                <property role="Xl_RC" value="string" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3eNFk2" id="4d9YXW2n_uA" role="3eNLev">
          <node concept="3clFbS" id="4d9YXW2n_uC" role="3eOfB_">
            <node concept="1Z5TYs" id="4d9YXW2nBHE" role="3cqZAp">
              <node concept="mw_s8" id="4d9YXW2nBHY" role="1ZfhKB">
                <node concept="2pJPEk" id="4d9YXW2nBHU" role="mwGJk">
                  <node concept="2pJPED" id="4d9YXW2nBI9" role="2pJPEn">
                    <ref role="2pJxaS" to="55s9:4d9YXW2n_Ac" resolve="IntegerlistFeature" />
                  </node>
                </node>
              </node>
              <node concept="mw_s8" id="4d9YXW2nBHH" role="1ZfhK$">
                <node concept="1Z2H0r" id="4d9YXW2nByO" role="mwGJk">
                  <node concept="1YBJjd" id="5j$SRt4g9l2" role="1Z2MuG">
                    <ref role="1YBMHb" node="5j$SRt4g8zn" resolve="fs" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4d9YXW2n_OV" role="3eO9$A">
            <node concept="2OqwBi" id="4d9YXW2n_OW" role="2Oq$k0">
              <node concept="1YBJjd" id="5j$SRt4g9hR" role="2Oq$k0">
                <ref role="1YBMHb" node="5j$SRt4g8zn" resolve="fs" />
              </node>
              <node concept="2qgKlT" id="5j$SRt4dq$w" role="2OqNvi">
                <ref role="37wK5l" to="917x:4d9YXW2nrfb" resolve="getFeatureType" />
              </node>
            </node>
            <node concept="liA8E" id="4d9YXW2n_OZ" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="Xl_RD" id="4d9YXW2n_P0" role="37wK5m">
                <property role="Xl_RC" value="integer" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="5j$SRt4g8zn" role="1YuTPh">
      <property role="TrG5h" value="fs" />
      <ref role="1YaFvo" to="55s9:6Quy7yTSu7D" resolve="FeatureSelection" />
    </node>
  </node>
  <node concept="1YbPZF" id="46b_jc7Vwh8">
    <property role="TrG5h" value="typeof_IntegerlistFeature" />
    <property role="3GE5qa" value="simple" />
    <node concept="3clFbS" id="46b_jc7Vwh9" role="18ibNy">
      <node concept="1Z5TYs" id="46b_jc7Vws0" role="3cqZAp">
        <node concept="mw_s8" id="46b_jc7Vwsq" role="1ZfhKB">
          <node concept="1YBJjd" id="46b_jc7Vwso" role="mwGJk">
            <ref role="1YBMHb" node="46b_jc7Vwhb" resolve="ilf" />
          </node>
        </node>
        <node concept="mw_s8" id="46b_jc7Vws3" role="1ZfhK$">
          <node concept="1Z2H0r" id="46b_jc7Vwhf" role="mwGJk">
            <node concept="1YBJjd" id="46b_jc7Vwj5" role="1Z2MuG">
              <ref role="1YBMHb" node="46b_jc7Vwhb" resolve="ilf" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="46b_jc7Vwhb" role="1YuTPh">
      <property role="TrG5h" value="ilf" />
      <ref role="1YaFvo" to="55s9:4d9YXW2n_Ac" resolve="IntegerlistFeature" />
    </node>
  </node>
  <node concept="1YbPZF" id="46b_jc7Vwu1">
    <property role="TrG5h" value="typeof_FeatureType" />
    <property role="3GE5qa" value="feature" />
    <node concept="3clFbS" id="46b_jc7Vwu2" role="18ibNy">
      <node concept="1Z5TYs" id="2UGMKm8uht7" role="3cqZAp">
        <node concept="mw_s8" id="2UGMKm8uht8" role="1ZfhKB">
          <node concept="1Z2H0r" id="2UGMKm8v9$N" role="mwGJk">
            <node concept="2OqwBi" id="2UGMKm8uht9" role="1Z2MuG">
              <node concept="1YBJjd" id="2UGMKm8uhta" role="2Oq$k0">
                <ref role="1YBMHb" node="46b_jc7Vwu4" resolve="ft" />
              </node>
              <node concept="3TrEf2" id="2UGMKm8uhtb" role="2OqNvi">
                <ref role="3Tt5mk" to="55s9:46b_jc7VwXv" resolve="type" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="2UGMKm8uhtc" role="1ZfhK$">
          <node concept="1Z2H0r" id="2UGMKm8uhtd" role="mwGJk">
            <node concept="1YBJjd" id="2UGMKm8uhte" role="1Z2MuG">
              <ref role="1YBMHb" node="46b_jc7Vwu4" resolve="ft" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="46b_jc7Vwu4" role="1YuTPh">
      <property role="TrG5h" value="ft" />
      <ref role="1YaFvo" to="55s9:46b_jc7VwtB" resolve="FeatureType" />
    </node>
    <node concept="bXqS6" id="7UBQZE3rKVc" role="bX4a1">
      <node concept="3clFbS" id="7UBQZE3rKVd" role="2VODD2">
        <node concept="3clFbF" id="7UBQZE3rL6X" role="3cqZAp">
          <node concept="3clFbT" id="7UBQZE3rL6W" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="7EI7Z1foz1K">
    <property role="TrG5h" value="typeof_FloatlistFeature" />
    <property role="3GE5qa" value="simple" />
    <node concept="3clFbS" id="7EI7Z1foz1L" role="18ibNy">
      <node concept="1Z5TYs" id="7EI7Z1foz20" role="3cqZAp">
        <node concept="mw_s8" id="7EI7Z1foz21" role="1ZfhKB">
          <node concept="1YBJjd" id="7EI7Z1foz3d" role="mwGJk">
            <ref role="1YBMHb" node="7EI7Z1foz1N" resolve="flf" />
          </node>
        </node>
        <node concept="mw_s8" id="7EI7Z1foz23" role="1ZfhK$">
          <node concept="1Z2H0r" id="7EI7Z1foz24" role="mwGJk">
            <node concept="1YBJjd" id="7EI7Z1foz2B" role="1Z2MuG">
              <ref role="1YBMHb" node="7EI7Z1foz1N" resolve="flf" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7EI7Z1foz1N" role="1YuTPh">
      <property role="TrG5h" value="flf" />
      <ref role="1YaFvo" to="55s9:7EI7Z1foz0p" resolve="FloatlistFeature" />
    </node>
  </node>
  <node concept="18kY7G" id="58ojJcwogXT">
    <property role="TrG5h" value="check_AddFeatureExpr" />
    <property role="3GE5qa" value="editing.features" />
    <node concept="3clFbS" id="58ojJcwogXU" role="18ibNy">
      <node concept="3cpWs8" id="UBdn8E3KtN" role="3cqZAp">
        <node concept="3cpWsn" id="UBdn8E3KtQ" role="3cpWs9">
          <property role="TrG5h" value="currentFeatureset" />
          <node concept="3Tqbb2" id="UBdn8E3KtL" role="1tU5fm">
            <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
          </node>
          <node concept="2OqwBi" id="UBdn8E3D97" role="33vP2m">
            <node concept="2OqwBi" id="UBdn8E3C$y" role="2Oq$k0">
              <node concept="1YBJjd" id="UBdn8Eau67" role="2Oq$k0">
                <ref role="1YBMHb" node="58ojJcwogXW" resolve="afs" />
              </node>
              <node concept="2Xjw5R" id="UBdn8E3CMi" role="2OqNvi">
                <node concept="1xMEDy" id="UBdn8E3CMk" role="1xVPHs">
                  <node concept="chp4Y" id="4IazLL4XUed" role="ri$Ld">
                    <ref role="cht4Q" to="ja9q:2t3FM7fJm6J" resolve="TypeRelatedStatement" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2qgKlT" id="6Y$bjgGDr9X" role="2OqNvi">
              <ref role="37wK5l" to="w8ws:6Y$bjgGDdCB" resolve="getRelatedNodeAtPosition" />
              <node concept="1YBJjd" id="6Y$bjgGDrr1" role="37wK5m">
                <ref role="1YBMHb" node="58ojJcwogXW" resolve="afs" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="58ojJcwojDV" role="3cqZAp">
        <node concept="3clFbS" id="58ojJcwojDX" role="3clFbx">
          <node concept="2MkqsV" id="58ojJcwonrq" role="3cqZAp">
            <node concept="Xl_RD" id="58ojJcwonrD" role="2MkJ7o">
              <property role="Xl_RC" value="The name is already used inside the featureset. Use the 'replace'-statement if you want to change a feature." />
            </node>
            <node concept="1YBJjd" id="58ojJcwonvK" role="2OEOjV">
              <ref role="1YBMHb" node="58ojJcwogXW" resolve="afs" />
            </node>
          </node>
        </node>
        <node concept="3y3z36" id="58ojJcwon5p" role="3clFbw">
          <node concept="2OqwBi" id="58ojJcwo6BY" role="3uHU7B">
            <node concept="2OqwBi" id="58ojJcwnVlU" role="2Oq$k0">
              <node concept="3zZkjj" id="58ojJcwo0_f" role="2OqNvi">
                <node concept="1bVj0M" id="58ojJcwo0_h" role="23t8la">
                  <node concept="3clFbS" id="58ojJcwo0_i" role="1bW5cS">
                    <node concept="3clFbF" id="58ojJcwo0Vt" role="3cqZAp">
                      <node concept="2OqwBi" id="58ojJcwo2Bu" role="3clFbG">
                        <node concept="2OqwBi" id="58ojJcwo1fU" role="2Oq$k0">
                          <node concept="37vLTw" id="58ojJcwo0Vs" role="2Oq$k0">
                            <ref role="3cqZAo" node="58ojJcwo0_j" resolve="it" />
                          </node>
                          <node concept="3TrcHB" id="4HLGmtZ3YcO" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="liA8E" id="58ojJcwo3bN" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                          <node concept="2OqwBi" id="58ojJcwoko$" role="37wK5m">
                            <node concept="1YBJjd" id="58ojJcwok9g" role="2Oq$k0">
                              <ref role="1YBMHb" node="58ojJcwogXW" resolve="afs" />
                            </node>
                            <node concept="3TrcHB" id="58ojJcwolfs" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="58ojJcwo0_j" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="58ojJcwo0_k" role="1tU5fm" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3GkVXRBQUjJ" role="2Oq$k0">
                <node concept="1PxgMI" id="UBdn8E3O6n" role="2Oq$k0">
                  <node concept="chp4Y" id="UBdn8E3OlF" role="3oSUPX">
                    <ref role="cht4Q" to="5frd:XZLIaPVfvV" resolve="IContainItems" />
                  </node>
                  <node concept="37vLTw" id="UBdn8E3Nzw" role="1m5AlR">
                    <ref role="3cqZAo" node="UBdn8E3KtQ" resolve="currentFeatureset" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="4HLGmtZ3VHa" role="2OqNvi">
                  <ref role="3TtcxE" to="5frd:5c6KWTiqlNT" resolve="items" />
                </node>
              </node>
            </node>
            <node concept="34oBXx" id="58ojJcwo713" role="2OqNvi" />
          </node>
          <node concept="3cmrfG" id="58ojJcwo5SG" role="3uHU7w">
            <property role="3cmrfH" value="0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="58ojJcwogXW" role="1YuTPh">
      <property role="TrG5h" value="afs" />
      <ref role="1YaFvo" to="55s9:fN3qU6G$wA" resolve="AddFeatureStatement" />
    </node>
  </node>
  <node concept="1YbPZF" id="49oIsx4uENw">
    <property role="TrG5h" value="typeof_AddFeatureStatement" />
    <property role="3GE5qa" value="editing.features" />
    <node concept="3clFbS" id="49oIsx4uENx" role="18ibNy">
      <node concept="1Z5TYs" id="49oIsx4uEUn" role="3cqZAp">
        <node concept="mw_s8" id="49oIsx4uEUF" role="1ZfhKB">
          <node concept="1Z2H0r" id="49oIsx4uEUB" role="mwGJk">
            <node concept="2OqwBi" id="49oIsx4uF82" role="1Z2MuG">
              <node concept="1YBJjd" id="49oIsx4uEUW" role="2Oq$k0">
                <ref role="1YBMHb" node="49oIsx4uENz" resolve="addFeatureStatement" />
              </node>
              <node concept="3TrEf2" id="49oIsx4uFqb" role="2OqNvi">
                <ref role="3Tt5mk" to="55s9:fN3qU6G$yn" resolve="initialization" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="49oIsx4uEUq" role="1ZfhK$">
          <node concept="1Z2H0r" id="49oIsx4uENB" role="mwGJk">
            <node concept="1YBJjd" id="49oIsx4uENR" role="1Z2MuG">
              <ref role="1YBMHb" node="49oIsx4uENz" resolve="addFeatureStatement" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="49oIsx4uENz" role="1YuTPh">
      <property role="TrG5h" value="addFeatureStatement" />
      <ref role="1YaFvo" to="55s9:fN3qU6G$wA" resolve="AddFeatureStatement" />
    </node>
  </node>
  <node concept="18kY7G" id="55_guBAVEC_">
    <property role="TrG5h" value="check_CondenseOnFeatureValues" />
    <property role="3GE5qa" value="editing.instances.condense.method" />
    <node concept="3clFbS" id="55_guBAVECA" role="18ibNy">
      <node concept="3clFbH" id="ntYdpmz7HZ" role="3cqZAp" />
      <node concept="2Gpval" id="ntYdpmz8u4" role="3cqZAp">
        <node concept="2GrKxI" id="ntYdpmz8u6" role="2Gsz3X">
          <property role="TrG5h" value="feature" />
        </node>
        <node concept="3clFbS" id="ntYdpmz8ua" role="2LFqv$">
          <node concept="3cpWs8" id="55_guBAVOql" role="3cqZAp">
            <node concept="3cpWsn" id="55_guBAVOqo" role="3cpWs9">
              <property role="TrG5h" value="scale" />
              <node concept="17QB3L" id="55_guBAVOqj" role="1tU5fm" />
              <node concept="2OqwBi" id="55_guBAVIHd" role="33vP2m">
                <node concept="1PxgMI" id="55_guBAVIho" role="2Oq$k0">
                  <node concept="chp4Y" id="ntYdpmzaOx" role="3oSUPX">
                    <ref role="cht4Q" to="55s9:46b_jc7VwtB" resolve="FeatureType" />
                  </node>
                  <node concept="2OqwBi" id="55_guBAVFKw" role="1m5AlR">
                    <node concept="2GrUjf" id="ntYdpmzaas" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="ntYdpmz8u6" resolve="feature" />
                    </node>
                    <node concept="3TrEf2" id="ntYdpmzaD4" role="2OqNvi">
                      <ref role="3Tt5mk" to="5frd:4x_I0npP4pL" resolve="val" />
                    </node>
                  </node>
                </node>
                <node concept="3TrcHB" id="55_guBAVLIF" role="2OqNvi">
                  <ref role="3TsBF5" to="55s9:46b_jc7Vx81" resolve="scale" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="ntYdpmz9aT" role="3cqZAp" />
          <node concept="3clFbJ" id="55_guBAVECG" role="3cqZAp">
            <node concept="3clFbS" id="55_guBAVECI" role="3clFbx">
              <node concept="2MkqsV" id="55_guBAVQNH" role="3cqZAp">
                <node concept="3cpWs3" id="55_guBAVRG_" role="2MkJ7o">
                  <node concept="Xl_RD" id="55_guBAVRL5" role="3uHU7w">
                    <property role="Xl_RC" value=". Use integer-, string-, or boolean-feature instead." />
                  </node>
                  <node concept="3cpWs3" id="55_guBAVR6v" role="3uHU7B">
                    <node concept="Xl_RD" id="55_guBAVQNT" role="3uHU7B">
                      <property role="Xl_RC" value="Cannot condense instances on feature of type " />
                    </node>
                    <node concept="37vLTw" id="55_guBAVR6L" role="3uHU7w">
                      <ref role="3cqZAo" node="55_guBAVOqo" resolve="scale" />
                    </node>
                  </node>
                </node>
                <node concept="1YBJjd" id="55_guBAVTGv" role="2OEOjV">
                  <ref role="1YBMHb" node="55_guBAVECC" resolve="cofv" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="55_guBAVQxI" role="3clFbw">
              <node concept="1eOMI4" id="55_guBAVQDI" role="3fr31v">
                <node concept="22lmx$" id="55_guBAVPxC" role="1eOMHV">
                  <node concept="17R0WA" id="55_guBAVPZV" role="3uHU7w">
                    <node concept="37vLTw" id="55_guBAVPEr" role="3uHU7B">
                      <ref role="3cqZAo" node="55_guBAVOqo" resolve="scale" />
                    </node>
                    <node concept="Xl_RD" id="55_guBAVQju" role="3uHU7w">
                      <property role="Xl_RC" value="boolean" />
                    </node>
                  </node>
                  <node concept="22lmx$" id="55_guBAVOOx" role="3uHU7B">
                    <node concept="17R0WA" id="55_guBAVNzN" role="3uHU7B">
                      <node concept="37vLTw" id="55_guBAVOzw" role="3uHU7B">
                        <ref role="3cqZAo" node="55_guBAVOqo" resolve="scale" />
                      </node>
                      <node concept="Xl_RD" id="55_guBAVNG4" role="3uHU7w">
                        <property role="Xl_RC" value="integer" />
                      </node>
                    </node>
                    <node concept="17R0WA" id="55_guBAVPfg" role="3uHU7w">
                      <node concept="37vLTw" id="55_guBAVOU3" role="3uHU7B">
                        <ref role="3cqZAo" node="55_guBAVOqo" resolve="scale" />
                      </node>
                      <node concept="Xl_RD" id="55_guBAVPfO" role="3uHU7w">
                        <property role="Xl_RC" value="string" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="ntYdpmz8uZ" role="2GsD0m">
          <node concept="1YBJjd" id="ntYdpmz8v0" role="2Oq$k0">
            <ref role="1YBMHb" node="55_guBAVECC" resolve="cofv" />
          </node>
          <node concept="3Tsc0h" id="ntYdpmz8v1" role="2OqNvi">
            <ref role="3TtcxE" to="55s9:55_guBAVEwq" resolve="features" />
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="ntYdpmB_Ay" role="3cqZAp" />
      <node concept="3clFbH" id="ntYdpmCfqX" role="3cqZAp" />
      <node concept="3SKdUt" id="ntYdpmBwBK" role="3cqZAp">
        <node concept="3SKdUq" id="ntYdpmBwBL" role="3SKWNk">
          <property role="3SKdUp" value="get copy of featureset at position" />
        </node>
      </node>
      <node concept="3cpWs8" id="ntYdpmBwBU" role="3cqZAp">
        <node concept="3cpWsn" id="ntYdpmBwBX" role="3cpWs9">
          <property role="TrG5h" value="featuresetCopy" />
          <node concept="3Tqbb2" id="ntYdpmBwBS" role="1tU5fm">
            <ref role="ehGHo" to="55s9:7OzZ9xI8jbt" resolve="FeaturesetType" />
          </node>
          <node concept="2OqwBi" id="ntYdpmByHm" role="33vP2m">
            <node concept="1PxgMI" id="ntYdpmByan" role="2Oq$k0">
              <node concept="chp4Y" id="ntYdpmByhv" role="3oSUPX">
                <ref role="cht4Q" to="55s9:7OzZ9xI8jbt" resolve="FeaturesetType" />
              </node>
              <node concept="2OqwBi" id="ntYdpmBxnj" role="1m5AlR">
                <node concept="2OqwBi" id="ntYdpmBwQC" role="2Oq$k0">
                  <node concept="1YBJjd" id="ntYdpmBRsP" role="2Oq$k0">
                    <ref role="1YBMHb" node="55_guBAVECC" resolve="cofv" />
                  </node>
                  <node concept="2Xjw5R" id="ntYdpmBx93" role="2OqNvi">
                    <node concept="1xMEDy" id="ntYdpmBx95" role="1xVPHs">
                      <node concept="chp4Y" id="ntYdpmBx9_" role="ri$Ld">
                        <ref role="cht4Q" to="ja9q:2t3FM7fJm6J" resolve="TypeRelatedStatement" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2qgKlT" id="ntYdpmBxTB" role="2OqNvi">
                  <ref role="37wK5l" to="w8ws:6Y$bjgGDdCB" resolve="getRelatedNodeAtPosition" />
                  <node concept="1YBJjd" id="ntYdpmBRQk" role="37wK5m">
                    <ref role="1YBMHb" node="55_guBAVECC" resolve="cofv" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1$rogu" id="ntYdpmBzcb" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="ntYdpmBA4h" role="3cqZAp" />
      <node concept="3SKdUt" id="ntYdpmBSC8" role="3cqZAp">
        <node concept="3SKdUq" id="ntYdpmBSCa" role="3SKWNk">
          <property role="3SKdUp" value="remove indexes from copy" />
        </node>
      </node>
      <node concept="2Gpval" id="ntYdpmB$CI" role="3cqZAp">
        <node concept="2GrKxI" id="ntYdpmB$CK" role="2Gsz3X">
          <property role="TrG5h" value="feature" />
        </node>
        <node concept="3clFbS" id="ntYdpmB$CO" role="2LFqv$">
          <node concept="3clFbF" id="ntYdpmBzxp" role="3cqZAp">
            <node concept="2OqwBi" id="ntYdpmBzRJ" role="3clFbG">
              <node concept="37vLTw" id="ntYdpmBzxn" role="2Oq$k0">
                <ref role="3cqZAo" node="ntYdpmBwBX" resolve="featuresetCopy" />
              </node>
              <node concept="2qgKlT" id="ntYdpmB$iS" role="2OqNvi">
                <ref role="37wK5l" to="64zb:4HLGmtZ8kgW" resolve="removeItem" />
                <node concept="2OqwBi" id="ntYdpmBNLk" role="37wK5m">
                  <node concept="37vLTw" id="ntYdpmBNd4" role="2Oq$k0">
                    <ref role="3cqZAo" node="ntYdpmBwBX" resolve="featuresetCopy" />
                  </node>
                  <node concept="2qgKlT" id="ntYdpmBOSM" role="2OqNvi">
                    <ref role="37wK5l" to="64zb:55_guBATgAk" resolve="findItem" />
                    <node concept="2OqwBi" id="ntYdpmBQJL" role="37wK5m">
                      <node concept="2OqwBi" id="ntYdpmBPoz" role="2Oq$k0">
                        <node concept="2GrUjf" id="ntYdpmBP9i" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="ntYdpmB$CK" resolve="feature" />
                        </node>
                        <node concept="2qgKlT" id="ntYdpmBQcZ" role="2OqNvi">
                          <ref role="37wK5l" to="917x:4x_I0nq8CzF" resolve="getFeature" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="ntYdpmBR3f" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="ntYdpmBEef" role="2GsD0m">
          <node concept="1YBJjd" id="ntYdpmBEeg" role="2Oq$k0">
            <ref role="1YBMHb" node="55_guBAVECC" resolve="cofv" />
          </node>
          <node concept="3Tsc0h" id="ntYdpmBEeh" role="2OqNvi">
            <ref role="3TtcxE" to="55s9:55_guBAVEwq" resolve="features" />
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="ntYdpmBT2z" role="3cqZAp" />
      <node concept="3SKdUt" id="ntYdpmBTzJ" role="3cqZAp">
        <node concept="3SKdUq" id="ntYdpmBTzL" role="3SKWNk">
          <property role="3SKdUp" value="check numeric" />
        </node>
      </node>
      <node concept="3clFbJ" id="ntYdpmBUzD" role="3cqZAp">
        <node concept="3clFbS" id="ntYdpmBUzF" role="3clFbx">
          <node concept="2MkqsV" id="ntYdpmBWgZ" role="3cqZAp">
            <node concept="3cpWs3" id="ntYdpmC9Oh" role="2MkJ7o">
              <node concept="Xl_RD" id="ntYdpmCa4Q" role="3uHU7w">
                <property role="Xl_RC" value=". Use them as index, remove them, or extract numeric values before condensing instances." />
              </node>
              <node concept="3cpWs3" id="ntYdpmC7RW" role="3uHU7B">
                <node concept="3cpWs3" id="ntYdpmC5AY" role="3uHU7B">
                  <node concept="3cpWs3" id="ntYdpmC43w" role="3uHU7B">
                    <node concept="Xl_RD" id="ntYdpmC3LM" role="3uHU7B">
                      <property role="Xl_RC" value="Non-numeric features in " />
                    </node>
                    <node concept="2OqwBi" id="ntYdpmC4nI" role="3uHU7w">
                      <node concept="37vLTw" id="ntYdpmC444" role="2Oq$k0">
                        <ref role="3cqZAo" node="ntYdpmBwBX" resolve="featuresetCopy" />
                      </node>
                      <node concept="3TrcHB" id="ntYdpmC4MW" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="ntYdpmC5JG" role="3uHU7w">
                    <property role="Xl_RC" value=" cannot be condensed: " />
                  </node>
                </node>
                <node concept="2OqwBi" id="ntYdpmC8oV" role="3uHU7w">
                  <node concept="37vLTw" id="ntYdpmC80Q" role="2Oq$k0">
                    <ref role="3cqZAo" node="ntYdpmBwBX" resolve="featuresetCopy" />
                  </node>
                  <node concept="2qgKlT" id="ntYdpmC9np" role="2OqNvi">
                    <ref role="37wK5l" to="917x:699fBOowGeJ" resolve="getNonNumericFeatures" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="ntYdpmCeLz" role="2OEOjV">
              <node concept="1YBJjd" id="ntYdpmCetz" role="2Oq$k0">
                <ref role="1YBMHb" node="55_guBAVECC" resolve="cofv" />
              </node>
              <node concept="1mfA1w" id="ntYdpmCfq$" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3fqX7Q" id="ntYdpmBW9i" role="3clFbw">
          <node concept="2OqwBi" id="ntYdpmBW9k" role="3fr31v">
            <node concept="37vLTw" id="ntYdpmBW9l" role="2Oq$k0">
              <ref role="3cqZAo" node="ntYdpmBwBX" resolve="featuresetCopy" />
            </node>
            <node concept="2qgKlT" id="ntYdpmBW9m" role="2OqNvi">
              <ref role="37wK5l" to="917x:699fBOou5Pc" resolve="isNumerical" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="ntYdpmBCnC" role="3cqZAp" />
    </node>
    <node concept="1YaCAy" id="55_guBAVECC" role="1YuTPh">
      <property role="TrG5h" value="cofv" />
      <ref role="1YaFvo" to="55s9:55_guBAV8Mo" resolve="CondenseOnFeatures" />
    </node>
  </node>
  <node concept="18kY7G" id="6iLFZVVBHTW">
    <property role="TrG5h" value="check_GroupFeaturesStatement" />
    <property role="3GE5qa" value="editing.features" />
    <node concept="3clFbS" id="6iLFZVVBHTX" role="18ibNy">
      <node concept="3clFbJ" id="4d9YXW2nkEM" role="3cqZAp">
        <node concept="3fqX7Q" id="4d9YXW2nlgr" role="3clFbw">
          <node concept="2OqwBi" id="4d9YXW2nlgt" role="3fr31v">
            <node concept="2OqwBi" id="5j$SRt4ghtI" role="2Oq$k0">
              <node concept="1YBJjd" id="6iLFZVVBI2S" role="2Oq$k0">
                <ref role="1YBMHb" node="6iLFZVVBHTZ" resolve="gfs" />
              </node>
              <node concept="3TrEf2" id="6iLFZVVBQHA" role="2OqNvi">
                <ref role="3Tt5mk" to="55s9:7$05xKP9tUT" resolve="features" />
              </node>
            </node>
            <node concept="2qgKlT" id="5j$SRt4dqYW" role="2OqNvi">
              <ref role="37wK5l" to="917x:4d9YXW2m_Ey" resolve="hasHomogeneousFeatureTypes" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="4d9YXW2nkEO" role="3clFbx">
          <node concept="2MkqsV" id="4d9YXW2nlE3" role="3cqZAp">
            <node concept="Xl_RD" id="4d9YXW2nlEf" role="2MkJ7o">
              <property role="Xl_RC" value="All Features must be of equal scale." />
            </node>
            <node concept="2OqwBi" id="6iLFZVVBIr8" role="2OEOjV">
              <node concept="1YBJjd" id="6iLFZVVBIc5" role="2Oq$k0">
                <ref role="1YBMHb" node="6iLFZVVBHTZ" resolve="gfs" />
              </node>
              <node concept="3TrEf2" id="6iLFZVVBITX" role="2OqNvi">
                <ref role="3Tt5mk" to="55s9:7$05xKP9tUT" resolve="features" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="6iLFZVVBHTZ" role="1YuTPh">
      <property role="TrG5h" value="gfs" />
      <ref role="1YaFvo" to="55s9:7$05xKP9tUS" resolve="GroupFeaturesStatement" />
    </node>
  </node>
  <node concept="1YbPZF" id="2aoocML6ozP">
    <property role="TrG5h" value="typeof_EditInstances" />
    <property role="3GE5qa" value="editing.instances" />
    <node concept="3clFbS" id="2aoocML6ozQ" role="18ibNy">
      <node concept="1Z5TYs" id="2aoocML6n$R" role="3cqZAp">
        <property role="3wDh2S" value="true" />
        <node concept="mw_s8" id="2aoocML6n_f" role="1ZfhKB">
          <node concept="1Z2H0r" id="2aoocML6n_b" role="mwGJk">
            <node concept="2OqwBi" id="2aoocML6nLU" role="1Z2MuG">
              <node concept="1YBJjd" id="2aoocML6oDS" role="2Oq$k0">
                <ref role="1YBMHb" node="2aoocML6ozS" resolve="ei" />
              </node>
              <node concept="3TrEf2" id="2aoocML6opZ" role="2OqNvi">
                <ref role="3Tt5mk" to="55s9:2aoocML67bz" resolve="feature" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="2aoocML6n$U" role="1ZfhK$">
          <node concept="1Z2H0r" id="2aoocML6mzT" role="mwGJk">
            <node concept="2OqwBi" id="2aoocML6mM3" role="1Z2MuG">
              <node concept="1YBJjd" id="2aoocML6oAh" role="2Oq$k0">
                <ref role="1YBMHb" node="2aoocML6ozS" resolve="ei" />
              </node>
              <node concept="3TrEf2" id="2aoocML6no1" role="2OqNvi">
                <ref role="3Tt5mk" to="55s9:2aoocML5R4U" resolve="expression" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="2aoocML6ozS" role="1YuTPh">
      <property role="TrG5h" value="ei" />
      <ref role="1YaFvo" to="55s9:2aoocML5R4R" resolve="EditInstances" />
    </node>
  </node>
  <node concept="18kY7G" id="3WA_7dKOH$l">
    <property role="TrG5h" value="check_EncodeLabelsAction" />
    <property role="3GE5qa" value="editing.features.preprocess.action" />
    <node concept="3clFbS" id="3WA_7dKOH$m" role="18ibNy">
      <node concept="3SKdUt" id="3WA_7dKON9P" role="3cqZAp">
        <node concept="3SKdUq" id="3WA_7dKON9R" role="3SKWNk">
          <property role="3SKdUp" value="TODO: get the feature at position" />
        </node>
      </node>
      <node concept="3clFbJ" id="3WA_7dKOH$v" role="3cqZAp">
        <node concept="3eOSWO" id="3WA_7dKOMc0" role="3clFbw">
          <node concept="2OqwBi" id="3WA_7dKOKlF" role="3uHU7B">
            <node concept="2OqwBi" id="3WA_7dKPwiC" role="2Oq$k0">
              <node concept="1YBJjd" id="3WA_7dKPvX3" role="2Oq$k0">
                <ref role="1YBMHb" node="3WA_7dKOH$o" resolve="ela" />
              </node>
              <node concept="2qgKlT" id="3WA_7dKPwM_" role="2OqNvi">
                <ref role="37wK5l" to="917x:3WA_7dKPrLt" resolve="getFeatureAtPosition" />
              </node>
            </node>
            <node concept="3TrcHB" id="3WA_7dKOL11" role="2OqNvi">
              <ref role="3TsBF5" to="55s9:46b_jc7Vx82" resolve="emptyCells" />
            </node>
          </node>
          <node concept="3cmrfG" id="3WA_7dKOMKS" role="3uHU7w">
            <property role="3cmrfH" value="0" />
          </node>
        </node>
        <node concept="3clFbS" id="3WA_7dKOH$x" role="3clFbx">
          <node concept="2MkqsV" id="3WA_7dKOYiN" role="3cqZAp">
            <node concept="3cpWs3" id="3WA_7dKOZHu" role="2MkJ7o">
              <node concept="Xl_RD" id="3WA_7dKOZOR" role="3uHU7w">
                <property role="Xl_RC" value=". Use preprocessing-step 'fill empty cells' on this feature before encoding labels." />
              </node>
              <node concept="3cpWs3" id="3WA_7dKOY$a" role="3uHU7B">
                <node concept="Xl_RD" id="3WA_7dKOYiZ" role="3uHU7B">
                  <property role="Xl_RC" value="There are instances without value for feature " />
                </node>
                <node concept="2OqwBi" id="3WA_7dKOYN_" role="3uHU7w">
                  <node concept="2OqwBi" id="3WA_7dKPxc5" role="2Oq$k0">
                    <node concept="1YBJjd" id="3WA_7dKPwXH" role="2Oq$k0">
                      <ref role="1YBMHb" node="3WA_7dKOH$o" resolve="ela" />
                    </node>
                    <node concept="2qgKlT" id="3WA_7dKPxMl" role="2OqNvi">
                      <ref role="37wK5l" to="917x:3WA_7dKPrnJ" resolve="getFeature" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="3WA_7dKOZ4M" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1YBJjd" id="3WA_7dKPxXL" role="2OEOjV">
              <ref role="1YBMHb" node="3WA_7dKOH$o" resolve="ela" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3WA_7dKOH$o" role="1YuTPh">
      <property role="TrG5h" value="ela" />
      <ref role="1YaFvo" to="55s9:5QpNmQnSi7L" resolve="EncodeLabelsAction" />
    </node>
  </node>
  <node concept="18kY7G" id="ntYdpmBwBD">
    <property role="TrG5h" value="check_CondenseInstancesStatement" />
    <property role="3GE5qa" value="editing.instances.condense" />
    <node concept="3clFbS" id="ntYdpmBwBE" role="18ibNy" />
    <node concept="1YaCAy" id="ntYdpmBwBG" role="1YuTPh">
      <property role="TrG5h" value="cis" />
      <ref role="1YaFvo" to="55s9:5j1RGb7afpO" resolve="CondenseInstancesStatement" />
    </node>
  </node>
</model>

