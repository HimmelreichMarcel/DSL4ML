<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2485b9a5-23c9-4b4a-8035-41c91de74603(edit.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="8" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="pbu6" ref="r:83e946de-2a7f-4a4c-b3c9-4f671aa7f2db(org.iets3.core.expr.base.behavior)" />
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" />
    <import index="bxmu" ref="r:2caa4bf2-77af-43e0-8e72-8a12a8978a06(edit.structure)" />
    <import index="jqrd" ref="r:a86b5aa2-977c-4dd4-975b-865365d5871c(types.structure)" />
    <import index="w8ws" ref="r:371ff547-5eea-4440-a0bb-93d0be22bfcb(statements.behavior)" implicit="true" />
    <import index="ja9q" ref="r:fc597f30-d1d1-4d82-975e-209a1fdb1f96(statements.structure)" implicit="true" />
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
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
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
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
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
      <concept id="1143511969223" name="jetbrains.mps.lang.smodel.structure.Node_GetPrevSiblingOperation" flags="nn" index="YBYNd" />
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
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
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
    </language>
  </registry>
  <node concept="13h7C7" id="XZLIaPLIBx">
    <ref role="13h7C2" to="bxmu:XZLIaPLIAc" resolve="ICanBeEdited" />
    <node concept="13i0hz" id="XZLIaPLIBG" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getEditingExpression" />
      <node concept="3Tm1VV" id="XZLIaPLIBH" role="1B3o_S" />
      <node concept="3Tqbb2" id="XZLIaPLIC8" role="3clF45">
        <ref role="ehGHo" to="bxmu:XZLIaPLIAd" resolve="AbstractTypeEditing" />
      </node>
      <node concept="3clFbS" id="XZLIaPLIBJ" role="3clF47" />
    </node>
    <node concept="13hLZK" id="XZLIaPLIBy" role="13h7CW">
      <node concept="3clFbS" id="XZLIaPLIBz" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="XZLIaPLIHC">
    <ref role="13h7C2" to="bxmu:XZLIaPLIoZ" resolve="EditStatement" />
    <node concept="13hLZK" id="XZLIaPLIHD" role="13h7CW">
      <node concept="3clFbS" id="XZLIaPLIHE" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="XZLIaPLIHN" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="XZLIaPLIHO" role="1B3o_S" />
      <node concept="3clFbS" id="XZLIaPLIHR" role="3clF47">
        <node concept="3clFbF" id="XZLIaPLIIa" role="3cqZAp">
          <node concept="Xl_RD" id="XZLIaPLII9" role="3clFbG">
            <property role="Xl_RC" value="rr_editTypeExpression" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="XZLIaPLIHS" role="3clF45" />
    </node>
    <node concept="13i0hz" id="2t3FM7g2JLd" role="13h7CS">
      <property role="TrG5h" value="getRelatedNode" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="w8ws:2t3FM7fWBTc" resolve="getRelatedNode" />
      <node concept="3Tm1VV" id="2t3FM7g2JLe" role="1B3o_S" />
      <node concept="3clFbS" id="2t3FM7g2JLh" role="3clF47">
        <node concept="3cpWs6" id="2t3FM7g2Llw" role="3cqZAp">
          <node concept="2OqwBi" id="2t3FM7g2KPU" role="3cqZAk">
            <node concept="2OqwBi" id="2t3FM7g2JZD" role="2Oq$k0">
              <node concept="13iPFW" id="2t3FM7g2JLA" role="2Oq$k0" />
              <node concept="3TrEf2" id="2t3FM7g2Kkz" role="2OqNvi">
                <ref role="3Tt5mk" to="bxmu:XZLIaPLIpf" resolve="object" />
              </node>
            </node>
            <node concept="2qgKlT" id="2t3FM7g2Le8" role="2OqNvi">
              <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="4k$35jY92dr" role="3clF45">
        <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="7WePDBhhQiE">
    <ref role="13h7C2" to="bxmu:XZLIaPLIAd" resolve="AbstractTypeEditing" />
    <node concept="13i0hz" id="yCGLuIBXJS" role="13h7CS">
      <property role="TrG5h" value="getStatmentsBefore" />
      <node concept="3Tm1VV" id="yCGLuIBXJT" role="1B3o_S" />
      <node concept="2I9FWS" id="yCGLuIBY3K" role="3clF45">
        <ref role="2I9WkF" to="bxmu:7WePDBhhPDV" resolve="AbstractEditingStatment" />
      </node>
      <node concept="3clFbS" id="yCGLuIBXJV" role="3clF47">
        <node concept="3cpWs8" id="yCGLuIBYV8" role="3cqZAp">
          <node concept="3cpWsn" id="yCGLuIBYVb" role="3cpWs9">
            <property role="TrG5h" value="previousStatements" />
            <node concept="2I9FWS" id="yCGLuIBYV6" role="1tU5fm">
              <ref role="2I9WkF" to="bxmu:7WePDBhhPDV" resolve="AbstractEditingStatment" />
            </node>
            <node concept="2ShNRf" id="yCGLuIBZ0g" role="33vP2m">
              <node concept="2T8Vx0" id="yCGLuIBZ0e" role="2ShVmc">
                <node concept="2I9FWS" id="yCGLuIBZ0f" role="2T96Bj">
                  <ref role="2I9WkF" to="bxmu:7WePDBhhPDV" resolve="AbstractEditingStatment" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7WePDBhjJrG" role="3cqZAp">
          <node concept="3cpWsn" id="7WePDBhjJrJ" role="3cpWs9">
            <property role="TrG5h" value="prev" />
            <node concept="3Tqbb2" id="7WePDBhjJrE" role="1tU5fm">
              <ref role="ehGHo" to="bxmu:7WePDBhhPDV" resolve="AbstractEditingStatment" />
            </node>
            <node concept="1PxgMI" id="7WePDBhjKBw" role="33vP2m">
              <node concept="chp4Y" id="7WePDBhjKDA" role="3oSUPX">
                <ref role="cht4Q" to="bxmu:7WePDBhhPDV" resolve="AbstractEditingStatment" />
              </node>
              <node concept="2OqwBi" id="7WePDBhjJWp" role="1m5AlR">
                <node concept="37vLTw" id="7WePDBhjQR6" role="2Oq$k0">
                  <ref role="3cqZAo" node="yCGLuIBY32" resolve="target" />
                </node>
                <node concept="YBYNd" id="7WePDBhjKb2" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="7WePDBhjIRB" role="3cqZAp">
          <node concept="3clFbS" id="7WePDBhjIRD" role="2LFqv$">
            <node concept="3clFbF" id="7WePDBhjLdM" role="3cqZAp">
              <node concept="2OqwBi" id="7WePDBhjMPY" role="3clFbG">
                <node concept="37vLTw" id="7WePDBhjLdL" role="2Oq$k0">
                  <ref role="3cqZAo" node="yCGLuIBYVb" resolve="previousStatements" />
                </node>
                <node concept="TSZUe" id="7WePDBhjQF0" role="2OqNvi">
                  <node concept="37vLTw" id="7WePDBhjQWz" role="25WWJ7">
                    <ref role="3cqZAo" node="7WePDBhjJrJ" resolve="prev" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2okedX0C2vm" role="3cqZAp">
              <node concept="2OqwBi" id="2okedX0C2C8" role="3clFbG">
                <node concept="37vLTw" id="2okedX0C2vk" role="2Oq$k0">
                  <ref role="3cqZAo" node="7WePDBhjJrJ" resolve="prev" />
                </node>
                <node concept="YBYNd" id="2okedX0C2Vg" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7WePDBhjKP2" role="2$JKZa">
            <node concept="37vLTw" id="7WePDBhjKFx" role="2Oq$k0">
              <ref role="3cqZAo" node="7WePDBhjJrJ" resolve="prev" />
            </node>
            <node concept="3x8VRR" id="7WePDBhjLbq" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs6" id="yCGLuIC4my" role="3cqZAp">
          <node concept="37vLTw" id="yCGLuIC4KY" role="3cqZAk">
            <ref role="3cqZAo" node="yCGLuIBYVb" resolve="previousStatements" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="yCGLuIBY32" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="yCGLuIBY31" role="1tU5fm">
          <ref role="ehGHo" to="bxmu:7WePDBhhPDV" resolve="AbstractEditingStatment" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1wn8NGzhv9U" role="13h7CS">
      <property role="TrG5h" value="getConcreteEditingStatementConcept" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <node concept="3Tm1VV" id="1wn8NGzhv9V" role="1B3o_S" />
      <node concept="3bZ5Sz" id="1wn8NGzhvp1" role="3clF45" />
      <node concept="3clFbS" id="1wn8NGzhv9X" role="3clF47" />
    </node>
    <node concept="13hLZK" id="7WePDBhhQiF" role="13h7CW">
      <node concept="3clFbS" id="7WePDBhhQiG" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="6kn8py630bi">
    <ref role="13h7C2" to="bxmu:7WePDBhhPDV" resolve="AbstractEditingStatment" />
    <node concept="13i0hz" id="1oR6hBklX1O" role="13h7CS">
      <property role="TrG5h" value="getTargetObjectId" />
      <node concept="3Tm1VV" id="1oR6hBklX1P" role="1B3o_S" />
      <node concept="17QB3L" id="1oR6hBklX2v" role="3clF45" />
      <node concept="3clFbS" id="1oR6hBklX1R" role="3clF47">
        <node concept="3clFbF" id="1oR6hBklX52" role="3cqZAp">
          <node concept="2OqwBi" id="1oR6hBklX54" role="3clFbG">
            <node concept="1PxgMI" id="1oR6hBklX55" role="2Oq$k0">
              <node concept="chp4Y" id="1oR6hBklX56" role="3oSUPX">
                <ref role="cht4Q" to="5frd:1UULepO1t7_" resolve="ISynchWithServer" />
              </node>
              <node concept="2OqwBi" id="1oR6hBklX57" role="1m5AlR">
                <node concept="2OqwBi" id="1oR6hBklX58" role="2Oq$k0">
                  <node concept="2Xjw5R" id="1oR6hBklX59" role="2OqNvi">
                    <node concept="1xMEDy" id="1oR6hBklX5a" role="1xVPHs">
                      <node concept="chp4Y" id="4IazLL4XwDy" role="ri$Ld">
                        <ref role="cht4Q" to="ja9q:2t3FM7fJm6J" resolve="TypeRelatedStatement" />
                      </node>
                    </node>
                  </node>
                  <node concept="13iPFW" id="1oR6hBklX5c" role="2Oq$k0" />
                </node>
                <node concept="2qgKlT" id="1oR6hBklX5d" role="2OqNvi">
                  <ref role="37wK5l" to="w8ws:2t3FM7fWBTc" resolve="getRelatedNode" />
                </node>
              </node>
            </node>
            <node concept="3TrcHB" id="1oR6hBklX5e" role="2OqNvi">
              <ref role="3TsBF5" to="5frd:1UULepO1tEg" resolve="id" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="6kn8py630bj" role="13h7CW">
      <node concept="3clFbS" id="6kn8py630bk" role="2VODD2" />
    </node>
  </node>
</model>

