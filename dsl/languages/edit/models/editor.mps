<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c36f804f-fd1d-48da-853f-8223a584695b(edit.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="wg1f" ref="r:11104845-93e0-4180-a3fa-727a6772438c(style.editor)" />
    <import index="bxmu" ref="r:2caa4bf2-77af-43e0-8e72-8a12a8978a06(edit.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
      </concept>
      <concept id="1186413799158" name="jetbrains.mps.lang.editor.structure.BracketColorStyleClassItem" flags="ln" index="VLuvy" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
        <child id="1223387335081" name="query" index="3n$kyP" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1223387125302" name="jetbrains.mps.lang.editor.structure.QueryFunction_Boolean" flags="in" index="3nzxsE" />
      <concept id="1219226236603" name="jetbrains.mps.lang.editor.structure.DrawBracketsStyleClassItem" flags="ln" index="3vyZuw" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
    </language>
  </registry>
  <node concept="24kQdi" id="XZLIaPMGOB">
    <ref role="1XX52x" to="bxmu:XZLIaPLIoZ" resolve="EditStatement" />
    <node concept="3EZMnI" id="XZLIaPMGOH" role="2wV5jI">
      <node concept="l2Vlx" id="XZLIaPMGOI" role="2iSdaV" />
      <node concept="3F0ifn" id="XZLIaPMGOD" role="3EZMnx">
        <property role="3F0ifm" value="edit" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="3F1sOY" id="XZLIaPMGPh" role="3EZMnx">
        <ref role="1NtTu8" to="bxmu:XZLIaPLIpf" resolve="object" />
      </node>
      <node concept="3F0ifn" id="XZLIaPN1sC" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sGOjD" resolve="colon" />
        <node concept="ljvvj" id="XZLIaPN1sM" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="1wn8NGzr5L6" role="3n$kyP">
            <node concept="3clFbS" id="1wn8NGzr5L7" role="2VODD2">
              <node concept="3clFbF" id="1wn8NGzr5Sg" role="3cqZAp">
                <node concept="3eOSWO" id="1wn8NGzrnLp" role="3clFbG">
                  <node concept="3cmrfG" id="1wn8NGzrnYR" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="2OqwBi" id="1wn8NGzrda8" role="3uHU7B">
                    <node concept="2OqwBi" id="1wn8NGzr8G1" role="2Oq$k0">
                      <node concept="2OqwBi" id="1wn8NGzr6aF" role="2Oq$k0">
                        <node concept="pncrf" id="1wn8NGzr5Sf" role="2Oq$k0" />
                        <node concept="3TrEf2" id="1wn8NGzr7Sm" role="2OqNvi">
                          <ref role="3Tt5mk" to="bxmu:XZLIaPN1sb" resolve="expression" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="1wn8NGzr9bl" role="2OqNvi">
                        <ref role="3TtcxE" to="bxmu:1wn8NGzhv9i" resolve="body" />
                      </node>
                    </node>
                    <node concept="34oBXx" id="1wn8NGzrjmm" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="XZLIaPN1sn" role="3EZMnx">
        <ref role="1NtTu8" to="bxmu:XZLIaPN1sb" resolve="expression" />
        <node concept="lj46D" id="XZLIaPN1sP" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1wn8NGzhv9H">
    <ref role="1XX52x" to="bxmu:XZLIaPLIAd" resolve="AbstractTypeEditing" />
    <node concept="3EZMnI" id="XZLIaPNcbA" role="2wV5jI">
      <node concept="3EZMnI" id="NehizIbIdF" role="3EZMnx">
        <node concept="2iRfu4" id="NehizIbIdG" role="2iSdaV" />
        <node concept="3F2HdR" id="3RQ8TRgEYh6" role="3EZMnx">
          <ref role="1NtTu8" to="bxmu:1wn8NGzhv9i" resolve="body" />
          <node concept="l2Vlx" id="3RQ8TRgEYh8" role="2czzBx" />
          <node concept="pj6Ft" id="3RQ8TRgEYhj" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3vyZuw" id="NehizIawCo" role="3F10Kt">
            <property role="VOm3f" value="true" />
            <node concept="3nzxsE" id="1wn8NGzrtDl" role="3n$kyP">
              <node concept="3clFbS" id="1wn8NGzrtDm" role="2VODD2">
                <node concept="3clFbF" id="1wn8NGzrtKv" role="3cqZAp">
                  <node concept="3eOSWO" id="1wn8NGzrGCq" role="3clFbG">
                    <node concept="2OqwBi" id="1wn8NGzry$C" role="3uHU7B">
                      <node concept="2OqwBi" id="1wn8NGzrtZM" role="2Oq$k0">
                        <node concept="pncrf" id="1wn8NGzrtKu" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="1wn8NGzruEe" role="2OqNvi">
                          <ref role="3TtcxE" to="bxmu:1wn8NGzhv9i" resolve="body" />
                        </node>
                      </node>
                      <node concept="34oBXx" id="1wn8NGzrCHR" role="2OqNvi" />
                    </node>
                    <node concept="3cmrfG" id="1wn8NGzrHlI" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="VLuvy" id="NehizIaxgB" role="3F10Kt">
            <property role="Vb096" value="gray" />
          </node>
        </node>
        <node concept="3F0ifn" id="NehizIbIe4" role="3EZMnx">
          <property role="3F0ifm" value="" />
        </node>
      </node>
      <node concept="3F0ifn" id="XZLIaPNcbK" role="3EZMnx" />
      <node concept="l2Vlx" id="XZLIaPNcbD" role="2iSdaV" />
    </node>
  </node>
</model>

