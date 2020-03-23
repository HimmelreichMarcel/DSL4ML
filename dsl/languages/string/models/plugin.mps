<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:baac8c62-7516-4254-b4cc-770133908c4c(string.plugin)">
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
    <import index="tpbt" ref="r:65aadb5c-2f1e-4a2a-b988-9153ab74365c(string.structure)" />
    <import index="db51" ref="r:425bc37b-29fa-4358-a34d-12368ff16db0(featuresEditing.plugin)" implicit="true" />
  </imports>
  <registry>
    <language id="68950bdf-0ae2-4759-953a-925dbfe4a386" name="composition">
      <concept id="579560145578392133" name="composition.structure.ArtifactDescription" flags="ng" index="2N9Ry$">
        <property id="1116701740537584057" name="shortname" index="bGGJC" />
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
  <node concept="2N9Ry$" id="5j$SRt4fd7S">
    <property role="bGGJC" value="string" />
    <property role="TrG5h" value="FeatureConfig.string" />
    <property role="NrALT" value="core.featuresEditing.string" />
    <ref role="NtO4t" to="db51:37IcDEOY027" resolve="FeatureConfig.featuresEditing" />
  </node>
</model>

