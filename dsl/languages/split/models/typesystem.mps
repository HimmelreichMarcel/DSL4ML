<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:05055938-2e8f-4d24-ba09-6af91e726b60(split.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="1" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="w3db" ref="r:372863d1-da2c-4d51-9ce5-ef15e0220a9a(split.structure)" implicit="true" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" implicit="true" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
    <import index="lcps" ref="r:a220a28d-d4d7-4d46-a236-0578bf554f13(split.behavior)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="5qo5" ref="r:6d93ddb1-b0b0-4eee-8079-51303666672a(org.iets3.core.expr.simpleTypes.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
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
      <concept id="1070534436861" name="jetbrains.mps.baseLanguage.structure.FloatType" flags="in" index="10OMs4" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
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
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1207055528241" name="jetbrains.mps.lang.typesystem.structure.WarningStatement" flags="nn" index="a7r0C">
        <child id="1207055552304" name="warningText" index="a7wSD" />
      </concept>
      <concept id="1224760201579" name="jetbrains.mps.lang.typesystem.structure.InfoStatement" flags="nn" index="Dpp1Q">
        <child id="1224760230762" name="infoText" index="Dpw9R" />
      </concept>
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
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
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
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="18kY7G" id="crj2MTJa9J">
    <property role="TrG5h" value="check_SplitStatement" />
    <node concept="3clFbS" id="crj2MTJa9K" role="18ibNy">
      <node concept="3SKdUt" id="4kZuEukSP1a" role="3cqZAp">
        <node concept="3SKdUq" id="4kZuEukSP1c" role="3SKWNk">
          <property role="3SKdUp" value="TODO: check if thats okay indeed" />
        </node>
      </node>
      <node concept="3clFbJ" id="4kZuEukSLQM" role="3cqZAp">
        <node concept="3clFbS" id="4kZuEukSLQO" role="3clFbx">
          <node concept="3cpWs6" id="4kZuEukSN$F" role="3cqZAp" />
        </node>
        <node concept="22lmx$" id="4kZuEukT1XQ" role="3clFbw">
          <node concept="2OqwBi" id="4kZuEukSZfR" role="3uHU7B">
            <node concept="2OqwBi" id="4kZuEukSX40" role="2Oq$k0">
              <node concept="1YBJjd" id="4kZuEukSWNN" role="2Oq$k0">
                <ref role="1YBMHb" node="crj2MTJa9M" resolve="ss" />
              </node>
              <node concept="3TrEf2" id="4kZuEukSY_7" role="2OqNvi">
                <ref role="3Tt5mk" to="w3db:crj2MTJa9j" resolve="object" />
              </node>
            </node>
            <node concept="3w_OXm" id="4kZuEukT0I8" role="2OqNvi" />
          </node>
          <node concept="2OqwBi" id="4kZuEukSCxe" role="3uHU7w">
            <node concept="2OqwBi" id="4kZuEukSAux" role="2Oq$k0">
              <node concept="2OqwBi" id="4kZuEukS$jP" role="2Oq$k0">
                <node concept="1YBJjd" id="4kZuEukS$3E" role="2Oq$k0">
                  <ref role="1YBMHb" node="crj2MTJa9M" resolve="ss" />
                </node>
                <node concept="3TrEf2" id="4kZuEukS_Ol" role="2OqNvi">
                  <ref role="3Tt5mk" to="w3db:crj2MTJa9j" resolve="object" />
                </node>
              </node>
              <node concept="2yIwOk" id="4kZuEukSBP3" role="2OqNvi" />
            </node>
            <node concept="liA8E" id="4kZuEukSE28" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractConcept.isAbstract():boolean" resolve="isAbstract" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="4kZuEukSKr6" role="3cqZAp" />
      <node concept="3SKdUt" id="crj2MU3Hzv" role="3cqZAp">
        <node concept="3SKdUq" id="crj2MU3Hzx" role="3SKWNk">
          <property role="3SKdUp" value="check object type" />
        </node>
      </node>
      <node concept="3clFbJ" id="crj2MTJa9W" role="3cqZAp">
        <node concept="3fqX7Q" id="crj2MTJbqR" role="3clFbw">
          <node concept="2OqwBi" id="crj2MTJbqT" role="3fr31v">
            <node concept="2OqwBi" id="crj2MTNE8E" role="2Oq$k0">
              <node concept="2OqwBi" id="crj2MTJbqU" role="2Oq$k0">
                <node concept="1YBJjd" id="crj2MTJbqV" role="2Oq$k0">
                  <ref role="1YBMHb" node="crj2MTJa9M" resolve="ss" />
                </node>
                <node concept="3TrEf2" id="crj2MTJbqW" role="2OqNvi">
                  <ref role="3Tt5mk" to="w3db:crj2MTJa9j" resolve="object" />
                </node>
              </node>
              <node concept="2qgKlT" id="crj2MTNF2y" role="2OqNvi">
                <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
              </node>
            </node>
            <node concept="1mIQ4w" id="crj2MTJbqX" role="2OqNvi">
              <node concept="chp4Y" id="crj2MTJbqY" role="cj9EA">
                <ref role="cht4Q" to="w3db:crj2MTJa9l" resolve="ICanBeSplit" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="crj2MTJa9Y" role="3clFbx">
          <node concept="2MkqsV" id="crj2MTJbwh" role="3cqZAp">
            <node concept="3cpWs3" id="crj2MTJfhd" role="2MkJ7o">
              <node concept="Xl_RD" id="crj2MTJfx9" role="3uHU7w">
                <property role="Xl_RC" value=" cannot be split." />
              </node>
              <node concept="3cpWs3" id="crj2MTJbLQ" role="3uHU7B">
                <node concept="Xl_RD" id="crj2MTJbwt" role="3uHU7B">
                  <property role="Xl_RC" value="Objects of type " />
                </node>
                <node concept="2OqwBi" id="crj2MTJejw" role="3uHU7w">
                  <node concept="2OqwBi" id="crj2MTJdk4" role="2Oq$k0">
                    <node concept="2OqwBi" id="crj2MTJcez" role="2Oq$k0">
                      <node concept="1YBJjd" id="crj2MTJbM8" role="2Oq$k0">
                        <ref role="1YBMHb" node="crj2MTJa9M" resolve="ss" />
                      </node>
                      <node concept="3TrEf2" id="crj2MTJcNY" role="2OqNvi">
                        <ref role="3Tt5mk" to="w3db:crj2MTJa9j" resolve="object" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="crj2MTJdZ5" role="2OqNvi">
                      <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="crj2MTJhT8" role="2OqNvi">
                    <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="crj2MTJgV4" role="2OEOjV">
              <node concept="1YBJjd" id="crj2MTJgvf" role="2Oq$k0">
                <ref role="1YBMHb" node="crj2MTJa9M" resolve="ss" />
              </node>
              <node concept="3TrEf2" id="crj2MTJhF1" role="2OqNvi">
                <ref role="3Tt5mk" to="w3db:crj2MTJa9j" resolve="object" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="crj2MU3ONW" role="3cqZAp" />
        </node>
      </node>
      <node concept="3clFbH" id="crj2MU2XQL" role="3cqZAp" />
      <node concept="3SKdUt" id="crj2MU5fBj" role="3cqZAp">
        <node concept="3SKdUq" id="crj2MU5fBl" role="3SKWNk">
          <property role="3SKdUp" value="check if object is empty" />
        </node>
      </node>
      <node concept="3clFbJ" id="crj2MU3ZC3" role="3cqZAp">
        <node concept="3clFbS" id="crj2MU3ZC5" role="3clFbx">
          <node concept="2MkqsV" id="crj2MU49GO" role="3cqZAp">
            <node concept="Xl_RD" id="crj2MU49H3" role="2MkJ7o">
              <property role="Xl_RC" value="The object to be split is empty." />
            </node>
            <node concept="2OqwBi" id="crj2MU49VQ" role="2OEOjV">
              <node concept="1YBJjd" id="crj2MU49IK" role="2Oq$k0">
                <ref role="1YBMHb" node="crj2MTJa9M" resolve="ss" />
              </node>
              <node concept="3TrEf2" id="crj2MU4blW" role="2OqNvi">
                <ref role="3Tt5mk" to="w3db:crj2MTJa9j" resolve="object" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="crj2MU4bpe" role="3cqZAp" />
        </node>
        <node concept="3clFbC" id="crj2MU488V" role="3clFbw">
          <node concept="3cmrfG" id="crj2MU49ky" role="3uHU7w">
            <property role="3cmrfH" value="0" />
          </node>
          <node concept="2OqwBi" id="crj2MU469m" role="3uHU7B">
            <node concept="1PxgMI" id="crj2MU44ZX" role="2Oq$k0">
              <node concept="chp4Y" id="crj2MU45WS" role="3oSUPX">
                <ref role="cht4Q" to="w3db:crj2MTJa9l" resolve="ICanBeSplit" />
              </node>
              <node concept="2OqwBi" id="crj2MU41N4" role="1m5AlR">
                <node concept="2OqwBi" id="crj2MU40yP" role="2Oq$k0">
                  <node concept="1YBJjd" id="crj2MU40jg" role="2Oq$k0">
                    <ref role="1YBMHb" node="crj2MTJa9M" resolve="ss" />
                  </node>
                  <node concept="3TrEf2" id="crj2MU41EA" role="2OqNvi">
                    <ref role="3Tt5mk" to="w3db:crj2MTJa9j" resolve="object" />
                  </node>
                </node>
                <node concept="2qgKlT" id="crj2MU42RZ" role="2OqNvi">
                  <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                </node>
              </node>
            </node>
            <node concept="2qgKlT" id="crj2MU47fe" role="2OqNvi">
              <ref role="37wK5l" to="lcps:crj2MU3M5y" resolve="getNumberOfItems" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="crj2MU4Die" role="3cqZAp" />
      <node concept="3cpWs8" id="crj2MU2Ua3" role="3cqZAp">
        <node concept="3cpWsn" id="crj2MU2Ua4" role="3cpWs9">
          <property role="TrG5h" value="definedParts" />
          <node concept="A3Dl8" id="crj2MU2Ua5" role="1tU5fm">
            <node concept="3Tqbb2" id="crj2MU2Ua6" role="A3Ik2">
              <ref role="ehGHo" to="w3db:crj2MTJZed" resolve="PartStatement" />
            </node>
          </node>
          <node concept="2OqwBi" id="crj2MU2Ua7" role="33vP2m">
            <node concept="2OqwBi" id="crj2MU2Ua8" role="2Oq$k0">
              <node concept="1YBJjd" id="crj2MU2Ua9" role="2Oq$k0">
                <ref role="1YBMHb" node="crj2MTJa9M" resolve="ss" />
              </node>
              <node concept="3Tsc0h" id="crj2MU2Uaa" role="2OqNvi">
                <ref role="3TtcxE" to="w3db:crj2MTK8yS" resolve="parts" />
              </node>
            </node>
            <node concept="3zZkjj" id="crj2MU2Uab" role="2OqNvi">
              <node concept="1bVj0M" id="crj2MU2Uac" role="23t8la">
                <node concept="3clFbS" id="crj2MU2Uad" role="1bW5cS">
                  <node concept="3clFbF" id="crj2MU2Uae" role="3cqZAp">
                    <node concept="2OqwBi" id="crj2MU2Uaf" role="3clFbG">
                      <node concept="2OqwBi" id="crj2MU2Uag" role="2Oq$k0">
                        <node concept="37vLTw" id="crj2MU2Uah" role="2Oq$k0">
                          <ref role="3cqZAo" node="crj2MU2Uak" resolve="it" />
                        </node>
                        <node concept="3TrEf2" id="crj2MU2Uai" role="2OqNvi">
                          <ref role="3Tt5mk" to="w3db:crj2MTKQut" resolve="amount" />
                        </node>
                      </node>
                      <node concept="3x8VRR" id="crj2MU2VKZ" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="crj2MU2Uak" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="crj2MU2Ual" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="crj2MTL7Wr" role="3cqZAp">
        <node concept="3cpWsn" id="crj2MTL7Ws" role="3cpWs9">
          <property role="TrG5h" value="undefinedParts" />
          <node concept="A3Dl8" id="crj2MTMTtm" role="1tU5fm">
            <node concept="3Tqbb2" id="crj2MTMVbs" role="A3Ik2">
              <ref role="ehGHo" to="w3db:crj2MTJZed" resolve="PartStatement" />
            </node>
          </node>
          <node concept="2OqwBi" id="crj2MTL7Wv" role="33vP2m">
            <node concept="2OqwBi" id="crj2MTL7Ww" role="2Oq$k0">
              <node concept="1YBJjd" id="crj2MTL7Wx" role="2Oq$k0">
                <ref role="1YBMHb" node="crj2MTJa9M" resolve="ss" />
              </node>
              <node concept="3Tsc0h" id="crj2MTL7Wy" role="2OqNvi">
                <ref role="3TtcxE" to="w3db:crj2MTK8yS" resolve="parts" />
              </node>
            </node>
            <node concept="3zZkjj" id="crj2MTL7Wz" role="2OqNvi">
              <node concept="1bVj0M" id="crj2MTL7W$" role="23t8la">
                <node concept="3clFbS" id="crj2MTL7W_" role="1bW5cS">
                  <node concept="3clFbF" id="crj2MTL7WA" role="3cqZAp">
                    <node concept="2OqwBi" id="crj2MTL7WB" role="3clFbG">
                      <node concept="2OqwBi" id="crj2MTL7WC" role="2Oq$k0">
                        <node concept="37vLTw" id="crj2MTL7WD" role="2Oq$k0">
                          <ref role="3cqZAo" node="crj2MTL7WG" resolve="it" />
                        </node>
                        <node concept="3TrEf2" id="crj2MTL7WE" role="2OqNvi">
                          <ref role="3Tt5mk" to="w3db:crj2MTKQut" resolve="amount" />
                        </node>
                      </node>
                      <node concept="3w_OXm" id="crj2MTL7WF" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="crj2MTL7WG" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="crj2MTL7WH" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="crj2MU5hDk" role="3cqZAp" />
      <node concept="3SKdUt" id="crj2MU3GdO" role="3cqZAp">
        <node concept="3SKdUq" id="crj2MU3GdQ" role="3SKWNk">
          <property role="3SKdUp" value="check distribution of topics" />
        </node>
      </node>
      <node concept="3cpWs8" id="crj2MTLa$9" role="3cqZAp">
        <node concept="3cpWsn" id="crj2MTLa$c" role="3cpWs9">
          <property role="TrG5h" value="summedAmount" />
          <node concept="10OMs4" id="crj2MTLaLU" role="1tU5fm" />
          <node concept="2OqwBi" id="crj2MU2RIE" role="33vP2m">
            <node concept="1YBJjd" id="crj2MU2Rl0" role="2Oq$k0">
              <ref role="1YBMHb" node="crj2MTJa9M" resolve="ss" />
            </node>
            <node concept="2qgKlT" id="crj2MU2SOQ" role="2OqNvi">
              <ref role="37wK5l" to="lcps:crj2MU2KXW" resolve="getSummedAmount" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="crj2MU3CLL" role="3cqZAp">
        <node concept="3clFbS" id="crj2MU3CLN" role="3clFbx">
          <node concept="3SKdUt" id="crj2MTKUQr" role="3cqZAp">
            <node concept="3SKdUq" id="crj2MTKUQt" role="3SKWNk">
              <property role="3SKdUp" value="check if summed amount is over 100" />
            </node>
          </node>
          <node concept="3clFbJ" id="crj2MTLhID" role="3cqZAp">
            <node concept="3clFbS" id="crj2MTLhIF" role="3clFbx">
              <node concept="2Gpval" id="crj2MTLjHv" role="3cqZAp">
                <node concept="2GrKxI" id="crj2MTLjHw" role="2Gsz3X">
                  <property role="TrG5h" value="part" />
                </node>
                <node concept="37vLTw" id="crj2MU2VWE" role="2GsD0m">
                  <ref role="3cqZAo" node="crj2MU2Ua4" resolve="definedParts" />
                </node>
                <node concept="3clFbS" id="crj2MTLjHy" role="2LFqv$">
                  <node concept="2MkqsV" id="crj2MTLj7m" role="3cqZAp">
                    <node concept="Xl_RD" id="crj2MTLj7_" role="2MkJ7o">
                      <property role="Xl_RC" value="The summed proportions of all parts exceeds 100%." />
                    </node>
                    <node concept="2OqwBi" id="crj2MU3gh5" role="2OEOjV">
                      <node concept="2GrUjf" id="crj2MTLliA" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="crj2MTLjHw" resolve="part" />
                      </node>
                      <node concept="3TrEf2" id="crj2MU3gFf" role="2OqNvi">
                        <ref role="3Tt5mk" to="w3db:crj2MTKQut" resolve="amount" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eOSWO" id="crj2MTLiXc" role="3clFbw">
              <node concept="37vLTw" id="crj2MTLihW" role="3uHU7B">
                <ref role="3cqZAo" node="crj2MTLa$c" resolve="summedAmount" />
              </node>
              <node concept="3cmrfG" id="crj2MTLiN7" role="3uHU7w">
                <property role="3cmrfH" value="100" />
              </node>
            </node>
            <node concept="3eNFk2" id="crj2MU36Zd" role="3eNLev">
              <node concept="3clFbS" id="crj2MU36Zf" role="3eOfB_">
                <node concept="3SKdUt" id="crj2MU30hb" role="3cqZAp">
                  <node concept="3SKdUq" id="crj2MU30hc" role="3SKWNk">
                    <property role="3SKdUp" value="check if summed amount leafes space for undefined parts" />
                  </node>
                </node>
                <node concept="2Gpval" id="crj2MU36jD" role="3cqZAp">
                  <node concept="2GrKxI" id="crj2MU36jE" role="2Gsz3X">
                    <property role="TrG5h" value="part" />
                  </node>
                  <node concept="37vLTw" id="crj2MU36jF" role="2GsD0m">
                    <ref role="3cqZAo" node="crj2MU2Ua4" resolve="definedParts" />
                  </node>
                  <node concept="3clFbS" id="crj2MU36jG" role="2LFqv$">
                    <node concept="2MkqsV" id="crj2MU36jH" role="3cqZAp">
                      <node concept="Xl_RD" id="crj2MU36jI" role="2MkJ7o">
                        <property role="Xl_RC" value="The summed proportion of the highlighted parts left no items for parts with undefined proportion." />
                      </node>
                      <node concept="2OqwBi" id="crj2MU3fz5" role="2OEOjV">
                        <node concept="2GrUjf" id="crj2MU36jJ" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="crj2MU36jE" resolve="part" />
                        </node>
                        <node concept="3TrEf2" id="crj2MU3fXf" role="2OqNvi">
                          <ref role="3Tt5mk" to="w3db:crj2MTKQut" resolve="amount" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="crj2MU33Z5" role="3eO9$A">
                <node concept="3clFbC" id="crj2MU34En" role="3uHU7w">
                  <node concept="3cmrfG" id="crj2MU34Uv" role="3uHU7w">
                    <property role="3cmrfH" value="100" />
                  </node>
                  <node concept="37vLTw" id="crj2MU344w" role="3uHU7B">
                    <ref role="3cqZAo" node="crj2MTLa$c" resolve="summedAmount" />
                  </node>
                </node>
                <node concept="3eOSWO" id="crj2MU335P" role="3uHU7B">
                  <node concept="2OqwBi" id="crj2MU324k" role="3uHU7B">
                    <node concept="37vLTw" id="crj2MU31Gr" role="2Oq$k0">
                      <ref role="3cqZAo" node="crj2MTL7Ws" resolve="undefinedParts" />
                    </node>
                    <node concept="34oBXx" id="crj2MU32c2" role="2OqNvi" />
                  </node>
                  <node concept="3cmrfG" id="crj2MU33gj" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3eOSWO" id="crj2MU3DXl" role="3clFbw">
          <node concept="37vLTw" id="crj2MU3Dsr" role="3uHU7B">
            <ref role="3cqZAo" node="crj2MTLa$c" resolve="summedAmount" />
          </node>
          <node concept="3cmrfG" id="crj2MU3Ebn" role="3uHU7w">
            <property role="3cmrfH" value="0" />
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="crj2MU3Ien" role="3cqZAp" />
      <node concept="3SKdUt" id="crj2MU3J$6" role="3cqZAp">
        <node concept="3SKdUq" id="crj2MU3J$8" role="3SKWNk">
          <property role="3SKdUp" value="check for empty parts" />
        </node>
      </node>
      <node concept="3cpWs8" id="crj2MU3KTX" role="3cqZAp">
        <node concept="3cpWsn" id="crj2MU3KU0" role="3cpWs9">
          <property role="TrG5h" value="emptyPartThreshold" />
          <node concept="10OMs4" id="crj2MU3L$Z" role="1tU5fm" />
          <node concept="2OqwBi" id="crj2MU4bCY" role="33vP2m">
            <node concept="1YBJjd" id="crj2MU4bpn" role="2Oq$k0">
              <ref role="1YBMHb" node="crj2MTJa9M" resolve="ss" />
            </node>
            <node concept="2qgKlT" id="crj2MU4d3e" role="2OqNvi">
              <ref role="37wK5l" to="lcps:crj2MU3L_m" resolve="getEmptyPartThreshold" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="crj2MU4e9B" role="3cqZAp">
        <node concept="3clFbS" id="crj2MU4e9D" role="3clFbx">
          <node concept="Dpp1Q" id="crj2MU4hfe" role="3cqZAp">
            <node concept="Xl_RD" id="crj2MU4hfz" role="Dpw9R">
              <property role="Xl_RC" value="The size of the object to be split is unknown. Split parts might be empty." />
            </node>
            <node concept="2OqwBi" id="crj2MU4hxe" role="2OEOjV">
              <node concept="1YBJjd" id="crj2MU4hk8" role="2Oq$k0">
                <ref role="1YBMHb" node="crj2MTJa9M" resolve="ss" />
              </node>
              <node concept="3TrEf2" id="crj2MU4iEG" role="2OqNvi">
                <ref role="3Tt5mk" to="w3db:crj2MTJa9j" resolve="object" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbC" id="crj2MU5ajw" role="3clFbw">
          <node concept="37vLTw" id="crj2MU4fap" role="3uHU7B">
            <ref role="3cqZAo" node="crj2MU3KU0" resolve="emptyPartThreshold" />
          </node>
          <node concept="3cmrfG" id="crj2MU4gXR" role="3uHU7w">
            <property role="3cmrfH" value="-1" />
          </node>
        </node>
        <node concept="9aQIb" id="crj2MU5gCm" role="9aQIa">
          <node concept="3clFbS" id="crj2MU5gCn" role="9aQI4">
            <node concept="3SKdUt" id="crj2MU5gTJ" role="3cqZAp">
              <node concept="3SKdUq" id="crj2MU5gTK" role="3SKWNk">
                <property role="3SKdUp" value="check if defined proportions will result in empty parts" />
              </node>
            </node>
            <node concept="2Gpval" id="crj2MU5gTR" role="3cqZAp">
              <node concept="2GrKxI" id="crj2MU5gTT" role="2Gsz3X">
                <property role="TrG5h" value="part" />
              </node>
              <node concept="37vLTw" id="crj2MU5m5i" role="2GsD0m">
                <ref role="3cqZAo" node="crj2MU2Ua4" resolve="definedParts" />
              </node>
              <node concept="3clFbS" id="crj2MU5gTX" role="2LFqv$">
                <node concept="3cpWs8" id="crj2MU5mU_" role="3cqZAp">
                  <node concept="3cpWsn" id="crj2MU5mUC" role="3cpWs9">
                    <property role="TrG5h" value="amount" />
                    <node concept="10OMs4" id="crj2MU5mUz" role="1tU5fm" />
                    <node concept="2YIFZM" id="crj2MU5mVc" role="33vP2m">
                      <ref role="37wK5l" to="wyt6:~Float.parseFloat(java.lang.String):float" resolve="parseFloat" />
                      <ref role="1Pybhc" to="wyt6:~Float" resolve="Float" />
                      <node concept="2OqwBi" id="crj2MU5nJk" role="37wK5m">
                        <node concept="2OqwBi" id="crj2MU5mpC" role="2Oq$k0">
                          <node concept="2GrUjf" id="crj2MU5m69" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="crj2MU5gTT" resolve="part" />
                          </node>
                          <node concept="3TrEf2" id="crj2MU5mNJ" role="2OqNvi">
                            <ref role="3Tt5mk" to="w3db:crj2MTKQut" resolve="amount" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="crj2MU5o77" role="2OqNvi">
                          <ref role="3TsBF5" to="5qo5:4rZeNQ6Oert" resolve="value" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="crj2MU5m5X" role="3cqZAp">
                  <node concept="3clFbS" id="crj2MU5m5Z" role="3clFbx">
                    <node concept="2MkqsV" id="crj2MU5VK5" role="3cqZAp">
                      <node concept="Xl_RD" id="crj2MU5VK7" role="2MkJ7o">
                        <property role="Xl_RC" value="The resulting part with this proportion will be empty." />
                      </node>
                      <node concept="2OqwBi" id="crj2MU5VK8" role="2OEOjV">
                        <node concept="2GrUjf" id="crj2MU5VK9" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="crj2MU5gTT" resolve="part" />
                        </node>
                        <node concept="3TrEf2" id="crj2MU5VKa" role="2OqNvi">
                          <ref role="3Tt5mk" to="w3db:crj2MTKQut" resolve="amount" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3eOVzh" id="crj2MU5ti_" role="3clFbw">
                    <node concept="37vLTw" id="crj2MU5tr7" role="3uHU7w">
                      <ref role="3cqZAo" node="crj2MU3KU0" resolve="emptyPartThreshold" />
                    </node>
                    <node concept="37vLTw" id="crj2MU5oeX" role="3uHU7B">
                      <ref role="3cqZAo" node="crj2MU5mUC" resolve="amount" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="crj2MU5Jcz" role="3cqZAp">
              <node concept="3SKdUq" id="crj2MU5Jc_" role="3SKWNk">
                <property role="3SKdUp" value="check if undefined proportions will result in empty parts" />
              </node>
            </node>
            <node concept="3clFbJ" id="crj2MU5Mba" role="3cqZAp">
              <node concept="3clFbS" id="crj2MU5Mbb" role="3clFbx">
                <node concept="2Gpval" id="crj2MU5MBZ" role="3cqZAp">
                  <node concept="2GrKxI" id="crj2MU5MC0" role="2Gsz3X">
                    <property role="TrG5h" value="part" />
                  </node>
                  <node concept="37vLTw" id="crj2MU5MNH" role="2GsD0m">
                    <ref role="3cqZAo" node="crj2MTL7Ws" resolve="undefinedParts" />
                  </node>
                  <node concept="3clFbS" id="crj2MU5MC2" role="2LFqv$">
                    <node concept="2MkqsV" id="crj2MU5MC3" role="3cqZAp">
                      <node concept="2GrUjf" id="crj2MU5MC6" role="2OEOjV">
                        <ref role="2Gs0qQ" node="crj2MU5MC0" resolve="part" />
                      </node>
                      <node concept="Xl_RD" id="crj2MU5MJT" role="2MkJ7o">
                        <property role="Xl_RC" value="The resulting part with this proportion will be empty." />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eOVzh" id="crj2MU5Mbh" role="3clFbw">
                <node concept="37vLTw" id="crj2MU5Mbi" role="3uHU7w">
                  <ref role="3cqZAo" node="crj2MU3KU0" resolve="emptyPartThreshold" />
                </node>
                <node concept="2OqwBi" id="crj2MU6pwv" role="3uHU7B">
                  <node concept="1YBJjd" id="crj2MU6pd9" role="2Oq$k0">
                    <ref role="1YBMHb" node="crj2MTJa9M" resolve="ss" />
                  </node>
                  <node concept="2qgKlT" id="crj2MU6qZf" role="2OqNvi">
                    <ref role="37wK5l" to="lcps:crj2MU5VWW" resolve="getUndefinedPartAmount" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="3MDuPPBJemb" role="3cqZAp" />
      <node concept="3SKdUt" id="3MDuPPBJgIK" role="3cqZAp">
        <node concept="3SKdUq" id="3MDuPPBJgIM" role="3SKWNk">
          <property role="3SKdUp" value="checks if split is without remainder" />
        </node>
      </node>
      <node concept="3clFbJ" id="3MDuPPBJj7s" role="3cqZAp">
        <node concept="3clFbS" id="3MDuPPBJj7u" role="3clFbx">
          <node concept="a7r0C" id="3MDuPPBJo$U" role="3cqZAp">
            <node concept="3cpWs3" id="3MDuPPBJvj0" role="a7wSD">
              <node concept="3cpWs3" id="3MDuPPBJoRn" role="3uHU7B">
                <node concept="Xl_RD" id="3MDuPPBJo_f" role="3uHU7B">
                  <property role="Xl_RC" value="The split of object " />
                </node>
                <node concept="2OqwBi" id="3MDuPPBJsva" role="3uHU7w">
                  <node concept="2OqwBi" id="3MDuPPBJp8N" role="2Oq$k0">
                    <node concept="1YBJjd" id="3MDuPPBJoRJ" role="2Oq$k0">
                      <ref role="1YBMHb" node="crj2MTJa9M" resolve="ss" />
                    </node>
                    <node concept="3TrEf2" id="3MDuPPBJqTj" role="2OqNvi">
                      <ref role="3Tt5mk" to="w3db:crj2MTJa9j" resolve="object" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="3MDuPPBJtOl" role="2OqNvi">
                    <ref role="37wK5l" to="64zb:1qp0740gxlZ" resolve="getObjectName" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3MDuPPBJxJt" role="3uHU7w">
                <property role="Xl_RC" value=" is uncomplete (i.e. some items may not be assigned to any part of the split). " />
              </node>
            </node>
            <node concept="1YBJjd" id="3MDuPPBLgea" role="2OEOjV">
              <ref role="1YBMHb" node="crj2MTJa9M" resolve="ss" />
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="3MDuPPBJmJh" role="3clFbw">
          <node concept="3eOVzh" id="3MDuPPBJnNh" role="3uHU7w">
            <node concept="3cmrfG" id="3MDuPPBJo4Q" role="3uHU7w">
              <property role="3cmrfH" value="100" />
            </node>
            <node concept="37vLTw" id="3MDuPPBJn13" role="3uHU7B">
              <ref role="3cqZAo" node="crj2MTLa$c" resolve="summedAmount" />
            </node>
          </node>
          <node concept="3clFbC" id="3MDuPPBJlyE" role="3uHU7B">
            <node concept="2OqwBi" id="3MDuPPBJkx9" role="3uHU7B">
              <node concept="37vLTw" id="3MDuPPBJkjY" role="2Oq$k0">
                <ref role="3cqZAo" node="crj2MTL7Ws" resolve="undefinedParts" />
              </node>
              <node concept="34oBXx" id="3MDuPPBJkCR" role="2OqNvi" />
            </node>
            <node concept="3cmrfG" id="3MDuPPBJlO8" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="crj2MTJa9M" role="1YuTPh">
      <property role="TrG5h" value="ss" />
      <ref role="1YaFvo" to="w3db:crj2MTJ7hd" resolve="SplitStatement" />
    </node>
  </node>
  <node concept="18kY7G" id="crj2MU3k$b">
    <property role="TrG5h" value="check_PartStatement" />
    <node concept="3clFbS" id="crj2MU3k$c" role="18ibNy">
      <node concept="3clFbJ" id="crj2MU3pzD" role="3cqZAp">
        <node concept="3clFbS" id="crj2MU3pzF" role="3clFbx">
          <node concept="3cpWs8" id="crj2MU3s9$" role="3cqZAp">
            <node concept="3cpWsn" id="crj2MU3s9B" role="3cpWs9">
              <property role="TrG5h" value="amount" />
              <node concept="10OMs4" id="crj2MU3s9y" role="1tU5fm" />
              <node concept="2YIFZM" id="crj2MU3t_l" role="33vP2m">
                <ref role="37wK5l" to="wyt6:~Float.parseFloat(java.lang.String):float" resolve="parseFloat" />
                <ref role="1Pybhc" to="wyt6:~Float" resolve="Float" />
                <node concept="2OqwBi" id="crj2MU3uik" role="37wK5m">
                  <node concept="2OqwBi" id="crj2MU3stt" role="2Oq$k0">
                    <node concept="1YBJjd" id="crj2MU3s9W" role="2Oq$k0">
                      <ref role="1YBMHb" node="crj2MU3k$e" resolve="ps" />
                    </node>
                    <node concept="3TrEf2" id="crj2MU3ta5" role="2OqNvi">
                      <ref role="3Tt5mk" to="w3db:crj2MTKQut" resolve="amount" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="crj2MU3uN8" role="2OqNvi">
                    <ref role="3TsBF5" to="5qo5:4rZeNQ6Oert" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="crj2MU3v3q" role="3cqZAp" />
          <node concept="3clFbJ" id="crj2MU3k$i" role="3cqZAp">
            <node concept="2dkUwp" id="crj2MU3wGp" role="3clFbw">
              <node concept="3cmrfG" id="crj2MU3wGE" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="crj2MU3vy7" role="3uHU7B">
                <ref role="3cqZAo" node="crj2MU3s9B" resolve="amount" />
              </node>
            </node>
            <node concept="3clFbS" id="crj2MU3k$k" role="3clFbx">
              <node concept="2MkqsV" id="crj2MU3wQJ" role="3cqZAp">
                <node concept="Xl_RD" id="crj2MU3xP7" role="2MkJ7o">
                  <property role="Xl_RC" value="The amount needs to be &gt; 0%." />
                </node>
                <node concept="2OqwBi" id="crj2MU3x7f" role="2OEOjV">
                  <node concept="1YBJjd" id="crj2MU3wQV" role="2Oq$k0">
                    <ref role="1YBMHb" node="crj2MU3k$e" resolve="ps" />
                  </node>
                  <node concept="3TrEf2" id="crj2MU3xLk" role="2OqNvi">
                    <ref role="3Tt5mk" to="w3db:crj2MTKQut" resolve="amount" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="crj2MU3ydr" role="3cqZAp" />
          <node concept="3clFbJ" id="crj2MU3yLJ" role="3cqZAp">
            <node concept="3clFbS" id="crj2MU3yLL" role="3clFbx">
              <node concept="2MkqsV" id="crj2MU3$md" role="3cqZAp">
                <node concept="Xl_RD" id="crj2MU3$me" role="2MkJ7o">
                  <property role="Xl_RC" value="The amount needs to be &lt; 100%." />
                </node>
                <node concept="2OqwBi" id="crj2MU3$mf" role="2OEOjV">
                  <node concept="1YBJjd" id="crj2MU3$mg" role="2Oq$k0">
                    <ref role="1YBMHb" node="crj2MU3k$e" resolve="ps" />
                  </node>
                  <node concept="3TrEf2" id="crj2MU3$mh" role="2OqNvi">
                    <ref role="3Tt5mk" to="w3db:crj2MTKQut" resolve="amount" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eOSWO" id="crj2MU3$bR" role="3clFbw">
              <node concept="3cmrfG" id="crj2MU3$c8" role="3uHU7w">
                <property role="3cmrfH" value="100" />
              </node>
              <node concept="37vLTw" id="crj2MU3z46" role="3uHU7B">
                <ref role="3cqZAo" node="crj2MU3s9B" resolve="amount" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="crj2MU3rdW" role="3clFbw">
          <node concept="2OqwBi" id="crj2MU3pR$" role="2Oq$k0">
            <node concept="1YBJjd" id="crj2MU3p$5" role="2Oq$k0">
              <ref role="1YBMHb" node="crj2MU3k$e" resolve="ps" />
            </node>
            <node concept="3TrEf2" id="crj2MU3qzY" role="2OqNvi">
              <ref role="3Tt5mk" to="w3db:crj2MTKQut" resolve="amount" />
            </node>
          </node>
          <node concept="3x8VRR" id="crj2MU3s6C" role="2OqNvi" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="crj2MU3k$e" role="1YuTPh">
      <property role="TrG5h" value="ps" />
      <ref role="1YaFvo" to="w3db:crj2MTJZed" resolve="PartStatement" />
    </node>
  </node>
</model>

