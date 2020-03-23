<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:acde7ae7-bf42-4196-9ca1-a70d19cd3f0a(strList.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="1" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="5qo5" ref="r:6d93ddb1-b0b0-4eee-8079-51303666672a(org.iets3.core.expr.simpleTypes.structure)" />
    <import index="55s9" ref="r:349f01e8-2ba4-49f7-be71-679bbbf4b80d(features.structure)" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" implicit="true" />
    <import index="kxx6" ref="r:18feddd0-1a2e-4d91-891f-d1d27cf0d129(strList.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670592366" name="defaultBlock" index="3Kb1Dw" />
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
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
  <node concept="1YbPZF" id="7D1YCyB46_G">
    <property role="TrG5h" value="typeof_AbstractStringlistOp" />
    <node concept="3clFbS" id="7D1YCyB46_H" role="18ibNy">
      <node concept="1Z5TYs" id="7D1YCyB46_U" role="3cqZAp">
        <property role="3wDh2S" value="true" />
        <node concept="mw_s8" id="7D1YCyB46_V" role="1ZfhKB">
          <node concept="2pJPEk" id="7D1YCyB46_W" role="mwGJk">
            <node concept="2pJPED" id="7D1YCyB46_X" role="2pJPEn">
              <ref role="2pJxaS" to="55s9:209684qNLaU" resolve="StringlistFeature" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="7D1YCyB46_Y" role="1ZfhK$">
          <node concept="1Z2H0r" id="7D1YCyB46_Z" role="mwGJk">
            <node concept="2OqwBi" id="7D1YCyB46A0" role="1Z2MuG">
              <node concept="1PxgMI" id="7D1YCyB46A1" role="2Oq$k0">
                <node concept="chp4Y" id="7D1YCyB46A2" role="3oSUPX">
                  <ref role="cht4Q" to="hm2y:7NJy08a3O99" resolve="DotExpression" />
                </node>
                <node concept="2OqwBi" id="7D1YCyB46A3" role="1m5AlR">
                  <node concept="1YBJjd" id="7D1YCyB5Gh2" role="2Oq$k0">
                    <ref role="1YBMHb" node="7D1YCyB46_J" resolve="aso" />
                  </node>
                  <node concept="1mfA1w" id="7D1YCyB46A5" role="2OqNvi" />
                </node>
              </node>
              <node concept="3TrEf2" id="7D1YCyB46A6" role="2OqNvi">
                <ref role="3Tt5mk" to="hm2y:4rZeNQ6NgXF" resolve="expr" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7D1YCyB46_J" role="1YuTPh">
      <property role="TrG5h" value="aso" />
      <ref role="1YaFvo" to="kxx6:7D1YCyB465l" resolve="AbstractStringlistOperation" />
    </node>
  </node>
  <node concept="1YbPZF" id="1o0JaC2DcO4">
    <property role="TrG5h" value="typeof_EncodeLabelsOp" />
    <property role="3GE5qa" value="encoding" />
    <node concept="3clFbS" id="1o0JaC2DcO5" role="18ibNy">
      <node concept="3KaCP$" id="1o0JaC2DgZ2" role="3cqZAp">
        <node concept="2OqwBi" id="1o0JaC2Dh9B" role="3KbGdf">
          <node concept="1YBJjd" id="1o0JaC2DgZr" role="2Oq$k0">
            <ref role="1YBMHb" node="1o0JaC2DcO7" resolve="elo" />
          </node>
          <node concept="3TrcHB" id="1o0JaC2DhMf" role="2OqNvi">
            <ref role="3TsBF5" to="kxx6:1pYj3$cR9Sb" resolve="measure" />
          </node>
        </node>
        <node concept="3KbdKl" id="1o0JaC2DhOG" role="3KbHQx">
          <node concept="3cmrfG" id="1o0JaC2DhOT" role="3Kbmr1">
            <property role="3cmrfH" value="0" />
          </node>
          <node concept="3clFbS" id="1o0JaC2DhOI" role="3Kbo56">
            <node concept="1Z5TYs" id="1o0JaC2Df_s" role="3cqZAp">
              <node concept="mw_s8" id="1o0JaC2Df_K" role="1ZfhKB">
                <node concept="2pJPEk" id="1o0JaC2DfA9" role="mwGJk">
                  <node concept="2pJPED" id="1o0JaC2DfAA" role="2pJPEn">
                    <ref role="2pJxaS" to="5qo5:78hTg1$P0UC" resolve="NumberType" />
                  </node>
                </node>
              </node>
              <node concept="mw_s8" id="1o0JaC2Df_v" role="1ZfhK$">
                <node concept="1Z2H0r" id="1o0JaC2DfrH" role="mwGJk">
                  <node concept="1YBJjd" id="1o0JaC2Dftt" role="1Z2MuG">
                    <ref role="1YBMHb" node="1o0JaC2DcO7" resolve="elo" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3zACq4" id="1o0JaC2Disz" role="3cqZAp" />
          </node>
        </node>
        <node concept="3KbdKl" id="1o0JaC2DhRp" role="3KbHQx">
          <node concept="3cmrfG" id="1o0JaC2DhU7" role="3Kbmr1">
            <property role="3cmrfH" value="1" />
          </node>
          <node concept="3clFbS" id="1o0JaC2DhRr" role="3Kbo56">
            <node concept="3SKdUt" id="1o0JaC2DiCj" role="3cqZAp">
              <node concept="3SKdUq" id="1o0JaC2DiCl" role="3SKWNk">
                <property role="3SKdUp" value="TODO: matrix of boolean" />
              </node>
            </node>
            <node concept="1Z5TYs" id="1o0JaC2DiBW" role="3cqZAp">
              <node concept="mw_s8" id="1o0JaC2DiCx" role="1ZfhKB">
                <node concept="2pJPEk" id="1o0JaC2DiCt" role="mwGJk">
                  <node concept="2pJPED" id="1o0JaC2DiCZ" role="2pJPEn">
                    <ref role="2pJxaS" to="55s9:4d9YXW2n_Ac" resolve="IntegerlistFeature" />
                  </node>
                </node>
              </node>
              <node concept="mw_s8" id="1o0JaC2DiBZ" role="1ZfhK$">
                <node concept="1Z2H0r" id="1o0JaC2DisH" role="mwGJk">
                  <node concept="1YBJjd" id="1o0JaC2Diut" role="1Z2MuG">
                    <ref role="1YBMHb" node="1o0JaC2DcO7" resolve="elo" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3zACq4" id="1o0JaC2DiG$" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbS" id="1o0JaC2DiPO" role="3Kb1Dw">
          <node concept="1Z5TYs" id="1o0JaC2Dj2f" role="3cqZAp">
            <node concept="mw_s8" id="1o0JaC2Dj2x" role="1ZfhKB">
              <node concept="10Nm6u" id="1o0JaC2Dj2v" role="mwGJk" />
            </node>
            <node concept="mw_s8" id="1o0JaC2Dj2i" role="1ZfhK$">
              <node concept="1Z2H0r" id="1o0JaC2DiSu" role="mwGJk">
                <node concept="1YBJjd" id="1o0JaC2DiUg" role="1Z2MuG">
                  <ref role="1YBMHb" node="1o0JaC2DcO7" resolve="elo" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1o0JaC2DcO7" role="1YuTPh">
      <property role="TrG5h" value="elo" />
      <ref role="1YaFvo" to="kxx6:1pYj3$cR9Ir" resolve="EncodeLabelsOperation" />
    </node>
  </node>
  <node concept="1YbPZF" id="4fA_w_sqmKa">
    <property role="TrG5h" value="typeof_JoinOp" />
    <node concept="3clFbS" id="4fA_w_sqmKb" role="18ibNy">
      <node concept="1Z5TYs" id="4fA_w_sqmUD" role="3cqZAp">
        <node concept="mw_s8" id="4fA_w_sqmUX" role="1ZfhKB">
          <node concept="2pJPEk" id="4fA_w_sqmUT" role="mwGJk">
            <node concept="2pJPED" id="4fA_w_sqmV8" role="2pJPEn">
              <ref role="2pJxaS" to="5qo5:4rZeNQ6OYR7" resolve="StringType" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="4fA_w_sqmUG" role="1ZfhK$">
          <node concept="1Z2H0r" id="4fA_w_sqmKh" role="mwGJk">
            <node concept="1YBJjd" id="4fA_w_sqmM1" role="1Z2MuG">
              <ref role="1YBMHb" node="4fA_w_sqmKd" resolve="joinOp" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="4fA_w_sqmKd" role="1YuTPh">
      <property role="TrG5h" value="joinOp" />
      <ref role="1YaFvo" to="kxx6:3$o$AJ1iMj3" resolve="JoinOperation" />
    </node>
  </node>
</model>

