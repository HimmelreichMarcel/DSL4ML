<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:874b7c07-cb8a-4a83-9cbf-011801c455af(create.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="1" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" />
    <import index="68mc" ref="r:2a10821d-612f-4a73-b7b0-ed6b57106321(com.mbeddr.mpsutil.filepicker.structure)" />
    <import index="ckmh" ref="r:a0b09593-26bd-4d75-98f1-657e49dea4f1(create.structure)" implicit="true" />
    <import index="rf90" ref="r:78ffb9c2-583d-4056-875e-4c4f6c2b2f2f(create.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1185788614172" name="jetbrains.mps.lang.typesystem.structure.NormalTypeClause" flags="ng" index="mw_s8">
        <child id="1185788644032" name="normalType" index="mwGJk" />
      </concept>
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1227096774658" name="jetbrains.mps.lang.typesystem.structure.MessageStatement" flags="ng" index="2OEH$v">
        <child id="1227096802790" name="nodeToReport" index="2OEOjV" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
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
      <concept id="1174660718586" name="jetbrains.mps.lang.typesystem.structure.AbstractEquationStatement" flags="nn" index="1Zf1VF">
        <property id="1206359757216" name="checkOnly" index="3wDh2S" />
        <child id="1174660783413" name="leftExpression" index="1ZfhK$" />
        <child id="1174660783414" name="rightExpression" index="1ZfhKB" />
      </concept>
      <concept id="1174663118805" name="jetbrains.mps.lang.typesystem.structure.CreateLessThanInequationStatement" flags="nn" index="1ZobV4" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
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
  <node concept="1YbPZF" id="4IazLL3Phax">
    <property role="TrG5h" value="typeof_CreateStatement" />
    <property role="3GE5qa" value="" />
    <node concept="3clFbS" id="4IazLL3Phay" role="18ibNy">
      <node concept="1ZobV4" id="2UblaMs66nA" role="3cqZAp">
        <property role="3wDh2S" value="false" />
        <node concept="mw_s8" id="2UblaMs66nD" role="1ZfhK$">
          <node concept="1Z2H0r" id="2UblaMs66nE" role="mwGJk">
            <node concept="2OqwBi" id="2UblaMs66nF" role="1Z2MuG">
              <node concept="1YBJjd" id="4IazLL3Phhn" role="2Oq$k0">
                <ref role="1YBMHb" node="4IazLL3Pha$" resolve="cs" />
              </node>
              <node concept="3TrEf2" id="1UULepNS7LE" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:1UULepNJ9VZ" resolve="initialExpression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="2UblaMs66sG" role="1ZfhKB">
          <node concept="1Z2H0r" id="2UblaMs66sC" role="mwGJk">
            <node concept="2OqwBi" id="4IazLL3Pgys" role="1Z2MuG">
              <node concept="1YBJjd" id="4IazLL3Phr9" role="2Oq$k0">
                <ref role="1YBMHb" node="4IazLL3Pha$" resolve="cs" />
              </node>
              <node concept="3TrEf2" id="4IazLL3Ph1L" role="2OqNvi">
                <ref role="3Tt5mk" to="5frd:1UULepNU6GA" resolve="type" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="4IazLL3Pha$" role="1YuTPh">
      <property role="TrG5h" value="cs" />
      <ref role="1YaFvo" to="ckmh:4Z2dWAVu5W2" resolve="CreateStatement" />
    </node>
  </node>
  <node concept="18kY7G" id="4IazLL3PCU4">
    <property role="TrG5h" value="check_FileLoader" />
    <property role="3GE5qa" value="fromFile" />
    <node concept="3clFbS" id="4IazLL3PCU5" role="18ibNy">
      <node concept="3clFbJ" id="4Z2dWAVzjD0" role="3cqZAp">
        <node concept="3clFbS" id="4Z2dWAVzjD2" role="3clFbx">
          <node concept="3clFbJ" id="4Z2dWAVvPDu" role="3cqZAp">
            <node concept="3clFbS" id="4Z2dWAVvPDw" role="3clFbx">
              <node concept="2MkqsV" id="4Z2dWAVxWgr" role="3cqZAp">
                <node concept="3cpWs3" id="4Z2dWAVypC0" role="2MkJ7o">
                  <node concept="2OqwBi" id="4Z2dWAVypUl" role="3uHU7w">
                    <node concept="1YBJjd" id="4Z2dWAVypGV" role="2Oq$k0">
                      <ref role="1YBMHb" node="4IazLL3PCU7" resolve="fl" />
                    </node>
                    <node concept="2qgKlT" id="4Z2dWAVyqfy" role="2OqNvi">
                      <ref role="37wK5l" to="rf90:4Z2dWAVxZkv" resolve="getValidExtensionsString" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="4Z2dWAVxWgE" role="3uHU7B">
                    <property role="Xl_RC" value="The chosen file has no valid extension. Valid extensions are: " />
                  </node>
                </node>
                <node concept="1YBJjd" id="4Z2dWAVyqr1" role="2OEOjV">
                  <ref role="1YBMHb" node="4IazLL3PCU7" resolve="fl" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="4Z2dWAVxW8m" role="3clFbw">
              <node concept="2OqwBi" id="4Z2dWAVxW8o" role="3fr31v">
                <node concept="1YBJjd" id="4Z2dWAVxW8p" role="2Oq$k0">
                  <ref role="1YBMHb" node="4IazLL3PCU7" resolve="fl" />
                </node>
                <node concept="2qgKlT" id="4Z2dWAVxW8q" role="2OqNvi">
                  <ref role="37wK5l" to="rf90:4Z2dWAVwmLH" resolve="hasValidExtension" />
                  <node concept="2OqwBi" id="1afqJykrHNf" role="37wK5m">
                    <node concept="1YBJjd" id="1afqJykrH$2" role="2Oq$k0">
                      <ref role="1YBMHb" node="4IazLL3PCU7" resolve="fl" />
                    </node>
                    <node concept="3TrcHB" id="1afqJykrI78" role="2OqNvi">
                      <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="4Z2dWAVzkSM" role="3clFbw">
          <node concept="2OqwBi" id="4Z2dWAVzk1o" role="2Oq$k0">
            <node concept="1YBJjd" id="4Z2dWAVzjQu" role="2Oq$k0">
              <ref role="1YBMHb" node="4IazLL3PCU7" resolve="fl" />
            </node>
            <node concept="3TrcHB" id="4Z2dWAVzknV" role="2OqNvi">
              <ref role="3TsBF5" to="68mc:5lKnBeAtODI" resolve="path" />
            </node>
          </node>
          <node concept="17RvpY" id="4Z2dWAVzljv" role="2OqNvi" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="4IazLL3PCU7" role="1YuTPh">
      <property role="TrG5h" value="fl" />
      <ref role="1YaFvo" to="ckmh:4Z2dWAVvrX9" resolve="FileLoader" />
    </node>
  </node>
</model>

