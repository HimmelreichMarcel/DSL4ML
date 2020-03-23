<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:425bc37b-29fa-4358-a34d-12368ff16db0(featuresEditing.plugin)">
  <persistence version="9" />
  <languages>
    <use id="f159adf4-3c93-40f9-9c5a-1f245a8697af" name="jetbrains.mps.lang.aspect" version="1" />
    <use id="696c1165-4a59-463b-bc5d-902caab85dd0" name="jetbrains.mps.make.facet" version="0" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="2" />
    <use id="c9d137c4-3259-44f8-80ff-33ab2b506ee4" name="jetbrains.mps.lang.util.order" version="0" />
    <use id="68950bdf-0ae2-4759-953a-925dbfe4a386" name="composition" version="0" />
    <use id="47f075a6-558e-4640-a606-7ce0236c8023" name="com.mbeddr.mpsutil.interpreter" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="z82i" ref="r:0a2eb21f-fd0b-49b5-8a4c-2ff8b9d2f6c8(featuresEditing.structure)" />
    <import index="4kwy" ref="r:657c9fde-2f36-4e61-ae17-20f02b8630ad(org.iets3.core.base.structure)" />
    <import index="essy" ref="r:d68f6ef3-d056-4719-85f3-ab26e4e8979e(requests.classes)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="gtvc" ref="r:4bf7b1d1-0c1c-488f-be68-966798766201(core.plugin)" implicit="true" />
    <import index="3pd3" ref="r:66e7b143-495b-4bea-a2cd-89e0b5b7496e(features.plugin)" implicit="true" />
  </imports>
  <registry>
    <language id="47f075a6-558e-4640-a606-7ce0236c8023" name="com.mbeddr.mpsutil.interpreter">
      <concept id="7019451652830285943" name="com.mbeddr.mpsutil.interpreter.structure.ApplicableLanguage" flags="ng" index="d$4Dx">
        <child id="7019451652831666945" name="language" index="cpn$n" />
      </concept>
      <concept id="2515196518060811313" name="com.mbeddr.mpsutil.interpreter.structure.DummyEvaluator" flags="ng" index="lHU7p" />
      <concept id="8615074351687299818" name="com.mbeddr.mpsutil.interpreter.structure.Interpreter" flags="ng" index="qq9qg">
        <property id="8426159527444241399" name="category" index="UYu25" />
        <child id="7019451652830298090" name="applicableLanguages" index="d$6nW" />
        <child id="8615074351687302157" name="evaluators" index="qq9xR" />
      </concept>
    </language>
    <language id="68950bdf-0ae2-4759-953a-925dbfe4a386" name="composition">
      <concept id="579560145578392133" name="composition.structure.ArtifactDescription" flags="ng" index="2N9Ry$">
        <property id="1116701740537584057" name="shortname" index="bGGJC" />
        <property id="5638729317953218057" name="path" index="NrALT" />
        <reference id="5638729317953801069" name="parent" index="NtO4t" />
        <child id="5207986057635000075" name="required" index="2SKLiM" />
      </concept>
      <concept id="5207986057634920217" name="composition.structure.NoDescendentRef" flags="ng" index="2SK$Mw">
        <reference id="2787767185542216413" name="ref" index="c2XAx" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="559557797393017698" name="jetbrains.mps.lang.smodel.structure.ModelReferenceExpression" flags="nn" index="BaHAS">
        <property id="559557797393021807" name="stereotype" index="BaGAP" />
        <property id="559557797393017702" name="name" index="BaHAW" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2N9Ry$" id="37IcDEOY027">
    <property role="bGGJC" value="featuresEditing" />
    <property role="TrG5h" value="FeatureConfig.featuresEditing" />
    <property role="NrALT" value="core.featuresEditing" />
    <ref role="NtO4t" to="gtvc:2$uHlqTuZ$u" resolve="FeatureConfig.core" />
    <node concept="2SK$Mw" id="5ZwvPF9$BnM" role="2SKLiM">
      <ref role="c2XAx" to="3pd3:2$uHlqTN9SB" resolve="FeatureConfig.features" />
    </node>
  </node>
  <node concept="qq9qg" id="SzR20WOP0c">
    <property role="TrG5h" value="FeatureEditingInterpreter" />
    <property role="UYu25" value="arithmetic" />
    <node concept="lHU7p" id="SzR20WPjcK" role="qq9xR" />
    <node concept="d$4Dx" id="SzR20WOP1R" role="d$6nW">
      <node concept="BaHAS" id="SzR20WOP1S" role="cpn$n">
        <property role="BaHAW" value="featuresEditing.structure" />
        <property role="BaGAP" value="" />
      </node>
    </node>
  </node>
</model>

