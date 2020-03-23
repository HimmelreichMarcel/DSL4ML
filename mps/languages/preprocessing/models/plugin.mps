<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c188bc95-b6a8-450d-a276-0c0201884ac7(preprocessing.plugin)">
  <persistence version="9" />
  <languages>
    <use id="f159adf4-3c93-40f9-9c5a-1f245a8697af" name="jetbrains.mps.lang.aspect" version="2" />
    <use id="696c1165-4a59-463b-bc5d-902caab85dd0" name="jetbrains.mps.make.facet" version="0" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="2" />
    <use id="c9d137c4-3259-44f8-80ff-33ab2b506ee4" name="jetbrains.mps.lang.util.order" version="0" />
    <use id="8a945d2c-3408-48fb-a78b-e59c40503f85" name="languageComposition" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="k0g5" ref="r:6c54cb75-32a4-4a99-ade4-01f3a699d55a(rootfile.plugin)" implicit="true" />
  </imports>
  <registry>
    <language id="8a945d2c-3408-48fb-a78b-e59c40503f85" name="languageComposition">
      <concept id="579560145578392133" name="languageComposition.structure.ArtifactDescription" flags="ng" index="2N9Ry$">
        <property id="1116701740537584057" name="alias" index="bGGJC" />
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
  <node concept="2N9Ry$" id="5uKjkG1hQ25">
    <property role="bGGJC" value="preprocessing" />
    <property role="TrG5h" value="FeatureConfig.preprocessing" />
    <property role="NrALT" value="core.preprocessing" />
    <ref role="NtO4t" to="k0g5:4x6uVBKEZ4T" resolve="FeatureConfig.core" />
  </node>
</model>

