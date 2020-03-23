<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="5" />
    <use id="6b277d9a-d52d-416f-a209-1919bd737f50" name="org.iets3.core.expr.simpleTypes" version="1" />
    <use id="cfaa4966-b7d5-4b69-b66a-309a6e1a7290" name="org.iets3.core.expr.base" version="0" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="yv47" ref="r:da65683e-ff6f-430d-ab68-32a77df72c93(org.iets3.core.expr.toplevel.structure)" />
    <import index="scux" ref="r:d14b83e6-d738-4a09-82b2-fc22620126d4(composition.structure)" />
    <import index="4kwy" ref="r:657c9fde-2f36-4e61-ae17-20f02b8630ad(org.iets3.core.base.structure)" />
    <import index="zzzn" ref="r:af0af2e7-f7e1-4536-83b5-6bf010d4afd2(org.iets3.core.expr.lambda.structure)" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="z82i" ref="r:0a2eb21f-fd0b-49b5-8a4c-2ff8b9d2f6c8(featuresEditing.structure)" />
    <import index="vs0r" ref="r:f7764ca4-8c75-4049-922b-08516400a727(com.mbeddr.core.base.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="ja9q" ref="r:fc597f30-d1d1-4d82-975e-209a1fdb1f96(statements.structure)" />
    <import index="68mc" ref="r:2a10821d-612f-4a73-b7b0-ed6b57106321(com.mbeddr.mpsutil.filepicker.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="jqrd" ref="r:a86b5aa2-977c-4dd4-975b-865365d5871c(types.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources">
      <concept id="8974276187400029883" name="jetbrains.mps.lang.resources.structure.FileIcon" flags="ng" index="1QGGSu">
        <property id="2756621024541341363" name="file" index="1iqoE4" />
      </concept>
    </language>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
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
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="6327362524875300597" name="icon" index="rwd14" />
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
  <node concept="1TIwiD" id="2$uHlqSzbou">
    <property role="EcuMT" value="2963004988924409374" />
    <property role="TrG5h" value="Section" />
    <property role="3GE5qa" value="section" />
    <property role="34LRSv" value="section" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2$uHlqTwJaK" role="PzmwI">
      <ref role="PrY4T" to="yv47:2uR5X5ayM7T" resolve="IToplevelExprContent" />
    </node>
    <node concept="PrWs8" id="2xC0MDxF3Gj" role="PzmwI">
      <ref role="PrY4T" to="vs0r:59HbAIOYkEn" resolve="IDetectCycle" />
    </node>
    <node concept="1TJgyj" id="2$uHlqTwKJO" role="1TKVEi">
      <property role="IQ2ns" value="2963004988940553204" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="inports" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="2$uHlqTwKh_" resolve="Inport" />
    </node>
    <node concept="1TJgyj" id="2$uHlqTwKJR" role="1TKVEi">
      <property role="IQ2ns" value="2963004988940553207" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="outports" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="2$uHlqTwKhC" resolve="OutportRef" />
    </node>
    <node concept="1TJgyj" id="2$uHlqTwM8L" role="1TKVEi">
      <property role="IQ2ns" value="2963004988940558897" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="codeblock" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="2$uHlqTwLPc" resolve="Codeblock" />
    </node>
    <node concept="1TJgyj" id="2$uHlqTwMzG" role="1TKVEi">
      <property role="IQ2ns" value="2963004988940560620" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="results" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="XZLIaP$hh$" resolve="AbstractOutput" />
    </node>
  </node>
  <node concept="1TIwiD" id="2$uHlqSzhDy">
    <property role="EcuMT" value="2963004988924435042" />
    <property role="TrG5h" value="File" />
    <property role="19KtqR" value="true" />
    <property role="3GE5qa" value="file" />
    <ref role="1TJDcQ" to="yv47:ub9nkyK62f" resolve="Library" />
    <node concept="1TJgyj" id="2$uHlqTuxYX" role="1TKVEi">
      <property role="IQ2ns" value="2963004988939968445" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="featureComposition" />
      <ref role="20lvS9" to="scux:4mwbOhsXrAp" resolve="ArtifactsTree" />
    </node>
    <node concept="1TJgyj" id="1ecbQBfuWIj" role="1TKVEi">
      <property role="IQ2ns" value="1408552914959190931" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="hiddenContent" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="4rZ4tH4lGwS" resolve="HiddenContent" />
    </node>
    <node concept="1TJgyj" id="2aoocMLiV1q" role="1TKVEi">
      <property role="IQ2ns" value="2492848826013691994" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="loader" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="68mc:4eXJ6EOwIAn" resolve="FileSystemDirPicker" />
    </node>
    <node concept="1TJgyi" id="37IcDEOYvS0" role="1TKVEl">
      <property role="IQ2nx" value="3597868792358239744" />
      <property role="TrG5h" value="revealTypes" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="2$uHlqTwAFr">
    <property role="EcuMT" value="2963004988940511963" />
    <property role="TrG5h" value="Icon" />
    <property role="3GE5qa" value="file" />
    <ref role="1TJDcQ" to="4kwy:4SjtGYzyERT" resolve="IETS3DummyIcon32" />
    <node concept="1QGGSu" id="2$uHlqTwAFs" role="rwd14">
      <property role="1iqoE4" value="C:/Workspaces/Git/mle/dsl/images/mle48.png" />
    </node>
  </node>
  <node concept="1TIwiD" id="2$uHlqTwKh_">
    <property role="EcuMT" value="2963004988940551269" />
    <property role="3GE5qa" value="section.ports" />
    <property role="TrG5h" value="Inport" />
    <ref role="1TJDcQ" node="2kN28ROXXD0" resolve="OptAliasExpression" />
    <node concept="PrWs8" id="37IcDEP27GY" role="PzmwI">
      <ref role="PrY4T" node="37IcDEOYvRZ" resolve="IRevealType" />
    </node>
    <node concept="1TJgyj" id="26bEYU6$gdJ" role="1TKVEi">
      <property role="IQ2ns" value="2417214665962619759" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="from" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="2$uHlqSzbou" resolve="Section" />
    </node>
    <node concept="1TJgyj" id="26bEYU6$gdM" role="1TKVEi">
      <property role="IQ2ns" value="2417214665962619762" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="outport" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="2$uHlqTwKhB" resolve="Outport" />
    </node>
    <node concept="1TJgyi" id="3HjnGQtW3ZY" role="1TKVEl">
      <property role="IQ2nx" value="4274864708515807230" />
      <property role="TrG5h" value="isOutdated" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="534lKF6Q8bd" role="1TKVEl">
      <property role="IQ2nx" value="5819872322266890957" />
      <property role="TrG5h" value="isEdited" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="7g3NvkvSCOn" role="1TKVEi">
      <property role="IQ2ns" value="8359751786015395095" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
    </node>
  </node>
  <node concept="1TIwiD" id="2$uHlqTwKhA">
    <property role="EcuMT" value="2963004988940551270" />
    <property role="3GE5qa" value="section.ports" />
    <property role="TrG5h" value="InportRef" />
    <ref role="1TJDcQ" to="hm2y:6sdnDbSla17" resolve="Expression" />
    <node concept="PrWs8" id="26bEYU6GBC6" role="PzmwI">
      <ref role="PrY4T" node="pBV22SMBK$" resolve="IProvideTypeObject" />
    </node>
    <node concept="1TJgyj" id="26bEYU6GCYE" role="1TKVEi">
      <property role="IQ2ns" value="2417214665964818346" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="inport" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="2$uHlqTwKh_" resolve="Inport" />
    </node>
  </node>
  <node concept="1TIwiD" id="2$uHlqTwKhB">
    <property role="EcuMT" value="2963004988940551271" />
    <property role="3GE5qa" value="section.ports" />
    <property role="TrG5h" value="Outport" />
    <ref role="1TJDcQ" node="2kN28ROXXD0" resolve="OptAliasExpression" />
    <node concept="1TJgyj" id="2kN28RP0pXq" role="1TKVEi">
      <property role="IQ2ns" value="2680495609009512282" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="object" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="pBV22SMBK$" resolve="IProvideTypeObject" />
    </node>
    <node concept="1TJgyj" id="3HjnGQtWLRv" role="1TKVEi">
      <property role="IQ2ns" value="4274864708515995103" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="type" />
      <ref role="20lvS9" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
    </node>
  </node>
  <node concept="1TIwiD" id="2$uHlqTwKhC">
    <property role="EcuMT" value="2963004988940551272" />
    <property role="3GE5qa" value="section.ports" />
    <property role="TrG5h" value="OutportRef" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="432kJCyA_iQ" role="1TKVEi">
      <property role="IQ2ns" value="4666383398185096374" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="val" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="2$uHlqTwKhB" resolve="Outport" />
    </node>
    <node concept="PrWs8" id="4fA_w_sFgkk" role="PzmwI">
      <ref role="PrY4T" node="37IcDEOYvRZ" resolve="IRevealType" />
    </node>
  </node>
  <node concept="1TIwiD" id="2$uHlqTwLPc">
    <property role="EcuMT" value="2963004988940557644" />
    <property role="3GE5qa" value="section" />
    <property role="TrG5h" value="Codeblock" />
    <ref role="1TJDcQ" to="zzzn:49WTic8ig5D" resolve="BlockExpression" />
    <node concept="PrWs8" id="432kJCy$KJq" role="PzmwI">
      <ref role="PrY4T" to="hm2y:6KxoTHgLv_I" resolve="IMayHaveEffect" />
    </node>
  </node>
  <node concept="1TIwiD" id="6Iu9bl6MC_2">
    <property role="EcuMT" value="7754675969373931842" />
    <property role="3GE5qa" value="output" />
    <property role="TrG5h" value="SimpleMessageOutput" />
    <ref role="1TJDcQ" node="XZLIaP$hh$" resolve="AbstractOutput" />
    <node concept="1TJgyi" id="6Iu9bl6MC_x" role="1TKVEl">
      <property role="IQ2nx" value="7754675969373931873" />
      <property role="TrG5h" value="message" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="5uNOSkli4V2">
    <property role="EcuMT" value="6319627270672109250" />
    <property role="3GE5qa" value="section.ports" />
    <property role="TrG5h" value="ProvideOutportExpr" />
    <property role="34LRSv" value="provide" />
    <ref role="1TJDcQ" to="ja9q:2t3FM7fJm6M" resolve="ReadTypeStatement" />
    <node concept="1TJgyj" id="432kJCyAB3S" role="1TKVEi">
      <property role="IQ2ns" value="4666383398185103608" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="outport" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="2$uHlqTwKhB" resolve="Outport" />
    </node>
    <node concept="PrWs8" id="4fxn4ASpXaT" role="PzmwI">
      <ref role="PrY4T" to="ja9q:4fxn4ASmiCo" resolve="IToplevelStatement" />
    </node>
  </node>
  <node concept="1TIwiD" id="11V7_PBrNbL">
    <property role="EcuMT" value="1187576313258390257" />
    <property role="3GE5qa" value="util.alias" />
    <property role="TrG5h" value="OptionalAlias" />
    <ref role="1TJDcQ" to="tpee:5UKMFh169Dh" resolve="StringToken" />
  </node>
  <node concept="1TIwiD" id="1EO_bV9G$FR">
    <property role="EcuMT" value="1924326487942646519" />
    <property role="3GE5qa" value="variables" />
    <property role="TrG5h" value="VariableReference" />
    <ref role="1TJDcQ" to="hm2y:6sdnDbSla17" resolve="Expression" />
    <node concept="PrWs8" id="1UULepNKcNO" role="PzmwI">
      <ref role="PrY4T" to="hm2y:3kzwyUOs05a" resolve="ISingleSymbolRef" />
    </node>
    <node concept="PrWs8" id="1UULepNKcNY" role="PzmwI">
      <ref role="PrY4T" to="hm2y:5GL30CqMVEW" resolve="ISSConstrainedValueRef" />
    </node>
    <node concept="PrWs8" id="26bEYU6G0yS" role="PzmwI">
      <ref role="PrY4T" node="pBV22SMBK$" resolve="IProvideTypeObject" />
    </node>
    <node concept="1TJgyj" id="1UULepNKcNI" role="1TKVEi">
      <property role="IQ2ns" value="2214298660869557486" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="val" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="1UULepNJ9io" resolve="VariableDeclaration" />
    </node>
  </node>
  <node concept="PlHQZ" id="pBV22SMBK$">
    <property role="EcuMT" value="461597112112151588" />
    <property role="3GE5qa" value="variables" />
    <property role="TrG5h" value="IProvideTypeObject" />
  </node>
  <node concept="1TIwiD" id="2kN28ROXXD0">
    <property role="EcuMT" value="2680495609008872000" />
    <property role="3GE5qa" value="util.alias" />
    <property role="TrG5h" value="OptAliasExpression" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="hm2y:6sdnDbSla17" resolve="Expression" />
    <node concept="1TJgyj" id="2kN28ROXXD1" role="1TKVEi">
      <property role="IQ2ns" value="2680495609008872001" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="optAlias" />
      <ref role="20lvS9" node="11V7_PBrNbL" resolve="OptionalAlias" />
    </node>
    <node concept="PrWs8" id="2kN28RP4bQz" role="PzmwI">
      <ref role="PrY4T" to="4kwy:cJpacq5T0O" resolve="IValidNamedConcept" />
    </node>
  </node>
  <node concept="PlHQZ" id="37IcDEOYvRZ">
    <property role="EcuMT" value="3597868792358239743" />
    <property role="TrG5h" value="IRevealType" />
    <property role="3GE5qa" value="util" />
  </node>
  <node concept="1TIwiD" id="6Quy7yTNPCI">
    <property role="EcuMT" value="7898900848549255726" />
    <property role="3GE5qa" value="util.items.selection" />
    <property role="TrG5h" value="ItemSelection" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="hm2y:6sdnDbSla17" resolve="Expression" />
    <node concept="1TJgyj" id="6MKNUaQDNDD" role="1TKVEi">
      <property role="IQ2ns" value="7831988049753356905" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="selectors" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="6MKNUaQDNDz" resolve="ItemSelector" />
    </node>
  </node>
  <node concept="1TIwiD" id="6MKNUaQDNDz">
    <property role="EcuMT" value="7831988049753356899" />
    <property role="TrG5h" value="ItemSelector" />
    <property role="3GE5qa" value="util.items.selection" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6MKNUaQDND$" role="1TKVEi">
      <property role="IQ2ns" value="7831988049753356900" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="item" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="4x_I0npP4pK" resolve="ItemRef" />
    </node>
    <node concept="1TJgyj" id="6MKNUaQDNDA" role="1TKVEi">
      <property role="IQ2ns" value="7831988049753356902" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="other" />
      <ref role="20lvS9" node="4x_I0npP4pK" resolve="ItemRef" />
    </node>
    <node concept="1TJgyi" id="6MKNUaQHqvq" role="1TKVEl">
      <property role="IQ2nx" value="7831988049754302426" />
      <property role="TrG5h" value="negated" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="PlHQZ" id="6Quy7yTNPCP">
    <property role="EcuMT" value="7898900848549255733" />
    <property role="3GE5qa" value="util.items.item" />
    <property role="TrG5h" value="IItemType" />
    <node concept="PrWs8" id="4IazLL586Iy" role="PrDN$">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="1UULepNJ9io">
    <property role="EcuMT" value="2214298660869280920" />
    <property role="TrG5h" value="VariableDeclaration" />
    <property role="3GE5qa" value="variables" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="ja9q:2t3FM7fJm6K" resolve="ProvideTypeStatement" />
    <node concept="PrWs8" id="1UULepNJ9VD" role="PzmwI">
      <ref role="PrY4T" to="4kwy:cJpacq5T0O" resolve="IValidNamedConcept" />
    </node>
    <node concept="PrWs8" id="1UULepNJ9VU" role="PzmwI">
      <ref role="PrY4T" to="hm2y:5GL30CqMVEV" resolve="ISSConstrainedValue" />
    </node>
    <node concept="1TJgyj" id="1UULepNJ9VZ" role="1TKVEi">
      <property role="IQ2ns" value="2214298660869283583" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="initialExpression" />
      <ref role="20lvS9" to="hm2y:6sdnDbSla17" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="1UULepNU6GA" role="1TKVEi">
      <property role="IQ2ns" value="2214298660872153894" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
    </node>
  </node>
  <node concept="PlHQZ" id="1UULepO1t7_">
    <property role="EcuMT" value="2214298660874080741" />
    <property role="3GE5qa" value="util.synch" />
    <property role="TrG5h" value="ISynchWithServer" />
    <node concept="1TJgyi" id="1UULepO1tEg" role="1TKVEl">
      <property role="IQ2nx" value="2214298660874082960" />
      <property role="TrG5h" value="id" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="XZLIaP$hh$">
    <property role="EcuMT" value="1116829909622264932" />
    <property role="3GE5qa" value="output" />
    <property role="TrG5h" value="AbstractOutput" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="PlHQZ" id="XZLIaPVfvV">
    <property role="EcuMT" value="1116829909628286971" />
    <property role="3GE5qa" value="util.items.item" />
    <property role="TrG5h" value="IContainItems" />
    <node concept="1TJgyj" id="5c6KWTiqlNT" role="1TKVEi">
      <property role="IQ2ns" value="5982684445921598713" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="items" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="6Quy7yTNPCP" resolve="IItemType" />
    </node>
  </node>
  <node concept="1TIwiD" id="4x_I0npP4pK">
    <property role="EcuMT" value="5216778078647502448" />
    <property role="3GE5qa" value="util.items.selection" />
    <property role="TrG5h" value="ItemRef" />
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" node="1Ho6EEsY2ow" resolve="PythonExpression" />
    <node concept="1TJgyj" id="4x_I0npP4pL" role="1TKVEi">
      <property role="IQ2ns" value="5216778078647502449" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="val" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="6Quy7yTNPCP" resolve="IItemType" />
    </node>
  </node>
  <node concept="PlHQZ" id="CAhoO5jugf">
    <property role="EcuMT" value="731348461475980303" />
    <property role="3GE5qa" value="util.dotexpression" />
    <property role="TrG5h" value="IDotOperation" />
    <node concept="PrWs8" id="CAhoO5jugg" role="PrDN$">
      <ref role="PrY4T" to="hm2y:7NJy08a3O9a" resolve="IDotTarget" />
    </node>
    <node concept="PrWs8" id="3CO1ndsX6vG" role="PrDN$">
      <ref role="PrY4T" node="3CO1ndsX3Lw" resolve="IRenderPythonExpression" />
    </node>
  </node>
  <node concept="1TIwiD" id="fN3qU6G$xK">
    <property role="EcuMT" value="284586244689774704" />
    <property role="3GE5qa" value="util.items.expression" />
    <property role="TrG5h" value="ItemDependentExpression" />
    <ref role="1TJDcQ" node="1Ho6EEsY2ow" resolve="PythonExpression" />
    <node concept="1TJgyj" id="fN3qU6G$xL" role="1TKVEi">
      <property role="IQ2ns" value="284586244689774705" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="hm2y:6sdnDbSla17" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="37IcDEP2sCM" role="PzmwI">
      <ref role="PrY4T" node="37IcDEOYvRZ" resolve="IRevealType" />
    </node>
  </node>
  <node concept="1TIwiD" id="4rZ4tH4lGwS">
    <property role="EcuMT" value="5115827335158220856" />
    <property role="3GE5qa" value="file" />
    <property role="TrG5h" value="HiddenContent" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4rZ4tH4lGwT" role="1TKVEi">
      <property role="IQ2ns" value="5115827335158220857" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="content" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpck:gw2VY9q" resolve="BaseConcept" />
    </node>
    <node concept="PrWs8" id="4rZ4tH4lPF3" role="PzmwI">
      <ref role="PrY4T" to="yv47:2uR5X5ayM7T" resolve="IToplevelExprContent" />
    </node>
    <node concept="PrWs8" id="10Ig25ORRij" role="PzmwI">
      <ref role="PrY4T" to="tpck:2WmWrdnSpX3" resolve="ISuppressErrors" />
    </node>
    <node concept="PrWs8" id="4rZ4tH4zJ$R" role="PzmwI">
      <ref role="PrY4T" to="hm2y:ORfz$DS6_k" resolve="IMayAllowEffect" />
    </node>
    <node concept="1TJgyj" id="1ecbQBfuWI9" role="1TKVEi">
      <property role="IQ2ns" value="1408552914959190921" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="section" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="2$uHlqSzbou" resolve="Section" />
    </node>
  </node>
  <node concept="1TIwiD" id="CAhoO5mCkr">
    <property role="EcuMT" value="731348461476807963" />
    <property role="TrG5h" value="DotExpression" />
    <property role="3GE5qa" value="util.dotexpression" />
    <ref role="1TJDcQ" to="hm2y:7NJy08a3O99" resolve="DotExpression" />
  </node>
  <node concept="1TIwiD" id="1Ho6EEsY2ow">
    <property role="EcuMT" value="1970354157054862880" />
    <property role="3GE5qa" value="util.synch" />
    <property role="TrG5h" value="PythonExpression" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="hm2y:6sdnDbSla17" resolve="Expression" />
    <node concept="PrWs8" id="3CO1ndsX5dY" role="PzmwI">
      <ref role="PrY4T" node="3CO1ndsX3Lw" resolve="IRenderPythonExpression" />
    </node>
  </node>
  <node concept="PlHQZ" id="3CO1ndsX3Lw">
    <property role="EcuMT" value="4193983146027662432" />
    <property role="3GE5qa" value="util.dotexpression" />
    <property role="TrG5h" value="IRenderPythonExpression" />
  </node>
  <node concept="PlHQZ" id="1o0JaC2yjRg">
    <property role="EcuMT" value="1585474507207425488" />
    <property role="3GE5qa" value="util.synch" />
    <property role="TrG5h" value="ICannotInferTypeChanges" />
  </node>
  <node concept="1TIwiD" id="1o0JaC2_8i8">
    <property role="EcuMT" value="1585474507208164488" />
    <property role="3GE5qa" value="util.items.expression" />
    <property role="TrG5h" value="ItemDependentCondition" />
    <ref role="1TJDcQ" node="fN3qU6G$xK" resolve="ItemDependentExpression" />
    <node concept="PrWs8" id="1o0JaC2_8ia" role="PzmwI">
      <ref role="PrY4T" node="37IcDEOYvRZ" resolve="IRevealType" />
    </node>
  </node>
  <node concept="PlHQZ" id="1pFVOLkE9h9">
    <property role="EcuMT" value="1615648002459341897" />
    <property role="3GE5qa" value="util.items.expression" />
    <property role="TrG5h" value="ICannotBeFurtherEdited" />
  </node>
  <node concept="PlHQZ" id="LOMntzS55L">
    <property role="EcuMT" value="897563740367507825" />
    <property role="3GE5qa" value="util.synch" />
    <property role="TrG5h" value="IMayAlterServer" />
  </node>
  <node concept="1TIwiD" id="crj2MTMfPg">
    <property role="EcuMT" value="223856361464200528" />
    <property role="TrG5h" value="SublevelVariableDeclaration" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="variables" />
    <ref role="1TJDcQ" node="1UULepNJ9io" resolve="VariableDeclaration" />
  </node>
  <node concept="PlHQZ" id="crj2MTWkJA">
    <property role="EcuMT" value="223856361466842086" />
    <property role="3GE5qa" value="variables" />
    <property role="TrG5h" value="IContainSublevelVariableDeclarations" />
  </node>
  <node concept="1TIwiD" id="4fxn4ASqs2m">
    <property role="EcuMT" value="4891292141997375638" />
    <property role="3GE5qa" value="util.items.item" />
    <property role="TrG5h" value="AbstractItemGrabber" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="ja9q:2t3FM7fJm6J" resolve="TypeRelatedStatement" />
    <node concept="1TJgyj" id="4fxn4ASqs2n" role="1TKVEi">
      <property role="IQ2ns" value="4891292141997375639" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="container" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="pBV22SMBK$" resolve="IProvideTypeObject" />
    </node>
    <node concept="1TJgyj" id="4fxn4ASqs2p" role="1TKVEi">
      <property role="IQ2ns" value="4891292141997375641" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="item" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="4x_I0npP4pK" resolve="ItemRef" />
    </node>
  </node>
</model>

