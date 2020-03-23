<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5fd0266d-bab7-43c2-bd80-cb88518e2825(base.plugin)">
  <persistence version="9" />
  <languages>
    <use id="8a945d2c-3408-48fb-a78b-e59c40503f85" name="languageComposition" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="k0g5" ref="r:6c54cb75-32a4-4a99-ade4-01f3a699d55a(rootfile.plugin)" />
  </imports>
  <registry>
    <language id="8a945d2c-3408-48fb-a78b-e59c40503f85" name="languageComposition">
      <concept id="579560145578392133" name="languageComposition.structure.ArtifactDescription" flags="ng" index="2N9Ry$">
        <property id="1116701740537584057" name="alias" index="bGGJC" />
        <property id="579560145578889833" name="childrenType" index="2NfL28" />
        <property id="5638729317953218057" name="path" index="NrALT" />
        <reference id="5638729317953801069" name="parent" index="NtO4t" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2N9Ry$" id="4T0MB1XeJ7G">
    <property role="bGGJC" value="featuresetEditing" />
    <property role="TrG5h" value="FeatureConfig.featuresetEditing" />
    <property role="NrALT" value="core.featuresetEditing" />
    <property role="2NfL28" value="or" />
    <ref role="NtO4t" to="k0g5:4x6uVBKEZ4T" resolve="FeatureConfig.core" />
  </node>
</model>

