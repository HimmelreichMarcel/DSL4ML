<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ebb722fc-7828-40ea-9b16-04520b4de705(featuresEditing.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
    <use id="9d69e719-78c8-4286-90db-fb19c107d049" name="com.mbeddr.mpsutil.grammarcells" version="0" />
    <use id="7ba829ec-d0f7-4157-9641-bc2956de9c1c" name="style" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="wg1f" ref="r:11104845-93e0-4180-a3fa-727a6772438c(style.editor)" />
    <import index="z82i" ref="r:0a2eb21f-fd0b-49b5-8a4c-2ff8b9d2f6c8(featuresEditing.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1225898583838" name="jetbrains.mps.lang.editor.structure.ReadOnlyModelAccessor" flags="ng" index="1HfYo3">
        <child id="1225898971709" name="getter" index="1Hhtcw" />
      </concept>
      <concept id="1225900081164" name="jetbrains.mps.lang.editor.structure.CellModel_ReadOnlyModelAccessor" flags="sg" stub="3708815482283559694" index="1HlG4h">
        <child id="1225900141900" name="modelAccessor" index="1HlULh" />
      </concept>
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
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
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
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
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
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
      <concept id="1176544042499" name="jetbrains.mps.lang.typesystem.structure.Node_TypeOperation" flags="nn" index="3JvlWi" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
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
    </language>
  </registry>
  <node concept="24kQdi" id="5TCgtqdzv5S">
    <property role="3GE5qa" value="composition" />
    <ref role="1XX52x" to="z82i:5TCgtqdzv5u" resolve="FeaturesetComposition" />
    <node concept="3EZMnI" id="5TCgtqdzv5U" role="2wV5jI">
      <node concept="3F0ifn" id="5TCgtqdzv61" role="3EZMnx">
        <property role="3F0ifm" value="compose" />
      </node>
      <node concept="3F0ifn" id="5TCgtqdzv67" role="3EZMnx">
        <property role="3F0ifm" value="featureset" />
      </node>
      <node concept="3F0A7n" id="5TCgtqdzv6h" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="5TCgtqdzv6r" role="3EZMnx">
        <property role="3F0ifm" value="from" />
      </node>
      <node concept="3F2HdR" id="2I8Ps5NdH7J" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="z82i:2I8Ps5NdH6Y" resolve="featuresets" />
        <node concept="l2Vlx" id="2I8Ps5NdH7L" role="2czzBx" />
        <node concept="ljvvj" id="2I8Ps5NdH8U" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="5TCgtqdAnPd" role="3EZMnx">
        <node concept="lj46D" id="5TCgtqdAnQ8" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="5TCgtqdAnQa" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3EZMnI" id="2I8Ps5Ne_e2" role="3EZMnx">
          <node concept="2iRfu4" id="2I8Ps5Ne_e3" role="2iSdaV" />
          <node concept="3F0ifn" id="5TCgtqdAnNO" role="3EZMnx">
            <property role="3F0ifm" value="select joint-features:" />
            <node concept="ljvvj" id="5TCgtqdAnO3" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="lj46D" id="5TCgtqdAnO5" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F0A7n" id="5TCgtqdAHMS" role="3EZMnx">
            <ref role="1NtTu8" to="z82i:5TCgtqdAHML" resolve="detectJointFeature" />
          </node>
          <node concept="ljvvj" id="2I8Ps5Ne_ez" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3EZMnI" id="5TCgtqdAmH9" role="3EZMnx">
          <node concept="2iRkQZ" id="5TCgtqdAmHa" role="2iSdaV" />
          <node concept="3F2HdR" id="2I8Ps5NfjS1" role="3EZMnx">
            <ref role="1NtTu8" to="z82i:5TCgtqdzE1L" resolve="jointFeatures" />
            <node concept="2iRkQZ" id="2I8Ps5NfjS4" role="2czzBx" />
          </node>
          <node concept="lj46D" id="2I8Ps5NdH8W" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="2I8Ps5NdH9N" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pkWqt" id="2I8Ps5NfvsK" role="pqm2j">
            <node concept="3clFbS" id="2I8Ps5NfvsL" role="2VODD2">
              <node concept="3clFbF" id="2I8Ps5NfvzU" role="3cqZAp">
                <node concept="3fqX7Q" id="2I8Ps5NfxHe" role="3clFbG">
                  <node concept="2OqwBi" id="2I8Ps5NfxHg" role="3fr31v">
                    <node concept="pncrf" id="2I8Ps5NfxHh" role="2Oq$k0" />
                    <node concept="3TrcHB" id="2I8Ps5NfxHi" role="2OqNvi">
                      <ref role="3TsBF5" to="z82i:5TCgtqdAHML" resolve="detectJointFeature" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="l2Vlx" id="2I8Ps5Ne_dW" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="2I8Ps5Ne_gF" role="3EZMnx">
        <node concept="l2Vlx" id="2I8Ps5Ne_gG" role="2iSdaV" />
        <node concept="3EZMnI" id="2I8Ps5NdH9U" role="3EZMnx">
          <node concept="2iRfu4" id="2I8Ps5NdH9V" role="2iSdaV" />
          <node concept="3F0ifn" id="2I8Ps5NdH9o" role="3EZMnx">
            <property role="3F0ifm" value="select compose-features:" />
            <node concept="ljvvj" id="2I8Ps5NdH9L" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="lj46D" id="2I8Ps5NdH9R" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F0A7n" id="2I8Ps5Nf8hz" role="3EZMnx">
            <ref role="1NtTu8" to="z82i:2I8Ps5NeWfu" resolve="selectAll" />
          </node>
          <node concept="ljvvj" id="2I8Ps5NdHaU" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3EZMnI" id="2I8Ps5NeKKV" role="3EZMnx">
          <node concept="2iRkQZ" id="2I8Ps5NeKKW" role="2iSdaV" />
          <node concept="3F2HdR" id="2I8Ps5Ng5e3" role="3EZMnx">
            <ref role="1NtTu8" to="z82i:2I8Ps5Ng5dZ" resolve="composeFeatures" />
            <node concept="2iRkQZ" id="2I8Ps5Ng5e5" role="2czzBx" />
          </node>
          <node concept="lj46D" id="2I8Ps5NeKL8" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pkWqt" id="2I8Ps5NghNz" role="pqm2j">
            <node concept="3clFbS" id="2I8Ps5NghN$" role="2VODD2">
              <node concept="3clFbF" id="2I8Ps5NghUI" role="3cqZAp">
                <node concept="3fqX7Q" id="2I8Ps5NghUG" role="3clFbG">
                  <node concept="2OqwBi" id="2I8Ps5NgijU" role="3fr31v">
                    <node concept="pncrf" id="2I8Ps5Ngi2b" role="2Oq$k0" />
                    <node concept="3TrcHB" id="2I8Ps5Ngjc6" role="2OqNvi">
                      <ref role="3TsBF5" to="z82i:2I8Ps5NeWfu" resolve="selectAll" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lj46D" id="2I8Ps5Ne_ik" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="5TCgtqdAmGx" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5TCgtqdAnQL">
    <property role="3GE5qa" value="composition" />
    <ref role="1XX52x" to="z82i:5TCgtqdAnQi" resolve="JointFeatureStatement" />
    <node concept="3EZMnI" id="5TCgtqdAnQN" role="2wV5jI">
      <node concept="1HlG4h" id="5A1koKOQK61" role="3EZMnx">
        <node concept="1HfYo3" id="5A1koKOQK63" role="1HlULh">
          <node concept="3TQlhw" id="5A1koKOQK65" role="1Hhtcw">
            <node concept="3clFbS" id="5A1koKOQK67" role="2VODD2">
              <node concept="3clFbJ" id="5A1koKOR$8w" role="3cqZAp">
                <node concept="3clFbS" id="5A1koKOR$8y" role="3clFbx">
                  <node concept="3cpWs6" id="5A1koKORC0N" role="3cqZAp">
                    <node concept="2OqwBi" id="5A1koKOSvWt" role="3cqZAk">
                      <node concept="2OqwBi" id="5A1koKORC0P" role="2Oq$k0">
                        <node concept="pncrf" id="5A1koKORC0Q" role="2Oq$k0" />
                        <node concept="3TrEf2" id="5A1koKORC0R" role="2OqNvi">
                          <ref role="3Tt5mk" to="z82i:4x_I0nqn5VX" resolve="featureset" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="5A1koKOSwux" role="2OqNvi">
                        <ref role="37wK5l" to="64zb:1qp0740gxlZ" resolve="getObjectName" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="5A1koKOSDWn" role="3clFbw">
                  <node concept="1eOMI4" id="5A1koKOSDlB" role="2Oq$k0">
                    <node concept="3cpWs3" id="5A1koKOSCpa" role="1eOMHV">
                      <node concept="Xl_RD" id="5A1koKOSCpg" role="3uHU7w">
                        <property role="Xl_RC" value="" />
                      </node>
                      <node concept="2OqwBi" id="5A1koKOR_zA" role="3uHU7B">
                        <node concept="2OqwBi" id="5A1koKOR$zv" role="2Oq$k0">
                          <node concept="pncrf" id="5A1koKOR$mt" role="2Oq$k0" />
                          <node concept="3TrEf2" id="5A1koKOR_44" role="2OqNvi">
                            <ref role="3Tt5mk" to="z82i:4x_I0nqn5VX" resolve="featureset" />
                          </node>
                        </node>
                        <node concept="3JvlWi" id="5A1koKOSpWj" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="5A1koKOSF6X" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                    <node concept="Xl_RD" id="5A1koKOSFyJ" role="37wK5m">
                      <property role="Xl_RC" value="featureset" />
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="5A1koKORAWr" role="9aQIa">
                  <node concept="3clFbS" id="5A1koKORAWs" role="9aQI4">
                    <node concept="3cpWs6" id="5A1koKORBac" role="3cqZAp">
                      <node concept="Xl_RD" id="5A1koKORBo1" role="3cqZAk">
                        <property role="Xl_RC" value="&lt;...&gt;" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="5TCgtqdAnRt" role="3EZMnx">
        <property role="3F0ifm" value="joins on" />
      </node>
      <node concept="3F1sOY" id="5TCgtqdAnRz" role="3EZMnx">
        <ref role="1NtTu8" to="z82i:5TCgtqdAnQl" resolve="jointFeature" />
      </node>
      <node concept="2iRfu4" id="5TCgtqdAnQQ" role="2iSdaV" />
      <node concept="pkWqt" id="5A1koKORm6p" role="pqm2j">
        <node concept="3clFbS" id="5A1koKORm6q" role="2VODD2">
          <node concept="3clFbF" id="5A1koKORmvy" role="3cqZAp">
            <node concept="2OqwBi" id="5A1koKORnFn" role="3clFbG">
              <node concept="2OqwBi" id="5A1koKORmJm" role="2Oq$k0">
                <node concept="pncrf" id="5A1koKORmvx" role="2Oq$k0" />
                <node concept="3TrEf2" id="5A1koKORn9H" role="2OqNvi">
                  <ref role="3Tt5mk" to="z82i:4x_I0nqn5VX" resolve="featureset" />
                </node>
              </node>
              <node concept="3x8VRR" id="5A1koKORodi" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2I8Ps5Ng5dl">
    <property role="3GE5qa" value="composition" />
    <ref role="1XX52x" to="z82i:2I8Ps5Ng5cV" resolve="SelectExpr" />
    <node concept="3EZMnI" id="2I8Ps5Ng5dn" role="2wV5jI">
      <node concept="3F0ifn" id="2I8Ps5Ng5du" role="3EZMnx">
        <property role="3F0ifm" value="from" />
      </node>
      <node concept="3F1sOY" id="5A1koKOPy8h" role="3EZMnx">
        <ref role="1NtTu8" to="z82i:4x_I0nqoBjN" resolve="featureset" />
      </node>
      <node concept="3F0ifn" id="2I8Ps5Ng5dG" role="3EZMnx">
        <property role="3F0ifm" value="select" />
      </node>
      <node concept="3F1sOY" id="5A1koKOPy8n" role="3EZMnx">
        <ref role="1NtTu8" to="z82i:5A1koKOPwsJ" resolve="features" />
      </node>
      <node concept="l2Vlx" id="2I8Ps5Ng5dq" role="2iSdaV" />
    </node>
  </node>
</model>

