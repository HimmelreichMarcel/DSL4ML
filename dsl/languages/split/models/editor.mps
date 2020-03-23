<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9c658380-5c20-4642-bb0d-66fc5ca785d8(split.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="25x5" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.text(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wg1f" ref="r:11104845-93e0-4180-a3fa-727a6772438c(style.editor)" />
    <import index="w3db" ref="r:372863d1-da2c-4d51-9ce5-ef15e0220a9a(split.structure)" implicit="true" />
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" implicit="true" />
    <import index="lcps" ref="r:a220a28d-d4d7-4d46-a236-0578bf554f13(split.behavior)" implicit="true" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpen" ref="r:00000000-0000-4000-0000-011c895902c3(jetbrains.mps.baseLanguage.editor)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
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
      <concept id="3473224453637651916" name="jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform_PlaceInCellHolder" flags="ng" index="CtIbL">
        <property id="3473224453637651917" name="placeInCell" index="CtIbK" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1630016958697344083" name="jetbrains.mps.lang.editor.structure.IMenu_Concept" flags="ng" index="2ZABuq">
        <reference id="6591946374543067572" name="conceptDeclaration" index="aqKnT" />
      </concept>
      <concept id="2896773699153795590" name="jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform" flags="ng" index="3cWJ9i">
        <child id="3473224453637651919" name="placeInCell" index="CtIbM" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="9122903797312246523" name="jetbrains.mps.lang.editor.structure.StyleReference" flags="ng" index="1wgc9g">
        <reference id="9122903797312247166" name="style" index="1wgcnl" />
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
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY">
        <property id="16410578721444372" name="customizeEmptyCell" index="2ru_X1" />
        <child id="16410578721629643" name="emptyCellModel" index="2ruayu" />
      </concept>
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1225898583838" name="jetbrains.mps.lang.editor.structure.ReadOnlyModelAccessor" flags="ng" index="1HfYo3">
        <child id="1225898971709" name="getter" index="1Hhtcw" />
      </concept>
      <concept id="1225900081164" name="jetbrains.mps.lang.editor.structure.CellModel_ReadOnlyModelAccessor" flags="sg" stub="3708815482283559694" index="1HlG4h">
        <child id="1225900141900" name="modelAccessor" index="1HlULh" />
      </concept>
      <concept id="5624877018226904808" name="jetbrains.mps.lang.editor.structure.TransformationMenu_Named" flags="ng" index="3ICXOK" />
      <concept id="5624877018228267058" name="jetbrains.mps.lang.editor.structure.ITransformationMenu" flags="ng" index="3INCJE">
        <child id="1638911550608572412" name="sections" index="IW6Ez" />
      </concept>
      <concept id="7980428675268276156" name="jetbrains.mps.lang.editor.structure.TransformationMenuSection" flags="ng" index="1Qtc8_">
        <child id="7980428675268276157" name="locations" index="1Qtc8$" />
      </concept>
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
      <concept id="1950447826681509042" name="jetbrains.mps.lang.editor.structure.ApplyStyleClass" flags="lg" index="3Xmtl4">
        <child id="1950447826683828796" name="target" index="3XvnJa" />
      </concept>
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
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
  <node concept="24kQdi" id="crj2MTJi9k">
    <ref role="1XX52x" to="w3db:crj2MTJ7hd" resolve="SplitStatement" />
    <node concept="3EZMnI" id="crj2MTJi9m" role="2wV5jI">
      <node concept="3F0ifn" id="crj2MTJi9t" role="3EZMnx">
        <property role="3F0ifm" value="split" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="3F1sOY" id="crj2MTJi9B" role="3EZMnx">
        <ref role="1NtTu8" to="w3db:crj2MTJa9j" resolve="object" />
      </node>
      <node concept="3EZMnI" id="4kZuEukTFN0" role="3EZMnx">
        <node concept="VPM3Z" id="4kZuEukTFN2" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="4kZuEukTGsh" role="3EZMnx">
          <property role="3F0ifm" value="[" />
          <ref role="1k5W1q" to="wg1f:4fA_w_sAgAS" resolve="leftBracket" />
        </node>
        <node concept="1HlG4h" id="4kZuEukTCHP" role="3EZMnx">
          <ref role="1k5W1q" to="wg1f:4fA_w_sALb_" resolve="subtle" />
          <node concept="1HfYo3" id="4kZuEukTCHR" role="1HlULh">
            <node concept="3TQlhw" id="4kZuEukTCHT" role="1Hhtcw">
              <node concept="3clFbS" id="4kZuEukTCHV" role="2VODD2">
                <node concept="3clFbF" id="4kZuEukTIjq" role="3cqZAp">
                  <node concept="2OqwBi" id="4kZuEukTMOC" role="3clFbG">
                    <node concept="1PxgMI" id="4kZuEukTKN7" role="2Oq$k0">
                      <node concept="chp4Y" id="4kZuEukTKZ8" role="3oSUPX">
                        <ref role="cht4Q" to="w3db:crj2MTJa9l" resolve="ICanBeSplit" />
                      </node>
                      <node concept="2OqwBi" id="4kZuEukTLTg" role="1m5AlR">
                        <node concept="2OqwBi" id="4kZuEukTIBf" role="2Oq$k0">
                          <node concept="pncrf" id="4kZuEukTIjp" role="2Oq$k0" />
                          <node concept="3TrEf2" id="4kZuEukTJim" role="2OqNvi">
                            <ref role="3Tt5mk" to="w3db:crj2MTJa9j" resolve="object" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="4kZuEukTMmv" role="2OqNvi">
                          <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                        </node>
                      </node>
                    </node>
                    <node concept="2qgKlT" id="4kZuEukTNks" role="2OqNvi">
                      <ref role="37wK5l" to="lcps:4kZuEukR5bB" resolve="getSplitAnnotation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3Xmtl4" id="4kZuEukUjgn" role="3F10Kt">
            <node concept="1wgc9g" id="4kZuEukUjzp" role="3XvnJa">
              <ref role="1wgcnl" to="wg1f:4fA_w_sztnY" resolve="code" />
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="4kZuEukUgRG" role="3EZMnx">
          <property role="3F0ifm" value="]" />
          <ref role="1k5W1q" to="wg1f:4fA_w_sAgCG" resolve="rightBracket" />
        </node>
        <node concept="2iRfu4" id="4kZuEukTFN5" role="2iSdaV" />
        <node concept="pkWqt" id="4kZuEukTFNn" role="pqm2j">
          <node concept="3clFbS" id="4kZuEukTFNo" role="2VODD2">
            <node concept="3clFbF" id="4kZuEukRBUe" role="3cqZAp">
              <node concept="1Wc70l" id="4kZuEukRzwK" role="3clFbG">
                <node concept="2OqwBi" id="4kZuEukTDW4" role="3uHU7w">
                  <node concept="2OqwBi" id="4kZuEukRALd" role="2Oq$k0">
                    <node concept="1PxgMI" id="4kZuEukRA5Y" role="2Oq$k0">
                      <node concept="chp4Y" id="4kZuEukRApY" role="3oSUPX">
                        <ref role="cht4Q" to="w3db:crj2MTJa9l" resolve="ICanBeSplit" />
                      </node>
                      <node concept="2OqwBi" id="4kZuEukStud" role="1m5AlR">
                        <node concept="2OqwBi" id="4kZuEukR$6B" role="2Oq$k0">
                          <node concept="pncrf" id="4kZuEukRzLB" role="2Oq$k0" />
                          <node concept="3TrEf2" id="4kZuEukR$GS" role="2OqNvi">
                            <ref role="3Tt5mk" to="w3db:crj2MTJa9j" resolve="object" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="4kZuEukSudP" role="2OqNvi">
                          <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                        </node>
                      </node>
                    </node>
                    <node concept="2qgKlT" id="4kZuEukU0Un" role="2OqNvi">
                      <ref role="37wK5l" to="lcps:4kZuEukR5bB" resolve="getSplitAnnotation" />
                    </node>
                  </node>
                  <node concept="17RvpY" id="4kZuEukTF8z" role="2OqNvi" />
                </node>
                <node concept="1Wc70l" id="4kZuEukRx9k" role="3uHU7B">
                  <node concept="1Wc70l" id="4kZuEukT8O0" role="3uHU7B">
                    <node concept="2OqwBi" id="4kZuEukTaAW" role="3uHU7B">
                      <node concept="2OqwBi" id="4kZuEukT9xc" role="2Oq$k0">
                        <node concept="pncrf" id="4kZuEukT9b$" role="2Oq$k0" />
                        <node concept="3TrEf2" id="4kZuEukTaoo" role="2OqNvi">
                          <ref role="3Tt5mk" to="w3db:crj2MTJa9j" resolve="object" />
                        </node>
                      </node>
                      <node concept="3x8VRR" id="4kZuEukTbrI" role="2OqNvi" />
                    </node>
                    <node concept="3fqX7Q" id="4kZuEukRwF0" role="3uHU7w">
                      <node concept="2OqwBi" id="4kZuEukRwF2" role="3fr31v">
                        <node concept="2OqwBi" id="4kZuEukRwF3" role="2Oq$k0">
                          <node concept="2OqwBi" id="4kZuEukRwF4" role="2Oq$k0">
                            <node concept="pncrf" id="4kZuEukRwF5" role="2Oq$k0" />
                            <node concept="3TrEf2" id="4kZuEukRwF6" role="2OqNvi">
                              <ref role="3Tt5mk" to="w3db:crj2MTJa9j" resolve="object" />
                            </node>
                          </node>
                          <node concept="2yIwOk" id="4kZuEukRwF7" role="2OqNvi" />
                        </node>
                        <node concept="liA8E" id="4kZuEukRwF8" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractConcept.isAbstract():boolean" resolve="isAbstract" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4kZuEukRyhE" role="3uHU7w">
                    <node concept="2OqwBi" id="4kZuEukSrO9" role="2Oq$k0">
                      <node concept="2OqwBi" id="4kZuEukRxuz" role="2Oq$k0">
                        <node concept="pncrf" id="4kZuEukRxu$" role="2Oq$k0" />
                        <node concept="3TrEf2" id="4kZuEukRxu_" role="2OqNvi">
                          <ref role="3Tt5mk" to="w3db:crj2MTJa9j" resolve="object" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="4kZuEukSsxD" role="2OqNvi">
                        <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getObject" />
                      </node>
                    </node>
                    <node concept="1mIQ4w" id="4kZuEukRyNk" role="2OqNvi">
                      <node concept="chp4Y" id="4kZuEukRz1v" role="cj9EA">
                        <ref role="cht4Q" to="w3db:crj2MTJa9l" resolve="ICanBeSplit" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="crj2MTKzMP" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sGOjD" resolve="colon" />
        <node concept="ljvvj" id="crj2MTKzMX" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="crj2MTKzN5" role="3EZMnx">
        <ref role="1NtTu8" to="w3db:crj2MTK8yS" resolve="parts" />
        <node concept="lj46D" id="crj2MTKzNe" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="2iRkQZ" id="crj2MTKzNj" role="2czzBx" />
      </node>
      <node concept="l2Vlx" id="crj2MTKzMU" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="crj2MTK4Tu">
    <ref role="1XX52x" to="w3db:crj2MTJZed" resolve="PartStatement" />
    <node concept="3EZMnI" id="crj2MTK4Tw" role="2wV5jI">
      <node concept="3F0ifn" id="crj2MTK4TB" role="3EZMnx">
        <property role="3F0ifm" value="part" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="3F0A7n" id="crj2MTK_2J" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" to="wg1f:4fA_w_szsJt" resolve="variable" />
      </node>
      <node concept="3F0ifn" id="crj2MTKIj$" role="3EZMnx">
        <property role="3F0ifm" value="takes" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="3F1sOY" id="crj2MTKQuB" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="w3db:crj2MTKQut" resolve="amount" />
        <node concept="1HlG4h" id="crj2MU6HBQ" role="2ruayu">
          <ref role="1k5W1q" to="tpen:hinfsDb" resolve="EmptyCell" />
          <node concept="1HfYo3" id="crj2MU6HBR" role="1HlULh">
            <node concept="3TQlhw" id="crj2MU6HBS" role="1Hhtcw">
              <node concept="3clFbS" id="crj2MU6HBT" role="2VODD2">
                <node concept="3cpWs8" id="crj2MU7mZQ" role="3cqZAp">
                  <node concept="3cpWsn" id="crj2MU7mZR" role="3cpWs9">
                    <property role="TrG5h" value="nf" />
                    <node concept="3uibUv" id="crj2MU7mZS" role="1tU5fm">
                      <ref role="3uigEE" to="25x5:~NumberFormat" resolve="NumberFormat" />
                    </node>
                    <node concept="2YIFZM" id="crj2MU7qJh" role="33vP2m">
                      <ref role="1Pybhc" to="25x5:~NumberFormat" resolve="NumberFormat" />
                      <ref role="37wK5l" to="25x5:~NumberFormat.getNumberInstance(java.util.Locale):java.text.NumberFormat" resolve="getNumberInstance" />
                      <node concept="10M0yZ" id="crj2MU7si3" role="37wK5m">
                        <ref role="3cqZAo" to="33ny:~Locale.ENGLISH" resolve="ENGLISH" />
                        <ref role="1PxDUh" to="33ny:~Locale" resolve="Locale" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="crj2MU7teq" role="3cqZAp">
                  <node concept="3cpWsn" id="crj2MU7ter" role="3cpWs9">
                    <property role="TrG5h" value="df" />
                    <node concept="3uibUv" id="crj2MU7tes" role="1tU5fm">
                      <ref role="3uigEE" to="25x5:~DecimalFormat" resolve="DecimalFormat" />
                    </node>
                    <node concept="10QFUN" id="crj2MU7vq9" role="33vP2m">
                      <node concept="3uibUv" id="crj2MU7vLv" role="10QFUM">
                        <ref role="3uigEE" to="25x5:~DecimalFormat" resolve="DecimalFormat" />
                      </node>
                      <node concept="37vLTw" id="crj2MU7v69" role="10QFUP">
                        <ref role="3cqZAo" node="crj2MU7mZR" resolve="nf" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="crj2MU7_ku" role="3cqZAp">
                  <node concept="2OqwBi" id="crj2MU7_IT" role="3clFbG">
                    <node concept="37vLTw" id="crj2MU7_ks" role="2Oq$k0">
                      <ref role="3cqZAo" node="crj2MU7ter" resolve="df" />
                    </node>
                    <node concept="liA8E" id="crj2MU7AUI" role="2OqNvi">
                      <ref role="37wK5l" to="25x5:~DecimalFormat.applyPattern(java.lang.String):void" resolve="applyPattern" />
                      <node concept="Xl_RD" id="crj2MU7Bg8" role="37wK5m">
                        <property role="Xl_RC" value="#.#####" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="crj2MU73S8" role="3cqZAp">
                  <node concept="2OqwBi" id="crj2MU7axl" role="3clFbG">
                    <node concept="liA8E" id="crj2MU7bR_" role="2OqNvi">
                      <ref role="37wK5l" to="25x5:~NumberFormat.format(double):java.lang.String" resolve="format" />
                      <node concept="2OqwBi" id="crj2MU6MGu" role="37wK5m">
                        <node concept="1PxgMI" id="crj2MU6Mdd" role="2Oq$k0">
                          <node concept="chp4Y" id="crj2MU6Mms" role="3oSUPX">
                            <ref role="cht4Q" to="w3db:crj2MTJ7hd" resolve="SplitStatement" />
                          </node>
                          <node concept="2OqwBi" id="crj2MU6KLC" role="1m5AlR">
                            <node concept="pncrf" id="crj2MU6Kta" role="2Oq$k0" />
                            <node concept="1mfA1w" id="crj2MU6Lu$" role="2OqNvi" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="crj2MU6NFn" role="2OqNvi">
                          <ref role="37wK5l" to="lcps:crj2MU5VWW" resolve="getUndefinedPartAmount" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="crj2MU7EKe" role="2Oq$k0">
                      <ref role="3cqZAo" node="crj2MU7ter" resolve="df" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="VPxyj" id="crj2MU7H58" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="crj2MTKT0g" role="3EZMnx">
        <property role="3F0ifm" value="%" />
      </node>
      <node concept="2iRfu4" id="crj2MTK4Tz" role="2iSdaV" />
    </node>
  </node>
  <node concept="3ICXOK" id="crj2MU71yM">
    <property role="TrG5h" value="test" />
    <ref role="aqKnT" to="w3db:crj2MTJZed" resolve="PartStatement" />
    <node concept="1Qtc8_" id="crj2MU71Fx" role="IW6Ez">
      <node concept="3cWJ9i" id="crj2MU71F_" role="1Qtc8$">
        <node concept="CtIbL" id="crj2MU71FB" role="CtIbM">
          <property role="CtIbK" value="LEFT" />
        </node>
      </node>
    </node>
  </node>
</model>

