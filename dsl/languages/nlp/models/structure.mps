<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4f57b4a5-85c6-419f-a63f-0c58c2d57483(nlp.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="5" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="55s9" ref="r:349f01e8-2ba4-49f7-be71-679bbbf4b80d(features.structure)" />
    <import index="veum" ref="r:dd7856aa-5828-444c-bc87-c88a89a8bb82(wordlist.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ" />
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="zjcGs$IBpG">
    <property role="EcuMT" value="635907803285452396" />
    <property role="TrG5h" value="ExtractFromLanguageProcessing" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1ELd1MG1vJL" role="PzmwI">
      <ref role="PrY4T" to="5frd:37IcDEOYvRZ" resolve="IRevealType" />
    </node>
    <node concept="PrWs8" id="zjcGs$IBpH" role="PzmwI">
      <ref role="PrY4T" to="55s9:zjcGs$E7Fy" resolve="IExtractFeature" />
    </node>
    <node concept="1TJgyj" id="1wn8NGzsir2" role="1TKVEi">
      <property role="IQ2ns" value="1735894918279276226" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="languageProcessor" />
      <ref role="20lvS9" to="5frd:pBV22SMBK$" resolve="IProvideTypeObject" />
    </node>
    <node concept="1TJgyj" id="1wn8NGzsnoH" role="1TKVEi">
      <property role="IQ2ns" value="1735894918279296557" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="stringFeature" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="55s9:4O6zKM3EyR8" resolve="FeatureRef" />
    </node>
    <node concept="1TJgyj" id="1wn8NGzsoZ7" role="1TKVEi">
      <property role="IQ2ns" value="1735894918279303111" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="extractionTarget" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="1wn8NGzsoZ6" resolve="AbstractExtractionTarget" />
    </node>
    <node concept="1TJgyj" id="1ELd1MFZF1x" role="1TKVEi">
      <property role="IQ2ns" value="1923375813613236321" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="extractionType" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="1ELd1MFZF1w" resolve="AbstractExtractionType" />
    </node>
  </node>
  <node concept="1TIwiD" id="1wn8NGzsoZ6">
    <property role="EcuMT" value="1735894918279303110" />
    <property role="TrG5h" value="AbstractExtractionTarget" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="extractionTargets" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="1wn8NGzsoZN">
    <property role="EcuMT" value="1735894918279303155" />
    <property role="3GE5qa" value="extractionTargets" />
    <property role="TrG5h" value="WordFeatures" />
    <property role="34LRSv" value="word-features" />
    <ref role="1TJDcQ" node="1wn8NGzsoZ6" resolve="AbstractExtractionTarget" />
  </node>
  <node concept="1TIwiD" id="1wn8NGzsy1n">
    <property role="EcuMT" value="1735894918279340119" />
    <property role="3GE5qa" value="extractionTargets" />
    <property role="TrG5h" value="PartOfSpeech" />
    <property role="34LRSv" value="part-of-speech" />
    <ref role="1TJDcQ" node="1wn8NGzsoZ6" resolve="AbstractExtractionTarget" />
  </node>
  <node concept="1TIwiD" id="1wn8NGzsy2w">
    <property role="EcuMT" value="1735894918279340192" />
    <property role="3GE5qa" value="extractionTypes" />
    <property role="TrG5h" value="NGrams" />
    <property role="34LRSv" value="n-grams" />
    <ref role="1TJDcQ" node="1ELd1MFZF1w" resolve="AbstractExtractionType" />
    <node concept="1TJgyi" id="1wn8NGzsy2z" role="1TKVEl">
      <property role="IQ2nx" value="1735894918279340195" />
      <property role="TrG5h" value="n" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="PrWs8" id="4kZuEukVVpJ" role="PzmwI">
      <ref role="PrY4T" node="4kZuEukVzQl" resolve="IRequireRepresentationMeasure" />
    </node>
  </node>
  <node concept="1TIwiD" id="1wn8NGzsQTL">
    <property role="EcuMT" value="1735894918279425649" />
    <property role="3GE5qa" value="extractionTargets" />
    <property role="TrG5h" value="NamedEntities" />
    <property role="34LRSv" value="named-entities" />
    <ref role="1TJDcQ" node="1wn8NGzsoZ6" resolve="AbstractExtractionTarget" />
  </node>
  <node concept="1TIwiD" id="1ELd1MFZF1w">
    <property role="EcuMT" value="1923375813613236320" />
    <property role="TrG5h" value="AbstractExtractionType" />
    <property role="3GE5qa" value="extractionTypes" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="1ELd1MGdtGf">
    <property role="EcuMT" value="1923375813616851727" />
    <property role="3GE5qa" value="extractionTypes" />
    <property role="TrG5h" value="BagOfWords" />
    <property role="34LRSv" value="bag-of-words" />
    <ref role="1TJDcQ" node="1ELd1MFZF1w" resolve="AbstractExtractionType" />
    <node concept="PrWs8" id="4kZuEukVLAP" role="PzmwI">
      <ref role="PrY4T" node="4kZuEukVzQl" resolve="IRequireRepresentationMeasure" />
    </node>
  </node>
  <node concept="1TIwiD" id="4kZuEukUsmF">
    <property role="EcuMT" value="4989841772326274475" />
    <property role="3GE5qa" value="extractionTypes" />
    <property role="TrG5h" value="ExtractionTargetList" />
    <property role="34LRSv" value="target-list" />
    <ref role="1TJDcQ" node="1ELd1MFZF1w" resolve="AbstractExtractionType" />
  </node>
  <node concept="1TIwiD" id="4kZuEukUt$e">
    <property role="EcuMT" value="4989841772326279438" />
    <property role="3GE5qa" value="extractionTypes" />
    <property role="TrG5h" value="ExtractionTargetCount" />
    <property role="34LRSv" value="target-count" />
    <ref role="1TJDcQ" node="1ELd1MFZF1w" resolve="AbstractExtractionType" />
  </node>
  <node concept="1TIwiD" id="4kZuEukUtJS">
    <property role="EcuMT" value="4989841772326280184" />
    <property role="3GE5qa" value="extractionTypes" />
    <property role="TrG5h" value="ExtractionTargetPresence" />
    <property role="34LRSv" value="target-presence" />
    <ref role="1TJDcQ" node="1ELd1MFZF1w" resolve="AbstractExtractionType" />
  </node>
  <node concept="1TIwiD" id="4fA_w_st0g6">
    <property role="EcuMT" value="4892763012134601734" />
    <property role="3GE5qa" value="representationMeasure" />
    <property role="TrG5h" value="AbstractRepresentationMeasure" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="4fA_w_st0h5">
    <property role="EcuMT" value="4892763012134601797" />
    <property role="3GE5qa" value="representationMeasure" />
    <property role="TrG5h" value="TFIDFRepresentationMeasure" />
    <property role="34LRSv" value="tf-idf" />
    <ref role="1TJDcQ" node="4fA_w_st0g6" resolve="AbstractRepresentationMeasure" />
  </node>
  <node concept="1TIwiD" id="4fA_w_st0gA">
    <property role="EcuMT" value="4892763012134601766" />
    <property role="3GE5qa" value="representationMeasure" />
    <property role="TrG5h" value="TermFrequencyAbsoluteRepresentationMeasure" />
    <property role="34LRSv" value="term-frequency" />
    <ref role="1TJDcQ" node="4fA_w_st0g6" resolve="AbstractRepresentationMeasure" />
  </node>
  <node concept="1TIwiD" id="1wn8NGzsoZk">
    <property role="EcuMT" value="1735894918279303124" />
    <property role="3GE5qa" value="representationMeasure" />
    <property role="TrG5h" value="TermFrequencyRelativeRepresentationMeasure" />
    <property role="34LRSv" value="term-frequency" />
    <ref role="1TJDcQ" node="4fA_w_st0g6" resolve="AbstractRepresentationMeasure" />
  </node>
  <node concept="1TIwiD" id="4fA_w_st0g7">
    <property role="EcuMT" value="4892763012134601735" />
    <property role="3GE5qa" value="representationMeasure" />
    <property role="TrG5h" value="TermPresenceRepresentationMeasure" />
    <property role="34LRSv" value="term-presence" />
    <ref role="1TJDcQ" node="4fA_w_st0g6" resolve="AbstractRepresentationMeasure" />
  </node>
  <node concept="PlHQZ" id="4kZuEukVzQl">
    <property role="EcuMT" value="4989841772326567317" />
    <property role="3GE5qa" value="representationMeasure" />
    <property role="TrG5h" value="IRequireRepresentationMeasure" />
    <node concept="1TJgyj" id="4kZuEukVzQm" role="1TKVEi">
      <property role="IQ2ns" value="4989841772326567318" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="measure" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="4fA_w_st0g6" resolve="AbstractRepresentationMeasure" />
    </node>
  </node>
  <node concept="1TIwiD" id="4kZuEukYqea">
    <property role="EcuMT" value="4989841772327314314" />
    <property role="3GE5qa" value="extractionTargets" />
    <property role="TrG5h" value="WordlistEntries" />
    <property role="34LRSv" value="wordlist-entries" />
    <ref role="1TJDcQ" node="1wn8NGzsoZ6" resolve="AbstractExtractionTarget" />
    <node concept="1TJgyj" id="7qBCLwWffaK" role="1TKVEi">
      <property role="IQ2ns" value="8549981742071345840" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="wordlist" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" to="5frd:pBV22SMBK$" resolve="IProvideTypeObject" />
    </node>
  </node>
</model>

