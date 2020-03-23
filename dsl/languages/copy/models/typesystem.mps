<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c1cbc9b9-92b8-4405-8a4e-82a2f38d057a(copy.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="1" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" implicit="true" />
    <import index="f7i1" ref="r:9f02c0c5-f908-49ca-b986-ba31e3901887(copy.structure)" implicit="true" />
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1YbPZF" id="1o0JaC2Dr3z">
    <property role="TrG5h" value="typeof_CopyTypeExpression" />
    <node concept="3clFbS" id="1o0JaC2Dr3$" role="18ibNy">
      <node concept="1Z5TYs" id="1o0JaC2DrF6" role="3cqZAp">
        <node concept="mw_s8" id="1o0JaC2DrFq" role="1ZfhKB">
          <node concept="1Z2H0r" id="1o0JaC2DrFm" role="mwGJk">
            <node concept="2OqwBi" id="1o0JaC2DrVo" role="1Z2MuG">
              <node concept="1YBJjd" id="1o0JaC2DrFF" role="2Oq$k0">
                <ref role="1YBMHb" node="1o0JaC2Dr3A" resolve="cte" />
              </node>
              <node concept="3TrEf2" id="1o0JaC2Dsi$" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:1UULepNU6GA" resolve="type" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="1o0JaC2DrF9" role="1ZfhK$">
          <node concept="1Z2H0r" id="1o0JaC2Dr3E" role="mwGJk">
            <node concept="1YBJjd" id="1o0JaC2Dr73" role="1Z2MuG">
              <ref role="1YBMHb" node="1o0JaC2Dr3A" resolve="cte" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1Z5TYs" id="1o0JaC2DtLG" role="3cqZAp">
        <property role="3wDh2S" value="true" />
        <node concept="mw_s8" id="1o0JaC2DtMd" role="1ZfhKB">
          <node concept="1Z2H0r" id="1o0JaC2DtM9" role="mwGJk">
            <node concept="2OqwBi" id="1o0JaC2Du2b" role="1Z2MuG">
              <node concept="1YBJjd" id="1o0JaC2DtMu" role="2Oq$k0">
                <ref role="1YBMHb" node="1o0JaC2Dr3A" resolve="cte" />
              </node>
              <node concept="3TrEf2" id="1o0JaC2DuNP" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:1UULepNU6GA" resolve="type" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="1o0JaC2DtLJ" role="1ZfhK$">
          <node concept="1Z2H0r" id="1o0JaC2DsmQ" role="mwGJk">
            <node concept="2OqwBi" id="1o0JaC2DsCr" role="1Z2MuG">
              <node concept="1YBJjd" id="1o0JaC2DsoL" role="2Oq$k0">
                <ref role="1YBMHb" node="1o0JaC2Dr3A" resolve="cte" />
              </node>
              <node concept="3TrEf2" id="1o0JaC2Dtr9" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:1UULepNJ9VZ" resolve="initialExpression" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1o0JaC2Dr3A" role="1YuTPh">
      <property role="TrG5h" value="cte" />
      <ref role="1YaFvo" to="f7i1:1o0JaC2Dkg1" resolve="CopyStatement" />
    </node>
  </node>
</model>

