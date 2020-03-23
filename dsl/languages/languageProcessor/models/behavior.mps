<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:52331e20-46a4-48f0-b6ab-9d716ff3c169(languageProcessor.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="1" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="pbu6" ref="r:83e946de-2a7f-4a4c-b3c9-4f671aa7f2db(org.iets3.core.expr.base.behavior)" />
    <import index="rfu" ref="r:6e9b2235-0fe7-42b9-bb5a-8f85b71f42e3(types.behavior)" />
    <import index="jqrd" ref="r:a86b5aa2-977c-4dd4-975b-865365d5871c(types.structure)" />
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" />
    <import index="2ahs" ref="r:ea6cf71d-29d2-478d-8027-a9f4a4de53c4(com.mbeddr.mpsutil.interpreter.rt)" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="j8uj" ref="r:e2c2b3d9-18ab-47eb-bfc6-892bc1ff2292(languageProcessor.structure)" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" implicit="true" />
    <import index="cp45" ref="r:2485b9a5-23c9-4b4a-8035-41c91de74603(edit.behavior)" implicit="true" />
    <import index="bxmu" ref="r:2caa4bf2-77af-43e0-8e72-8a12a8978a06(edit.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="5864038008284099149" name="isStatic" index="2Ki8OM" />
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
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
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
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
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
    </language>
  </registry>
  <node concept="13h7C7" id="1wn8NGzh7tg">
    <ref role="13h7C2" to="j8uj:1wn8NGzgTkM" resolve="LanguageProcessorType" />
    <node concept="13i0hz" id="1wn8NGzEKtE" role="13h7CS">
      <property role="2Ki8OM" value="true" />
      <property role="TrG5h" value="getDefaultProcessor" />
      <node concept="3Tm1VV" id="1wn8NGzEKtF" role="1B3o_S" />
      <node concept="3Tqbb2" id="1wn8NGzEKvy" role="3clF45">
        <ref role="ehGHo" to="j8uj:1wn8NGzgTkM" resolve="LanguageProcessorType" />
      </node>
      <node concept="3clFbS" id="1wn8NGzEKtH" role="3clF47">
        <node concept="3cpWs8" id="1wn8NGzEK$5" role="3cqZAp">
          <node concept="3cpWsn" id="1wn8NGzEK$8" role="3cpWs9">
            <property role="TrG5h" value="defaultProcessor" />
            <node concept="3Tqbb2" id="1wn8NGzEK$4" role="1tU5fm">
              <ref role="ehGHo" to="j8uj:1wn8NGzgTkM" resolve="LanguageProcessorType" />
            </node>
            <node concept="2ShNRf" id="1wn8NGzEK_x" role="33vP2m">
              <node concept="3zrR0B" id="1wn8NGzEK_v" role="2ShVmc">
                <node concept="3Tqbb2" id="1wn8NGzEK_w" role="3zrR0E">
                  <ref role="ehGHo" to="j8uj:1wn8NGzgTkM" resolve="LanguageProcessorType" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1wn8NGzEKAK" role="3cqZAp">
          <node concept="37vLTI" id="1wn8NGzELN$" role="3clFbG">
            <node concept="Xl_RD" id="1wn8NGzELUI" role="37vLTx">
              <property role="Xl_RC" value="defaultLanguageProcessor" />
            </node>
            <node concept="2OqwBi" id="1wn8NGzEKMx" role="37vLTJ">
              <node concept="37vLTw" id="1wn8NGzEKAI" role="2Oq$k0">
                <ref role="3cqZAo" node="1wn8NGzEK$8" resolve="defaultProcessor" />
              </node>
              <node concept="3TrcHB" id="1wn8NGzEL7q" role="2OqNvi">
                <ref role="3TsBF5" to="5frd:1UULepO1tEg" resolve="id" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1wn8NGzEMR0" role="3cqZAp">
          <node concept="37vLTw" id="1wn8NGzEMUA" role="3cqZAk">
            <ref role="3cqZAo" node="1wn8NGzEK$8" resolve="defaultProcessor" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1wn8NGzEKvW" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="loadFromServer" />
      <ref role="13i0hy" to="64zb:XZLIaPm3N0" resolve="loadFromServer" />
      <node concept="3Tm1VV" id="1wn8NGzEKvX" role="1B3o_S" />
      <node concept="3clFbS" id="1wn8NGzEKw0" role="3clF47">
        <node concept="3SKdUt" id="1wn8NGzEKzn" role="3cqZAp">
          <node concept="3SKdUq" id="1wn8NGzEKzo" role="3SKWNk">
            <property role="3SKdUp" value="TODO" />
          </node>
        </node>
        <node concept="3clFbF" id="1wn8NGzEKzL" role="3cqZAp">
          <node concept="10Nm6u" id="1wn8NGzEKzJ" role="3clFbG" />
        </node>
      </node>
      <node concept="3Tqbb2" id="1wn8NGzEKw1" role="3clF45">
        <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
      </node>
    </node>
    <node concept="13i0hz" id="1wn8NGzEKw2" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="createServersideCopy" />
      <ref role="13i0hy" to="64zb:11KrhWhKNEB" resolve="createServersideCopy" />
      <node concept="3Tm1VV" id="1wn8NGzEKw5" role="1B3o_S" />
      <node concept="3clFbS" id="1wn8NGzEKw8" role="3clF47">
        <node concept="3SKdUt" id="1wn8NGzEKzb" role="3cqZAp">
          <node concept="3SKdUq" id="1wn8NGzEKzc" role="3SKWNk">
            <property role="3SKdUp" value="TODO" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1wn8NGzEKw9" role="3clF46">
        <property role="TrG5h" value="objCopy" />
        <node concept="3Tqbb2" id="1wn8NGzEKwa" role="1tU5fm">
          <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
        </node>
      </node>
      <node concept="3cqZAl" id="1wn8NGzEKwb" role="3clF45" />
    </node>
    <node concept="13hLZK" id="1wn8NGzh7th" role="13h7CW">
      <node concept="3clFbS" id="1wn8NGzh7ti" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1wn8NGzhv8c" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getEditingExpression" />
      <ref role="13i0hy" to="cp45:XZLIaPLIBG" resolve="getEditingExpression" />
      <node concept="3Tm1VV" id="1wn8NGzhv8d" role="1B3o_S" />
      <node concept="3clFbS" id="1wn8NGzhv8g" role="3clF47">
        <node concept="3cpWs6" id="1wn8NGzhv8A" role="3cqZAp">
          <node concept="2ShNRf" id="1wn8NGzr5vm" role="3cqZAk">
            <node concept="3zrR0B" id="1wn8NGzr5vk" role="2ShVmc">
              <node concept="3Tqbb2" id="1wn8NGzr5vl" role="3zrR0E">
                <ref role="ehGHo" to="j8uj:1wn8NGzhudz" resolve="LanguageProcessorEditor" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="1wn8NGzhv8h" role="3clF45">
        <ref role="ehGHo" to="bxmu:XZLIaPLIAd" resolve="AbstractTypeEditing" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="1wn8NGzhudX">
    <ref role="13h7C2" to="j8uj:1wn8NGzhudz" resolve="LanguageProcessorEditor" />
    <node concept="13hLZK" id="1wn8NGzhudY" role="13h7CW">
      <node concept="3clFbS" id="1wn8NGzhudZ" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1wn8NGzhue8" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="1wn8NGzhue9" role="1B3o_S" />
      <node concept="3clFbS" id="1wn8NGzhuec" role="3clF47">
        <node concept="3clFbF" id="1wn8NGzhv1Y" role="3cqZAp">
          <node concept="Xl_RD" id="1wn8NGzhv1X" role="3clFbG">
            <property role="Xl_RC" value="rr_languageProcessorEditor" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="1wn8NGzhued" role="3clF45" />
    </node>
    <node concept="13i0hz" id="1wn8NGzlyGa" role="13h7CS">
      <property role="TrG5h" value="getConcreteEditingStatementType" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="cp45:1wn8NGzhv9U" resolve="getConcreteEditingStatementConcept" />
      <node concept="3Tm1VV" id="1wn8NGzlyGb" role="1B3o_S" />
      <node concept="3clFbS" id="1wn8NGzlyGe" role="3clF47">
        <node concept="3clFbF" id="1wn8NGzrJ_4" role="3cqZAp">
          <node concept="35c_gC" id="1wn8NGzrJ_3" role="3clFbG">
            <ref role="35c_gD" to="j8uj:1wn8NGzrJ$t" resolve="AbstractLanguageProcessorEditingStatement" />
          </node>
        </node>
      </node>
      <node concept="3bZ5Sz" id="1wn8NGzlyGf" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="1wn8NGzrJHA">
    <property role="3GE5qa" value="editing" />
    <ref role="13h7C2" to="j8uj:1wn8NGzrJ$u" resolve="SetTokenizer" />
    <node concept="13hLZK" id="1wn8NGzrJHB" role="13h7CW">
      <node concept="3clFbS" id="1wn8NGzrJHC" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1wn8NGzrJHL" role="13h7CS">
      <property role="TrG5h" value="applyLocalChanges" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="64zb:4HLGmtYMVsA" resolve="applyLocalChanges" />
      <node concept="3Tm1VV" id="1wn8NGzrJHM" role="1B3o_S" />
      <node concept="3clFbS" id="1wn8NGzrJHT" role="3clF47">
        <node concept="3SKdUt" id="1wn8NGzrKS$" role="3cqZAp">
          <node concept="3SKdUq" id="1wn8NGzrKS_" role="3SKWNk">
            <property role="3SKdUp" value="TODO" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1wn8NGzrJHU" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="1wn8NGzrJHV" role="1tU5fm">
          <ref role="3uigEE" to="2ahs:4X7QcQ31ENp" resolve="IContext" />
        </node>
      </node>
      <node concept="37vLTG" id="1wn8NGzrJHW" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3Tqbb2" id="1wn8NGzrJHX" role="1tU5fm">
          <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
        </node>
      </node>
      <node concept="3cqZAl" id="1wn8NGzrJHY" role="3clF45" />
    </node>
    <node concept="13i0hz" id="1wn8NGzrJHZ" role="13h7CS">
      <property role="TrG5h" value="generateServerRequests" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="64zb:4HLGmtYMWnF" resolve="generateServerRequests" />
      <node concept="3Tm1VV" id="1wn8NGzrJI0" role="1B3o_S" />
      <node concept="3clFbS" id="1wn8NGzrJI4" role="3clF47">
        <node concept="3SKdUt" id="1wn8NGzrKTp" role="3cqZAp">
          <node concept="3SKdUq" id="1wn8NGzrKTq" role="3SKWNk">
            <property role="3SKdUp" value="TODO" />
          </node>
        </node>
        <node concept="3cpWs6" id="1wn8NGzrJLq" role="3cqZAp">
          <node concept="2ShNRf" id="1wn8NGzrKRW" role="3cqZAk">
            <node concept="Tc6Ow" id="1wn8NGzrKRS" role="2ShVmc">
              <node concept="17QB3L" id="1wn8NGzrKRT" role="HW$YZ" />
            </node>
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="1wn8NGzrJI5" role="3clF45">
        <node concept="17QB3L" id="1wn8NGzrJI6" role="_ZDj9" />
      </node>
    </node>
    <node concept="13i0hz" id="1wn8NGzrJI7" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="1wn8NGzrJI8" role="1B3o_S" />
      <node concept="3clFbS" id="1wn8NGzrJIb" role="3clF47">
        <node concept="3clFbF" id="1wn8NGzrJJV" role="3cqZAp">
          <node concept="Xl_RD" id="1wn8NGzrJJU" role="3clFbG">
            <property role="Xl_RC" value="rr_setTokenizzer" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="1wn8NGzrJIc" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="1wn8NGzrKVx">
    <property role="3GE5qa" value="editing" />
    <ref role="13h7C2" to="j8uj:1wn8NGzrKUI" resolve="SetInflectionReduction" />
    <node concept="13hLZK" id="1wn8NGzrKVy" role="13h7CW">
      <node concept="3clFbS" id="1wn8NGzrKVz" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1wn8NGzrKVG" role="13h7CS">
      <property role="TrG5h" value="applyLocalChanges" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="64zb:4HLGmtYMVsA" resolve="applyLocalChanges" />
      <node concept="3Tm1VV" id="1wn8NGzrKVH" role="1B3o_S" />
      <node concept="3clFbS" id="1wn8NGzrKVO" role="3clF47">
        <node concept="3SKdUt" id="1wn8NGzrL0k" role="3cqZAp">
          <node concept="3SKdUq" id="1wn8NGzrL0l" role="3SKWNk">
            <property role="3SKdUp" value="TODO" />
          </node>
        </node>
        <node concept="3cpWs6" id="1wn8NGzrL1n" role="3cqZAp" />
      </node>
      <node concept="37vLTG" id="1wn8NGzrKVP" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="1wn8NGzrKVQ" role="1tU5fm">
          <ref role="3uigEE" to="2ahs:4X7QcQ31ENp" resolve="IContext" />
        </node>
      </node>
      <node concept="37vLTG" id="1wn8NGzrKVR" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3Tqbb2" id="1wn8NGzrKVS" role="1tU5fm">
          <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
        </node>
      </node>
      <node concept="3cqZAl" id="1wn8NGzrKVT" role="3clF45" />
    </node>
    <node concept="13i0hz" id="1wn8NGzrKVU" role="13h7CS">
      <property role="TrG5h" value="generateServerRequests" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="64zb:4HLGmtYMWnF" resolve="generateServerRequests" />
      <node concept="3Tm1VV" id="1wn8NGzrKVV" role="1B3o_S" />
      <node concept="3clFbS" id="1wn8NGzrKVZ" role="3clF47">
        <node concept="3SKdUt" id="1wn8NGzrL00" role="3cqZAp">
          <node concept="3SKdUq" id="1wn8NGzrL02" role="3SKWNk">
            <property role="3SKdUp" value="TODO" />
          </node>
        </node>
        <node concept="3clFbF" id="1wn8NGzrKZp" role="3cqZAp">
          <node concept="10Nm6u" id="1wn8NGzrKZo" role="3clFbG" />
        </node>
      </node>
      <node concept="_YKpA" id="1wn8NGzrKW0" role="3clF45">
        <node concept="17QB3L" id="1wn8NGzrKW1" role="_ZDj9" />
      </node>
    </node>
    <node concept="13i0hz" id="1wn8NGzrKW2" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="1wn8NGzrKW3" role="1B3o_S" />
      <node concept="3clFbS" id="1wn8NGzrKW6" role="3clF47">
        <node concept="3clFbF" id="1wn8NGzrKWS" role="3cqZAp">
          <node concept="Xl_RD" id="1wn8NGzrKWR" role="3clFbG">
            <property role="Xl_RC" value="rr_setInflectionReduction" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="1wn8NGzrKW7" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="1wn8NGzrL20">
    <property role="3GE5qa" value="editing" />
    <ref role="13h7C2" to="j8uj:1wn8NGzrL1A" resolve="SetStopwordRemoval" />
    <node concept="13hLZK" id="1wn8NGzrL21" role="13h7CW">
      <node concept="3clFbS" id="1wn8NGzrL22" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1wn8NGzrL2b" role="13h7CS">
      <property role="TrG5h" value="applyLocalChanges" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="64zb:4HLGmtYMVsA" resolve="applyLocalChanges" />
      <node concept="3Tm1VV" id="1wn8NGzrL2c" role="1B3o_S" />
      <node concept="3clFbS" id="1wn8NGzrL2j" role="3clF47">
        <node concept="3SKdUt" id="1wn8NGzrL60" role="3cqZAp">
          <node concept="3SKdUq" id="1wn8NGzrL61" role="3SKWNk">
            <property role="3SKdUp" value="TODO" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1wn8NGzrL2k" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="1wn8NGzrL2l" role="1tU5fm">
          <ref role="3uigEE" to="2ahs:4X7QcQ31ENp" resolve="IContext" />
        </node>
      </node>
      <node concept="37vLTG" id="1wn8NGzrL2m" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3Tqbb2" id="1wn8NGzrL2n" role="1tU5fm">
          <ref role="ehGHo" to="hm2y:6sdnDbSlaok" resolve="Type" />
        </node>
      </node>
      <node concept="3cqZAl" id="1wn8NGzrL2o" role="3clF45" />
    </node>
    <node concept="13i0hz" id="1wn8NGzrL2p" role="13h7CS">
      <property role="TrG5h" value="generateServerRequests" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="64zb:4HLGmtYMWnF" resolve="generateServerRequests" />
      <node concept="3Tm1VV" id="1wn8NGzrL2q" role="1B3o_S" />
      <node concept="3clFbS" id="1wn8NGzrL2u" role="3clF47">
        <node concept="3SKdUt" id="1wn8NGzrL5g" role="3cqZAp">
          <node concept="3SKdUq" id="1wn8NGzrL5h" role="3SKWNk">
            <property role="3SKdUp" value="TODO" />
          </node>
        </node>
        <node concept="3clFbF" id="1wn8NGzrL5E" role="3cqZAp">
          <node concept="10Nm6u" id="1wn8NGzrL5C" role="3clFbG" />
        </node>
      </node>
      <node concept="_YKpA" id="1wn8NGzrL2v" role="3clF45">
        <node concept="17QB3L" id="1wn8NGzrL2w" role="_ZDj9" />
      </node>
    </node>
    <node concept="13i0hz" id="1wn8NGzrL2x" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="1wn8NGzrL2y" role="1B3o_S" />
      <node concept="3clFbS" id="1wn8NGzrL2_" role="3clF47">
        <node concept="3clFbF" id="1wn8NGzrL3n" role="3cqZAp">
          <node concept="Xl_RD" id="1wn8NGzrL3m" role="3clFbG">
            <property role="Xl_RC" value="rr_setStopwordRemoval" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="1wn8NGzrL2A" role="3clF45" />
    </node>
  </node>
</model>

