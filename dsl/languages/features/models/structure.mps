<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:349f01e8-2ba4-49f7-be71-679bbbf4b80d(features.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="5" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="jqrd" ref="r:a86b5aa2-977c-4dd4-975b-865365d5871c(types.structure)" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" />
    <import index="z82i" ref="r:0a2eb21f-fd0b-49b5-8a4c-2ff8b9d2f6c8(featuresEditing.structure)" />
    <import index="reag" ref="r:ade3e00b-044f-42e0-846c-a1a8f349d15b(join.structure)" />
    <import index="veum" ref="r:dd7856aa-5828-444c-bc87-c88a89a8bb82(wordlist.structure)" />
    <import index="4kwy" ref="r:657c9fde-2f36-4e61-ae17-20f02b8630ad(org.iets3.core.base.structure)" />
    <import index="w3db" ref="r:372863d1-da2c-4d51-9ce5-ef15e0220a9a(split.structure)" />
    <import index="quht" ref="r:4f57b4a5-85c6-419f-a63f-0c58c2d57483(nlp.structure)" />
    <import index="bxmu" ref="r:2caa4bf2-77af-43e0-8e72-8a12a8978a06(edit.structure)" />
    <import index="lkam" ref="r:b100cccc-1af1-49c1-9733-1312e9abf9e1(print.structure)" />
    <import index="u7mz" ref="r:c1927c62-1175-4830-af3a-957eac7fe707(store.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="ckmh" ref="r:a0b09593-26bd-4d75-98f1-657e49dea4f1(create.structure)" implicit="true" />
    <import index="5qo5" ref="r:6d93ddb1-b0b0-4eee-8079-51303666672a(org.iets3.core.expr.simpleTypes.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1082978164219" name="jetbrains.mps.lang.structure.structure.EnumerationDataTypeDeclaration" flags="ng" index="AxPO7">
        <property id="1197591154882" name="memberIdentifierPolicy" index="3lZH7k" />
        <reference id="1083171729157" name="memberDataType" index="M4eZT" />
        <child id="1083172003582" name="member" index="M5hS2" />
      </concept>
      <concept id="1083171877298" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ig" index="M4N5e">
        <property id="1083923523172" name="externalValue" index="1uS6qo" />
        <property id="1083923523171" name="internalValue" index="1uS6qv" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ">
        <child id="1169127546356" name="extends" index="PrDN$" />
      </concept>
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
  <node concept="1TIwiD" id="7OzZ9xI8jbt">
    <property role="EcuMT" value="9017328610538762973" />
    <property role="TrG5h" value="FeaturesetType" />
    <property role="34LRSv" value="featureset" />
    <property role="3GE5qa" value="featureset" />
    <ref role="1TJDcQ" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
    <node concept="1TJgyi" id="2sVpZP$Em_h" role="1TKVEl">
      <property role="IQ2nx" value="2826967529118329169" />
      <property role="TrG5h" value="numRows" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="PrWs8" id="1UULepO1Vun" role="PzmwI">
      <ref role="PrY4T" to="5frd:1UULepO1t7_" resolve="ISynchWithServer" />
    </node>
    <node concept="PrWs8" id="4x_I0nqffEy" role="PzmwI">
      <ref role="PrY4T" to="5frd:XZLIaPVfvV" resolve="IContainItems" />
    </node>
    <node concept="PrWs8" id="LOMnt$3f7O" role="PzmwI">
      <ref role="PrY4T" to="reag:LOMnt$1m84" resolve="ICanBeJoined" />
    </node>
    <node concept="PrWs8" id="4IazLL3W7Ec" role="PzmwI">
      <ref role="PrY4T" to="ckmh:4Z2dWAVu5W3" resolve="ICanBeLoaded" />
    </node>
    <node concept="PrWs8" id="4IazLL4AZln" role="PzmwI">
      <ref role="PrY4T" to="lkam:4TFMgV46qb6" resolve="ICanBePrinted" />
    </node>
    <node concept="PrWs8" id="4IazLL4f7lm" role="PzmwI">
      <ref role="PrY4T" to="bxmu:XZLIaPLIAc" resolve="ICanBeEdited" />
    </node>
    <node concept="PrWs8" id="2aoocMLn34x" role="PzmwI">
      <ref role="PrY4T" to="w3db:crj2MTJa9l" resolve="ICanBeSplit" />
    </node>
    <node concept="PrWs8" id="2aoocMLn34N" role="PzmwI">
      <ref role="PrY4T" to="u7mz:2aoocMLhbXK" resolve="ICanBeStored" />
    </node>
    <node concept="1TJgyj" id="10zQN_$XlA1" role="1TKVEi">
      <property role="IQ2ns" value="1163014168345139585" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="index" />
      <ref role="20lvS9" node="46b_jc7VwtB" resolve="FeatureType" />
    </node>
    <node concept="1TJgyj" id="6uf7$58OAE7" role="1TKVEi">
      <property role="IQ2ns" value="7462216373319658119" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="truth" />
      <ref role="20lvS9" node="46b_jc7VwtB" resolve="FeatureType" />
    </node>
  </node>
  <node concept="1TIwiD" id="4O6zKM3EyR8">
    <property role="EcuMT" value="5550280874692062664" />
    <property role="TrG5h" value="FeatureRef" />
    <property role="3GE5qa" value="feature" />
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="5frd:4x_I0npP4pK" resolve="ItemRef" />
  </node>
  <node concept="1TIwiD" id="4d9YXW2n_Ac">
    <property role="EcuMT" value="4848683409077066124" />
    <property role="3GE5qa" value="simple" />
    <property role="TrG5h" value="IntegerlistFeature" />
    <ref role="1TJDcQ" to="hm2y:6sdnDbSlaok" resolve="Type" />
  </node>
  <node concept="1TIwiD" id="209684qNLaU">
    <property role="EcuMT" value="2308403226783716026" />
    <property role="3GE5qa" value="simple" />
    <property role="TrG5h" value="StringlistFeature" />
    <ref role="1TJDcQ" to="hm2y:6sdnDbSlaok" resolve="Type" />
  </node>
  <node concept="1TIwiD" id="74vMKqQrVnB">
    <property role="EcuMT" value="8151457080254903783" />
    <property role="3GE5qa" value="featureset" />
    <property role="TrG5h" value="FeaturesetOutput" />
    <ref role="1TJDcQ" to="lkam:4Oj5iGcvoJy" resolve="ObjectOutput" />
    <node concept="1TJgyj" id="XZLIaPnCPB" role="1TKVEi">
      <property role="IQ2ns" value="1116829909618953575" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="featureset" />
      <ref role="20lvS9" node="7OzZ9xI8jbt" resolve="FeaturesetType" />
    </node>
    <node concept="1TJgyi" id="7ietByWNa2_" role="1TKVEl">
      <property role="IQ2nx" value="8398780616028233893" />
      <property role="TrG5h" value="dimensions" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="57k_vxmTpVN">
    <property role="EcuMT" value="5896502705977138931" />
    <property role="3GE5qa" value="featureset" />
    <property role="TrG5h" value="FeaturesetLoader" />
    <ref role="1TJDcQ" to="ckmh:4Z2dWAVyuhq" resolve="AbstractLoaderExpression" />
  </node>
  <node concept="1TIwiD" id="6Quy7yTSu7D">
    <property role="EcuMT" value="7898900848550470121" />
    <property role="3GE5qa" value="feature" />
    <property role="TrG5h" value="FeatureSelection" />
    <ref role="1TJDcQ" to="5frd:6Quy7yTNPCI" resolve="ItemSelection" />
  </node>
  <node concept="1TIwiD" id="46b_jc7VwtB">
    <property role="EcuMT" value="4723032680637007719" />
    <property role="3GE5qa" value="feature" />
    <property role="TrG5h" value="FeatureType" />
    <ref role="1TJDcQ" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
    <node concept="1TJgyi" id="46b_jc7Vx80" role="1TKVEl">
      <property role="IQ2nx" value="4723032680637010432" />
      <property role="TrG5h" value="id" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="4fxn4ASuO0W" role="1TKVEl">
      <property role="IQ2nx" value="4891292141998522428" />
      <property role="TrG5h" value="isEncodedString" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="6Y$bjgGStc4" role="1TKVEl">
      <property role="IQ2nx" value="8044604536505094916" />
      <property role="TrG5h" value="isIndex" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="46b_jc7Vx81" role="1TKVEl">
      <property role="IQ2nx" value="4723032680637010433" />
      <property role="TrG5h" value="scale" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="46b_jc7Vx82" role="1TKVEl">
      <property role="IQ2nx" value="4723032680637010434" />
      <property role="TrG5h" value="emptyCells" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyj" id="46b_jc7VwXv" role="1TKVEi">
      <property role="IQ2ns" value="4723032680637009759" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="hm2y:6sdnDbSlaok" resolve="Type" />
    </node>
    <node concept="1TJgyj" id="4fxn4ASvriB" role="1TKVEi">
      <property role="IQ2ns" value="4891292141998683303" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="encoding" />
      <ref role="20lvS9" node="4fxn4ASuUjE" resolve="LabelEncoding" />
    </node>
    <node concept="PrWs8" id="4x_I0npP3Y8" role="PzmwI">
      <ref role="PrY4T" to="5frd:6Quy7yTNPCP" resolve="IItemType" />
    </node>
  </node>
  <node concept="1TIwiD" id="7EI7Z1foz0p">
    <property role="EcuMT" value="8840038235559309337" />
    <property role="3GE5qa" value="simple" />
    <property role="TrG5h" value="FloatlistFeature" />
    <ref role="1TJDcQ" to="hm2y:6sdnDbSlaok" resolve="Type" />
  </node>
  <node concept="1TIwiD" id="XZLIaPLIEG">
    <property role="EcuMT" value="1116829909625793196" />
    <property role="3GE5qa" value="featureset" />
    <property role="TrG5h" value="FeaturesetEditing" />
    <ref role="1TJDcQ" to="bxmu:XZLIaPLIAd" resolve="AbstractTypeEditing" />
  </node>
  <node concept="1TIwiD" id="4fA_w_svabf">
    <property role="EcuMT" value="4892763012135166671" />
    <property role="TrG5h" value="FeatureVectorType" />
    <property role="3GE5qa" value="featurevector" />
    <ref role="1TJDcQ" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
    <node concept="1TJgyj" id="4fA_w_svabg" role="1TKVEi">
      <property role="IQ2ns" value="4892763012135166672" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="type" />
      <ref role="20lvS9" to="hm2y:6sdnDbSlaok" resolve="Type" />
    </node>
    <node concept="1TJgyi" id="4fA_w_svabi" role="1TKVEl">
      <property role="IQ2nx" value="4892763012135166674" />
      <property role="TrG5h" value="dimensions" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="yCGLuIzMj9">
    <property role="EcuMT" value="623945462685050057" />
    <property role="3GE5qa" value="editing" />
    <property role="TrG5h" value="AbstractFeaturesetEditingStatement" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="bxmu:7WePDBhhPDV" resolve="AbstractEditingStatment" />
  </node>
  <node concept="1TIwiD" id="fN3qU6G$wA">
    <property role="EcuMT" value="284586244689774630" />
    <property role="3GE5qa" value="editing.features" />
    <property role="TrG5h" value="AddFeatureStatement" />
    <property role="34LRSv" value="add feature" />
    <ref role="1TJDcQ" node="yCGLuIzMj9" resolve="AbstractFeaturesetEditingStatement" />
    <node concept="PrWs8" id="58ojJcwnJqX" role="PzmwI">
      <ref role="PrY4T" to="4kwy:cJpacq5T0O" resolve="IValidNamedConcept" />
    </node>
    <node concept="1TJgyj" id="fN3qU6G$yn" role="1TKVEi">
      <property role="IQ2ns" value="284586244689774743" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="initialization" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="zjcGs$E7Fy" resolve="IExtractFeature" />
    </node>
  </node>
  <node concept="1TIwiD" id="5j1RGb7afpO">
    <property role="EcuMT" value="6107407497837475444" />
    <property role="3GE5qa" value="editing.instances.condense" />
    <property role="TrG5h" value="CondenseInstancesStatement" />
    <property role="34LRSv" value="condense instances" />
    <ref role="1TJDcQ" node="yCGLuIzMj9" resolve="AbstractFeaturesetEditingStatement" />
    <node concept="1TJgyj" id="55_guBAV8Mq" role="1TKVEi">
      <property role="IQ2ns" value="5865166562577386650" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="method" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="55_guBAV8Mm" resolve="AbstractCondenseMethod" />
    </node>
  </node>
  <node concept="1TIwiD" id="3RQ8TRgFzZU">
    <property role="EcuMT" value="4464795241302343674" />
    <property role="TrG5h" value="DeleteFeaturesStatement" />
    <property role="34LRSv" value="delete feature" />
    <property role="3GE5qa" value="editing.features" />
    <ref role="1TJDcQ" node="yCGLuIzMj9" resolve="AbstractFeaturesetEditingStatement" />
    <node concept="1TJgyj" id="3RQ8TRgFRdF" role="1TKVEi">
      <property role="IQ2ns" value="4464795241302422379" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="features" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="6Quy7yTSu7D" resolve="FeatureSelection" />
    </node>
  </node>
  <node concept="1TIwiD" id="1o0JaC2yjQQ">
    <property role="EcuMT" value="1585474507207425462" />
    <property role="3GE5qa" value="editing.instances" />
    <property role="TrG5h" value="DeleteInstancesStatement" />
    <property role="34LRSv" value="delete instances" />
    <ref role="1TJDcQ" node="yCGLuIzMj9" resolve="AbstractFeaturesetEditingStatement" />
    <node concept="1TJgyj" id="1o0JaC2_8h2" role="1TKVEi">
      <property role="IQ2ns" value="1585474507208164418" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="condition" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="5frd:1o0JaC2_8i8" resolve="ItemDependentCondition" />
    </node>
    <node concept="PrWs8" id="1o0JaC2zxYh" role="PzmwI">
      <ref role="PrY4T" to="5frd:1o0JaC2yjRg" resolve="ICannotInferTypeChanges" />
    </node>
  </node>
  <node concept="1TIwiD" id="5TCgtqdzv5q">
    <property role="EcuMT" value="6802759626896830810" />
    <property role="3GE5qa" value="editing.features" />
    <property role="TrG5h" value="ReplaceFeatureStatement" />
    <property role="34LRSv" value="replace feature" />
    <ref role="1TJDcQ" node="yCGLuIzMj9" resolve="AbstractFeaturesetEditingStatement" />
    <node concept="1TJgyj" id="5TCgtqdzv5t" role="1TKVEi">
      <property role="IQ2ns" value="6802759626896830813" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="initialization" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="zjcGs$E7Fy" resolve="IExtractFeature" />
    </node>
    <node concept="1TJgyj" id="yCGLuIzPh8" role="1TKVEi">
      <property role="IQ2ns" value="623945462685062216" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="feature" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="4O6zKM3EyR8" resolve="FeatureRef" />
    </node>
  </node>
  <node concept="1TIwiD" id="7bbTq028G91">
    <property role="EcuMT" value="8271957615989408321" />
    <property role="3GE5qa" value="editing" />
    <property role="TrG5h" value="SetIndexStatement" />
    <property role="34LRSv" value="set index" />
    <ref role="1TJDcQ" node="yCGLuIzMj9" resolve="AbstractFeaturesetEditingStatement" />
    <node concept="1TJgyj" id="7bbTq028G92" role="1TKVEi">
      <property role="IQ2ns" value="8271957615989408322" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="feature" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="4O6zKM3EyR8" resolve="FeatureRef" />
    </node>
  </node>
  <node concept="1TIwiD" id="7bbTq028G89">
    <property role="EcuMT" value="8271957615989408265" />
    <property role="3GE5qa" value="editing" />
    <property role="TrG5h" value="SetTruthStatement" />
    <property role="34LRSv" value="set truth" />
    <ref role="1TJDcQ" node="yCGLuIzMj9" resolve="AbstractFeaturesetEditingStatement" />
    <node concept="1TJgyj" id="7bbTq028G8a" role="1TKVEi">
      <property role="IQ2ns" value="8271957615989408266" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="feature" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="4O6zKM3EyR8" resolve="FeatureRef" />
    </node>
  </node>
  <node concept="1TIwiD" id="55_guBAV8Mm">
    <property role="EcuMT" value="5865166562577386646" />
    <property role="3GE5qa" value="editing.instances.condense.method" />
    <property role="TrG5h" value="AbstractCondenseMethod" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="55_guBAV8Mn">
    <property role="EcuMT" value="5865166562577386647" />
    <property role="3GE5qa" value="editing.instances.condense.method" />
    <property role="TrG5h" value="CondenseOnCondition" />
    <property role="34LRSv" value="condition" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" node="55_guBAV8Mm" resolve="AbstractCondenseMethod" />
    <node concept="1TJgyj" id="55_guBAV8Mw" role="1TKVEi">
      <property role="IQ2ns" value="5865166562577386656" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="condition" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="5frd:1o0JaC2_8i8" resolve="ItemDependentCondition" />
    </node>
  </node>
  <node concept="1TIwiD" id="55_guBAV8Mo">
    <property role="EcuMT" value="5865166562577386648" />
    <property role="3GE5qa" value="editing.instances.condense.method" />
    <property role="TrG5h" value="CondenseOnFeatures" />
    <property role="34LRSv" value="feature-values" />
    <ref role="1TJDcQ" node="55_guBAV8Mm" resolve="AbstractCondenseMethod" />
    <node concept="1TJgyj" id="55_guBAVEwq" role="1TKVEi">
      <property role="IQ2ns" value="5865166562577524762" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="features" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="4O6zKM3EyR8" resolve="FeatureRef" />
    </node>
  </node>
  <node concept="1TIwiD" id="zjcGs$C_5z">
    <property role="EcuMT" value="635907803283870051" />
    <property role="3GE5qa" value="editing.instances.sort" />
    <property role="TrG5h" value="SortInstancesStatement" />
    <property role="34LRSv" value="sort instances" />
    <ref role="1TJDcQ" node="yCGLuIzMj9" resolve="AbstractFeaturesetEditingStatement" />
    <node concept="1TJgyj" id="zjcGs$C_8v" role="1TKVEi">
      <property role="IQ2ns" value="635907803283870239" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="criterion" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="zjcGs$C_8u" resolve="AbstractSortCriterion" />
    </node>
  </node>
  <node concept="1TIwiD" id="zjcGs$C_8u">
    <property role="EcuMT" value="635907803283870238" />
    <property role="3GE5qa" value="editing.instances.sort" />
    <property role="TrG5h" value="AbstractSortCriterion" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="zjcGs$C_8_">
    <property role="EcuMT" value="635907803283870245" />
    <property role="3GE5qa" value="editing.instances.sort" />
    <property role="TrG5h" value="SortByIndex" />
    <property role="34LRSv" value="by index" />
    <ref role="1TJDcQ" node="zjcGs$C_8u" resolve="AbstractSortCriterion" />
  </node>
  <node concept="1TIwiD" id="zjcGs$C_8A">
    <property role="EcuMT" value="635907803283870246" />
    <property role="3GE5qa" value="editing.instances.sort" />
    <property role="TrG5h" value="SortByFeature" />
    <property role="34LRSv" value="by feature" />
    <ref role="1TJDcQ" node="zjcGs$C_8u" resolve="AbstractSortCriterion" />
    <node concept="1TJgyj" id="zjcGs$CJN7" role="1TKVEi">
      <property role="IQ2ns" value="635907803283913927" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="feature" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="4O6zKM3EyR8" resolve="FeatureRef" />
    </node>
  </node>
  <node concept="1TIwiD" id="zjcGs$CJLq">
    <property role="EcuMT" value="635907803283913818" />
    <property role="3GE5qa" value="editing.instances.sort" />
    <property role="TrG5h" value="SortAtRandom" />
    <property role="34LRSv" value="at random" />
    <ref role="1TJDcQ" node="zjcGs$C_8u" resolve="AbstractSortCriterion" />
  </node>
  <node concept="1TIwiD" id="zjcGs$E7Fx">
    <property role="EcuMT" value="635907803284273889" />
    <property role="3GE5qa" value="feature.extraction" />
    <property role="TrG5h" value="ExtractFromExpression" />
    <ref role="1TJDcQ" to="5frd:fN3qU6G$xK" resolve="ItemDependentExpression" />
    <node concept="PrWs8" id="zjcGs$E7Fz" role="PzmwI">
      <ref role="PrY4T" node="zjcGs$E7Fy" resolve="IExtractFeature" />
    </node>
  </node>
  <node concept="PlHQZ" id="zjcGs$E7Fy">
    <property role="EcuMT" value="635907803284273890" />
    <property role="TrG5h" value="IExtractFeature" />
    <property role="3GE5qa" value="feature.extraction" />
    <node concept="PrWs8" id="1ELd1MG2lMm" role="PrDN$">
      <ref role="PrY4T" to="5frd:37IcDEOYvRZ" resolve="IRevealType" />
    </node>
  </node>
  <node concept="1TIwiD" id="7$05xKP9tUS">
    <property role="EcuMT" value="8718993188995849912" />
    <property role="3GE5qa" value="editing.features" />
    <property role="TrG5h" value="GroupFeaturesStatement" />
    <property role="34LRSv" value="group features" />
    <ref role="1TJDcQ" node="yCGLuIzMj9" resolve="AbstractFeaturesetEditingStatement" />
    <node concept="1TJgyj" id="7$05xKP9tUT" role="1TKVEi">
      <property role="IQ2ns" value="8718993188995849913" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="features" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="6Quy7yTSu7D" resolve="FeatureSelection" />
    </node>
    <node concept="PrWs8" id="7$05xKP9tYH" role="PzmwI">
      <ref role="PrY4T" to="4kwy:cJpacq5T0O" resolve="IValidNamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="5QpNmQnSi1G">
    <property role="EcuMT" value="6744647787547271276" />
    <property role="3GE5qa" value="editing.features.preprocess" />
    <property role="TrG5h" value="PreprocessFeature" />
    <property role="34LRSv" value="preprocess feature" />
    <ref role="1TJDcQ" node="yCGLuIzMj9" resolve="AbstractFeaturesetEditingStatement" />
    <node concept="1TJgyj" id="5QpNmQnSi6j" role="1TKVEi">
      <property role="IQ2ns" value="6744647787547271571" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="feature" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="4O6zKM3EyR8" resolve="FeatureRef" />
    </node>
    <node concept="1TJgyj" id="5QpNmQnSi7q" role="1TKVEi">
      <property role="IQ2ns" value="6744647787547271642" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="action" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="5QpNmQnSi4F" resolve="AbstractPreprocessAction" />
    </node>
  </node>
  <node concept="1TIwiD" id="5QpNmQnSi4F">
    <property role="EcuMT" value="6744647787547271467" />
    <property role="3GE5qa" value="editing.features.preprocess.action" />
    <property role="TrG5h" value="AbstractPreprocessAction" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4fxn4ASvCeA" role="PzmwI">
      <ref role="PrY4T" to="5frd:LOMntzS55L" resolve="IMayAlterServer" />
    </node>
  </node>
  <node concept="1TIwiD" id="5QpNmQnSi7L">
    <property role="EcuMT" value="6744647787547271665" />
    <property role="3GE5qa" value="editing.features.preprocess.action" />
    <property role="TrG5h" value="EncodeLabelsAction" />
    <property role="34LRSv" value="encode labels" />
    <ref role="1TJDcQ" node="5QpNmQnSi4F" resolve="AbstractPreprocessAction" />
    <node concept="1TJgyi" id="5QpNmQnSoah" role="1TKVEl">
      <property role="IQ2nx" value="6744647787547296401" />
      <property role="TrG5h" value="multi_column" />
      <ref role="AX2Wp" node="1pYj3$cR9Ry" resolve="mulit_column" />
    </node>
  </node>
  <node concept="AxPO7" id="1pYj3$cR9Ry">
    <property role="3GE5qa" value="editing.features.preprocess.action" />
    <property role="TrG5h" value="mulit_column" />
    <ref role="M4eZT" to="tpck:fKAQMTB" resolve="boolean" />
    <node concept="M4N5e" id="1pYj3$cR9Rz" role="M5hS2">
      <property role="1uS6qo" value="single column" />
      <property role="1uS6qv" value="false" />
    </node>
    <node concept="M4N5e" id="1pYj3$cR9R$" role="M5hS2">
      <property role="1uS6qo" value="column per value" />
      <property role="1uS6qv" value="true" />
    </node>
  </node>
  <node concept="1TIwiD" id="5QpNmQnTqsW">
    <property role="EcuMT" value="6744647787547567932" />
    <property role="3GE5qa" value="editing.features.preprocess.action" />
    <property role="TrG5h" value="ReplaceOutliersAction" />
    <property role="34LRSv" value="replace outliers" />
    <ref role="1TJDcQ" node="5QpNmQnSi4F" resolve="AbstractPreprocessAction" />
    <node concept="1TJgyi" id="6kn8py6gPCW" role="1TKVEl">
      <property role="IQ2nx" value="7284327861266373180" />
      <property role="TrG5h" value="replacement" />
      <ref role="AX2Wp" node="2qzUg86Rhg6" resolve="number_replacement" />
    </node>
  </node>
  <node concept="1TIwiD" id="6kn8py6eu4_">
    <property role="EcuMT" value="7284327861265752357" />
    <property role="3GE5qa" value="editing.features.preprocess.action" />
    <property role="TrG5h" value="StandardizeAction" />
    <property role="34LRSv" value="standardize" />
    <ref role="1TJDcQ" node="5QpNmQnSi4F" resolve="AbstractPreprocessAction" />
    <node concept="1TJgyj" id="6kn8py6euUI" role="1TKVEi">
      <property role="IQ2ns" value="7284327861265755822" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="groupedBy" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="4O6zKM3EyR8" resolve="FeatureRef" />
    </node>
  </node>
  <node concept="1TIwiD" id="n35csPgFna">
    <property role="EcuMT" value="415198436472829386" />
    <property role="3GE5qa" value="editing.features" />
    <property role="TrG5h" value="ExpandFeatureVectorStatement" />
    <property role="34LRSv" value="expand feature-vector" />
    <ref role="1TJDcQ" node="yCGLuIzMj9" resolve="AbstractFeaturesetEditingStatement" />
    <node concept="1TJgyj" id="n35csPgQz0" role="1TKVEi">
      <property role="IQ2ns" value="415198436472875200" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="feature" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="4O6zKM3EyR8" resolve="FeatureRef" />
    </node>
  </node>
  <node concept="1TIwiD" id="2qzUg86P2kw">
    <property role="EcuMT" value="2784325189558871328" />
    <property role="3GE5qa" value="editing.features.preprocess.action.fill" />
    <property role="TrG5h" value="FillEmptyStringFeatureCellsAction" />
    <property role="34LRSv" value="fill empty cells" />
    <ref role="1TJDcQ" node="5QpNmQnSi4F" resolve="AbstractPreprocessAction" />
    <node concept="1TJgyj" id="2qzUg86PfN6" role="1TKVEi">
      <property role="IQ2ns" value="2784325189558926534" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="value" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="5qo5:4rZeNQ6OYR8" resolve="StringLiteral" />
    </node>
  </node>
  <node concept="1TIwiD" id="2qzUg86Rget">
    <property role="EcuMT" value="2784325189559452573" />
    <property role="3GE5qa" value="editing.features.preprocess.action.fill" />
    <property role="TrG5h" value="FillEmptyNumberFeatureCellsAction" />
    <property role="34LRSv" value="fill empty cells" />
    <ref role="1TJDcQ" node="5QpNmQnSi4F" resolve="AbstractPreprocessAction" />
    <node concept="1TJgyi" id="2qzUg86RhWf" role="1TKVEl">
      <property role="IQ2nx" value="2784325189559459599" />
      <property role="TrG5h" value="replacement" />
      <ref role="AX2Wp" node="2qzUg86Rhg6" resolve="number_replacement" />
    </node>
    <node concept="1TJgyj" id="2qzUg86Rgeu" role="1TKVEi">
      <property role="IQ2ns" value="2784325189558926534" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="value" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" to="5qo5:4rZeNQ6Oerq" resolve="NumberLiteral" />
    </node>
  </node>
  <node concept="AxPO7" id="2qzUg86Rhg6">
    <property role="3GE5qa" value="editing.features.preprocess.action" />
    <property role="TrG5h" value="number_replacement" />
    <property role="3lZH7k" value="derive_from_internal_value" />
    <ref role="M4eZT" to="tpck:fKAOsGN" resolve="string" />
    <node concept="M4N5e" id="2qzUg86Rhgf" role="M5hS2">
      <property role="1uS6qo" value="by interpolation" />
      <property role="1uS6qv" value="interpolate" />
    </node>
    <node concept="M4N5e" id="2qzUg86Rhgp" role="M5hS2">
      <property role="1uS6qo" value="with value" />
      <property role="1uS6qv" value="value" />
    </node>
    <node concept="M4N5e" id="2qzUg86Rhg7" role="M5hS2">
      <property role="1uS6qv" value="zero" />
      <property role="1uS6qo" value="with zeros" />
    </node>
    <node concept="M4N5e" id="2qzUg86Rhg8" role="M5hS2">
      <property role="1uS6qo" value="with mean" />
      <property role="1uS6qv" value="mean" />
    </node>
    <node concept="M4N5e" id="2qzUg86Rhgb" role="M5hS2">
      <property role="1uS6qo" value="with median" />
      <property role="1uS6qv" value="median" />
    </node>
  </node>
  <node concept="1TIwiD" id="2aoocML5R4R">
    <property role="EcuMT" value="2492848826010267959" />
    <property role="3GE5qa" value="editing.instances" />
    <property role="TrG5h" value="EditInstances" />
    <property role="34LRSv" value="edit instances" />
    <ref role="1TJDcQ" node="yCGLuIzMj9" resolve="AbstractFeaturesetEditingStatement" />
    <node concept="1TJgyj" id="2aoocML67bz" role="1TKVEi">
      <property role="IQ2ns" value="2492848826010333923" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="feature" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="4O6zKM3EyR8" resolve="FeatureRef" />
    </node>
    <node concept="1TJgyj" id="2aoocML5R4S" role="1TKVEi">
      <property role="IQ2ns" value="2492848826010267960" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="condition" />
      <ref role="20lvS9" to="5frd:1o0JaC2_8i8" resolve="ItemDependentCondition" />
    </node>
    <node concept="1TJgyj" id="2aoocML5R4U" role="1TKVEi">
      <property role="IQ2ns" value="2492848826010267962" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="5frd:fN3qU6G$xK" resolve="ItemDependentExpression" />
    </node>
  </node>
  <node concept="1TIwiD" id="4fxn4ASt7G7">
    <property role="EcuMT" value="4891292141998078727" />
    <property role="3GE5qa" value="feature" />
    <property role="TrG5h" value="FeatureGrabber" />
    <ref role="1TJDcQ" to="5frd:4fxn4ASqs2m" resolve="AbstractItemGrabber" />
  </node>
  <node concept="1TIwiD" id="4fxn4ASuUjE">
    <property role="EcuMT" value="4891292141998548202" />
    <property role="TrG5h" value="LabelEncoding" />
    <property role="3GE5qa" value="feature.encoding" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4fxn4ASuUjF" role="1TKVEi">
      <property role="IQ2ns" value="4891292141998548203" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="labels" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" to="5qo5:4rZeNQ6OYR8" resolve="StringLiteral" />
    </node>
  </node>
</model>

