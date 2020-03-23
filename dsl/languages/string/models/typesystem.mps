<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:67ccdce0-af53-4eac-b3a9-91d0a2073633(string.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="1" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="55s9" ref="r:349f01e8-2ba4-49f7-be71-679bbbf4b80d(features.structure)" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="5qo5" ref="r:6d93ddb1-b0b0-4eee-8079-51303666672a(org.iets3.core.expr.simpleTypes.structure)" />
    <import index="tpbt" ref="r:65aadb5c-2f1e-4a2a-b988-9153ab74365c(string.structure)" implicit="true" />
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
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
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
  <node concept="1YbPZF" id="7WePDBgMJ4S">
    <property role="TrG5h" value="typeof_MatchesExpressionOp" />
    <property role="3GE5qa" value="correspondence" />
    <node concept="3clFbS" id="7WePDBgMJ4T" role="18ibNy">
      <node concept="1Z5TYs" id="7WePDBgMJfH" role="3cqZAp">
        <node concept="mw_s8" id="7WePDBgMJg1" role="1ZfhKB">
          <node concept="2pJPEk" id="7WePDBgMJfX" role="mwGJk">
            <node concept="2pJPED" id="7WePDBgMJgc" role="2pJPEn">
              <ref role="2pJxaS" to="5qo5:6sdnDbSlaon" resolve="BooleanType" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="7WePDBgMJfK" role="1ZfhK$">
          <node concept="1Z2H0r" id="7WePDBgMJ55" role="mwGJk">
            <node concept="1YBJjd" id="7WePDBgMJ6P" role="1Z2MuG">
              <ref role="1YBMHb" node="7WePDBgMJ4V" resolve="meo" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7WePDBgMJ4V" role="1YuTPh">
      <property role="TrG5h" value="meo" />
      <ref role="1YaFvo" to="tpbt:7WePDBgMhw9" resolve="MatchesExpressionOp" />
    </node>
  </node>
  <node concept="1YbPZF" id="7WePDBgMJDv">
    <property role="TrG5h" value="typeof_LengthOp" />
    <property role="3GE5qa" value="length" />
    <node concept="3clFbS" id="7WePDBgMJDw" role="18ibNy">
      <node concept="1Z5TYs" id="3$o$AJ1iVfE" role="3cqZAp">
        <node concept="mw_s8" id="3$o$AJ1iVg6" role="1ZfhKB">
          <node concept="2pJPEk" id="3$o$AJ1iVg2" role="mwGJk">
            <node concept="2pJPED" id="58ojJcwsSDk" role="2pJPEn">
              <ref role="2pJxaS" to="5qo5:78hTg1$P0UC" resolve="NumberType" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="3$o$AJ1iVfH" role="1ZfhK$">
          <node concept="1Z2H0r" id="3$o$AJ1iV4j" role="mwGJk">
            <node concept="1YBJjd" id="7WePDBgMJQq" role="1Z2MuG">
              <ref role="1YBMHb" node="7WePDBgMJDy" resolve="lo" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7WePDBgMJDy" role="1YuTPh">
      <property role="TrG5h" value="lo" />
      <ref role="1YaFvo" to="tpbt:58ojJcwsu23" resolve="LengthOperation" />
    </node>
  </node>
  <node concept="1YbPZF" id="1Ho6EEslgg$">
    <property role="TrG5h" value="typeof_StartsWithOp" />
    <property role="3GE5qa" value="correspondence" />
    <node concept="3clFbS" id="1Ho6EEslgg_" role="18ibNy">
      <node concept="1Z5TYs" id="1Ho6EEslgpj" role="3cqZAp">
        <node concept="mw_s8" id="1Ho6EEslgpB" role="1ZfhKB">
          <node concept="2pJPEk" id="1Ho6EEslgpz" role="mwGJk">
            <node concept="2pJPED" id="1Ho6EEslgpM" role="2pJPEn">
              <ref role="2pJxaS" to="5qo5:6sdnDbSlaon" resolve="BooleanType" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="1Ho6EEslgpm" role="1ZfhK$">
          <node concept="1Z2H0r" id="1Ho6EEslggO" role="mwGJk">
            <node concept="1YBJjd" id="1Ho6EEslgi$" role="1Z2MuG">
              <ref role="1YBMHb" node="1Ho6EEslggB" resolve="swo" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1Ho6EEslggB" role="1YuTPh">
      <property role="TrG5h" value="swo" />
      <ref role="1YaFvo" to="tpbt:7WePDBgMhw5" resolve="StartsWithOp" />
    </node>
  </node>
  <node concept="1YbPZF" id="1Ho6EEslgq$">
    <property role="TrG5h" value="typeof_ContainsOp" />
    <property role="3GE5qa" value="correspondence" />
    <node concept="3clFbS" id="1Ho6EEslgq_" role="18ibNy">
      <node concept="1Z5TYs" id="1Ho6EEslgzd" role="3cqZAp">
        <node concept="mw_s8" id="1Ho6EEslgzx" role="1ZfhKB">
          <node concept="2pJPEk" id="1Ho6EEslgzt" role="mwGJk">
            <node concept="2pJPED" id="1Ho6EEslgzG" role="2pJPEn">
              <ref role="2pJxaS" to="5qo5:6sdnDbSlaon" resolve="BooleanType" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="1Ho6EEslgzg" role="1ZfhK$">
          <node concept="1Z2H0r" id="1Ho6EEslgqI" role="mwGJk">
            <node concept="1YBJjd" id="1Ho6EEslgsu" role="1Z2MuG">
              <ref role="1YBMHb" node="1Ho6EEslgqB" resolve="co" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1Ho6EEslgqB" role="1YuTPh">
      <property role="TrG5h" value="co" />
      <ref role="1YaFvo" to="tpbt:7WePDBgMhw8" resolve="ContainsOp" />
    </node>
  </node>
  <node concept="1YbPZF" id="7D1YCyB4aNC">
    <property role="TrG5h" value="typeof_AbstractStringOp" />
    <property role="3GE5qa" value="" />
    <node concept="3clFbS" id="7D1YCyB4aND" role="18ibNy">
      <node concept="1Z5TYs" id="7D1YCyB4aNJ" role="3cqZAp">
        <property role="3wDh2S" value="true" />
        <node concept="mw_s8" id="7D1YCyB4aNK" role="1ZfhKB">
          <node concept="2pJPEk" id="7D1YCyB4aNL" role="mwGJk">
            <node concept="2pJPED" id="7D1YCyB4aNM" role="2pJPEn">
              <ref role="2pJxaS" to="5qo5:4rZeNQ6OYR7" resolve="StringType" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="7D1YCyB4aNN" role="1ZfhK$">
          <node concept="1Z2H0r" id="7D1YCyB4aNO" role="mwGJk">
            <node concept="2OqwBi" id="7D1YCyB4aNP" role="1Z2MuG">
              <node concept="1PxgMI" id="7D1YCyB4aNQ" role="2Oq$k0">
                <node concept="chp4Y" id="7D1YCyB4aNR" role="3oSUPX">
                  <ref role="cht4Q" to="hm2y:7NJy08a3O99" resolve="DotExpression" />
                </node>
                <node concept="2OqwBi" id="7D1YCyB4aNS" role="1m5AlR">
                  <node concept="1YBJjd" id="7D1YCyB4b3W" role="2Oq$k0">
                    <ref role="1YBMHb" node="7D1YCyB4aNF" resolve="aso" />
                  </node>
                  <node concept="1mfA1w" id="7D1YCyB4aNU" role="2OqNvi" />
                </node>
              </node>
              <node concept="3TrEf2" id="7D1YCyB4aNV" role="2OqNvi">
                <ref role="3Tt5mk" to="hm2y:4rZeNQ6NgXF" resolve="expr" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7D1YCyB4aNF" role="1YuTPh">
      <property role="TrG5h" value="aso" />
      <ref role="1YaFvo" to="tpbt:7D1YCyB4a47" resolve="AbstractStringOp" />
    </node>
  </node>
</model>

