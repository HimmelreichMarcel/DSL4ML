<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:11104845-93e0-4180-a3fa-727a6772438c(style.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports />
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1186402211651" name="jetbrains.mps.lang.editor.structure.StyleSheet" flags="ng" index="V5hpn">
        <child id="1186402402630" name="styleClass" index="V601i" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
        <child id="1186403803051" name="query" index="VblUZ" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186404574412" name="jetbrains.mps.lang.editor.structure.BackgroundColorStyleClassItem" flags="ln" index="Veino" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186415722038" name="jetbrains.mps.lang.editor.structure.FontSizeStyleClassItem" flags="ln" index="VSNWy">
        <property id="1221209241505" name="value" index="1lJzqX" />
      </concept>
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="3383245079137382180" name="jetbrains.mps.lang.editor.structure.StyleClass" flags="ig" index="14StLt" />
      <concept id="1225456267680" name="jetbrains.mps.lang.editor.structure.RGBColor" flags="ng" index="1iSF2X">
        <property id="1225456424731" name="value" index="1iTho6" />
      </concept>
      <concept id="9122903797312246523" name="jetbrains.mps.lang.editor.structure.StyleReference" flags="ng" index="1wgc9g">
        <reference id="9122903797312247166" name="style" index="1wgcnl" />
      </concept>
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1950447826681509042" name="jetbrains.mps.lang.editor.structure.ApplyStyleClass" flags="lg" index="3Xmtl4">
        <child id="1950447826683828796" name="target" index="3XvnJa" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="V5hpn" id="4fA_w_szsJq">
    <property role="TrG5h" value="MachineLearningEvolves" />
    <node concept="14StLt" id="4fA_w_sztnY" role="V601i">
      <property role="TrG5h" value="code" />
      <node concept="Vb9p2" id="4fA_w_s_AYH" role="3F10Kt" />
      <node concept="VechU" id="38ogk7FQpK9" role="3F10Kt">
        <node concept="1iSF2X" id="38ogk7FQpKd" role="VblUZ">
          <property role="1iTho6" value="404040" />
        </node>
      </node>
    </node>
    <node concept="14StLt" id="3KhNVPMZP7N" role="V601i">
      <property role="TrG5h" value="comment_explaination" />
      <node concept="Vb9p2" id="3KhNVPMZP7O" role="3F10Kt">
        <property role="Vbekb" value="BOLD_ITALIC" />
      </node>
      <node concept="VechU" id="3KhNVPMZP7P" role="3F10Kt">
        <node concept="1iSF2X" id="3KhNVPMZP7Q" role="VblUZ">
          <property role="1iTho6" value="77BC42" />
        </node>
      </node>
      <node concept="Veino" id="3KhNVPMZP7R" role="3F10Kt">
        <node concept="1iSF2X" id="3KhNVPMZP7S" role="VblUZ">
          <property role="1iTho6" value="EAEAEA" />
        </node>
      </node>
    </node>
    <node concept="14StLt" id="3KhNVPMZCTJ" role="V601i">
      <property role="TrG5h" value="comment_question" />
      <node concept="Vb9p2" id="3KhNVPMZCUE" role="3F10Kt">
        <property role="Vbekb" value="BOLD_ITALIC" />
      </node>
      <node concept="VechU" id="3KhNVPMZCUO" role="3F10Kt">
        <node concept="1iSF2X" id="3KhNVPMZCV0" role="VblUZ">
          <property role="1iTho6" value="4384BA" />
        </node>
      </node>
      <node concept="Veino" id="3KhNVPMZCV7" role="3F10Kt">
        <node concept="1iSF2X" id="3KhNVPMZCV8" role="VblUZ">
          <property role="1iTho6" value="EAEAEA" />
        </node>
      </node>
    </node>
    <node concept="14StLt" id="4fA_w_sA651" role="V601i">
      <property role="TrG5h" value="dot" />
      <node concept="3Xmtl4" id="4fA_w_sA65G" role="3F10Kt">
        <node concept="1wgc9g" id="4fA_w_sA65O" role="3XvnJa">
          <ref role="1wgcnl" node="4fA_w_sztnY" resolve="code" />
        </node>
      </node>
      <node concept="11L4FC" id="6vzDuv9877_" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="11LMrY" id="6vzDuv9877H" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
    <node concept="14StLt" id="4fA_w_sDihM" role="V601i">
      <property role="TrG5h" value="section" />
      <node concept="Vb9p2" id="4fA_w_sDiio" role="3F10Kt">
        <property role="Vbekb" value="BOLD" />
      </node>
      <node concept="VechU" id="4fA_w_sDiiu" role="3F10Kt">
        <node concept="1iSF2X" id="4fA_w_sDiiy" role="VblUZ">
          <property role="1iTho6" value="000000" />
        </node>
      </node>
    </node>
    <node concept="14StLt" id="4fA_w_sAgAS" role="V601i">
      <property role="TrG5h" value="leftBracket" />
      <node concept="3Xmtl4" id="4fA_w_sAgBE" role="3F10Kt">
        <node concept="1wgc9g" id="4fA_w_sAgBF" role="3XvnJa">
          <ref role="1wgcnl" node="4fA_w_sztnY" resolve="code" />
        </node>
      </node>
      <node concept="11L4FC" id="7ez2ynXaG6O" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="11LMrY" id="7ez2ynXaG6B" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
    <node concept="14StLt" id="4fA_w_sAgCG" role="V601i">
      <property role="TrG5h" value="rightBracket" />
      <node concept="3Xmtl4" id="4fA_w_sAgDD" role="3F10Kt">
        <node concept="1wgc9g" id="4fA_w_sAgDL" role="3XvnJa">
          <ref role="1wgcnl" node="4fA_w_sztnY" resolve="code" />
        </node>
      </node>
      <node concept="11L4FC" id="4fA_w_sAgBG" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="11LMrY" id="4fA_w_sAgDW" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
    <node concept="14StLt" id="4fA_w_sGOjD" role="V601i">
      <property role="TrG5h" value="colon" />
      <node concept="3Xmtl4" id="4fA_w_sGOkj" role="3F10Kt">
        <node concept="1wgc9g" id="4fA_w_sGOkp" role="3XvnJa">
          <ref role="1wgcnl" node="4fA_w_sztnY" resolve="code" />
        </node>
      </node>
      <node concept="11L4FC" id="4fA_w_sGOkw" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
    <node concept="14StLt" id="4fA_w_sztl9" role="V601i">
      <property role="TrG5h" value="type" />
      <node concept="Vb9p2" id="38ogk7FP07A" role="3F10Kt">
        <property role="Vbekb" value="ITALIC" />
      </node>
      <node concept="VechU" id="38ogk7FP07G" role="3F10Kt">
        <node concept="1iSF2X" id="38ogk7FP07K" role="VblUZ">
          <property role="1iTho6" value="296E95" />
        </node>
      </node>
    </node>
    <node concept="14StLt" id="4fA_w_szsJt" role="V601i">
      <property role="TrG5h" value="variable" />
      <node concept="Vb9p2" id="38ogk7FQG9y" role="3F10Kt">
        <property role="Vbekb" value="PLAIN" />
      </node>
      <node concept="VechU" id="38ogk7FQG9C" role="3F10Kt">
        <node concept="1iSF2X" id="38ogk7FQG9G" role="VblUZ">
          <property role="1iTho6" value="B59B00" />
        </node>
      </node>
    </node>
    <node concept="14StLt" id="4fA_w_szsJz" role="V601i">
      <property role="TrG5h" value="item" />
      <node concept="VechU" id="1zQNQW5lVNa" role="3F10Kt">
        <node concept="1iSF2X" id="1zQNQW5lVNg" role="VblUZ">
          <property role="1iTho6" value="C46627" />
        </node>
      </node>
      <node concept="Veino" id="1zQNQW5ljKE" role="3F10Kt">
        <node concept="1iSF2X" id="1zQNQW5ljKI" role="VblUZ">
          <property role="1iTho6" value="EAEAEA" />
        </node>
      </node>
    </node>
    <node concept="14StLt" id="4fA_w_szsJF" role="V601i">
      <property role="TrG5h" value="column" />
      <node concept="Vb9p2" id="7ez2ynXaC47" role="3F10Kt" />
      <node concept="VechU" id="7ez2ynXapYE" role="3F10Kt">
        <node concept="1iSF2X" id="7ez2ynXapYH" role="VblUZ">
          <property role="1iTho6" value="2E915C" />
        </node>
      </node>
    </node>
    <node concept="14StLt" id="4fA_w_sHaIY" role="V601i">
      <property role="TrG5h" value="option" />
      <node concept="Vb9p2" id="4fA_w_sHaJT" role="3F10Kt">
        <property role="Vbekb" value="PLAIN" />
      </node>
      <node concept="VechU" id="4fA_w_sHsCH" role="3F10Kt">
        <property role="Vb096" value="DARK_MAGENTA" />
      </node>
    </node>
    <node concept="14StLt" id="55_guBAQ6Rv" role="V601i">
      <property role="TrG5h" value="optionalKey" />
      <node concept="3Xmtl4" id="55_guBAQ6Sm" role="3F10Kt">
        <node concept="1wgc9g" id="55_guBAQ6Ss" role="3XvnJa">
          <ref role="1wgcnl" node="4fA_w_sztnY" resolve="code" />
        </node>
      </node>
    </node>
    <node concept="14StLt" id="4fA_w_sALb_" role="V601i">
      <property role="TrG5h" value="subtle" />
      <node concept="VSNWy" id="4fA_w_sALcE" role="3F10Kt">
        <property role="1lJzqX" value="11" />
      </node>
    </node>
  </node>
</model>

