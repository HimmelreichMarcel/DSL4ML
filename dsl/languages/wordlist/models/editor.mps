<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0a05fc99-488c-45da-b4b3-1da99b7106c1(wordlist.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
    <use id="9d69e719-78c8-4286-90db-fb19c107d049" name="com.mbeddr.mpsutil.grammarcells" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="veum" ref="r:dd7856aa-5828-444c-bc87-c88a89a8bb82(wordlist.structure)" implicit="true" />
    <import index="lkam" ref="r:b100cccc-1af1-49c1-9733-1312e9abf9e1(print.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="xb2e" ref="r:d2c15c70-47a9-430a-840d-2701a52b993d(wordlist.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
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
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
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
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="24kQdi" id="XZLIaPij8T">
    <property role="3GE5qa" value="phraselist" />
    <ref role="1XX52x" to="veum:1UULepNY25E" resolve="PhraselistType" />
    <node concept="3F0ifn" id="XZLIaPij8V" role="2wV5jI">
      <property role="3F0ifm" value="phraselist" />
    </node>
  </node>
  <node concept="24kQdi" id="XZLIaPK4j4">
    <property role="3GE5qa" value="wordlist" />
    <ref role="1XX52x" to="veum:XZLIaPK4gy" resolve="WordlistOutput" />
    <node concept="3EZMnI" id="XZLIaPK4j6" role="2wV5jI">
      <node concept="3F0ifn" id="XZLIaPK4jg" role="3EZMnx">
        <property role="3F0ifm" value="wordlist" />
      </node>
      <node concept="1HlG4h" id="XZLIaPK4ka" role="3EZMnx">
        <node concept="1HfYo3" id="XZLIaPK4kc" role="1HlULh">
          <node concept="3TQlhw" id="XZLIaPK4ke" role="1Hhtcw">
            <node concept="3clFbS" id="XZLIaPK4kg" role="2VODD2">
              <node concept="3cpWs6" id="XZLIaPK4sO" role="3cqZAp">
                <node concept="2OqwBi" id="XZLIaPK5De" role="3cqZAk">
                  <node concept="1PxgMI" id="7YOY7Y$QRfG" role="2Oq$k0">
                    <node concept="chp4Y" id="7YOY7Y$QRr0" role="3oSUPX">
                      <ref role="cht4Q" to="veum:4fA_w_sqrL8" resolve="AbstractWordlistType" />
                    </node>
                    <node concept="2OqwBi" id="XZLIaPK6_D" role="1m5AlR">
                      <node concept="pncrf" id="XZLIaPK4HG" role="2Oq$k0" />
                      <node concept="3TrEf2" id="4IazLL4DYUE" role="2OqNvi">
                        <ref role="3Tt5mk" to="lkam:MS2eiU9Z$f" resolve="copy" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrcHB" id="4x_I0npVksS" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="XZLIaPK7CI" role="3EZMnx">
        <property role="3F0ifm" value="is:" />
        <node concept="ljvvj" id="XZLIaPK8jb" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1HlG4h" id="XZLIaPK8JH" role="3EZMnx">
        <node concept="1HfYo3" id="XZLIaPK8JJ" role="1HlULh">
          <node concept="3TQlhw" id="XZLIaPK8JL" role="1Hhtcw">
            <node concept="3clFbS" id="XZLIaPK8JN" role="2VODD2">
              <node concept="3clFbF" id="XZLIaPK8Y_" role="3cqZAp">
                <node concept="2OqwBi" id="XZLIaPLbG1" role="3clFbG">
                  <node concept="pncrf" id="XZLIaPLbsn" role="2Oq$k0" />
                  <node concept="2qgKlT" id="XZLIaPLca1" role="2OqNvi">
                    <ref role="37wK5l" to="xb2e:XZLIaPKddS" resolve="getListAsString" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lj46D" id="XZLIaPK8Yv" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="XZLIaPK4j9" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="I1pY2rFk5c">
    <property role="3GE5qa" value="wordlist.editing" />
    <ref role="1XX52x" to="veum:7bbTq02cipP" resolve="AddTermStatement" />
    <node concept="3EZMnI" id="I1pY2rFk5e" role="2wV5jI">
      <node concept="3F0ifn" id="I1pY2rFk5n" role="3EZMnx">
        <property role="3F0ifm" value="add" />
      </node>
      <node concept="1HlG4h" id="7YOY7Y_1YP4" role="3EZMnx">
        <node concept="1HfYo3" id="7YOY7Y_1YP6" role="1HlULh">
          <node concept="3TQlhw" id="7YOY7Y_1YP8" role="1Hhtcw">
            <node concept="3clFbS" id="7YOY7Y_1YPa" role="2VODD2">
              <node concept="3clFbF" id="7YOY7Y_1YXH" role="3cqZAp">
                <node concept="3K4zz7" id="7YOY7Y_2h8w" role="3clFbG">
                  <node concept="Xl_RD" id="7YOY7Y_2hyY" role="3K4E3e">
                    <property role="Xl_RC" value="terms" />
                  </node>
                  <node concept="Xl_RD" id="7YOY7Y_2i6g" role="3K4GZi">
                    <property role="Xl_RC" value="term" />
                  </node>
                  <node concept="3eOSWO" id="7YOY7Y_2gdM" role="3K4Cdx">
                    <node concept="3cmrfG" id="7YOY7Y_2gpX" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2OqwBi" id="7YOY7Y_24K5" role="3uHU7B">
                      <node concept="2OqwBi" id="7YOY7Y_1ZfY" role="2Oq$k0">
                        <node concept="pncrf" id="7YOY7Y_1YXG" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="7YOY7Y_205Q" role="2OqNvi">
                          <ref role="3TtcxE" to="veum:10Ig25P8HlJ" resolve="terms" />
                        </node>
                      </node>
                      <node concept="34oBXx" id="7YOY7Y_2bsm" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F2HdR" id="7YOY7Y_1YOK" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="veum:10Ig25P8HlJ" resolve="terms" />
        <node concept="2iRfu4" id="7YOY7Y_1YOM" role="2czzBx" />
      </node>
      <node concept="2iRfu4" id="I1pY2rFk5h" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="I1pY2rFyB0">
    <property role="3GE5qa" value="wordlist.editing" />
    <ref role="1XX52x" to="veum:7bbTq02cipN" resolve="DeleteBySelectionStatement" />
    <node concept="3EZMnI" id="I1pY2rFyB2" role="2wV5jI">
      <node concept="3F0ifn" id="I1pY2rFyB9" role="3EZMnx">
        <property role="3F0ifm" value="delete" />
      </node>
      <node concept="3F0ifn" id="I1pY2rFyBf" role="3EZMnx">
        <property role="3F0ifm" value="phrases" />
      </node>
      <node concept="3F1sOY" id="I1pY2rFyBn" role="3EZMnx">
        <ref role="1NtTu8" to="veum:I1pY2rFyA_" resolve="selection" />
      </node>
      <node concept="2iRfu4" id="I1pY2rFyB5" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="I1pY2rPO4R">
    <property role="3GE5qa" value="wordlist.editing" />
    <ref role="1XX52x" to="veum:7bbTq02cipO" resolve="DeleteTermsByConditionStatement" />
    <node concept="3EZMnI" id="I1pY2rPO4T" role="2wV5jI">
      <node concept="3F0ifn" id="I1pY2rPO50" role="3EZMnx">
        <property role="3F0ifm" value="delete" />
      </node>
      <node concept="3F0ifn" id="I1pY2rPO56" role="3EZMnx">
        <property role="3F0ifm" value="phrases" />
      </node>
      <node concept="3F0ifn" id="I1pY2rPO5e" role="3EZMnx">
        <property role="3F0ifm" value="where" />
      </node>
      <node concept="3F0ifn" id="I1pY2rRlJo" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="I1pY2rPO5q" role="3EZMnx">
        <ref role="1NtTu8" to="veum:I1pY2rPO5o" resolve="condition" />
      </node>
      <node concept="2iRfu4" id="I1pY2rPO4W" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="I1pY2rQ8tV">
    <property role="3GE5qa" value="wordlist.condition" />
    <ref role="1XX52x" to="veum:I1pY2rQ8qL" resolve="TermConstant" />
    <node concept="3F0ifn" id="I1pY2rQ8tX" role="2wV5jI">
      <property role="3F0ifm" value="term" />
    </node>
  </node>
  <node concept="24kQdi" id="7WePDBhfDHg">
    <property role="3GE5qa" value="wordlist.condition" />
    <ref role="1XX52x" to="veum:7WePDBhfDGO" resolve="TermDependentExpression" />
    <node concept="3F1sOY" id="7WePDBhfDHi" role="2wV5jI">
      <ref role="1NtTu8" to="veum:7WePDBhfDGP" resolve="expression" />
    </node>
  </node>
  <node concept="24kQdi" id="7YOY7Y$P4bF">
    <property role="3GE5qa" value="wordlist.initialization" />
    <ref role="1XX52x" to="veum:7YOY7Y$OWZW" resolve="AsNewListInitialization" />
    <node concept="3EZMnI" id="7YOY7Y$P4bH" role="2wV5jI">
      <node concept="3F0ifn" id="7YOY7Y$P4bO" role="3EZMnx">
        <property role="3F0ifm" value="as new list" />
      </node>
      <node concept="3F0ifn" id="2aoocMLb8uk" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="pkWqt" id="2aoocMLb8vD" role="pqm2j">
          <node concept="3clFbS" id="2aoocMLb8vE" role="2VODD2">
            <node concept="3clFbF" id="2aoocMLb8AN" role="3cqZAp">
              <node concept="2OqwBi" id="2aoocMLbbYn" role="3clFbG">
                <node concept="2OqwBi" id="2aoocMLb8Q6" role="2Oq$k0">
                  <node concept="pncrf" id="2aoocMLb8AM" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="2aoocMLb9wy" role="2OqNvi">
                    <ref role="3TtcxE" to="veum:7YOY7Y$P4co" resolve="entries" />
                  </node>
                </node>
                <node concept="3GX2aA" id="2aoocMLbgwu" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F2HdR" id="7YOY7Y$P4ct" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="veum:7YOY7Y$P4co" resolve="entries" />
        <node concept="2iRfu4" id="7YOY7Y$P4cv" role="2czzBx" />
      </node>
      <node concept="2iRfu4" id="7YOY7Y$P4bK" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7YOY7Y_c0LL">
    <property role="3GE5qa" value="wordlist.editing.sort" />
    <ref role="1XX52x" to="veum:7YOY7Y_56U_" resolve="SortTermsStatement" />
    <node concept="3EZMnI" id="7YOY7Y_c0LN" role="2wV5jI">
      <node concept="3F0ifn" id="7YOY7Y_c0LU" role="3EZMnx">
        <property role="3F0ifm" value="sort terms by" />
      </node>
      <node concept="3F0A7n" id="7YOY7Y_c0M0" role="3EZMnx">
        <ref role="1NtTu8" to="veum:7YOY7Y_c0Lm" resolve="criterion" />
      </node>
      <node concept="2iRfu4" id="7YOY7Y_c0LQ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4fxn4ASronJ">
    <property role="3GE5qa" value="wordlist.initialization" />
    <ref role="1XX52x" to="veum:4fxn4ASrnlb" resolve="FromFeatureInitialization" />
    <node concept="3EZMnI" id="4fxn4ASronO" role="2wV5jI">
      <node concept="3F0ifn" id="4fxn4ASronQ" role="3EZMnx">
        <property role="3F0ifm" value="from feature" />
      </node>
      <node concept="3F1sOY" id="4fxn4ASronY" role="3EZMnx">
        <ref role="1NtTu8" to="veum:4fxn4ASronk" resolve="grabber" />
      </node>
      <node concept="2iRfu4" id="4fxn4ASronR" role="2iSdaV" />
    </node>
  </node>
</model>

