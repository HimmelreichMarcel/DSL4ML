<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:eba0b596-a545-47ef-9deb-051df339e7fa(base.constraints)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="4" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="amyc" ref="r:999800c2-1941-4cf0-8fc5-d15eb2e8e3d8(base.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="7skk" ref="r:c33d3b05-6327-4bd1-91f0-9c47a8de45f7(rootfile.structure)" implicit="true" />
    <import index="rzzn" ref="r:76ee21ab-cfc8-4c27-9a60-7dd5562f12aa(rootfile.behavior)" implicit="true" />
  </imports>
  <registry>
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
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="6702802731807420587" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAParent" flags="ig" index="9SLcT" />
      <concept id="4303308395523343364" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_link" flags="ng" index="2DA6wF" />
      <concept id="6738154313879680265" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_childNode" flags="nn" index="2H4GUG" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="6702802731807532712" name="canBeParent" index="9SGkU" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
    </language>
  </registry>
  <node concept="1M2fIO" id="1zQNQW5iMC_">
    <property role="3GE5qa" value="expressions" />
    <ref role="1M2myG" to="amyc:fN3qU6G$xK" resolve="FeatureEditionExpression" />
  </node>
  <node concept="1M2fIO" id="1zQNQW5jwn9">
    <property role="3GE5qa" value="expressions" />
    <ref role="1M2myG" to="amyc:3RQ8TRgEYfg" resolve="FeaturesetEditorBlock" />
    <node concept="9SLcT" id="1zQNQW5jwna" role="9SGkU">
      <node concept="3clFbS" id="1zQNQW5jwnb" role="2VODD2">
        <node concept="3clFbJ" id="1zQNQW5iO8K" role="3cqZAp">
          <node concept="2OqwBi" id="1zQNQW5iPak" role="3clFbw">
            <node concept="2DA6wF" id="1zQNQW5iOg1" role="2Oq$k0" />
            <node concept="liA8E" id="1zQNQW5iPDW" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="359W_D" id="1zQNQW5iPLz" role="37wK5m">
                <ref role="359W_E" to="amyc:3RQ8TRgEYfg" resolve="FeaturesetEditorBlock" />
                <ref role="359W_F" to="amyc:3RQ8TRgFh8V" resolve="featureset" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1zQNQW5iO8M" role="3clFbx">
            <node concept="3SKdUt" id="1zQNQW5jDL6" role="3cqZAp">
              <node concept="3SKdUq" id="1zQNQW5jDL7" role="3SKWNk">
                <property role="3SKdUp" value="TODO: only featuresets" />
              </node>
            </node>
            <node concept="3cpWs6" id="1zQNQW5jE0Q" role="3cqZAp">
              <node concept="2OqwBi" id="1WKcFvq7y9$" role="3cqZAk">
                <node concept="2OqwBi" id="1WKcFvq7xsn" role="2Oq$k0">
                  <node concept="1PxgMI" id="1WKcFvq7wXH" role="2Oq$k0">
                    <node concept="chp4Y" id="1WKcFvq7xaU" role="3oSUPX">
                      <ref role="cht4Q" to="7skk:pBV22SMBK$" resolve="IProvideTypeObject" />
                    </node>
                    <node concept="2H4GUG" id="1WKcFvq7vch" role="1m5AlR" />
                  </node>
                  <node concept="2qgKlT" id="1WKcFvq7xNR" role="2OqNvi">
                    <ref role="37wK5l" to="rzzn:pBV22SMBS1" resolve="getTypeObject" />
                  </node>
                </node>
                <node concept="1mIQ4w" id="1WKcFvq7yB1" role="2OqNvi">
                  <node concept="chp4Y" id="1WKcFvq7yOW" role="cj9EA">
                    <ref role="cht4Q" to="7skk:7OzZ9xI8jbt" resolve="FeaturesetType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1zQNQW5jdF7" role="9aQIa">
            <node concept="3clFbS" id="1zQNQW5jdF8" role="9aQI4">
              <node concept="3cpWs6" id="1zQNQW5jdOn" role="3cqZAp">
                <node concept="3clFbT" id="1zQNQW5je6Y" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

