<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fcc3f7f5-5c9f-471f-951b-6aea89d0131e(testBranch.plugin)">
  <persistence version="9" />
  <languages>
    <use id="8a945d2c-3408-48fb-a78b-e59c40503f85" name="languageComposition" version="0" />
  </languages>
  <imports>
    <import index="k0g5" ref="r:6c54cb75-32a4-4a99-ade4-01f3a699d55a(rootfile.plugin)" implicit="true" />
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
  <node concept="2N9Ry$" id="4x6uVBKxIQ9">
    <property role="bGGJC" value="testFeature" />
    <property role="TrG5h" value="FeatureConfig.testFeature" />
    <property role="NrALT" value="core.testFeature" />
    <property role="2NfL28" value="xor" />
    <ref role="NtO4t" to="k0g5:4x6uVBKEZ4T" resolve="FeatureConfig.core" />
  </node>
</model>

