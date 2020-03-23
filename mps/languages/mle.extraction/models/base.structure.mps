<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:999800c2-1941-4cf0-8fc5-d15eb2e8e3d8(base.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="6" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="7skk" ref="r:c33d3b05-6327-4bd1-91f0-9c47a8de45f7(rootfile.structure)" />
    <import index="vs0r" ref="r:f7764ca4-8c75-4049-922b-08516400a727(com.mbeddr.core.base.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
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
  <node concept="1TIwiD" id="fN3qU6G$wA">
    <property role="EcuMT" value="284586244689774630" />
    <property role="3GE5qa" value="expressions" />
    <property role="TrG5h" value="AddFeatureExpr" />
    <property role="34LRSv" value="add" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="NehizIafIZ" role="PzmwI">
      <ref role="PrY4T" node="3RQ8TRgEYh5" resolve="IFeaturesetEditorExpression" />
    </node>
    <node concept="PrWs8" id="fN3qU6G$xs" role="PzmwI">
      <ref role="PrY4T" to="vs0r:2GIWVTRH8Wo" resolve="IControlledNamedConcept" />
    </node>
    <node concept="1TJgyj" id="fN3qU6G$yn" role="1TKVEi">
      <property role="IQ2ns" value="284586244689774743" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="expr" />
      <ref role="20lvS9" node="fN3qU6G$xK" resolve="FeatureEditionExpression" />
    </node>
  </node>
  <node concept="1TIwiD" id="3RQ8TRgFzZU">
    <property role="EcuMT" value="4464795241302343674" />
    <property role="TrG5h" value="DeleteFeatureExpr" />
    <property role="34LRSv" value="delete" />
    <property role="3GE5qa" value="expressions" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="NehizIafJ3" role="PzmwI">
      <ref role="PrY4T" node="3RQ8TRgEYh5" resolve="IFeaturesetEditorExpression" />
    </node>
    <node concept="1TJgyj" id="3RQ8TRgFRdF" role="1TKVEi">
      <property role="IQ2ns" value="4464795241302422379" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="feature" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="7skk:4O6zKM3EyR8" resolve="FeatureRef" />
    </node>
  </node>
  <node concept="1TIwiD" id="fN3qU6G$xK">
    <property role="EcuMT" value="284586244689774704" />
    <property role="3GE5qa" value="expressions" />
    <property role="TrG5h" value="FeatureEditionExpression" />
    <ref role="1TJDcQ" to="hm2y:6sdnDbSla17" resolve="Expression" />
    <node concept="1TJgyj" id="fN3qU6G$xL" role="1TKVEi">
      <property role="IQ2ns" value="284586244689774705" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="hm2y:6sdnDbSla17" resolve="Expression" />
    </node>
    <node concept="1TJgyi" id="506RQlN1hsn" role="1TKVEl">
      <property role="IQ2nx" value="5766541999708903191" />
      <property role="TrG5h" value="typestring" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="3RQ8TRgEYfg">
    <property role="EcuMT" value="4464795241302189008" />
    <property role="TrG5h" value="FeaturesetEditorBlock" />
    <property role="34LRSv" value="edit" />
    <property role="3GE5qa" value="expressions" />
    <ref role="1TJDcQ" to="hm2y:6sdnDbSla17" resolve="Expression" />
    <node concept="1TJgyj" id="3RQ8TRgFh8V" role="1TKVEi">
      <property role="IQ2ns" value="4464795241302266427" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="featureset" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="7skk:pBV22SMBK$" resolve="IProvideTypeObject" />
    </node>
    <node concept="1TJgyj" id="3RQ8TRgEYh2" role="1TKVEi">
      <property role="IQ2ns" value="4464795241302189122" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="body" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="3RQ8TRgEYh5" resolve="IFeaturesetEditorExpression" />
    </node>
    <node concept="PrWs8" id="pBV22SNodI" role="PzmwI">
      <ref role="PrY4T" to="7skk:38ogk7FKE8m" resolve="ISectionContent" />
    </node>
    <node concept="PrWs8" id="pBV22SMQiE" role="PzmwI">
      <ref role="PrY4T" to="7skk:3RQ8TRgHtDx" resolve="IProvideFeatureRefContext" />
    </node>
  </node>
  <node concept="PlHQZ" id="3RQ8TRgEYh5">
    <property role="EcuMT" value="4464795241302189125" />
    <property role="TrG5h" value="IFeaturesetEditorExpression" />
    <property role="3GE5qa" value="expressions" />
  </node>
  <node concept="PlHQZ" id="yww_xQoDAb">
    <property role="EcuMT" value="621640065032034699" />
    <property role="TrG5h" value="IFeatureRefDotTarget" />
    <node concept="PrWs8" id="5W_fQsnd1pe" role="PrDN$">
      <ref role="PrY4T" to="hm2y:7NJy08a3O9a" resolve="IDotTarget" />
    </node>
    <node concept="PrWs8" id="s_$oGKvMC5" role="PrDN$">
      <ref role="PrY4T" node="yww_xQrhTc" resolve="IHaveScale" />
    </node>
  </node>
  <node concept="PlHQZ" id="yww_xQrhTc">
    <property role="EcuMT" value="621640065032724044" />
    <property role="TrG5h" value="IHaveScale" />
  </node>
</model>

