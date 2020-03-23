<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6e9b2235-0fe7-42b9-bb5a-8f85b71f42e3(types.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="1" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="8" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="pbu6" ref="r:83e946de-2a7f-4a4c-b3c9-4f671aa7f2db(org.iets3.core.expr.base.behavior)" />
    <import index="jqrd" ref="r:a86b5aa2-977c-4dd4-975b-865365d5871c(types.structure)" />
    <import index="oq0c" ref="r:6c6155f0-4bbe-4af5-8c26-244d570e21e4(org.iets3.core.expr.base.plugin)" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
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
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
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
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
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
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
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
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="6332851714983831325" name="jetbrains.mps.baseLanguage.logging.structure.MsgStatement" flags="ng" index="2xdQw9">
        <property id="6332851714983843871" name="severity" index="2xdLsb" />
        <child id="5721587534047265374" name="message" index="9lYJi" />
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
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
      <concept id="1140131837776" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation" flags="nn" index="1P9Npp">
        <child id="1140131861877" name="replacementNode" index="1P9ThW" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
  </registry>
  <node concept="13h7C7" id="6azzq4WXqLo">
    <ref role="13h7C2" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
    <node concept="13i0hz" id="6azzq4WXqLz" role="13h7CS">
      <property role="TrG5h" value="getInitialExpression" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="6azzq4WXqL$" role="1B3o_S" />
      <node concept="3Tqbb2" id="6azzq4WXqM3" role="3clF45">
        <ref role="ehGHo" to="hm2y:6sdnDbSla17" resolve="Expression" />
      </node>
      <node concept="3clFbS" id="6azzq4WXqLA" role="3clF47">
        <node concept="3cpWs6" id="6azzq4WXqNv" role="3cqZAp">
          <node concept="2OqwBi" id="7g3NvkvQGHS" role="3cqZAk">
            <node concept="13iPFW" id="7g3NvkvQGy6" role="2Oq$k0" />
            <node concept="3TrEf2" id="7g3NvkvQHdH" role="2OqNvi">
              <ref role="3Tt5mk" to="jqrd:7g3NvkvQEiO" resolve="initialExpression" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="XZLIaPm3XP" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="replaceWith" />
      <node concept="3Tm1VV" id="XZLIaPm3XQ" role="1B3o_S" />
      <node concept="3cqZAl" id="XZLIaPm7kp" role="3clF45" />
      <node concept="3clFbS" id="XZLIaPm3XS" role="3clF47">
        <node concept="3SKdUt" id="1Ho6EEt9$B$" role="3cqZAp">
          <node concept="3SKdUq" id="1Ho6EEt9$BA" role="3SKWNk">
            <property role="3SKdUp" value="TODO: seems to be right, right?" />
          </node>
        </node>
        <node concept="3clFbJ" id="7AbWZaxl5uo" role="3cqZAp">
          <node concept="3clFbS" id="7AbWZaxl5up" role="3clFbx">
            <node concept="2xdQw9" id="1Ho6EEtaPGw" role="3cqZAp">
              <property role="2xdLsb" value="error" />
              <node concept="Xl_RD" id="1Ho6EEtaPGx" role="9lYJi">
                <property role="Xl_RC" value="Error on replacing AbstractType-Node: other node is of different type!" />
              </node>
            </node>
            <node concept="2xdQw9" id="7AbWZaxl5uq" role="3cqZAp">
              <property role="2xdLsb" value="error" />
              <node concept="3cpWs3" id="1Ho6EEtaRoL" role="9lYJi">
                <node concept="2OqwBi" id="3CO1ndsNIdz" role="3uHU7w">
                  <node concept="2OqwBi" id="1Ho6EEtaRGj" role="2Oq$k0">
                    <node concept="37vLTw" id="1Ho6EEtaRu7" role="2Oq$k0">
                      <ref role="3cqZAo" node="XZLIaPm7jO" resolve="other" />
                    </node>
                    <node concept="2yIwOk" id="3CO1ndsNyFQ" role="2OqNvi" />
                  </node>
                  <node concept="liA8E" id="3CO1ndsNIdR" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractConcept.getName():java.lang.String" resolve="getName" />
                  </node>
                </node>
                <node concept="3cpWs3" id="1Ho6EEtaPIg" role="3uHU7B">
                  <node concept="3cpWs3" id="1Ho6EEtaQgM" role="3uHU7B">
                    <node concept="Xl_RD" id="1Ho6EEtaQhK" role="3uHU7B">
                      <property role="Xl_RC" value="this:" />
                    </node>
                    <node concept="2OqwBi" id="3CO1ndsNHDB" role="3uHU7w">
                      <node concept="2OqwBi" id="1Ho6EEtaPWF" role="2Oq$k0">
                        <node concept="13iPFW" id="1Ho6EEtaPII" role="2Oq$k0" />
                        <node concept="2yIwOk" id="3CO1ndsNy5b" role="2OqNvi" />
                      </node>
                      <node concept="liA8E" id="3CO1ndsNHF3" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getName():java.lang.String" resolve="getName" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="7AbWZaxl5ur" role="3uHU7w">
                    <property role="Xl_RC" value=" != other:" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7AbWZaxl5us" role="3cqZAp" />
          </node>
          <node concept="17QLQc" id="7AbWZaxl5ut" role="3clFbw">
            <node concept="2OqwBi" id="3CO1ndsNFSD" role="3uHU7B">
              <node concept="2OqwBi" id="7AbWZaxl5uu" role="2Oq$k0">
                <node concept="13iPFW" id="7AbWZaxl5uv" role="2Oq$k0" />
                <node concept="2yIwOk" id="3CO1ndsNwVO" role="2OqNvi" />
              </node>
              <node concept="liA8E" id="3CO1ndsNGz_" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getName():java.lang.String" resolve="getName" />
              </node>
            </node>
            <node concept="2OqwBi" id="3CO1ndsNH9c" role="3uHU7w">
              <node concept="2OqwBi" id="7AbWZaxl5ux" role="2Oq$k0">
                <node concept="37vLTw" id="7AbWZaxl5uy" role="2Oq$k0">
                  <ref role="3cqZAo" node="XZLIaPm7jO" resolve="other" />
                </node>
                <node concept="2yIwOk" id="3CO1ndsNx$U" role="2OqNvi" />
              </node>
              <node concept="liA8E" id="3CO1ndsNHaV" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getName():java.lang.String" resolve="getName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3CO1ndsNIlm" role="3cqZAp" />
        <node concept="3clFbJ" id="7AbWZaxlGoq" role="3cqZAp">
          <node concept="2OqwBi" id="7AbWZaxlGUh" role="3clFbw">
            <node concept="13iPFW" id="7AbWZaxlGoI" role="2Oq$k0" />
            <node concept="1mIQ4w" id="7AbWZaxlHq6" role="2OqNvi">
              <node concept="chp4Y" id="7AbWZaxlHsM" role="cj9EA">
                <ref role="cht4Q" to="5frd:XZLIaPVfvV" resolve="IContainItems" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7AbWZaxlGos" role="3clFbx">
            <node concept="3clFbF" id="7AbWZaxlK_t" role="3cqZAp">
              <node concept="2OqwBi" id="7AbWZaxlIbk" role="3clFbG">
                <node concept="1PxgMI" id="7AbWZaxlHXx" role="2Oq$k0">
                  <node concept="chp4Y" id="7AbWZaxlI13" role="3oSUPX">
                    <ref role="cht4Q" to="5frd:XZLIaPVfvV" resolve="IContainItems" />
                  </node>
                  <node concept="13iPFW" id="7AbWZaxlHvL" role="1m5AlR" />
                </node>
                <node concept="2qgKlT" id="7AbWZaxlIps" role="2OqNvi">
                  <ref role="37wK5l" to="64zb:7AbWZaxl5uk" resolve="replaceNodePreservingItemRefs" />
                  <node concept="1PxgMI" id="7AbWZaxlKgF" role="37wK5m">
                    <node concept="chp4Y" id="7AbWZaxlKo4" role="3oSUPX">
                      <ref role="cht4Q" to="5frd:XZLIaPVfvV" resolve="IContainItems" />
                    </node>
                    <node concept="37vLTw" id="7AbWZaxlIwm" role="1m5AlR">
                      <ref role="3cqZAo" node="XZLIaPm7jO" resolve="other" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="7AbWZaxlKON" role="9aQIa">
            <node concept="3clFbS" id="7AbWZaxlKOO" role="9aQI4">
              <node concept="3clFbF" id="7AbWZaxlKWf" role="3cqZAp">
                <node concept="2OqwBi" id="7AbWZaxlL5V" role="3clFbG">
                  <node concept="13iPFW" id="7AbWZaxlKWe" role="2Oq$k0" />
                  <node concept="1P9Npp" id="7AbWZaxlL_I" role="2OqNvi">
                    <node concept="2OqwBi" id="7AbWZaxlLNW" role="1P9ThW">
                      <node concept="37vLTw" id="7AbWZaxlLBK" role="2Oq$k0">
                        <ref role="3cqZAo" node="XZLIaPm7jO" resolve="other" />
                      </node>
                      <node concept="1$rogu" id="7AbWZaxlM44" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="XZLIaPm7jO" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3Tqbb2" id="XZLIaPm7jN" role="1tU5fm">
          <ref role="ehGHo" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="6azzq4WXqLp" role="13h7CW">
      <node concept="3clFbS" id="6azzq4WXqLq" role="2VODD2" />
    </node>
  </node>
</model>

