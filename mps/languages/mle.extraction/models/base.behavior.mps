<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8f368999-d6ce-4514-9679-896d4353390f(base.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="1" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="rzzn" ref="r:76ee21ab-cfc8-4c27-9a60-7dd5562f12aa(rootfile.behavior)" />
    <import index="7skk" ref="r:c33d3b05-6327-4bd1-91f0-9c47a8de45f7(rootfile.structure)" />
    <import index="amyc" ref="r:999800c2-1941-4cf0-8fc5-d15eb2e8e3d8(base.structure)" />
    <import index="pbu6" ref="r:83e946de-2a7f-4a4c-b3c9-4f671aa7f2db(org.iets3.core.expr.base.behavior)" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" implicit="true" />
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
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
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
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
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
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
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
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
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
  </registry>
  <node concept="13h7C7" id="506RQlN2uSD">
    <property role="3GE5qa" value="expressions" />
    <ref role="13h7C2" to="amyc:fN3qU6G$xK" resolve="FeatureEditionExpression" />
    <node concept="13hLZK" id="506RQlN2uSE" role="13h7CW">
      <node concept="3clFbS" id="506RQlN2uSF" role="2VODD2">
        <node concept="3clFbF" id="506RQlN2uSP" role="3cqZAp">
          <node concept="37vLTI" id="506RQlN2wGd" role="3clFbG">
            <node concept="Xl_RD" id="506RQlN2wJS" role="37vLTx">
              <property role="Xl_RC" value="undefined" />
            </node>
            <node concept="2OqwBi" id="506RQlN2v71" role="37vLTJ">
              <node concept="13iPFW" id="506RQlN2uSO" role="2Oq$k0" />
              <node concept="3TrcHB" id="506RQlN2vX8" role="2OqNvi">
                <ref role="3TsBF5" to="amyc:506RQlN1hsn" resolve="typestring" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2m90CjkDmdu" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="2m90CjkDmdv" role="1B3o_S" />
      <node concept="3clFbS" id="2m90CjkDmdy" role="3clF47">
        <node concept="3clFbF" id="2m90CjkDn3D" role="3cqZAp">
          <node concept="Xl_RD" id="2m90CjkDn3C" role="3clFbG">
            <property role="Xl_RC" value="rr_featureEditionExpression" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="2m90CjkDmdz" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="3RQ8TRgHtFO">
    <property role="3GE5qa" value="expressions" />
    <ref role="13h7C2" to="amyc:3RQ8TRgEYfg" resolve="FeaturesetEditorBlock" />
    <node concept="13hLZK" id="3RQ8TRgHtFP" role="13h7CW">
      <node concept="3clFbS" id="3RQ8TRgHtFQ" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3RQ8TRgHtFZ" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getFeatureset" />
      <ref role="13i0hy" to="rzzn:3RQ8TRgHtE6" resolve="getFeatureset" />
      <node concept="3Tm1VV" id="3RQ8TRgHtG0" role="1B3o_S" />
      <node concept="3clFbS" id="3RQ8TRgHtG3" role="3clF47">
        <node concept="3clFbF" id="3RQ8TRgHtGi" role="3cqZAp">
          <node concept="1PxgMI" id="3RQ8TRgHvwn" role="3clFbG">
            <node concept="chp4Y" id="3RQ8TRgHv$K" role="3oSUPX">
              <ref role="cht4Q" to="7skk:7OzZ9xI8jbt" resolve="FeaturesetType" />
            </node>
            <node concept="2OqwBi" id="3RQ8TRgHwlH" role="1m5AlR">
              <node concept="1PxgMI" id="pBV22SMTsP" role="2Oq$k0">
                <node concept="chp4Y" id="pBV22SMU_$" role="3oSUPX">
                  <ref role="cht4Q" to="7skk:pBV22SMBK$" resolve="IProvideTypeObject" />
                </node>
                <node concept="2OqwBi" id="3RQ8TRgHtWW" role="1m5AlR">
                  <node concept="13iPFW" id="3RQ8TRgHtGh" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3RQ8TRgHuJR" role="2OqNvi">
                    <ref role="3Tt5mk" to="amyc:3RQ8TRgFh8V" resolve="featureset" />
                  </node>
                </node>
              </node>
              <node concept="2qgKlT" id="3RQ8TRgHwLi" role="2OqNvi">
                <ref role="37wK5l" to="rzzn:pBV22SMBS1" resolve="getTypeObject" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="3RQ8TRgHtG4" role="3clF45">
        <ref role="ehGHo" to="7skk:7OzZ9xI8jbt" resolve="FeaturesetType" />
      </node>
    </node>
    <node concept="13i0hz" id="2m90CjkDndC" role="13h7CS">
      <property role="TrG5h" value="renderReadable" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="pbu6:4Y0vh0cfqjE" resolve="renderReadable" />
      <node concept="3Tm1VV" id="2m90CjkDndD" role="1B3o_S" />
      <node concept="3clFbS" id="2m90CjkDndG" role="3clF47">
        <node concept="3clFbF" id="2m90CjkDnlZ" role="3cqZAp">
          <node concept="Xl_RD" id="2m90CjkDnlY" role="3clFbG">
            <property role="Xl_RC" value="rr_featuresetEditorBlock" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="2m90CjkDndH" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="yww_xQoDA_">
    <ref role="13h7C2" to="amyc:yww_xQoDAb" resolve="IFeatureRefDotTarget" />
    <node concept="13i0hz" id="7KbMtvyjT6w" role="13h7CS">
      <property role="TrG5h" value="getObject" />
      <node concept="3Tm1VV" id="7KbMtvyjT6x" role="1B3o_S" />
      <node concept="3Tqbb2" id="7KbMtvyjT6L" role="3clF45" />
      <node concept="3clFbS" id="7KbMtvyjT6z" role="3clF47">
        <node concept="3cpWs8" id="7KbMtvyjYRd" role="3cqZAp">
          <node concept="3cpWsn" id="7KbMtvyjYRg" role="3cpWs9">
            <property role="TrG5h" value="expr" />
            <node concept="3Tqbb2" id="7KbMtvyjYRb" role="1tU5fm" />
            <node concept="2OqwBi" id="7KbMtvyjUmQ" role="33vP2m">
              <node concept="2OqwBi" id="7KbMtvyjTx2" role="2Oq$k0">
                <node concept="13iPFW" id="7KbMtvyjToi" role="2Oq$k0" />
                <node concept="2Xjw5R" id="3RQ8TRgH7L1" role="2OqNvi">
                  <node concept="1xMEDy" id="3RQ8TRgH7L3" role="1xVPHs">
                    <node concept="chp4Y" id="5W_fQsnd1ph" role="ri$Ld">
                      <ref role="cht4Q" to="hm2y:7NJy08a3O9a" resolve="IDotTarget" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="3RQ8TRgH8_V" role="1xVPHs" />
                </node>
              </node>
              <node concept="2qgKlT" id="5W_fQsnd2zk" role="2OqNvi">
                <ref role="37wK5l" to="pbu6:6zmBjqUivyF" resolve="contextExpression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6UA$kvQzcx_" role="3cqZAp">
          <node concept="3SKdUq" id="6UA$kvQzcxB" role="3SKWNk">
            <property role="3SKdUp" value="TODO: is operand the right child of DotExpression in this context?" />
          </node>
        </node>
        <node concept="3clFbF" id="_d57k_kLML" role="3cqZAp">
          <node concept="3K4zz7" id="_d57k_kN70" role="3clFbG">
            <node concept="37vLTw" id="_d57k_kNqJ" role="3K4GZi">
              <ref role="3cqZAo" node="7KbMtvyjYRg" resolve="expr" />
            </node>
            <node concept="1eOMI4" id="_d57k_kLMH" role="3K4Cdx">
              <node concept="2OqwBi" id="_d57k_kMce" role="1eOMHV">
                <node concept="37vLTw" id="_d57k_kM3L" role="2Oq$k0">
                  <ref role="3cqZAo" node="7KbMtvyjYRg" resolve="expr" />
                </node>
                <node concept="1mIQ4w" id="_d57k_kM$m" role="2OqNvi">
                  <node concept="chp4Y" id="4$X4DeKL$XW" role="cj9EA">
                    <ref role="cht4Q" to="7skk:7OzZ9xI99S_" resolve="InPortRef" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="_d57k_kNcf" role="3K4E3e">
              <node concept="2OqwBi" id="_d57k_kNcg" role="2Oq$k0">
                <node concept="2OqwBi" id="_d57k_kNch" role="2Oq$k0">
                  <node concept="1PxgMI" id="_d57k_kNci" role="2Oq$k0">
                    <node concept="chp4Y" id="4$X4DeKL$XY" role="3oSUPX">
                      <ref role="cht4Q" to="7skk:7OzZ9xI99S_" resolve="InPortRef" />
                    </node>
                    <node concept="37vLTw" id="_d57k_kNck" role="1m5AlR">
                      <ref role="3cqZAo" node="7KbMtvyjYRg" resolve="expr" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="_d57k_kNcl" role="2OqNvi">
                    <ref role="3Tt5mk" to="7skk:7OzZ9xI99SG" resolve="inport" />
                  </node>
                </node>
                <node concept="3TrEf2" id="5uKjkG1i11B" role="2OqNvi">
                  <ref role="3Tt5mk" to="7skk:5uKjkG1gJZO" resolve="outport" />
                </node>
              </node>
              <node concept="3TrEf2" id="5W_fQsnd6vw" role="2OqNvi">
                <ref role="3Tt5mk" to="hm2y:69zaTr1EKHX" resolve="type" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="yww_xQsd2P" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getLeftSideScale" />
      <property role="2Ki8OM" value="true" />
      <node concept="3Tm1VV" id="yww_xQsd2Q" role="1B3o_S" />
      <node concept="17QB3L" id="yww_xQsdtL" role="3clF45" />
      <node concept="3clFbS" id="yww_xQsd2S" role="3clF47">
        <node concept="3clFbJ" id="yww_xQrSui" role="3cqZAp">
          <node concept="3clFbS" id="yww_xQrSuk" role="3clFbx">
            <node concept="3cpWs6" id="yww_xQshwM" role="3cqZAp">
              <node concept="2OqwBi" id="yww_xQqdaj" role="3cqZAk">
                <node concept="2OqwBi" id="yww_xQqa43" role="2Oq$k0">
                  <node concept="1PxgMI" id="yww_xQqa46" role="2Oq$k0">
                    <node concept="chp4Y" id="yww_xQqb9p" role="3oSUPX">
                      <ref role="cht4Q" to="7skk:4O6zKM3EyR8" resolve="FeatureRef" />
                    </node>
                    <node concept="37vLTw" id="yww_xQsqLd" role="1m5AlR">
                      <ref role="3cqZAo" node="yww_xQsdXv" resolve="left" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="yww_xQqczJ" role="2OqNvi">
                    <ref role="3Tt5mk" to="7skk:4O6zKM3EyR9" resolve="ref" />
                  </node>
                </node>
                <node concept="3TrcHB" id="yww_xQqdwu" role="2OqNvi">
                  <ref role="3TsBF5" to="7skk:pBV22SHHuu" resolve="scale" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="yww_xQqa3Z" role="3clFbw">
            <node concept="37vLTw" id="yww_xQsqGx" role="2Oq$k0">
              <ref role="3cqZAo" node="yww_xQsdXv" resolve="left" />
            </node>
            <node concept="1mIQ4w" id="yww_xQqa41" role="2OqNvi">
              <node concept="chp4Y" id="yww_xQqb2q" role="cj9EA">
                <ref role="cht4Q" to="7skk:4O6zKM3EyR8" resolve="FeatureRef" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="yww_xQrUmJ" role="3eNLev">
            <node concept="2OqwBi" id="yww_xQrUNd" role="3eO9$A">
              <node concept="37vLTw" id="yww_xQsqVw" role="2Oq$k0">
                <ref role="3cqZAo" node="yww_xQsdXv" resolve="left" />
              </node>
              <node concept="1mIQ4w" id="yww_xQrV8m" role="2OqNvi">
                <node concept="chp4Y" id="5W_fQsnd6yW" role="cj9EA">
                  <ref role="cht4Q" to="hm2y:7NJy08a3O99" resolve="DotExpression" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="yww_xQrUmL" role="3eOfB_">
              <node concept="3cpWs6" id="yww_xQshZj" role="3cqZAp">
                <node concept="2OqwBi" id="yww_xQrZ7c" role="3cqZAk">
                  <node concept="1PxgMI" id="yww_xQrYwX" role="2Oq$k0">
                    <node concept="chp4Y" id="yww_xQrYLd" role="3oSUPX">
                      <ref role="cht4Q" to="amyc:yww_xQrhTc" resolve="IHaveScale" />
                    </node>
                    <node concept="2OqwBi" id="yww_xQrWVw" role="1m5AlR">
                      <node concept="1PxgMI" id="yww_xQrWlM" role="2Oq$k0">
                        <node concept="chp4Y" id="5W_fQsnd6JQ" role="3oSUPX">
                          <ref role="cht4Q" to="hm2y:7NJy08a3O99" resolve="DotExpression" />
                        </node>
                        <node concept="37vLTw" id="yww_xQsr0o" role="1m5AlR">
                          <ref role="3cqZAo" node="yww_xQsdXv" resolve="left" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="s_$oGKvKh3" role="2OqNvi">
                        <ref role="3Tt5mk" to="hm2y:7NJy08a3O9b" resolve="target" />
                      </node>
                    </node>
                  </node>
                  <node concept="2qgKlT" id="yww_xQrZ$r" role="2OqNvi">
                    <ref role="37wK5l" node="yww_xQrhTL" resolve="getScale" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="yww_xQs1SP" role="9aQIa">
            <node concept="3clFbS" id="yww_xQs1SQ" role="9aQI4">
              <node concept="3SKdUt" id="yww_xQsj3x" role="3cqZAp">
                <node concept="3SKdUq" id="yww_xQsj3z" role="3SKWNk">
                  <property role="3SKdUp" value="TODO: should better not happen" />
                </node>
              </node>
              <node concept="3cpWs6" id="yww_xQs28Z" role="3cqZAp">
                <node concept="10Nm6u" id="yww_xQsiPK" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="yww_xQs8wY" role="3eNLev">
            <node concept="3clFbS" id="yww_xQs8x0" role="3eOfB_">
              <node concept="3cpWs6" id="yww_xQsiBs" role="3cqZAp">
                <node concept="2OqwBi" id="yww_xQsbo1" role="3cqZAk">
                  <node concept="1PxgMI" id="yww_xQsaSs" role="2Oq$k0">
                    <node concept="chp4Y" id="yww_xQsb1A" role="3oSUPX">
                      <ref role="cht4Q" to="amyc:yww_xQrhTc" resolve="IHaveScale" />
                    </node>
                    <node concept="37vLTw" id="yww_xQsreu" role="1m5AlR">
                      <ref role="3cqZAo" node="yww_xQsdXv" resolve="left" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="yww_xQsbP8" role="2OqNvi">
                    <ref role="37wK5l" node="yww_xQrhTL" resolve="getScale" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="yww_xQs8LG" role="3eO9$A">
              <node concept="37vLTw" id="yww_xQsrbH" role="2Oq$k0">
                <ref role="3cqZAo" node="yww_xQsdXv" resolve="left" />
              </node>
              <node concept="1mIQ4w" id="yww_xQs8LI" role="2OqNvi">
                <node concept="chp4Y" id="yww_xQs92g" role="cj9EA">
                  <ref role="cht4Q" to="amyc:yww_xQrhTc" resolve="IHaveScale" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="yww_xQsdXv" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3Tqbb2" id="yww_xQsdXu" role="1tU5fm" />
      </node>
    </node>
    <node concept="13hLZK" id="yww_xQoDAA" role="13h7CW">
      <node concept="3clFbS" id="yww_xQoDAB" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="yww_xQrhTA">
    <ref role="13h7C2" to="amyc:yww_xQrhTc" resolve="IHaveScale" />
    <node concept="13i0hz" id="yww_xQrhTL" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getScale" />
      <node concept="3Tm1VV" id="yww_xQrhTM" role="1B3o_S" />
      <node concept="17QB3L" id="yww_xQrhU1" role="3clF45" />
      <node concept="3clFbS" id="yww_xQrhTO" role="3clF47" />
    </node>
    <node concept="13hLZK" id="yww_xQrhTB" role="13h7CW">
      <node concept="3clFbS" id="yww_xQrhTC" role="2VODD2" />
    </node>
  </node>
</model>

