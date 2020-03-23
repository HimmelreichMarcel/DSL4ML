<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e25594a0-0eb7-4016-8d7f-7b977bf6672b(nlp.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
    <use id="9d69e719-78c8-4286-90db-fb19c107d049" name="com.mbeddr.mpsutil.grammarcells" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="wg1f" ref="r:11104845-93e0-4180-a3fa-727a6772438c(style.editor)" />
    <import index="7z3h" ref="642f71f8-327a-425b-84f9-44ad58786d27/f:project#9d69e719-78c8-4286-90db-fb19c107d049(jetbrains.mps.lang.project.modules/module.com.mbeddr.mpsutil.grammarcells@project_stub)" />
    <import index="quht" ref="r:4f57b4a5-85c6-419f-a63f-0c58c2d57483(nlp.structure)" implicit="true" />
    <import index="26nm" ref="r:8b60c4ae-4d5b-4ec4-9b3b-33519b8a2909(core.editor)" implicit="true" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
    <import index="tzka" ref="r:75b17839-7caf-494b-abe8-c5beb79eba86(nlp.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1075375595203" name="jetbrains.mps.lang.editor.structure.CellModel_Error" flags="sg" stub="8104358048506729356" index="1xolST">
        <property id="1075375595204" name="text" index="1xolSY" />
      </concept>
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
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1225898583838" name="jetbrains.mps.lang.editor.structure.ReadOnlyModelAccessor" flags="ng" index="1HfYo3">
        <child id="1225898971709" name="getter" index="1Hhtcw" />
      </concept>
      <concept id="1225900081164" name="jetbrains.mps.lang.editor.structure.CellModel_ReadOnlyModelAccessor" flags="sg" stub="3708815482283559694" index="1HlG4h">
        <child id="1225900141900" name="modelAccessor" index="1HlULh" />
      </concept>
      <concept id="1088612959204" name="jetbrains.mps.lang.editor.structure.CellModel_Alternation" flags="sg" stub="8104358048506729361" index="1QoScp">
        <property id="1088613081987" name="vertical" index="1QpmdY" />
        <child id="1145918517974" name="alternationCondition" index="3e4ffs" />
        <child id="1088612958265" name="ifTrueCellModel" index="1QoS34" />
        <child id="1088612973955" name="ifFalseCellModel" index="1QoVPY" />
      </concept>
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
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
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="9d69e719-78c8-4286-90db-fb19c107d049" name="com.mbeddr.mpsutil.grammarcells">
      <concept id="5083944728298846680" name="com.mbeddr.mpsutil.grammarcells.structure.OptionalCell" flags="ng" index="_tjkj">
        <child id="5083944728298846681" name="option" index="_tjki" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="6870613620390542976" name="jetbrains.mps.lang.smodel.structure.ConceptAliasOperation" flags="ng" index="3n3YKJ" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="zjcGs$IBq8">
    <ref role="1XX52x" to="quht:zjcGs$IBpG" resolve="ExtractFromLanguageProcessing" />
    <node concept="3EZMnI" id="zjcGs$IBqa" role="2wV5jI">
      <node concept="3F0ifn" id="zjcGs$K01X" role="3EZMnx">
        <property role="3F0ifm" value="NLP" />
      </node>
      <node concept="_tjkj" id="1ELd1MFZEUp" role="3EZMnx">
        <node concept="3EZMnI" id="1ELd1MFZETB" role="_tjki">
          <node concept="2iRfu4" id="1ELd1MFZETC" role="2iSdaV" />
          <node concept="3F0ifn" id="zjcGs$K02b" role="3EZMnx">
            <property role="3F0ifm" value="using" />
            <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
          </node>
          <node concept="3F1sOY" id="1wn8NGzsmUt" role="3EZMnx">
            <ref role="1NtTu8" to="quht:1wn8NGzsir2" resolve="languageProcessor" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="zjcGs$K023" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sGOjD" resolve="colon" />
        <node concept="ljvvj" id="4kZuEukWFp3" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="1ELd1MGcj4z" role="3EZMnx">
        <ref role="PMmxG" to="26nm:37IcDEOZgCT" resolve="RevealType" />
        <node concept="lj46D" id="4kZuEukY6EA" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="1ELd1MFZEV7" role="3EZMnx">
        <property role="3F0ifm" value="from" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
        <node concept="lj46D" id="4kZuEukXP6N" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="1wn8NGzsnp0" role="3EZMnx">
        <ref role="1NtTu8" to="quht:1wn8NGzsnoH" resolve="stringFeature" />
      </node>
      <node concept="3F0ifn" id="1ELd1MFZESb" role="3EZMnx">
        <property role="3F0ifm" value="extract" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="3F1sOY" id="1wn8NGzsp1f" role="3EZMnx">
        <ref role="1NtTu8" to="quht:1wn8NGzsoZ7" resolve="extractionTarget" />
      </node>
      <node concept="3F0ifn" id="1ELd1MFZEVR" role="3EZMnx">
        <property role="3F0ifm" value="as" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="3F1sOY" id="1ELd1MFZEWj" role="3EZMnx">
        <ref role="1NtTu8" to="quht:1ELd1MFZF1x" resolve="extractionType" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sHaIY" resolve="option" />
      </node>
      <node concept="l2Vlx" id="4kZuEukVWp$" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1wn8NGzsp0f">
    <property role="3GE5qa" value="extractionTargets" />
    <ref role="1XX52x" to="quht:1wn8NGzsoZN" resolve="WordFeatures" />
    <node concept="3EZMnI" id="1wn8NGzsp0h" role="2wV5jI">
      <node concept="3F0ifn" id="1wn8NGzsp0o" role="3EZMnx">
        <property role="3F0ifm" value="word-features" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sHaIY" resolve="option" />
      </node>
      <node concept="2iRfu4" id="1wn8NGzsp0k" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1wn8NGzsy1N">
    <property role="3GE5qa" value="extractionTargets" />
    <ref role="1XX52x" to="quht:1wn8NGzsy1n" resolve="PartOfSpeech" />
    <node concept="3EZMnI" id="1wn8NGzsy1P" role="2wV5jI">
      <node concept="3F0ifn" id="1wn8NGzsy1W" role="3EZMnx">
        <property role="3F0ifm" value="part-of-speech" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sHaIY" resolve="option" />
      </node>
      <node concept="2iRfu4" id="1wn8NGzsy1S" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1wn8NGzsQUb">
    <property role="3GE5qa" value="extractionTargets" />
    <ref role="1XX52x" to="quht:1wn8NGzsQTL" resolve="NamedEntities" />
    <node concept="3EZMnI" id="1wn8NGzsQUd" role="2wV5jI">
      <node concept="3F0ifn" id="1wn8NGzsQUk" role="3EZMnx">
        <property role="3F0ifm" value="named-entities" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sHaIY" resolve="option" />
      </node>
      <node concept="2iRfu4" id="1wn8NGzsQUg" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1ELd1MGdo6D">
    <property role="3GE5qa" value="extractionTypes" />
    <ref role="1XX52x" to="quht:1ELd1MFZF1w" resolve="AbstractExtractionType" />
    <node concept="3EZMnI" id="1ELd1MGdo6F" role="2wV5jI">
      <node concept="1QoScp" id="6Y$bjgGPdDC" role="3EZMnx">
        <property role="1QpmdY" value="true" />
        <node concept="pkWqt" id="6Y$bjgGPdDF" role="3e4ffs">
          <node concept="3clFbS" id="6Y$bjgGPdDH" role="2VODD2">
            <node concept="3clFbF" id="6Y$bjgGPdZp" role="3cqZAp">
              <node concept="1Wc70l" id="6Y$bjgGPdZr" role="3clFbG">
                <node concept="3fqX7Q" id="6Y$bjgGPdZs" role="3uHU7w">
                  <node concept="2OqwBi" id="6Y$bjgGPdZt" role="3fr31v">
                    <node concept="2OqwBi" id="6Y$bjgGPdZu" role="2Oq$k0">
                      <node concept="pncrf" id="6Y$bjgGPdZv" role="2Oq$k0" />
                      <node concept="2yIwOk" id="6Y$bjgGPdZw" role="2OqNvi" />
                    </node>
                    <node concept="liA8E" id="6Y$bjgGPdZx" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isAbstract():boolean" resolve="isAbstract" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="6Y$bjgGPdZy" role="3uHU7B">
                  <node concept="pncrf" id="6Y$bjgGPdZz" role="2Oq$k0" />
                  <node concept="3x8VRR" id="6Y$bjgGPdZ$" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1HlG4h" id="1ELd1MGdo6M" role="1QoS34">
          <ref role="1k5W1q" to="wg1f:4fA_w_sHaIY" resolve="option" />
          <node concept="1HfYo3" id="1ELd1MGdo6O" role="1HlULh">
            <node concept="3TQlhw" id="1ELd1MGdo6Q" role="1Hhtcw">
              <node concept="3clFbS" id="1ELd1MGdo6S" role="2VODD2">
                <node concept="3clFbF" id="1ELd1MGdofn" role="3cqZAp">
                  <node concept="2OqwBi" id="1ELd1MGdosa" role="3clFbG">
                    <node concept="pncrf" id="1ELd1MGdofm" role="2Oq$k0" />
                    <node concept="2qgKlT" id="1ELd1MGdoVI" role="2OqNvi">
                      <ref role="37wK5l" to="tzka:1ELd1MGdo4P" resolve="getName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1xolST" id="6Y$bjgGPguH" role="1QoVPY">
          <property role="1xolSY" value="&lt;no extraction type&gt;" />
        </node>
      </node>
      <node concept="2iRfu4" id="1ELd1MGdo6I" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1ELd1MGdqte">
    <property role="3GE5qa" value="extractionTypes" />
    <ref role="1XX52x" to="quht:1wn8NGzsy2w" resolve="NGrams" />
    <node concept="3EZMnI" id="1ELd1MGdq$Z" role="2wV5jI">
      <node concept="3F0ifn" id="3RvSrMfGkhw" role="3EZMnx">
        <property role="3F0ifm" value="n-gram" />
      </node>
      <node concept="3F0ifn" id="1ELd1MGdqYc" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sAgAS" resolve="leftBracket" />
      </node>
      <node concept="3F0ifn" id="1ELd1MGdrn8" role="3EZMnx">
        <property role="3F0ifm" value="n" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="3F0ifn" id="1ELd1MGds8N" role="3EZMnx">
        <property role="3F0ifm" value="=" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
        <node concept="11L4FC" id="1ELd1MGdslj" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="1ELd1MGdslo" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="1ELd1MGdsIb" role="3EZMnx">
        <ref role="1NtTu8" to="quht:1wn8NGzsy2z" resolve="n" />
      </node>
      <node concept="3F0ifn" id="1ELd1MGdt7h" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sAgCG" resolve="rightBracket" />
      </node>
      <node concept="_tjkj" id="1ELd1MGdq_8" role="3EZMnx">
        <node concept="3EZMnI" id="1ELd1MGdq_9" role="_tjki">
          <node concept="3F0ifn" id="1ELd1MGdq_a" role="3EZMnx">
            <property role="3F0ifm" value="using" />
            <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
          </node>
          <node concept="3F1sOY" id="1ELd1MGdq_b" role="3EZMnx">
            <ref role="1k5W1q" to="wg1f:4fA_w_sHaIY" resolve="option" />
            <ref role="1NtTu8" to="quht:4kZuEukVzQm" resolve="measure" />
          </node>
          <node concept="2iRfu4" id="1ELd1MGdq_c" role="2iSdaV" />
          <node concept="VPM3Z" id="1ELd1MGdq_d" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="1ELd1MGdq_e" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4kZuEukVaUu">
    <property role="3GE5qa" value="representationMeasure" />
    <ref role="1XX52x" to="quht:4fA_w_st0g6" resolve="AbstractRepresentationMeasure" />
    <node concept="1HlG4h" id="4kZuEukVaUw" role="2wV5jI">
      <node concept="1HfYo3" id="4kZuEukVaUy" role="1HlULh">
        <node concept="3TQlhw" id="4kZuEukVaU$" role="1Hhtcw">
          <node concept="3clFbS" id="4kZuEukVaUA" role="2VODD2">
            <node concept="3clFbF" id="4kZuEukVb5L" role="3cqZAp">
              <node concept="2OqwBi" id="4kZuEukVcI8" role="3clFbG">
                <node concept="2OqwBi" id="4kZuEukVbi$" role="2Oq$k0">
                  <node concept="pncrf" id="4kZuEukVb5K" role="2Oq$k0" />
                  <node concept="2yIwOk" id="4kZuEukVced" role="2OqNvi" />
                </node>
                <node concept="3n3YKJ" id="4kZuEukVdu2" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7qBCLwWeuCm">
    <property role="3GE5qa" value="extractionTargets" />
    <ref role="1XX52x" to="quht:4kZuEukYqea" resolve="WordlistEntries" />
    <node concept="3EZMnI" id="7qBCLwWeuCo" role="2wV5jI">
      <node concept="3F0ifn" id="6Y$bjgGK67Y" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sAgAS" resolve="leftBracket" />
      </node>
      <node concept="3F0ifn" id="7qBCLwWeuCv" role="3EZMnx">
        <property role="3F0ifm" value="wordlist-entries" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sHaIY" resolve="option" />
      </node>
      <node concept="3F0ifn" id="7qBCLwWeuC_" role="3EZMnx">
        <property role="3F0ifm" value="from" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sztnY" resolve="code" />
      </node>
      <node concept="3F1sOY" id="7qBCLwWfnEp" role="3EZMnx">
        <ref role="1NtTu8" to="quht:7qBCLwWffaK" resolve="wordlist" />
      </node>
      <node concept="3F0ifn" id="6Y$bjgGK68a" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="wg1f:4fA_w_sAgCG" resolve="rightBracket" />
      </node>
      <node concept="2iRfu4" id="7qBCLwWeuCr" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6Y$bjgGPyva">
    <property role="3GE5qa" value="extractionTargets" />
    <ref role="1XX52x" to="quht:1wn8NGzsoZ6" resolve="AbstractExtractionTarget" />
    <node concept="1xolST" id="6Y$bjgGPyvc" role="2wV5jI">
      <property role="1xolSY" value="&lt;no extraction target&gt;" />
    </node>
  </node>
</model>

