<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8d90b68f-1502-44b7-b78d-0454e0517b8a(wordlist.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="1" />
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="4" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="veum" ref="r:dd7856aa-5828-444c-bc87-c88a89a8bb82(wordlist.structure)" />
    <import index="pz2c" ref="r:2a308ea0-c7e3-4fa5-a624-ad74ee5cfab5(jetbrains.mps.baseLanguage.util)" />
    <import index="5qo5" ref="r:6d93ddb1-b0b0-4eee-8079-51303666672a(org.iets3.core.expr.simpleTypes.structure)" />
    <import index="55s9" ref="r:349f01e8-2ba4-49f7-be71-679bbbf4b80d(features.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="ckmh" ref="r:a0b09593-26bd-4d75-98f1-657e49dea4f1(create.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="xb2e" ref="r:d2c15c70-47a9-430a-840d-2701a52b993d(wordlist.behavior)" implicit="true" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" implicit="true" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
    <import index="ja9q" ref="r:fc597f30-d1d1-4d82-975e-209a1fdb1f96(statements.structure)" implicit="true" />
    <import index="w8ws" ref="r:371ff547-5eea-4440-a0bb-93d0be22bfcb(statements.behavior)" implicit="true" />
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
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
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1185788614172" name="jetbrains.mps.lang.typesystem.structure.NormalTypeClause" flags="ng" index="mw_s8">
        <child id="1185788644032" name="normalType" index="mwGJk" />
      </concept>
      <concept id="1175147569072" name="jetbrains.mps.lang.typesystem.structure.AbstractSubtypingRule" flags="ig" index="2sgdUx">
        <child id="1175147624276" name="body" index="2sgrp5" />
      </concept>
      <concept id="1175147670730" name="jetbrains.mps.lang.typesystem.structure.SubtypingRule" flags="ig" index="2sgARr" />
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1227096774658" name="jetbrains.mps.lang.typesystem.structure.MessageStatement" flags="ng" index="2OEH$v">
        <child id="1227096802790" name="nodeToReport" index="2OEOjV" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
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
      <concept id="1174663118805" name="jetbrains.mps.lang.typesystem.structure.CreateLessThanInequationStatement" flags="nn" index="1ZobV4" />
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
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
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
  <node concept="1YbPZF" id="1UULepO1m1E">
    <property role="TrG5h" value="typeof_WordlistLoader" />
    <property role="3GE5qa" value="wordlist" />
    <node concept="3clFbS" id="1UULepO1m1F" role="18ibNy">
      <node concept="1Z5TYs" id="1UULepO1mbE" role="3cqZAp">
        <node concept="mw_s8" id="1UULepO1mcN" role="1ZfhKB">
          <node concept="2pJPEk" id="1UULepO1mcJ" role="mwGJk">
            <node concept="2pJPED" id="1UULepO1mdn" role="2pJPEn">
              <ref role="2pJxaS" to="veum:1UULepNY25E" resolve="PhraselistType" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="1UULepO1mbH" role="1ZfhK$">
          <node concept="1Z2H0r" id="1UULepO1m1O" role="mwGJk">
            <node concept="1YBJjd" id="1UULepO1m3$" role="1Z2MuG">
              <ref role="1YBMHb" node="1UULepO1m1H" resolve="wl" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1UULepO1m1H" role="1YuTPh">
      <property role="TrG5h" value="wl" />
      <ref role="1YaFvo" to="veum:1UULepNY8iN" resolve="WordlistLoader" />
    </node>
  </node>
  <node concept="18kY7G" id="483p1NoGqzr">
    <property role="TrG5h" value="check_WordlistItem" />
    <property role="3GE5qa" value="phraselist.phrase" />
    <node concept="3clFbS" id="483p1NoGqzs" role="18ibNy">
      <node concept="3clFbJ" id="483p1NoGqzy" role="3cqZAp">
        <node concept="22lmx$" id="483p1NoGrMZ" role="3clFbw">
          <node concept="3fqX7Q" id="483p1NoGr$m" role="3uHU7B">
            <node concept="2OqwBi" id="483p1NoGr$o" role="3fr31v">
              <node concept="2OqwBi" id="483p1NoGr$p" role="2Oq$k0">
                <node concept="1YBJjd" id="483p1NoGr$q" role="2Oq$k0">
                  <ref role="1YBMHb" node="483p1NoGqzu" resolve="wli" />
                </node>
                <node concept="3TrcHB" id="483p1NoGr$r" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
              <node concept="liA8E" id="483p1NoGr$s" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.matches(java.lang.String):boolean" resolve="matches" />
                <node concept="Xl_RD" id="483p1NoGr$t" role="37wK5m">
                  <property role="Xl_RC" value="[a-zA-Z$[_]][a-zA-Z0-9$[_]]*" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2YIFZM" id="DxJezr2qvJ" role="3uHU7w">
            <ref role="1Pybhc" to="pz2c:6FltliuC5is" resolve="IdentifierConstraintsUtil" />
            <ref role="37wK5l" to="pz2c:DxJezr2d4j" resolve="isJavaReserved" />
            <node concept="2OqwBi" id="483p1NoGrfc" role="37wK5m">
              <node concept="1YBJjd" id="483p1NoGr1f" role="2Oq$k0">
                <ref role="1YBMHb" node="483p1NoGqzu" resolve="wli" />
              </node>
              <node concept="3TrcHB" id="483p1NoGrsn" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="483p1NoGqz$" role="3clFbx">
          <node concept="2MkqsV" id="483p1NoGrR6" role="3cqZAp">
            <node concept="3cpWs3" id="483p1NoGs8U" role="2MkJ7o">
              <node concept="2OqwBi" id="483p1NoGsmi" role="3uHU7w">
                <node concept="1YBJjd" id="483p1NoGs9c" role="2Oq$k0">
                  <ref role="1YBMHb" node="483p1NoGqzu" resolve="wli" />
                </node>
                <node concept="3TrcHB" id="483p1NoGszv" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
              <node concept="Xl_RD" id="483p1NoGrRi" role="3uHU7B">
                <property role="Xl_RC" value="Should not be named " />
              </node>
            </node>
            <node concept="2OqwBi" id="483p1NoGsVo" role="2OEOjV">
              <node concept="1YBJjd" id="483p1NoGsEX" role="2Oq$k0">
                <ref role="1YBMHb" node="483p1NoGqzu" resolve="wli" />
              </node>
              <node concept="1mfA1w" id="483p1NoGtcM" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="483p1NoGqzu" role="1YuTPh">
      <property role="TrG5h" value="wli" />
      <ref role="1YaFvo" to="veum:7bbTq02c4Xg" resolve="PhraselistItem" />
    </node>
  </node>
  <node concept="1YbPZF" id="I1pY2rQDU9">
    <property role="TrG5h" value="typeof_StringConstant" />
    <property role="3GE5qa" value="wordlist.condition" />
    <node concept="3clFbS" id="I1pY2rQDUa" role="18ibNy">
      <node concept="3clFbH" id="I1pY2rQK33" role="3cqZAp" />
      <node concept="1Z5TYs" id="I1pY2rQE3i" role="3cqZAp">
        <node concept="mw_s8" id="I1pY2rQE3A" role="1ZfhKB">
          <node concept="2pJPEk" id="I1pY2rRllD" role="mwGJk">
            <node concept="2pJPED" id="I1pY2rRllP" role="2pJPEn">
              <ref role="2pJxaS" to="5qo5:4rZeNQ6OYR7" resolve="StringType" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="I1pY2rQE3l" role="1ZfhK$">
          <node concept="1Z2H0r" id="I1pY2rQDUj" role="mwGJk">
            <node concept="1YBJjd" id="I1pY2rQDUz" role="1Z2MuG">
              <ref role="1YBMHb" node="I1pY2rQDUc" resolve="sc" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="I1pY2rQDUc" role="1YuTPh">
      <property role="TrG5h" value="sc" />
      <ref role="1YaFvo" to="veum:I1pY2rQ8qL" resolve="TermConstant" />
    </node>
  </node>
  <node concept="1YbPZF" id="I1pY2rRlM8">
    <property role="TrG5h" value="typeof_DeleteByCondition" />
    <property role="3GE5qa" value="wordlist.editing" />
    <node concept="3clFbS" id="I1pY2rRlM9" role="18ibNy">
      <node concept="1Z5TYs" id="I1pY2rRmfo" role="3cqZAp">
        <property role="3wDh2S" value="true" />
        <node concept="mw_s8" id="I1pY2rRmfq" role="1ZfhK$">
          <node concept="1Z2H0r" id="I1pY2rRmfr" role="mwGJk">
            <node concept="2OqwBi" id="I1pY2rRmfs" role="1Z2MuG">
              <node concept="1YBJjd" id="I1pY2rRmft" role="2Oq$k0">
                <ref role="1YBMHb" node="I1pY2rRlMb" resolve="dbc" />
              </node>
              <node concept="3TrEf2" id="I1pY2rRmfu" role="2OqNvi">
                <ref role="3Tt5mk" to="veum:I1pY2rPO5o" resolve="condition" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="I1pY2rRmig" role="1ZfhKB">
          <node concept="2pJPEk" id="I1pY2rRmic" role="mwGJk">
            <node concept="2pJPED" id="I1pY2rRmir" role="2pJPEn">
              <ref role="2pJxaS" to="5qo5:6sdnDbSlaon" resolve="BooleanType" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="I1pY2rRlMb" role="1YuTPh">
      <property role="TrG5h" value="dbc" />
      <ref role="1YaFvo" to="veum:7bbTq02cipO" resolve="DeleteTermsByConditionStatement" />
    </node>
  </node>
  <node concept="18kY7G" id="7WePDBhfDHI">
    <property role="TrG5h" value="check_PhraseDependentExpression" />
    <property role="3GE5qa" value="wordlist.condition" />
    <node concept="3clFbS" id="7WePDBhfDHJ" role="18ibNy">
      <node concept="3clFbJ" id="7WePDBhfDHP" role="3cqZAp">
        <node concept="3fqX7Q" id="7WePDBhfK$D" role="3clFbw">
          <node concept="2OqwBi" id="7WePDBhfK$F" role="3fr31v">
            <node concept="1YBJjd" id="7WePDBhfK$G" role="2Oq$k0">
              <ref role="1YBMHb" node="7WePDBhfDHL" resolve="pde" />
            </node>
            <node concept="2qgKlT" id="7WePDBhfK$H" role="2OqNvi">
              <ref role="37wK5l" to="xb2e:7WePDBhfG_s" resolve="usesTerms" />
              <node concept="2OqwBi" id="7WePDBhfK$I" role="37wK5m">
                <node concept="1YBJjd" id="7WePDBhfK$J" role="2Oq$k0">
                  <ref role="1YBMHb" node="7WePDBhfDHL" resolve="pde" />
                </node>
                <node concept="3TrEf2" id="7WePDBhfK$K" role="2OqNvi">
                  <ref role="3Tt5mk" to="veum:7WePDBhfDGP" resolve="expression" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="7WePDBhfDHR" role="3clFbx">
          <node concept="2MkqsV" id="7WePDBhfKDS" role="3cqZAp">
            <node concept="Xl_RD" id="7WePDBhfKE4" role="2MkJ7o">
              <property role="Xl_RC" value="The condition does not depend on the term. Type 'term' to reference it." />
            </node>
            <node concept="1YBJjd" id="7WePDBhfKFZ" role="2OEOjV">
              <ref role="1YBMHb" node="7WePDBhfDHL" resolve="pde" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7WePDBhfDHL" role="1YuTPh">
      <property role="TrG5h" value="pde" />
      <ref role="1YaFvo" to="veum:7WePDBhfDGO" resolve="TermDependentExpression" />
    </node>
  </node>
  <node concept="1YbPZF" id="7WePDBhhyYr">
    <property role="TrG5h" value="typeof_PhraseDependentExpression" />
    <property role="3GE5qa" value="wordlist.condition" />
    <node concept="3clFbS" id="7WePDBhhyYs" role="18ibNy">
      <node concept="1Z5TYs" id="7WePDBhhzdk" role="3cqZAp">
        <node concept="mw_s8" id="7WePDBhhzdC" role="1ZfhKB">
          <node concept="1Z2H0r" id="7WePDBhhzd$" role="mwGJk">
            <node concept="2OqwBi" id="7WePDBhhzmA" role="1Z2MuG">
              <node concept="1YBJjd" id="7WePDBhhzdT" role="2Oq$k0">
                <ref role="1YBMHb" node="7WePDBhhyYu" resolve="pde" />
              </node>
              <node concept="3TrEf2" id="7WePDBhhzAG" role="2OqNvi">
                <ref role="3Tt5mk" to="veum:7WePDBhfDGP" resolve="expression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="7WePDBhhzdn" role="1ZfhK$">
          <node concept="1Z2H0r" id="7WePDBhhyYy" role="mwGJk">
            <node concept="1YBJjd" id="7WePDBhhz0i" role="1Z2MuG">
              <ref role="1YBMHb" node="7WePDBhhyYu" resolve="pde" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7WePDBhhyYu" role="1YuTPh">
      <property role="TrG5h" value="pde" />
      <ref role="1YaFvo" to="veum:7WePDBhfDGO" resolve="TermDependentExpression" />
    </node>
  </node>
  <node concept="1YbPZF" id="2L5U6Iovx3">
    <property role="TrG5h" value="typeof_WordItemSelection" />
    <property role="3GE5qa" value="wordlist" />
    <node concept="3clFbS" id="2L5U6Iovx4" role="18ibNy">
      <node concept="1Z5TYs" id="2L5U6IovF4" role="3cqZAp">
        <node concept="mw_s8" id="2L5U6IovFo" role="1ZfhKB">
          <node concept="2pJPEk" id="2L5U6IowO3" role="mwGJk">
            <node concept="2pJPED" id="2L5U6IowOf" role="2pJPEn">
              <ref role="2pJxaS" to="55s9:209684qNLaU" resolve="StringlistFeature" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="2L5U6IovF7" role="1ZfhK$">
          <node concept="1Z2H0r" id="2L5U6Iovxa" role="mwGJk">
            <node concept="1YBJjd" id="2L5U6IovyX" role="1Z2MuG">
              <ref role="1YBMHb" node="2L5U6Iovx6" resolve="wis" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="2L5U6Iovx6" role="1YuTPh">
      <property role="TrG5h" value="wis" />
      <ref role="1YaFvo" to="veum:I1pY2rFuRW" resolve="WordlistSelection" />
    </node>
  </node>
  <node concept="1YbPZF" id="4fA_w_sqrN2">
    <property role="TrG5h" value="typeof_AbstractWordlistType" />
    <property role="3GE5qa" value="wordlist" />
    <node concept="3clFbS" id="4fA_w_sqrN3" role="18ibNy">
      <node concept="1ZobV4" id="4fA_w_ss6gT" role="3cqZAp">
        <property role="3wDh2S" value="false" />
        <node concept="mw_s8" id="4fA_w_ss6gV" role="1ZfhK$">
          <node concept="1Z2H0r" id="4fA_w_ss6gW" role="mwGJk">
            <node concept="1YBJjd" id="4fA_w_ss6gX" role="1Z2MuG">
              <ref role="1YBMHb" node="4fA_w_sqrN5" resolve="awt" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="4fA_w_ss6gY" role="1ZfhKB">
          <node concept="2pJPEk" id="4fA_w_ss6gZ" role="mwGJk">
            <node concept="2pJPED" id="4fA_w_ss6h0" role="2pJPEn">
              <ref role="2pJxaS" to="veum:4fA_w_sqrL8" resolve="AbstractWordlistType" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="4fA_w_sqrN5" role="1YuTPh">
      <property role="TrG5h" value="awt" />
      <ref role="1YaFvo" to="veum:4fA_w_sqrL8" resolve="AbstractWordlistType" />
    </node>
  </node>
  <node concept="1YbPZF" id="4fA_w_srZG6">
    <property role="TrG5h" value="typeof_PhraselistType" />
    <property role="3GE5qa" value="phraselist" />
    <node concept="3clFbS" id="4fA_w_srZG7" role="18ibNy">
      <node concept="1Z5TYs" id="4fA_w_ss2GQ" role="3cqZAp">
        <node concept="mw_s8" id="4fA_w_ss2Ha" role="1ZfhKB">
          <node concept="1YBJjd" id="4fA_w_ssgD0" role="mwGJk">
            <ref role="1YBMHb" node="4fA_w_srZG9" resolve="phraselistType" />
          </node>
        </node>
        <node concept="mw_s8" id="4fA_w_ss2GT" role="1ZfhK$">
          <node concept="1Z2H0r" id="4fA_w_ss2yn" role="mwGJk">
            <node concept="1YBJjd" id="4fA_w_ss2$a" role="1Z2MuG">
              <ref role="1YBMHb" node="4fA_w_srZG9" resolve="phraselistType" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="4fA_w_srZG9" role="1YuTPh">
      <property role="TrG5h" value="phraselistType" />
      <ref role="1YaFvo" to="veum:1UULepNY25E" resolve="PhraselistType" />
    </node>
  </node>
  <node concept="2sgARr" id="4fA_w_srZGA">
    <property role="3GE5qa" value="phraselist" />
    <property role="TrG5h" value="pl" />
    <node concept="3clFbS" id="4fA_w_srZGB" role="2sgrp5">
      <node concept="3cpWs6" id="4fA_w_srZO0" role="3cqZAp">
        <node concept="2pJPEk" id="4fA_w_srZJ9" role="3cqZAk">
          <node concept="2pJPED" id="4fA_w_srZLc" role="2pJPEn">
            <ref role="2pJxaS" to="veum:4fA_w_sqrL8" resolve="AbstractWordlistType" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="4fA_w_srZGD" role="1YuTPh">
      <property role="TrG5h" value="phraselistType" />
      <ref role="1YaFvo" to="veum:1UULepNY25E" resolve="PhraselistType" />
    </node>
  </node>
  <node concept="18kY7G" id="7YOY7Y$PGMt">
    <property role="TrG5h" value="check_AsNewListInitialization" />
    <property role="3GE5qa" value="wordlist.initialization" />
    <node concept="3clFbS" id="7YOY7Y$PGMu" role="18ibNy">
      <node concept="3SKdUt" id="7YOY7Y$PRog" role="3cqZAp">
        <node concept="3SKdUq" id="7YOY7Y$PRoi" role="3SKWNk">
          <property role="3SKdUp" value="get wordlist" />
        </node>
      </node>
      <node concept="3cpWs8" id="7YOY7Y$PUnD" role="3cqZAp">
        <node concept="3cpWsn" id="7YOY7Y$PUnG" role="3cpWs9">
          <property role="TrG5h" value="list" />
          <node concept="3Tqbb2" id="7YOY7Y$PUnB" role="1tU5fm">
            <ref role="ehGHo" to="veum:4fA_w_sqrL8" resolve="AbstractWordlistType" />
          </node>
          <node concept="1PxgMI" id="7YOY7Y$PU4b" role="33vP2m">
            <node concept="chp4Y" id="7YOY7Y$PUfD" role="3oSUPX">
              <ref role="cht4Q" to="veum:4fA_w_sqrL8" resolve="AbstractWordlistType" />
            </node>
            <node concept="2OqwBi" id="7YOY7Y$PSvC" role="1m5AlR">
              <node concept="1PxgMI" id="7YOY7Y$PS7p" role="2Oq$k0">
                <node concept="chp4Y" id="4IazLL42lq7" role="3oSUPX">
                  <ref role="cht4Q" to="ckmh:4Z2dWAVu5W2" resolve="CreateStatement" />
                </node>
                <node concept="2OqwBi" id="7YOY7Y$PR$S" role="1m5AlR">
                  <node concept="1YBJjd" id="7YOY7Y$PRoT" role="2Oq$k0">
                    <ref role="1YBMHb" node="7YOY7Y$PGMw" resolve="anl" />
                  </node>
                  <node concept="1mfA1w" id="7YOY7Y$PRPY" role="2OqNvi" />
                </node>
              </node>
              <node concept="3TrEf2" id="7YOY7Y$PTkR" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:1UULepNU6GA" resolve="type" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2Gpval" id="7YOY7Y$PGM$" role="3cqZAp">
        <node concept="2GrKxI" id="7YOY7Y$PGM_" role="2Gsz3X">
          <property role="TrG5h" value="term" />
        </node>
        <node concept="2OqwBi" id="7YOY7Y$PGYJ" role="2GsD0m">
          <node concept="1YBJjd" id="7YOY7Y$PGMS" role="2Oq$k0">
            <ref role="1YBMHb" node="7YOY7Y$PGMw" resolve="anl" />
          </node>
          <node concept="3Tsc0h" id="7YOY7Y$PHa9" role="2OqNvi">
            <ref role="3TtcxE" to="veum:7YOY7Y$P4co" resolve="entries" />
          </node>
        </node>
        <node concept="3clFbS" id="7YOY7Y$PGMB" role="2LFqv$">
          <node concept="3clFbJ" id="7YOY7Y_44Uw" role="3cqZAp">
            <node concept="3clFbS" id="7YOY7Y_44Uy" role="3clFbx">
              <node concept="2MkqsV" id="7YOY7Y_4iXv" role="3cqZAp">
                <node concept="Xl_RD" id="7YOY7Y_4iXI" role="2MkJ7o">
                  <property role="Xl_RC" value="Trying to add one or more empty terms to wordlist." />
                </node>
                <node concept="1YBJjd" id="7YOY7Y_4iYz" role="2OEOjV">
                  <ref role="1YBMHb" node="7YOY7Y$PGMw" resolve="anl" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="7YOY7Y_4i4A" role="3clFbw">
              <node concept="2OqwBi" id="7YOY7Y_4i4C" role="3fr31v">
                <node concept="2OqwBi" id="7YOY7Y_4i4D" role="2Oq$k0">
                  <node concept="2OqwBi" id="7YOY7Y_4i4E" role="2Oq$k0">
                    <node concept="1eOMI4" id="7YOY7Y_4i4F" role="2Oq$k0">
                      <node concept="10QFUN" id="7YOY7Y_4i4G" role="1eOMHV">
                        <node concept="3uibUv" id="7YOY7Y_4i4H" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2GrUjf" id="7YOY7Y_4i4I" role="10QFUP">
                          <ref role="2Gs0qQ" node="7YOY7Y$PGM_" resolve="term" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7YOY7Y_4i4J" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getProperties():java.lang.Iterable" resolve="getProperties" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7YOY7Y_4i4K" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Iterable.iterator():java.util.Iterator" resolve="iterator" />
                  </node>
                </node>
                <node concept="liA8E" id="7YOY7Y_4i4L" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Iterator.hasNext():boolean" resolve="hasNext" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7YOY7Y$PHi4" role="3cqZAp">
            <node concept="3clFbS" id="7YOY7Y$PHi6" role="3clFbx">
              <node concept="3SKdUt" id="7YOY7Y_3Vkp" role="3cqZAp">
                <node concept="3SKdUq" id="7YOY7Y_3Vkr" role="3SKWNk">
                  <property role="3SKdUp" value="TODO: message" />
                </node>
              </node>
              <node concept="2MkqsV" id="7YOY7Y$PI7M" role="3cqZAp">
                <node concept="Xl_RD" id="7YOY7Y$PI7Y" role="2MkJ7o">
                  <property role="Xl_RC" value="this is not right" />
                </node>
                <node concept="2GrUjf" id="7YOY7Y$PMTp" role="2OEOjV">
                  <ref role="2Gs0qQ" node="7YOY7Y$PGM_" resolve="term" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="7YOY7Y$Q57R" role="3clFbw">
              <node concept="2OqwBi" id="7YOY7Y$Q57T" role="3fr31v">
                <node concept="37vLTw" id="7YOY7Y$Q57U" role="2Oq$k0">
                  <ref role="3cqZAo" node="7YOY7Y$PUnG" resolve="list" />
                </node>
                <node concept="2qgKlT" id="7YOY7Y$Q57V" role="2OqNvi">
                  <ref role="37wK5l" to="xb2e:7YOY7Y$PQzA" resolve="checkTerm" />
                  <node concept="2OqwBi" id="7YOY7Y$Q57W" role="37wK5m">
                    <node concept="2GrUjf" id="7YOY7Y$Q57X" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="7YOY7Y$PGM_" resolve="term" />
                    </node>
                    <node concept="3TrcHB" id="7YOY7Y$Q57Y" role="2OqNvi">
                      <ref role="3TsBF5" to="tpee:f$Xl_Oh" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7YOY7Y$PGMw" role="1YuTPh">
      <property role="TrG5h" value="anl" />
      <ref role="1YaFvo" to="veum:7YOY7Y$OWZW" resolve="AsNewListInitialization" />
    </node>
  </node>
  <node concept="18kY7G" id="7YOY7Y_1YHm">
    <property role="TrG5h" value="check_AddTermExpr" />
    <property role="3GE5qa" value="wordlist.editing" />
    <node concept="3clFbS" id="7YOY7Y_1YHn" role="18ibNy">
      <node concept="3cpWs8" id="7YOY7Y_2Use" role="3cqZAp">
        <node concept="3cpWsn" id="7YOY7Y_2Usf" role="3cpWs9">
          <property role="TrG5h" value="list" />
          <node concept="3Tqbb2" id="7YOY7Y_2Usg" role="1tU5fm">
            <ref role="ehGHo" to="veum:4fA_w_sqrL8" resolve="AbstractWordlistType" />
          </node>
          <node concept="1PxgMI" id="7YOY7Y_2Ush" role="33vP2m">
            <node concept="chp4Y" id="7YOY7Y_2Usi" role="3oSUPX">
              <ref role="cht4Q" to="veum:4fA_w_sqrL8" resolve="AbstractWordlistType" />
            </node>
            <node concept="2OqwBi" id="7YOY7Y_2XwR" role="1m5AlR">
              <node concept="2OqwBi" id="7YOY7Y_2Usm" role="2Oq$k0">
                <node concept="1YBJjd" id="7YOY7Y_2UO$" role="2Oq$k0">
                  <ref role="1YBMHb" node="7YOY7Y_1YHp" resolve="ats" />
                </node>
                <node concept="2Xjw5R" id="7YOY7Y_2WNq" role="2OqNvi">
                  <node concept="1xMEDy" id="7YOY7Y_2WNs" role="1xVPHs">
                    <node concept="chp4Y" id="4IazLL541YB" role="ri$Ld">
                      <ref role="cht4Q" to="ja9q:2t3FM7fJm6J" resolve="TypeRelatedStatement" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2qgKlT" id="7YOY7Y_2Y9V" role="2OqNvi">
                <ref role="37wK5l" to="w8ws:2t3FM7fWBTc" resolve="getRelatedNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2Gpval" id="7YOY7Y_2Usq" role="3cqZAp">
        <node concept="2GrKxI" id="7YOY7Y_2Usr" role="2Gsz3X">
          <property role="TrG5h" value="term" />
        </node>
        <node concept="2OqwBi" id="7YOY7Y_2Uss" role="2GsD0m">
          <node concept="1YBJjd" id="7YOY7Y_2UYD" role="2Oq$k0">
            <ref role="1YBMHb" node="7YOY7Y_1YHp" resolve="ats" />
          </node>
          <node concept="3Tsc0h" id="7YOY7Y_2W6S" role="2OqNvi">
            <ref role="3TtcxE" to="veum:10Ig25P8HlJ" resolve="terms" />
          </node>
        </node>
        <node concept="3clFbS" id="7YOY7Y_2Usv" role="2LFqv$">
          <node concept="3clFbJ" id="7YOY7Y_4BFZ" role="3cqZAp">
            <node concept="3clFbS" id="7YOY7Y_4BG0" role="3clFbx">
              <node concept="2MkqsV" id="7YOY7Y_4BG1" role="3cqZAp">
                <node concept="Xl_RD" id="7YOY7Y_4BG2" role="2MkJ7o">
                  <property role="Xl_RC" value="Trying to add one or more empty terms to wordlist." />
                </node>
                <node concept="1YBJjd" id="7YOY7Y_8fHx" role="2OEOjV">
                  <ref role="1YBMHb" node="7YOY7Y_1YHp" resolve="ats" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="7YOY7Y_4BG4" role="3clFbw">
              <node concept="2OqwBi" id="7YOY7Y_4BG5" role="3fr31v">
                <node concept="2OqwBi" id="7YOY7Y_4BG6" role="2Oq$k0">
                  <node concept="2OqwBi" id="7YOY7Y_4BG7" role="2Oq$k0">
                    <node concept="1eOMI4" id="7YOY7Y_4BG8" role="2Oq$k0">
                      <node concept="10QFUN" id="7YOY7Y_4BG9" role="1eOMHV">
                        <node concept="3uibUv" id="7YOY7Y_4BGa" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2GrUjf" id="7YOY7Y_4BGb" role="10QFUP">
                          <ref role="2Gs0qQ" node="7YOY7Y_2Usr" resolve="term" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7YOY7Y_4BGc" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getProperties():java.lang.Iterable" resolve="getProperties" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7YOY7Y_4BGd" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Iterable.iterator():java.util.Iterator" resolve="iterator" />
                  </node>
                </node>
                <node concept="liA8E" id="7YOY7Y_4BGe" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Iterator.hasNext():boolean" resolve="hasNext" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7YOY7Y_2Usw" role="3cqZAp">
            <node concept="3clFbS" id="7YOY7Y_2Usx" role="3clFbx">
              <node concept="3SKdUt" id="7YOY7Y_4GCU" role="3cqZAp">
                <node concept="3SKdUq" id="7YOY7Y_4GCV" role="3SKWNk">
                  <property role="3SKdUp" value="TODO: message" />
                </node>
              </node>
              <node concept="2MkqsV" id="7YOY7Y_2Usy" role="3cqZAp">
                <node concept="Xl_RD" id="7YOY7Y_2Usz" role="2MkJ7o">
                  <property role="Xl_RC" value="this is not right" />
                </node>
                <node concept="2GrUjf" id="7YOY7Y_2Us$" role="2OEOjV">
                  <ref role="2Gs0qQ" node="7YOY7Y_2Usr" resolve="term" />
                </node>
              </node>
            </node>
            <node concept="22lmx$" id="7YOY7Y_3jss" role="3clFbw">
              <node concept="2OqwBi" id="7YOY7Y_3kOP" role="3uHU7w">
                <node concept="2OqwBi" id="7YOY7Y_3jZP" role="2Oq$k0">
                  <node concept="2GrUjf" id="7YOY7Y_3jC$" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="7YOY7Y_2Usr" resolve="term" />
                  </node>
                  <node concept="3TrcHB" id="7YOY7Y_3kg1" role="2OqNvi">
                    <ref role="3TsBF5" to="5qo5:4rZeNQ6OYRb" resolve="value" />
                  </node>
                </node>
                <node concept="17RlXB" id="7YOY7Y_3lsc" role="2OqNvi" />
              </node>
              <node concept="3fqX7Q" id="7YOY7Y_2Us_" role="3uHU7B">
                <node concept="2OqwBi" id="7YOY7Y_2UsA" role="3fr31v">
                  <node concept="37vLTw" id="7YOY7Y_2UsB" role="2Oq$k0">
                    <ref role="3cqZAo" node="7YOY7Y_2Usf" resolve="list" />
                  </node>
                  <node concept="2qgKlT" id="7YOY7Y_2UsC" role="2OqNvi">
                    <ref role="37wK5l" to="xb2e:7YOY7Y$PQzA" resolve="checkTerm" />
                    <node concept="2OqwBi" id="7YOY7Y_2UsD" role="37wK5m">
                      <node concept="2GrUjf" id="7YOY7Y_2UsE" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="7YOY7Y_2Usr" resolve="term" />
                      </node>
                      <node concept="3TrcHB" id="7YOY7Y_3j3K" role="2OqNvi">
                        <ref role="3TsBF5" to="5qo5:4rZeNQ6OYRb" resolve="value" />
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
    <node concept="1YaCAy" id="7YOY7Y_1YHp" role="1YuTPh">
      <property role="TrG5h" value="ats" />
      <ref role="1YaFvo" to="veum:7bbTq02cipP" resolve="AddTermStatement" />
    </node>
  </node>
  <node concept="18kY7G" id="4fxn4AStrXn">
    <property role="TrG5h" value="check_FromFeatureInitialization" />
    <property role="3GE5qa" value="wordlist.initialization" />
    <node concept="3clFbS" id="4fxn4AStrXo" role="18ibNy">
      <node concept="3SKdUt" id="4fxn4AStrXu" role="3cqZAp">
        <node concept="3SKdUq" id="4fxn4AStrXv" role="3SKWNk">
          <property role="3SKdUp" value="feature must be of type string OR encodedString" />
        </node>
      </node>
      <node concept="3cpWs8" id="4fxn4AStxAj" role="3cqZAp">
        <node concept="3cpWsn" id="4fxn4AStxAm" role="3cpWs9">
          <property role="TrG5h" value="feature" />
          <node concept="3Tqbb2" id="4fxn4AStxAh" role="1tU5fm">
            <ref role="ehGHo" to="55s9:46b_jc7VwtB" resolve="FeatureType" />
          </node>
          <node concept="1PxgMI" id="4fxn4AStxnY" role="33vP2m">
            <node concept="chp4Y" id="4fxn4AStxwp" role="3oSUPX">
              <ref role="cht4Q" to="55s9:46b_jc7VwtB" resolve="FeatureType" />
            </node>
            <node concept="2OqwBi" id="4fxn4AStwKz" role="1m5AlR">
              <node concept="2OqwBi" id="4fxn4ASts7g" role="2Oq$k0">
                <node concept="1YBJjd" id="4fxn4AStrXD" role="2Oq$k0">
                  <ref role="1YBMHb" node="4fxn4AStrXq" resolve="ffi" />
                </node>
                <node concept="3TrEf2" id="4fxn4AStwld" role="2OqNvi">
                  <ref role="3Tt5mk" to="veum:4fxn4ASronk" resolve="grabber" />
                </node>
              </node>
              <node concept="2qgKlT" id="4fxn4AStx3W" role="2OqNvi">
                <ref role="37wK5l" to="64zb:4fxn4AStsAS" resolve="grabItem" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="4fxn4AStxXr" role="3cqZAp">
        <node concept="3clFbS" id="4fxn4AStxXt" role="3clFbx">
          <node concept="2MkqsV" id="4fxn4ASt_dn" role="3cqZAp">
            <node concept="Xl_RD" id="4fxn4ASt_dA" role="2MkJ7o">
              <property role="Xl_RC" value="Feature needs to be of type 'string'." />
            </node>
            <node concept="1YBJjd" id="4fxn4ASt_eD" role="2OEOjV">
              <ref role="1YBMHb" node="4fxn4AStrXq" resolve="ffi" />
            </node>
          </node>
        </node>
        <node concept="3fqX7Q" id="4fxn4ASt_4C" role="3clFbw">
          <node concept="2OqwBi" id="4fxn4ASt_4E" role="3fr31v">
            <node concept="2OqwBi" id="4fxn4ASt_4F" role="2Oq$k0">
              <node concept="37vLTw" id="4fxn4ASt_4G" role="2Oq$k0">
                <ref role="3cqZAo" node="4fxn4AStxAm" resolve="feature" />
              </node>
              <node concept="3TrEf2" id="4fxn4ASt_4H" role="2OqNvi">
                <ref role="3Tt5mk" to="55s9:46b_jc7VwXv" resolve="type" />
              </node>
            </node>
            <node concept="1mIQ4w" id="4fxn4ASt_4I" role="2OqNvi">
              <node concept="chp4Y" id="4fxn4ASt_4J" role="cj9EA">
                <ref role="cht4Q" to="5qo5:4rZeNQ6OYR7" resolve="StringType" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="4fxn4AStrXq" role="1YuTPh">
      <property role="TrG5h" value="ffi" />
      <ref role="1YaFvo" to="veum:4fxn4ASrnlb" resolve="FromFeatureInitialization" />
    </node>
  </node>
</model>

