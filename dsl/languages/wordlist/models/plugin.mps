<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2b3426ea-3255-4c19-a065-6c2e0199e685(wordlist.plugin)">
  <persistence version="9" />
  <languages>
    <use id="47f075a6-558e-4640-a606-7ce0236c8023" name="com.mbeddr.mpsutil.interpreter" version="0" />
    <use id="68950bdf-0ae2-4759-953a-925dbfe4a386" name="composition" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="5" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="veum" ref="r:dd7856aa-5828-444c-bc87-c88a89a8bb82(wordlist.structure)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="48kf" ref="r:5f41c82d-84d1-4fb1-a1cf-6697d2365854(com.mbeddr.mpsutil.filepicker.behavior)" />
    <import index="4kwy" ref="r:657c9fde-2f36-4e61-ae17-20f02b8630ad(org.iets3.core.base.structure)" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" />
    <import index="riuk" ref="r:d11bbe93-812a-4d69-aed5-b2420e4cff94(types.plugin)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="ckmh" ref="r:a0b09593-26bd-4d75-98f1-657e49dea4f1(create.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="xb2e" ref="r:d2c15c70-47a9-430a-840d-2701a52b993d(wordlist.behavior)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
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
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
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
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
    </language>
    <language id="47f075a6-558e-4640-a606-7ce0236c8023" name="com.mbeddr.mpsutil.interpreter">
      <concept id="7019451652830285943" name="com.mbeddr.mpsutil.interpreter.structure.ApplicableLanguage" flags="ng" index="d$4Dx">
        <child id="7019451652831666945" name="language" index="cpn$n" />
      </concept>
      <concept id="2515196518060811313" name="com.mbeddr.mpsutil.interpreter.structure.DummyEvaluator" flags="ng" index="lHU7p" />
      <concept id="5293529713177831489" name="com.mbeddr.mpsutil.interpreter.structure.NodeExpression" flags="ng" index="oxGPV" />
      <concept id="8615074351687299818" name="com.mbeddr.mpsutil.interpreter.structure.Interpreter" flags="ng" index="qq9qg">
        <property id="8426159527444241399" name="category" index="UYu25" />
        <child id="7019451652830298090" name="applicableLanguages" index="d$6nW" />
        <child id="8615074351687302157" name="evaluators" index="qq9xR" />
      </concept>
      <concept id="8615074351687301435" name="com.mbeddr.mpsutil.interpreter.structure.ConceptEvaluator" flags="ng" index="qq9P1">
        <reference id="8615074351687302216" name="concept" index="qq9wM" />
      </concept>
      <concept id="5712773029518214110" name="com.mbeddr.mpsutil.interpreter.structure.ConceptEvaluatorBody" flags="ng" index="3dA_Gj">
        <child id="5934114435582613364" name="body" index="3vcmbn" />
      </concept>
      <concept id="5934114435583058812" name="com.mbeddr.mpsutil.interpreter.structure.AbstractEvaluator" flags="ng" index="3va1rv">
        <property id="8845772667389641968" name="cache" index="2TnfIJ" />
        <child id="5934114435584084790" name="evaluator" index="3vQZUl" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="68950bdf-0ae2-4759-953a-925dbfe4a386" name="composition">
      <concept id="579560145578392133" name="composition.structure.ArtifactDescription" flags="ng" index="2N9Ry$">
        <property id="1116701740537584057" name="shortname" index="bGGJC" />
        <property id="5638729317953218057" name="path" index="NrALT" />
        <reference id="5638729317953801069" name="parent" index="NtO4t" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="6332851714983831325" name="jetbrains.mps.baseLanguage.logging.structure.MsgStatement" flags="ng" index="2xdQw9">
        <property id="6332851714983843871" name="severity" index="2xdLsb" />
        <child id="5721587534047265374" name="message" index="9lYJi" />
        <child id="5721587534047265375" name="throwable" index="9lYJj" />
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
      <concept id="559557797393017698" name="jetbrains.mps.lang.smodel.structure.ModelReferenceExpression" flags="nn" index="BaHAS">
        <property id="559557797393021807" name="stereotype" index="BaGAP" />
        <property id="559557797393017702" name="name" index="BaHAW" />
      </concept>
      <concept id="1181949435690" name="jetbrains.mps.lang.smodel.structure.Concept_NewInstance" flags="nn" index="LFhST" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
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
  <node concept="2N9Ry$" id="1UULepO1mdK">
    <property role="bGGJC" value="wordlist" />
    <property role="TrG5h" value="FeatureConfig.wordlist" />
    <property role="NrALT" value="core.types.wordlist" />
    <ref role="NtO4t" to="riuk:2$uHlqTwPYO" resolve="FeatureConfig.types" />
  </node>
  <node concept="qq9qg" id="1UULepO1meN">
    <property role="TrG5h" value="WordlistInterpreter" />
    <property role="UYu25" value="arithmetic" />
    <node concept="qq9P1" id="1UULepO1qbG" role="qq9xR">
      <property role="2TnfIJ" value="true" />
      <ref role="qq9wM" to="veum:1UULepNY8iN" resolve="WordlistLoader" />
      <node concept="3dA_Gj" id="1UULepO1qbS" role="3vQZUl">
        <node concept="9aQIb" id="1UULepO1qbU" role="3vcmbn">
          <node concept="3clFbS" id="1UULepO1qbW" role="9aQI4">
            <node concept="3cpWs8" id="pr10Ds9rrh" role="3cqZAp">
              <node concept="3cpWsn" id="pr10Ds9rrk" role="3cpWs9">
                <property role="TrG5h" value="wl" />
                <node concept="3Tqbb2" id="pr10Ds9rrf" role="1tU5fm">
                  <ref role="ehGHo" to="veum:1UULepNY25E" resolve="PhraselistType" />
                </node>
                <node concept="2ShNRf" id="pr10Ds9rAO" role="33vP2m">
                  <node concept="3zrR0B" id="pr10Ds9rNg" role="2ShVmc">
                    <node concept="3Tqbb2" id="pr10Ds9rNi" role="3zrR0E">
                      <ref role="ehGHo" to="veum:1UULepNY25E" resolve="PhraselistType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="Uc0C_mL4QS" role="3cqZAp">
              <node concept="37vLTI" id="Uc0C_mL7yo" role="3clFbG">
                <node concept="2OqwBi" id="Uc0C_mL5a6" role="37vLTJ">
                  <node concept="37vLTw" id="Uc0C_mL4QQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="pr10Ds9rrk" resolve="wl" />
                  </node>
                  <node concept="3TrcHB" id="Uc0C_mL5Vx" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="2OqwBi" id="57k_vxmYvLW" role="37vLTx">
                  <node concept="1PxgMI" id="57k_vxmYvxD" role="2Oq$k0">
                    <node concept="chp4Y" id="57k_vxmYv$X" role="3oSUPX">
                      <ref role="cht4Q" to="4kwy:cJpacq5T0O" resolve="IValidNamedConcept" />
                    </node>
                    <node concept="2OqwBi" id="7bbTq02836I" role="1m5AlR">
                      <node concept="2OqwBi" id="57k_vxmYsC0" role="2Oq$k0">
                        <node concept="oxGPV" id="57k_vxmYssd" role="2Oq$k0" />
                        <node concept="1mfA1w" id="57k_vxmYt0G" role="2OqNvi" />
                      </node>
                      <node concept="1mfA1w" id="7bbTq0283j$" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="57k_vxmYw8f" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4BYgTo2VDD1" role="3cqZAp" />
            <node concept="3SKdUt" id="Uc0C_mMlOw" role="3cqZAp">
              <node concept="3SKdUq" id="Uc0C_mMlOy" role="3SKWNk">
                <property role="3SKdUp" value="load words from file" />
              </node>
            </node>
            <node concept="SfApY" id="pr10Ds97jM" role="3cqZAp">
              <node concept="3clFbS" id="pr10Ds97jO" role="SfCbr">
                <node concept="3cpWs8" id="pr10Ds9h1J" role="3cqZAp">
                  <node concept="3cpWsn" id="pr10Ds9h1K" role="3cpWs9">
                    <property role="TrG5h" value="f" />
                    <node concept="3uibUv" id="pr10Ds9h1L" role="1tU5fm">
                      <ref role="3uigEE" to="guwi:~File" resolve="File" />
                    </node>
                    <node concept="2ShNRf" id="pr10Ds9h29" role="33vP2m">
                      <node concept="1pGfFk" id="pr10Ds9lb3" role="2ShVmc">
                        <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                        <node concept="2OqwBi" id="ntYdpmvacb" role="37wK5m">
                          <node concept="2OqwBi" id="ntYdpmvacc" role="2Oq$k0">
                            <node concept="oxGPV" id="ntYdpmvacd" role="2Oq$k0" />
                            <node concept="3TrEf2" id="ntYdpmvace" role="2OqNvi">
                              <ref role="3Tt5mk" to="ckmh:4Z2dWAVyuJm" resolve="loader" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="ntYdpmvacf" role="2OqNvi">
                            <ref role="37wK5l" to="48kf:5lKnBeAuKov" resolve="getCanonicalPath" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="pr10Ds9lGl" role="3cqZAp">
                  <node concept="3cpWsn" id="pr10Ds9lGm" role="3cpWs9">
                    <property role="TrG5h" value="b" />
                    <node concept="3uibUv" id="pr10Ds9lGn" role="1tU5fm">
                      <ref role="3uigEE" to="guwi:~BufferedReader" resolve="BufferedReader" />
                    </node>
                    <node concept="2ShNRf" id="pr10Ds9lNd" role="33vP2m">
                      <node concept="1pGfFk" id="pr10Ds9lZF" role="2ShVmc">
                        <ref role="37wK5l" to="guwi:~BufferedReader.&lt;init&gt;(java.io.Reader)" resolve="BufferedReader" />
                        <node concept="2ShNRf" id="pr10Ds9lZV" role="37wK5m">
                          <node concept="1pGfFk" id="pr10Ds9mcJ" role="2ShVmc">
                            <ref role="37wK5l" to="guwi:~FileReader.&lt;init&gt;(java.io.File)" resolve="FileReader" />
                            <node concept="37vLTw" id="pr10Ds9mf3" role="37wK5m">
                              <ref role="3cqZAo" node="pr10Ds9h1K" resolve="f" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="pr10Ds9mtr" role="3cqZAp">
                  <node concept="3cpWsn" id="pr10Ds9mtu" role="3cpWs9">
                    <property role="TrG5h" value="value" />
                    <node concept="17QB3L" id="pr10Ds9mtp" role="1tU5fm" />
                  </node>
                </node>
                <node concept="2$JKZl" id="pr10Ds9mQ6" role="3cqZAp">
                  <node concept="3clFbS" id="pr10Ds9mQ8" role="2LFqv$">
                    <node concept="3SKdUt" id="483p1NoGJyS" role="3cqZAp">
                      <node concept="3SKdUq" id="483p1NoGJyU" role="3SKWNk">
                        <property role="3SKdUp" value="TODO: use methods on respective nodes" />
                      </node>
                    </node>
                    <node concept="3SKdUt" id="483p1NoGwqy" role="3cqZAp">
                      <node concept="3SKdUq" id="483p1NoGwq$" role="3SKWNk">
                        <property role="3SKdUp" value="ignore line if redundant " />
                      </node>
                    </node>
                    <node concept="3cpWs8" id="483p1NoGwSZ" role="3cqZAp">
                      <node concept="3cpWsn" id="483p1NoGwT2" role="3cpWs9">
                        <property role="TrG5h" value="redundantLines" />
                        <node concept="A3Dl8" id="483p1NoGEJq" role="1tU5fm">
                          <node concept="3Tqbb2" id="483p1NoGEJs" role="A3Ik2">
                            <ref role="ehGHo" to="5frd:6Quy7yTNPCP" resolve="IItemType" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="483p1NoG$2R" role="33vP2m">
                          <node concept="2OqwBi" id="483p1NoGxgy" role="2Oq$k0">
                            <node concept="37vLTw" id="483p1NoGx1v" role="2Oq$k0">
                              <ref role="3cqZAo" node="pr10Ds9rrk" resolve="wl" />
                            </node>
                            <node concept="3Tsc0h" id="483p1NoGxDU" role="2OqNvi">
                              <ref role="3TtcxE" to="5frd:5c6KWTiqlNT" resolve="items" />
                            </node>
                          </node>
                          <node concept="3zZkjj" id="483p1NoGASl" role="2OqNvi">
                            <node concept="1bVj0M" id="483p1NoGASn" role="23t8la">
                              <node concept="3clFbS" id="483p1NoGASo" role="1bW5cS">
                                <node concept="3clFbF" id="483p1NoGB43" role="3cqZAp">
                                  <node concept="2OqwBi" id="483p1NoGCwc" role="3clFbG">
                                    <node concept="2OqwBi" id="483p1NoGBk6" role="2Oq$k0">
                                      <node concept="1PxgMI" id="4HLGmtZ6N1f" role="2Oq$k0">
                                        <node concept="chp4Y" id="7YOY7Y_bUx4" role="3oSUPX">
                                          <ref role="cht4Q" to="veum:LOMnt$9jwD" resolve="WordlistItem" />
                                        </node>
                                        <node concept="37vLTw" id="483p1NoGB42" role="1m5AlR">
                                          <ref role="3cqZAo" node="483p1NoGASp" resolve="it" />
                                        </node>
                                      </node>
                                      <node concept="3TrcHB" id="483p1NoGBFP" role="2OqNvi">
                                        <ref role="3TsBF5" to="veum:LOMnt$9j$$" resolve="value" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="483p1NoGDt_" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                                      <node concept="37vLTw" id="483p1NoGEzh" role="37wK5m">
                                        <ref role="3cqZAo" node="pr10Ds9mtu" resolve="value" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="483p1NoGASp" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="483p1NoGASq" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="483p1NoGGbU" role="3cqZAp">
                      <node concept="3clFbS" id="483p1NoGGbW" role="3clFbx">
                        <node concept="3SKdUt" id="483p1NoGwFc" role="3cqZAp">
                          <node concept="3SKdUq" id="483p1NoGwFe" role="3SKWNk">
                            <property role="3SKdUp" value="TODO: also warn user (e.g. store value-lineNum couples in node and throw warning)" />
                          </node>
                        </node>
                        <node concept="3N13vt" id="483p1NoGIYK" role="3cqZAp" />
                      </node>
                      <node concept="3eOSWO" id="483p1NoGHRv" role="3clFbw">
                        <node concept="2OqwBi" id="483p1NoGGwJ" role="3uHU7B">
                          <node concept="37vLTw" id="483p1NoGGjw" role="2Oq$k0">
                            <ref role="3cqZAo" node="483p1NoGwT2" resolve="redundantLines" />
                          </node>
                          <node concept="34oBXx" id="483p1NoGGIU" role="2OqNvi" />
                        </node>
                        <node concept="3cmrfG" id="483p1NoGI4D" role="3uHU7w">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="7WePDBhpf3j" role="3cqZAp" />
                    <node concept="3SKdUt" id="483p1NoH7xN" role="3cqZAp">
                      <node concept="3SKdUq" id="483p1NoH7xP" role="3SKWNk">
                        <property role="3SKdUp" value="create item" />
                      </node>
                    </node>
                    <node concept="3clFbF" id="pr10Ds9rQw" role="3cqZAp">
                      <node concept="2OqwBi" id="pr10Ds9rXt" role="3clFbG">
                        <node concept="37vLTw" id="pr10Ds9rQv" role="2Oq$k0">
                          <ref role="3cqZAo" node="pr10Ds9rrk" resolve="wl" />
                        </node>
                        <node concept="2qgKlT" id="7YOY7Y_8f57" role="2OqNvi">
                          <ref role="37wK5l" to="xb2e:7YOY7Y_5zzo" resolve="addTerm" />
                          <node concept="37vLTw" id="7YOY7Y_8fc8" role="37wK5m">
                            <ref role="3cqZAo" node="pr10Ds9mtu" resolve="value" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="pr10Ds9qGv" role="2$JKZa">
                    <node concept="10Nm6u" id="pr10Ds9qR7" role="3uHU7w" />
                    <node concept="1eOMI4" id="pr10Ds9mZg" role="3uHU7B">
                      <node concept="37vLTI" id="pr10Ds9nlK" role="1eOMHV">
                        <node concept="2OqwBi" id="pr10Ds9pty" role="37vLTx">
                          <node concept="37vLTw" id="pr10Ds9nq1" role="2Oq$k0">
                            <ref role="3cqZAo" node="pr10Ds9lGm" resolve="b" />
                          </node>
                          <node concept="liA8E" id="pr10Ds9qho" role="2OqNvi">
                            <ref role="37wK5l" to="guwi:~BufferedReader.readLine():java.lang.String" resolve="readLine" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="pr10Ds9n07" role="37vLTJ">
                          <ref role="3cqZAo" node="pr10Ds9mtu" resolve="value" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="TDmWw" id="pr10Ds97jP" role="TEbGg">
                <node concept="3cpWsn" id="pr10Ds97jR" role="TDEfY">
                  <property role="TrG5h" value="e" />
                  <node concept="3uibUv" id="pr10Ds9flA" role="1tU5fm">
                    <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                  </node>
                </node>
                <node concept="3clFbS" id="pr10Ds97jV" role="TDEfX">
                  <node concept="2xdQw9" id="ntYdpmvxv$" role="3cqZAp">
                    <property role="2xdLsb" value="error" />
                    <node concept="2OqwBi" id="pr10Ds9fF7" role="9lYJi">
                      <node concept="37vLTw" id="pr10Ds9ftP" role="2Oq$k0">
                        <ref role="3cqZAo" node="pr10Ds97jR" resolve="e" />
                      </node>
                      <node concept="liA8E" id="pr10Ds9rch" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Throwable.getMessage():java.lang.String" resolve="getMessage" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="pr10Ds9gRF" role="9lYJj">
                      <ref role="3cqZAo" node="pr10Ds97jR" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="Uc0C_mMJrJ" role="3cqZAp" />
            <node concept="3cpWs6" id="pr10Ds9H68" role="3cqZAp">
              <node concept="37vLTw" id="pr10Ds9HsO" role="3cqZAk">
                <ref role="3cqZAo" node="pr10Ds9rrk" resolve="wl" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="lHU7p" id="7WePDBhhAZv" role="qq9xR" />
    <node concept="qq9P1" id="7YOY7Y$Qi7L" role="qq9xR">
      <property role="2TnfIJ" value="true" />
      <ref role="qq9wM" to="veum:7YOY7Y$OWZW" resolve="AsNewListInitialization" />
      <node concept="3dA_Gj" id="7YOY7Y$QiIz" role="3vQZUl">
        <node concept="9aQIb" id="7YOY7Y$QiI_" role="3vcmbn">
          <node concept="3clFbS" id="7YOY7Y$QiIB" role="9aQI4">
            <node concept="3SKdUt" id="7YOY7Y$QiIO" role="3cqZAp">
              <node concept="3SKdUq" id="7YOY7Y$QiIP" role="3SKWNk">
                <property role="3SKdUp" value="get type" />
              </node>
            </node>
            <node concept="3cpWs8" id="7YOY7Y$QnMn" role="3cqZAp">
              <node concept="3cpWsn" id="7YOY7Y$QnMq" role="3cpWs9">
                <property role="TrG5h" value="list" />
                <node concept="3Tqbb2" id="7YOY7Y$QnMl" role="1tU5fm">
                  <ref role="ehGHo" to="veum:4fA_w_sqrL8" resolve="AbstractWordlistType" />
                </node>
                <node concept="1PxgMI" id="7YOY7Y$QoqN" role="33vP2m">
                  <node concept="chp4Y" id="7YOY7Y$Qo_Z" role="3oSUPX">
                    <ref role="cht4Q" to="veum:4fA_w_sqrL8" resolve="AbstractWordlistType" />
                  </node>
                  <node concept="2OqwBi" id="7YOY7Y$QmJ2" role="1m5AlR">
                    <node concept="2OqwBi" id="7YOY7Y$Ql$E" role="2Oq$k0">
                      <node concept="2OqwBi" id="7YOY7Y$QjTd" role="2Oq$k0">
                        <node concept="1PxgMI" id="7YOY7Y$QjBP" role="2Oq$k0">
                          <node concept="chp4Y" id="4IazLL45dZL" role="3oSUPX">
                            <ref role="cht4Q" to="ckmh:4Z2dWAVu5W2" resolve="CreateStatement" />
                          </node>
                          <node concept="2OqwBi" id="7YOY7Y$QiSw" role="1m5AlR">
                            <node concept="oxGPV" id="7YOY7Y$QiIW" role="2Oq$k0" />
                            <node concept="1mfA1w" id="7YOY7Y$Qj8A" role="2OqNvi" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="7YOY7Y$QkS3" role="2OqNvi">
                          <ref role="3Tt5mk" to="5frd:1UULepNU6GA" resolve="type" />
                        </node>
                      </node>
                      <node concept="2yIwOk" id="7YOY7Y$QmcA" role="2OqNvi" />
                    </node>
                    <node concept="LFhST" id="7YOY7Y$Qnuy" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7YOY7Y$QoV6" role="3cqZAp" />
            <node concept="2Gpval" id="7YOY7Y$QpAT" role="3cqZAp">
              <node concept="2GrKxI" id="7YOY7Y$QpAV" role="2Gsz3X">
                <property role="TrG5h" value="term" />
              </node>
              <node concept="2OqwBi" id="7YOY7Y$QpY0" role="2GsD0m">
                <node concept="oxGPV" id="7YOY7Y$QpM9" role="2Oq$k0" />
                <node concept="3Tsc0h" id="7YOY7Y$Qqe2" role="2OqNvi">
                  <ref role="3TtcxE" to="veum:7YOY7Y$P4co" resolve="entries" />
                </node>
              </node>
              <node concept="3clFbS" id="7YOY7Y$QpAZ" role="2LFqv$">
                <node concept="3clFbF" id="7YOY7Y$QqgL" role="3cqZAp">
                  <node concept="2OqwBi" id="7YOY7Y$QqAq" role="3clFbG">
                    <node concept="37vLTw" id="7YOY7Y$QqgK" role="2Oq$k0">
                      <ref role="3cqZAo" node="7YOY7Y$QnMq" resolve="list" />
                    </node>
                    <node concept="2qgKlT" id="7YOY7Y_9TaD" role="2OqNvi">
                      <ref role="37wK5l" to="xb2e:7YOY7Y_5zzo" resolve="addTerm" />
                      <node concept="2OqwBi" id="7YOY7Y_9WzG" role="37wK5m">
                        <node concept="2GrUjf" id="7YOY7Y_9Wi1" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="7YOY7Y$QpAV" resolve="term" />
                        </node>
                        <node concept="3TrcHB" id="7YOY7Y_9WTW" role="2OqNvi">
                          <ref role="3TsBF5" to="tpee:f$Xl_Oh" resolve="value" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7YOY7Y$QprZ" role="3cqZAp" />
            <node concept="3cpWs6" id="7YOY7Y$QpgF" role="3cqZAp">
              <node concept="37vLTw" id="7YOY7Y$Qprx" role="3cqZAk">
                <ref role="3cqZAo" node="7YOY7Y$QnMq" resolve="list" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="lHU7p" id="4fxn4ASsejL" role="qq9xR" />
    <node concept="qq9P1" id="4fxn4ASsf7s" role="qq9xR">
      <property role="2TnfIJ" value="true" />
      <ref role="qq9wM" to="veum:4fxn4ASrnlb" resolve="FromFeatureInitialization" />
      <node concept="3dA_Gj" id="4fxn4ASsfxs" role="3vQZUl">
        <node concept="9aQIb" id="4fxn4ASsfxu" role="3vcmbn">
          <node concept="3clFbS" id="4fxn4ASsfxw" role="9aQI4">
            <node concept="3cpWs6" id="4fxn4ASsfxH" role="3cqZAp">
              <node concept="oxGPV" id="4fxn4ASsfxP" role="3cqZAk" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="lHU7p" id="7YOY7Y$Qhx9" role="qq9xR" />
    <node concept="lHU7p" id="7WePDBhhI85" role="qq9xR" />
    <node concept="d$4Dx" id="1UULepO1qbu" role="d$6nW">
      <node concept="BaHAS" id="1UULepO1qbv" role="cpn$n">
        <property role="BaHAW" value="wordlist.structure" />
        <property role="BaGAP" value="" />
      </node>
    </node>
  </node>
</model>

