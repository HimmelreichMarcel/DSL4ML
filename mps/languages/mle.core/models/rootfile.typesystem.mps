<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6f4a54a5-46a3-4775-a530-f2eee2f39ad0(rootfile.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="1" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="7skk" ref="r:c33d3b05-6327-4bd1-91f0-9c47a8de45f7(rootfile.structure)" />
    <import index="5qo5" ref="r:6d93ddb1-b0b0-4eee-8079-51303666672a(org.iets3.core.expr.simpleTypes.structure)" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" implicit="true" />
    <import index="zzzn" ref="r:af0af2e7-f7e1-4536-83b5-6bf010d4afd2(org.iets3.core.expr.lambda.structure)" implicit="true" />
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
      <concept id="1174663118805" name="jetbrains.mps.lang.typesystem.structure.CreateLessThanInequationStatement" flags="nn" index="1ZobV4" />
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
  <node concept="1YbPZF" id="54xAiUPWqv$">
    <property role="TrG5h" value="typeof_SetOutportExpr" />
    <property role="3GE5qa" value="expressions" />
    <node concept="3clFbS" id="54xAiUPWqv_" role="18ibNy">
      <node concept="1Z5TYs" id="1zQNQW5jFlG" role="3cqZAp">
        <node concept="mw_s8" id="1zQNQW5jFlJ" role="1ZfhK$">
          <node concept="1Z2H0r" id="1zQNQW5jFb_" role="mwGJk">
            <node concept="1YBJjd" id="1zQNQW5jFd$" role="1Z2MuG">
              <ref role="1YBMHb" node="54xAiUPWqvB" resolve="soe" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="1zQNQW5jFmG" role="1ZfhKB">
          <node concept="2pJPEk" id="1zQNQW5jFmC" role="mwGJk">
            <node concept="2pJPED" id="1zQNQW5jFmR" role="2pJPEn">
              <ref role="2pJxaS" to="5qo5:6sdnDbSlaon" resolve="BooleanType" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1Z5TYs" id="1zQNQW5jHXb" role="3cqZAp">
        <node concept="mw_s8" id="1zQNQW5jHXR" role="1ZfhKB">
          <node concept="1Z2H0r" id="1zQNQW5jHXN" role="mwGJk">
            <node concept="2OqwBi" id="1zQNQW5jI8I" role="1Z2MuG">
              <node concept="1YBJjd" id="1zQNQW5jHY8" role="2Oq$k0">
                <ref role="1YBMHb" node="54xAiUPWqvB" resolve="soe" />
              </node>
              <node concept="3TrEf2" id="1zQNQW5jID1" role="2OqNvi">
                <ref role="3Tt5mk" to="7skk:2Zea4aYoPaX" resolve="outport" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="1zQNQW5jHXe" role="1ZfhK$">
          <node concept="1Z2H0r" id="1zQNQW5jH9K" role="mwGJk">
            <node concept="2OqwBi" id="1zQNQW5jHmp" role="1Z2MuG">
              <node concept="1YBJjd" id="1zQNQW5jHbQ" role="2Oq$k0">
                <ref role="1YBMHb" node="54xAiUPWqvB" resolve="soe" />
              </node>
              <node concept="3TrEf2" id="1zQNQW5jHF9" role="2OqNvi">
                <ref role="3Tt5mk" to="7skk:2Zea4aYoPaX" resolve="outport" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1ZobV4" id="2Zea4aYpAUV" role="3cqZAp">
        <node concept="mw_s8" id="2Zea4aYpAV6" role="1ZfhK$">
          <node concept="1Z2H0r" id="2Zea4aYpCX5" role="mwGJk">
            <node concept="2OqwBi" id="2Zea4aYpB4i" role="1Z2MuG">
              <node concept="1YBJjd" id="2Zea4aYpAV4" role="2Oq$k0">
                <ref role="1YBMHb" node="54xAiUPWqvB" resolve="soe" />
              </node>
              <node concept="3TrEf2" id="4TFMgV43n7W" role="2OqNvi">
                <ref role="3Tt5mk" to="7skk:5uKjkG1enxG" resolve="varRef" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="2Zea4aYpBIB" role="1ZfhKB">
          <node concept="1Z2H0r" id="2Zea4aYpD5V" role="mwGJk">
            <node concept="2OqwBi" id="4flHrhnHOZ1" role="1Z2MuG">
              <node concept="2OqwBi" id="2Zea4aYpBRP" role="2Oq$k0">
                <node concept="1YBJjd" id="2Zea4aYpBI_" role="2Oq$k0">
                  <ref role="1YBMHb" node="54xAiUPWqvB" resolve="soe" />
                </node>
                <node concept="3TrEf2" id="2Zea4aYpC4K" role="2OqNvi">
                  <ref role="3Tt5mk" to="7skk:2Zea4aYoPaX" resolve="outport" />
                </node>
              </node>
              <node concept="3TrEf2" id="5Qzj33QbDRc" role="2OqNvi">
                <ref role="3Tt5mk" to="hm2y:69zaTr1EKHX" resolve="type" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="54xAiUPWqvB" role="1YuTPh">
      <property role="TrG5h" value="soe" />
      <ref role="1YaFvo" to="7skk:5uNOSkli4V2" resolve="ProvideOutportExpr" />
    </node>
  </node>
  <node concept="1YbPZF" id="54xAiUQ1jVC">
    <property role="TrG5h" value="typeof_InPort" />
    <property role="3GE5qa" value="section.ports" />
    <node concept="3clFbS" id="54xAiUQ1jVD" role="18ibNy">
      <node concept="1Z5TYs" id="54xAiUQ1kbv" role="3cqZAp">
        <node concept="mw_s8" id="54xAiUQ1kbN" role="1ZfhKB">
          <node concept="1Z2H0r" id="54xAiUQ1kbJ" role="mwGJk">
            <node concept="2OqwBi" id="s_$oGKvsGT" role="1Z2MuG">
              <node concept="2OqwBi" id="s_$oGKvrAD" role="2Oq$k0">
                <node concept="2OqwBi" id="s_$oGKvqd_" role="2Oq$k0">
                  <node concept="1PxgMI" id="s_$oGKvpWd" role="2Oq$k0">
                    <node concept="chp4Y" id="s_$oGKvq09" role="3oSUPX">
                      <ref role="cht4Q" to="7skk:5uNOSkli4V2" resolve="ProvideOutportExpr" />
                    </node>
                    <node concept="2OqwBi" id="s_$oGKvp65" role="1m5AlR">
                      <node concept="2OqwBi" id="54xAiUQ1klT" role="2Oq$k0">
                        <node concept="1YBJjd" id="54xAiUQ1kc4" role="2Oq$k0">
                          <ref role="1YBMHb" node="54xAiUQ1jVF" resolve="ip" />
                        </node>
                        <node concept="3TrEf2" id="54xAiUQ1kxG" role="2OqNvi">
                          <ref role="3Tt5mk" to="7skk:5uKjkG1gJZO" resolve="outport" />
                        </node>
                      </node>
                      <node concept="1mfA1w" id="s_$oGKvpjz" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="s_$oGKvqvl" role="2OqNvi">
                    <ref role="3Tt5mk" to="7skk:5uKjkG1enxG" resolve="varRef" />
                  </node>
                </node>
                <node concept="3TrEf2" id="s_$oGKvs1m" role="2OqNvi">
                  <ref role="3Tt5mk" to="zzzn:49WTic8iI9_" resolve="val" />
                </node>
              </node>
              <node concept="3TrEf2" id="s_$oGKvtAC" role="2OqNvi">
                <ref role="3Tt5mk" to="hm2y:69zaTr1EKHX" resolve="type" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="54xAiUQ1kby" role="1ZfhK$">
          <node concept="1Z2H0r" id="54xAiUQ1jYI" role="mwGJk">
            <node concept="1YBJjd" id="54xAiUQ1k0u" role="1Z2MuG">
              <ref role="1YBMHb" node="54xAiUQ1jVF" resolve="ip" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="54xAiUQ1jVF" role="1YuTPh">
      <property role="TrG5h" value="ip" />
      <ref role="1YaFvo" to="7skk:7OzZ9xI8RgJ" resolve="InPort" />
    </node>
  </node>
  <node concept="1YbPZF" id="4$X4DeKJZ40">
    <property role="TrG5h" value="typeof_LoadFeaturesExpr" />
    <property role="3GE5qa" value="expressions" />
    <node concept="3clFbS" id="4$X4DeKJZ41" role="18ibNy">
      <node concept="1Z5TYs" id="7OzZ9xI8htf" role="3cqZAp">
        <node concept="mw_s8" id="7OzZ9xI8hti" role="1ZfhK$">
          <node concept="1Z2H0r" id="7OzZ9xI8hdi" role="mwGJk">
            <node concept="1YBJjd" id="4$X4DeKJZb1" role="1Z2MuG">
              <ref role="1YBMHb" node="4$X4DeKJZ43" resolve="lfe" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="4$X4DeKKc53" role="1ZfhKB">
          <node concept="1Z2H0r" id="4TFMgV44uyl" role="mwGJk">
            <node concept="2OqwBi" id="4TFMgV44uNw" role="1Z2MuG">
              <node concept="1YBJjd" id="4TFMgV44uyP" role="2Oq$k0">
                <ref role="1YBMHb" node="4$X4DeKJZ43" resolve="lfe" />
              </node>
              <node concept="3TrEf2" id="pBV22SMa$2" role="2OqNvi">
                <ref role="3Tt5mk" to="zzzn:49WTic8ix6L" resolve="expr" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="4$X4DeKJZ43" role="1YuTPh">
      <property role="TrG5h" value="lfe" />
      <ref role="1YaFvo" to="7skk:7OzZ9xI8gnb" resolve="LoadExpr" />
    </node>
  </node>
  <node concept="1YbPZF" id="1EO_bV9G$Uq">
    <property role="TrG5h" value="typeof_MLEVariableReference" />
    <property role="3GE5qa" value="section.codeblock" />
    <node concept="3clFbS" id="1EO_bV9G$Ur" role="18ibNy">
      <node concept="1Z5TYs" id="1EO_bV9G_8s" role="3cqZAp">
        <node concept="mw_s8" id="1EO_bV9G_8K" role="1ZfhKB">
          <node concept="1Z2H0r" id="1EO_bV9G_8G" role="mwGJk">
            <node concept="2OqwBi" id="1EO_bV9G_gT" role="1Z2MuG">
              <node concept="1YBJjd" id="1EO_bV9G_91" role="2Oq$k0">
                <ref role="1YBMHb" node="1EO_bV9G$Ut" resolve="vr" />
              </node>
              <node concept="3TrEf2" id="pBV22SQg6I" role="2OqNvi">
                <ref role="3Tt5mk" to="zzzn:49WTic8iI9_" resolve="val" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="1EO_bV9G_8v" role="1ZfhK$">
          <node concept="1Z2H0r" id="1EO_bV9G$YE" role="mwGJk">
            <node concept="1YBJjd" id="1EO_bV9G_0q" role="1Z2MuG">
              <ref role="1YBMHb" node="1EO_bV9G$Ut" resolve="vr" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1EO_bV9G$Ut" role="1YuTPh">
      <property role="TrG5h" value="vr" />
      <ref role="1YaFvo" to="7skk:1EO_bV9G$FR" resolve="MLEVariableReference" />
    </node>
  </node>
  <node concept="1YbPZF" id="fN3qU6HyYw">
    <property role="TrG5h" value="typeof_FeatureRef" />
    <property role="3GE5qa" value="types.feature" />
    <node concept="3clFbS" id="fN3qU6HyYx" role="18ibNy">
      <node concept="1Z5TYs" id="fN3qU6Hzby" role="3cqZAp">
        <node concept="mw_s8" id="fN3qU6HzbQ" role="1ZfhKB">
          <node concept="1Z2H0r" id="209684qPvI0" role="mwGJk">
            <node concept="2OqwBi" id="209684qPvU3" role="1Z2MuG">
              <node concept="1YBJjd" id="209684qPvIg" role="2Oq$k0">
                <ref role="1YBMHb" node="fN3qU6HyYz" resolve="fr" />
              </node>
              <node concept="3TrEf2" id="209684qPwot" role="2OqNvi">
                <ref role="3Tt5mk" to="7skk:4O6zKM3EyR9" resolve="ref" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="fN3qU6Hzb_" role="1ZfhK$">
          <node concept="1Z2H0r" id="fN3qU6HyYE" role="mwGJk">
            <node concept="1YBJjd" id="fN3qU6Hz0q" role="1Z2MuG">
              <ref role="1YBMHb" node="fN3qU6HyYz" resolve="fr" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="fN3qU6HyYz" role="1YuTPh">
      <property role="TrG5h" value="fr" />
      <ref role="1YaFvo" to="7skk:4O6zKM3EyR8" resolve="FeatureRef" />
    </node>
  </node>
  <node concept="1YbPZF" id="209684qNchV">
    <property role="TrG5h" value="typeof_StringFeature" />
    <property role="3GE5qa" value="types.feature" />
    <node concept="3clFbS" id="209684qNchW" role="18ibNy">
      <node concept="1Z5TYs" id="pBV22SKeQb" role="3cqZAp">
        <property role="3wDh2S" value="false" />
        <node concept="mw_s8" id="pBV22SKeQd" role="1ZfhK$">
          <node concept="1Z2H0r" id="pBV22SKeQe" role="mwGJk">
            <node concept="1YBJjd" id="pBV22SKeQf" role="1Z2MuG">
              <ref role="1YBMHb" node="209684qNchY" resolve="sf" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="pBV22SKeQg" role="1ZfhKB">
          <node concept="2pJPEk" id="pBV22SKeQh" role="mwGJk">
            <node concept="2pJPED" id="pBV22SKeQi" role="2pJPEn">
              <ref role="2pJxaS" to="5qo5:4rZeNQ6OYR7" resolve="StringType" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="209684qNchY" role="1YuTPh">
      <property role="TrG5h" value="sf" />
      <ref role="1YaFvo" to="7skk:209684qNchx" resolve="StringFeature" />
    </node>
  </node>
  <node concept="1YbPZF" id="209684qNfqu">
    <property role="TrG5h" value="typeof_IntegerFeature" />
    <property role="3GE5qa" value="types.feature" />
    <node concept="3clFbS" id="209684qNfqv" role="18ibNy">
      <node concept="1Z5TYs" id="209684qNfAb" role="3cqZAp">
        <node concept="mw_s8" id="209684qNfAv" role="1ZfhKB">
          <node concept="2pJPEk" id="209684qNfAr" role="mwGJk">
            <node concept="2pJPED" id="5W_fQsnaUXB" role="2pJPEn">
              <ref role="2pJxaS" to="5qo5:4rZeNQ6Oerp" resolve="IntegerType" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="209684qNfAe" role="1ZfhK$">
          <node concept="1Z2H0r" id="209684qNfq_" role="mwGJk">
            <node concept="1YBJjd" id="209684qNfua" role="1Z2MuG">
              <ref role="1YBMHb" node="209684qNfqx" resolve="integerFeature" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="209684qNfqx" role="1YuTPh">
      <property role="TrG5h" value="integerFeature" />
      <ref role="1YaFvo" to="7skk:209684qNfq4" resolve="IntegerFeature" />
    </node>
  </node>
  <node concept="1YbPZF" id="209684qNLbU">
    <property role="TrG5h" value="typeof_ListFeature" />
    <property role="3GE5qa" value="types.feature" />
    <node concept="3clFbS" id="209684qNLbV" role="18ibNy">
      <node concept="1Z5TYs" id="209684qNLoN" role="3cqZAp">
        <node concept="mw_s8" id="209684qNLp7" role="1ZfhKB">
          <node concept="1Z2H0r" id="209684qNLp3" role="mwGJk">
            <node concept="1YBJjd" id="209684qNLpo" role="1Z2MuG">
              <ref role="1YBMHb" node="209684qNLbX" resolve="stringlistFeature" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="209684qNLoQ" role="1ZfhK$">
          <node concept="1Z2H0r" id="209684qNLc4" role="mwGJk">
            <node concept="1YBJjd" id="209684qNLdO" role="1Z2MuG">
              <ref role="1YBMHb" node="209684qNLbX" resolve="stringlistFeature" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="209684qNLbX" role="1YuTPh">
      <property role="TrG5h" value="stringlistFeature" />
      <ref role="1YaFvo" to="7skk:209684qNLaU" resolve="StringlistFeature" />
    </node>
  </node>
  <node concept="1YbPZF" id="4d9YXW2n_AA">
    <property role="TrG5h" value="typeof_IntegerlistFeature" />
    <property role="3GE5qa" value="types.feature" />
    <node concept="3clFbS" id="4d9YXW2n_AB" role="18ibNy">
      <node concept="1Z5TYs" id="4d9YXW2n_MZ" role="3cqZAp">
        <node concept="mw_s8" id="4d9YXW2n_Nj" role="1ZfhKB">
          <node concept="1Z2H0r" id="4d9YXW2n_Nf" role="mwGJk">
            <node concept="1YBJjd" id="4d9YXW2n_N$" role="1Z2MuG">
              <ref role="1YBMHb" node="4d9YXW2n_AD" resolve="integerlistFeature" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="4d9YXW2n_N2" role="1ZfhK$">
          <node concept="1Z2H0r" id="4d9YXW2n_AY" role="mwGJk">
            <node concept="1YBJjd" id="4d9YXW2n_CI" role="1Z2MuG">
              <ref role="1YBMHb" node="4d9YXW2n_AD" resolve="integerlistFeature" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="4d9YXW2n_AD" role="1YuTPh">
      <property role="TrG5h" value="integerlistFeature" />
      <ref role="1YaFvo" to="7skk:4d9YXW2n_Ac" resolve="IntegerlistFeature" />
    </node>
  </node>
  <node concept="1YbPZF" id="pBV22SHqoO">
    <property role="TrG5h" value="typeof_MLEVariableDeclaration" />
    <property role="3GE5qa" value="section.codeblock" />
    <node concept="3clFbS" id="pBV22SHqoP" role="18ibNy">
      <node concept="1Z5TYs" id="pBV22SHqAt" role="3cqZAp">
        <node concept="mw_s8" id="pBV22SHqAL" role="1ZfhKB">
          <node concept="1Z2H0r" id="pBV22SHqAH" role="mwGJk">
            <node concept="2OqwBi" id="pBV22SHqOU" role="1Z2MuG">
              <node concept="1YBJjd" id="pBV22SHqB2" role="2Oq$k0">
                <ref role="1YBMHb" node="pBV22SHqoR" resolve="mleVariableDeclaration" />
              </node>
              <node concept="3TrEf2" id="pBV22SOemB" role="2OqNvi">
                <ref role="3Tt5mk" to="hm2y:69zaTr1EKHX" resolve="type" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="pBV22SHqAw" role="1ZfhK$">
          <node concept="1Z2H0r" id="pBV22SHqoV" role="mwGJk">
            <node concept="1YBJjd" id="pBV22SHqqF" role="1Z2MuG">
              <ref role="1YBMHb" node="pBV22SHqoR" resolve="mleVariableDeclaration" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="pBV22SHqoR" role="1YuTPh">
      <property role="TrG5h" value="mleVariableDeclaration" />
      <ref role="1YaFvo" to="7skk:HP8CeVFunP" resolve="VariableDeclaration" />
    </node>
  </node>
  <node concept="1YbPZF" id="pBV22SLS$$">
    <property role="TrG5h" value="typeof_FeaturesetType" />
    <property role="3GE5qa" value="types" />
    <node concept="3clFbS" id="pBV22SLS$_" role="18ibNy">
      <node concept="1Z5TYs" id="pBV22SLSJe" role="3cqZAp">
        <node concept="mw_s8" id="pBV22SLSJy" role="1ZfhKB">
          <node concept="1Z2H0r" id="pBV22SLSJu" role="mwGJk">
            <node concept="1YBJjd" id="pBV22SLSJN" role="1Z2MuG">
              <ref role="1YBMHb" node="pBV22SLS$B" resolve="ft" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="pBV22SLSJh" role="1ZfhK$">
          <node concept="1Z2H0r" id="pBV22SLS$I" role="mwGJk">
            <node concept="1YBJjd" id="pBV22SLS$Y" role="1Z2MuG">
              <ref role="1YBMHb" node="pBV22SLS$B" resolve="ft" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="pBV22SLS$B" role="1YuTPh">
      <property role="TrG5h" value="ft" />
      <ref role="1YaFvo" to="7skk:7OzZ9xI8jbt" resolve="FeaturesetType" />
    </node>
  </node>
  <node concept="1YbPZF" id="pBV22SP3Hp">
    <property role="TrG5h" value="typeof_PrintExpr" />
    <property role="3GE5qa" value="expressions" />
    <node concept="3clFbS" id="pBV22SP3Hq" role="18ibNy">
      <node concept="1Z5TYs" id="pBV22SP3T$" role="3cqZAp">
        <node concept="mw_s8" id="pBV22SP3TS" role="1ZfhKB">
          <node concept="2pJPEk" id="pBV22SP3TO" role="mwGJk">
            <node concept="2pJPED" id="pBV22SP3U3" role="2pJPEn">
              <ref role="2pJxaS" to="5qo5:6sdnDbSlaon" resolve="BooleanType" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="pBV22SP3TB" role="1ZfhK$">
          <node concept="1Z2H0r" id="pBV22SP3Hz" role="mwGJk">
            <node concept="1YBJjd" id="pBV22SP3Jj" role="1Z2MuG">
              <ref role="1YBMHb" node="pBV22SP3Hs" resolve="pe" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1Z5TYs" id="pBV22SP8J4" role="3cqZAp">
        <node concept="mw_s8" id="pBV22SP8Jz" role="1ZfhKB">
          <node concept="1Z2H0r" id="pBV22SP8Jv" role="mwGJk">
            <node concept="2OqwBi" id="pBV22SP8V3" role="1Z2MuG">
              <node concept="1YBJjd" id="pBV22SP8JO" role="2Oq$k0">
                <ref role="1YBMHb" node="pBV22SP3Hs" resolve="pe" />
              </node>
              <node concept="3TrEf2" id="pBV22SP9cr" role="2OqNvi">
                <ref role="3Tt5mk" to="7skk:1lXEU5vsLOo" resolve="expr" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="pBV22SP8J7" role="1ZfhK$">
          <node concept="1Z2H0r" id="pBV22SP86j" role="mwGJk">
            <node concept="2OqwBi" id="pBV22SP8hS" role="1Z2MuG">
              <node concept="1YBJjd" id="pBV22SP86G" role="2Oq$k0">
                <ref role="1YBMHb" node="pBV22SP3Hs" resolve="pe" />
              </node>
              <node concept="3TrEf2" id="pBV22SP8xb" role="2OqNvi">
                <ref role="3Tt5mk" to="7skk:1lXEU5vsLOo" resolve="expr" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="pBV22SP3Hs" role="1YuTPh">
      <property role="TrG5h" value="pe" />
      <ref role="1YaFvo" to="7skk:5c6KWTiqUTB" resolve="PrintExpr" />
    </node>
  </node>
  <node concept="1YbPZF" id="pBV22SQMrc">
    <property role="TrG5h" value="typeof_InPortRef" />
    <property role="3GE5qa" value="section.ports" />
    <node concept="3clFbS" id="pBV22SQMrd" role="18ibNy">
      <node concept="1Z5TYs" id="1zQNQW5iE1L" role="3cqZAp">
        <property role="3wDh2S" value="false" />
        <node concept="mw_s8" id="1zQNQW5iE1N" role="1ZfhK$">
          <node concept="1Z2H0r" id="1zQNQW5iE1O" role="mwGJk">
            <node concept="1YBJjd" id="1zQNQW5iE1P" role="1Z2MuG">
              <ref role="1YBMHb" node="pBV22SQMrf" resolve="ipr" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="1zQNQW5iE1Q" role="1ZfhKB">
          <node concept="1Z2H0r" id="1zQNQW5iE1R" role="mwGJk">
            <node concept="2OqwBi" id="1zQNQW5iE1S" role="1Z2MuG">
              <node concept="1YBJjd" id="1zQNQW5iE1T" role="2Oq$k0">
                <ref role="1YBMHb" node="pBV22SQMrf" resolve="ipr" />
              </node>
              <node concept="3TrEf2" id="1zQNQW5iE1U" role="2OqNvi">
                <ref role="3Tt5mk" to="7skk:7OzZ9xI99SG" resolve="inport" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="pBV22SQMrf" role="1YuTPh">
      <property role="TrG5h" value="ipr" />
      <ref role="1YaFvo" to="7skk:7OzZ9xI99S_" resolve="InPortRef" />
    </node>
  </node>
  <node concept="1YbPZF" id="s_$oGKuI7_">
    <property role="TrG5h" value="typeof_OutPortRef" />
    <property role="3GE5qa" value="section.ports" />
    <node concept="3clFbS" id="s_$oGKuI7A" role="18ibNy">
      <node concept="1Z5TYs" id="s_$oGKuIj$" role="3cqZAp">
        <node concept="mw_s8" id="s_$oGKuIjS" role="1ZfhKB">
          <node concept="1Z2H0r" id="s_$oGKuIjO" role="mwGJk">
            <node concept="2OqwBi" id="s_$oGKvyCr" role="1Z2MuG">
              <node concept="1YBJjd" id="s_$oGKvywr" role="2Oq$k0">
                <ref role="1YBMHb" node="s_$oGKuI7C" resolve="outPortRef" />
              </node>
              <node concept="3TrEf2" id="s_$oGKvyPK" role="2OqNvi">
                <ref role="3Tt5mk" to="7skk:7OzZ9xI9f2J" resolve="outport" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="s_$oGKuIjB" role="1ZfhK$">
          <node concept="1Z2H0r" id="s_$oGKuI7G" role="mwGJk">
            <node concept="1YBJjd" id="s_$oGKuI9s" role="1Z2MuG">
              <ref role="1YBMHb" node="s_$oGKuI7C" resolve="outPortRef" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="s_$oGKuI7C" role="1YuTPh">
      <property role="TrG5h" value="outPortRef" />
      <ref role="1YaFvo" to="7skk:7OzZ9xI9f2I" resolve="OutPortRef" />
    </node>
  </node>
  <node concept="1YbPZF" id="s_$oGKuMe_">
    <property role="TrG5h" value="typeof_OutPort" />
    <property role="3GE5qa" value="section.ports" />
    <node concept="3clFbS" id="s_$oGKuMeA" role="18ibNy" />
    <node concept="1YaCAy" id="s_$oGKuMeC" role="1YuTPh">
      <property role="TrG5h" value="outPort" />
      <ref role="1YaFvo" to="7skk:7OzZ9xI8RgQ" resolve="OutPort" />
    </node>
  </node>
</model>

