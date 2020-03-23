<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a8c3c265-26a1-43d8-8db0-69d8045e1ea9(featureModel.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="8a945d2c-3408-48fb-a78b-e59c40503f85" name="featureModel" version="0" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
  </languages>
  <imports />
  <registry>
    <language id="8a945d2c-3408-48fb-a78b-e59c40503f85" name="featureModel">
      <concept id="579560145578392168" name="featureModel.structure.NodeRelation" flags="ng" index="2N9Ry9">
        <property id="579560145578392169" name="relation" index="2N9Ry8" />
        <property id="579560145578392171" name="target" index="2N9Rya" />
      </concept>
      <concept id="579560145578392133" name="featureModel.structure.FeatureGraphNode" flags="ng" index="2N9Ry$">
        <property id="579560145578889831" name="parent" index="2NfL26" />
        <child id="579560145578392227" name="lines" index="2N9Rx2" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2N9Ry$" id="wb0I6VbbwX">
    <property role="TrG5h" value="myName" />
    <property role="2NfL26" value="sdf" />
    <node concept="2N9Ry9" id="wb0I6VbbwY" role="2N9Rx2">
      <property role="2N9Ry8" value="test" />
      <property role="2N9Rya" value="relation" />
    </node>
  </node>
  <node concept="2N9Ry$" id="wb0I6Vdinh">
    <property role="TrG5h" value="mle.fm.sandbox" />
    <property role="2NfL26" value="mle.core" />
  </node>
</model>

