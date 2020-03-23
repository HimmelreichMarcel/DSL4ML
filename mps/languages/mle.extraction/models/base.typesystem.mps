<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8eb2e7f9-5db3-4022-aa3a-c9ff8f0a1320(base.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="1" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="7skk" ref="r:c33d3b05-6327-4bd1-91f0-9c47a8de45f7(rootfile.structure)" />
    <import index="5qo5" ref="r:6d93ddb1-b0b0-4eee-8079-51303666672a(org.iets3.core.expr.simpleTypes.structure)" />
    <import index="amyc" ref="r:999800c2-1941-4cf0-8fc5-d15eb2e8e3d8(base.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
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
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
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
  <node concept="1YbPZF" id="pBV22SML6C">
    <property role="TrG5h" value="typeof_FeaturesetEditorBlock" />
    <property role="3GE5qa" value="expressions" />
    <node concept="3clFbS" id="pBV22SML6D" role="18ibNy">
      <node concept="1Z5TYs" id="1zQNQW5iI8$" role="3cqZAp">
        <node concept="mw_s8" id="1zQNQW5iI93" role="1ZfhKB">
          <node concept="1Z2H0r" id="1zQNQW5iI8Z" role="mwGJk">
            <node concept="2OqwBi" id="1zQNQW5iIkb" role="1Z2MuG">
              <node concept="1YBJjd" id="1zQNQW5iI9k" role="2Oq$k0">
                <ref role="1YBMHb" node="pBV22SML6F" resolve="feb" />
              </node>
              <node concept="3TrEf2" id="1zQNQW5iIKP" role="2OqNvi">
                <ref role="3Tt5mk" to="amyc:3RQ8TRgFh8V" resolve="featureset" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="1zQNQW5iI8B" role="1ZfhK$">
          <node concept="1Z2H0r" id="1zQNQW5iHxz" role="mwGJk">
            <node concept="2OqwBi" id="1zQNQW5iHIg" role="1Z2MuG">
              <node concept="1YBJjd" id="1zQNQW5iHxW" role="2Oq$k0">
                <ref role="1YBMHb" node="pBV22SML6F" resolve="feb" />
              </node>
              <node concept="3TrEf2" id="1zQNQW5iHXb" role="2OqNvi">
                <ref role="3Tt5mk" to="amyc:3RQ8TRgFh8V" resolve="featureset" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1Z5TYs" id="1zQNQW5iGVt" role="3cqZAp">
        <property role="3wDh2S" value="false" />
        <node concept="mw_s8" id="1zQNQW5iGVv" role="1ZfhK$">
          <node concept="1Z2H0r" id="1zQNQW5iGVw" role="mwGJk">
            <node concept="1YBJjd" id="1zQNQW5iGVx" role="1Z2MuG">
              <ref role="1YBMHb" node="pBV22SML6F" resolve="feb" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="1zQNQW5iGVy" role="1ZfhKB">
          <node concept="2pJPEk" id="1zQNQW5iGVz" role="mwGJk">
            <node concept="2pJPED" id="1zQNQW5iGWW" role="2pJPEn">
              <ref role="2pJxaS" to="5qo5:6sdnDbSlcHm" resolve="BooleanLiteral" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="pBV22SML6F" role="1YuTPh">
      <property role="TrG5h" value="feb" />
      <ref role="1YaFvo" to="amyc:3RQ8TRgEYfg" resolve="FeaturesetEditorBlock" />
    </node>
  </node>
  <node concept="1YbPZF" id="pBV22SQCYN">
    <property role="TrG5h" value="typeof_FeatureEditionExpression" />
    <property role="3GE5qa" value="expressions" />
    <node concept="3clFbS" id="pBV22SQCYO" role="18ibNy">
      <node concept="1Z5TYs" id="pBV22SQDdX" role="3cqZAp">
        <node concept="mw_s8" id="pBV22SQDeh" role="1ZfhKB">
          <node concept="1Z2H0r" id="pBV22SQDed" role="mwGJk">
            <node concept="1YBJjd" id="pBV22SQDey" role="1Z2MuG">
              <ref role="1YBMHb" node="pBV22SQCYQ" resolve="fee" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="pBV22SQDe0" role="1ZfhK$">
          <node concept="1Z2H0r" id="pBV22SQCYX" role="mwGJk">
            <node concept="1YBJjd" id="pBV22SQD0H" role="1Z2MuG">
              <ref role="1YBMHb" node="pBV22SQCYQ" resolve="fee" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1Z5TYs" id="pBV22SQDOE" role="3cqZAp">
        <node concept="mw_s8" id="pBV22SQDP9" role="1ZfhKB">
          <node concept="1Z2H0r" id="pBV22SQDP5" role="mwGJk">
            <node concept="2OqwBi" id="pBV22SQE84" role="1Z2MuG">
              <node concept="1YBJjd" id="pBV22SQDPq" role="2Oq$k0">
                <ref role="1YBMHb" node="pBV22SQCYQ" resolve="fee" />
              </node>
              <node concept="3TrEf2" id="pBV22SQEwx" role="2OqNvi">
                <ref role="3Tt5mk" to="amyc:fN3qU6G$xL" resolve="expression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="pBV22SQDOH" role="1ZfhK$">
          <node concept="1Z2H0r" id="pBV22SQDfL" role="mwGJk">
            <node concept="2OqwBi" id="pBV22SQDrw" role="1Z2MuG">
              <node concept="1YBJjd" id="pBV22SQDhE" role="2Oq$k0">
                <ref role="1YBMHb" node="pBV22SQCYQ" resolve="fee" />
              </node>
              <node concept="3TrEf2" id="pBV22SQDCq" role="2OqNvi">
                <ref role="3Tt5mk" to="amyc:fN3qU6G$xL" resolve="expression" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="pBV22SQCYQ" role="1YuTPh">
      <property role="TrG5h" value="fee" />
      <ref role="1YaFvo" to="amyc:fN3qU6G$xK" resolve="FeatureEditionExpression" />
    </node>
  </node>
</model>

