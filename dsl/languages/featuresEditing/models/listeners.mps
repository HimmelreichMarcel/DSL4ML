<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:07f9a303-8de4-4ae5-8e8a-4f0cd37f25e1(featuresEditing.listeners)">
  <persistence version="9" />
  <languages>
    <use id="309e0004-4976-4416-b947-ec02ae4ecef2" name="com.mbeddr.mpsutil.modellisteners" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="z82i" ref="r:0a2eb21f-fd0b-49b5-8a4c-2ff8b9d2f6c8(featuresEditing.structure)" implicit="true" />
    <import index="mqeo" ref="r:662af3f0-a585-45ac-ad3d-fb71447b161d(featuresEditing.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
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
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
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
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1227264722563" name="jetbrains.mps.lang.smodel.structure.EqualsStructurallyExpression" flags="nn" index="2YFouu" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="309e0004-4976-4416-b947-ec02ae4ecef2" name="com.mbeddr.mpsutil.modellisteners">
      <concept id="5818559022137765390" name="com.mbeddr.mpsutil.modellisteners.structure.Parameter_child" flags="ng" index="j_sak" />
      <concept id="5818559022137760597" name="com.mbeddr.mpsutil.modellisteners.structure.Parameter_instance" flags="ng" index="j_vvf" />
      <concept id="5818559022137644042" name="com.mbeddr.mpsutil.modellisteners.structure.ChildAddedListener" flags="ig" index="j_Nyg" />
      <concept id="5818559022137644848" name="com.mbeddr.mpsutil.modellisteners.structure.ChildRemovedListener" flags="ig" index="j_NIE" />
      <concept id="5818559022137597839" name="com.mbeddr.mpsutil.modellisteners.structure.ConceptModelListeners" flags="ng" index="jA7cl">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="5818559022137986141" name="listeners" index="j$A37" />
      </concept>
      <concept id="6105788070830360713" name="com.mbeddr.mpsutil.modellisteners.structure.AbstractRoleListener" flags="ig" index="3v5llJ">
        <reference id="5818559022137756708" name="role" index="j_u2Y" />
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
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1173946412755" name="jetbrains.mps.baseLanguage.collections.structure.RemoveAllElementsOperation" flags="nn" index="1kEaZ2" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="jA7cl" id="5A1koKOQmBf">
    <ref role="1M2myG" to="z82i:5TCgtqdzv5u" resolve="FeaturesetComposition" />
    <node concept="j_Nyg" id="5A1koKOQmBi" role="j$A37">
      <ref role="j_u2Y" to="z82i:2I8Ps5NdH6Y" resolve="featuresets" />
      <node concept="3clFbS" id="5A1koKOQmBk" role="2VODD2">
        <node concept="3SKdUt" id="5A1koKOQpM8" role="3cqZAp">
          <node concept="3SKdUq" id="5A1koKOQpMa" role="3SKWNk">
            <property role="3SKdUp" value="create new jointFs" />
          </node>
        </node>
        <node concept="3cpWs8" id="5A1koKOQmBD" role="3cqZAp">
          <node concept="3cpWsn" id="5A1koKOQmBG" role="3cpWs9">
            <property role="TrG5h" value="j" />
            <node concept="3Tqbb2" id="5A1koKOQmBC" role="1tU5fm">
              <ref role="ehGHo" to="z82i:5TCgtqdAnQi" resolve="JointFeatureStatement" />
            </node>
            <node concept="2ShNRf" id="5A1koKOQmCB" role="33vP2m">
              <node concept="3zrR0B" id="5A1koKOQmC_" role="2ShVmc">
                <node concept="3Tqbb2" id="5A1koKOQmCA" role="3zrR0E">
                  <ref role="ehGHo" to="z82i:5TCgtqdAnQi" resolve="JointFeatureStatement" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5A1koKOQmDe" role="3cqZAp">
          <node concept="37vLTI" id="5A1koKOQo2s" role="3clFbG">
            <node concept="2OqwBi" id="5ho9GAQVnr5" role="37vLTx">
              <node concept="j_sak" id="5ho9GAQVngt" role="2Oq$k0" />
              <node concept="1$rogu" id="5ho9GAQVn$y" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="5A1koKOQmKn" role="37vLTJ">
              <node concept="37vLTw" id="5A1koKOQmDc" role="2Oq$k0">
                <ref role="3cqZAo" node="5A1koKOQmBG" resolve="j" />
              </node>
              <node concept="3TrEf2" id="58ojJcwwrBn" role="2OqNvi">
                <ref role="3Tt5mk" to="z82i:4x_I0nqn5VX" resolve="featureset" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5A1koKOQpH3" role="3cqZAp" />
        <node concept="3clFbF" id="5A1koKOQpRl" role="3cqZAp">
          <node concept="2OqwBi" id="5A1koKOQq3d" role="3clFbG">
            <node concept="j_vvf" id="5A1koKOQpRj" role="2Oq$k0" />
            <node concept="2qgKlT" id="5ho9GAQWaL7" role="2OqNvi">
              <ref role="37wK5l" to="mqeo:5ho9GAQVDqu" resolve="addJointFeatureStatement" />
              <node concept="37vLTw" id="5ho9GAQWaQy" role="37wK5m">
                <ref role="3cqZAo" node="5A1koKOQmBG" resolve="j" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="j_NIE" id="5A1koKOQHqZ" role="j$A37">
      <ref role="j_u2Y" to="z82i:2I8Ps5NdH6Y" resolve="featuresets" />
      <node concept="3clFbS" id="5A1koKOQHr1" role="2VODD2">
        <node concept="3cpWs8" id="5A1koKOR2fI" role="3cqZAp">
          <node concept="3cpWsn" id="5A1koKOR2fL" role="3cpWs9">
            <property role="TrG5h" value="remove" />
            <node concept="2OqwBi" id="5A1koKOQT_e" role="33vP2m">
              <node concept="2OqwBi" id="5A1koKOQRbl" role="2Oq$k0">
                <node concept="j_vvf" id="5A1koKOQQOh" role="2Oq$k0" />
                <node concept="3Tsc0h" id="5A1koKOQROG" role="2OqNvi">
                  <ref role="3TtcxE" to="z82i:5TCgtqdzE1L" resolve="jointFeatures" />
                </node>
              </node>
              <node concept="3zZkjj" id="5A1koKOQYyP" role="2OqNvi">
                <node concept="1bVj0M" id="5A1koKOQYyR" role="23t8la">
                  <node concept="3clFbS" id="5A1koKOQYyS" role="1bW5cS">
                    <node concept="3clFbF" id="5A1koKOQYDh" role="3cqZAp">
                      <node concept="2YFouu" id="5ho9GAQV_HY" role="3clFbG">
                        <node concept="2OqwBi" id="5A1koKOR01n" role="3uHU7B">
                          <node concept="37vLTw" id="5A1koKOQYDg" role="2Oq$k0">
                            <ref role="3cqZAo" node="5A1koKOQYyT" resolve="it" />
                          </node>
                          <node concept="3TrEf2" id="5A1koKOR0ZX" role="2OqNvi">
                            <ref role="3Tt5mk" to="z82i:4x_I0nqn5VX" resolve="featureset" />
                          </node>
                        </node>
                        <node concept="j_sak" id="5A1koKOR1k$" role="3uHU7w" />
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="5A1koKOQYyT" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5A1koKOQYyU" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="A3Dl8" id="5A1koKOR2EV" role="1tU5fm">
              <node concept="3Tqbb2" id="5A1koKOR2NI" role="A3Ik2">
                <ref role="ehGHo" to="z82i:5TCgtqdAnQi" resolve="JointFeatureStatement" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5A1koKOR33U" role="3cqZAp">
          <node concept="2OqwBi" id="5A1koKOR5Ey" role="3clFbG">
            <node concept="2OqwBi" id="5A1koKOR3if" role="2Oq$k0">
              <node concept="j_vvf" id="5A1koKOR33S" role="2Oq$k0" />
              <node concept="3Tsc0h" id="5A1koKOR40T" role="2OqNvi">
                <ref role="3TtcxE" to="z82i:5TCgtqdzE1L" resolve="jointFeatures" />
              </node>
            </node>
            <node concept="1kEaZ2" id="5A1koKOR7m_" role="2OqNvi">
              <node concept="37vLTw" id="5A1koKOR9_Q" role="25WWJ7">
                <ref role="3cqZAo" node="5A1koKOR2fL" resolve="remove" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

