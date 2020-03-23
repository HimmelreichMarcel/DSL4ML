<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:dd7856aa-5828-444c-bc87-c88a89a8bb82(wordlist.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="5" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="jqrd" ref="r:a86b5aa2-977c-4dd4-975b-865365d5871c(types.structure)" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" />
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="reag" ref="r:ade3e00b-044f-42e0-846c-a1a8f349d15b(join.structure)" />
    <import index="w3db" ref="r:372863d1-da2c-4d51-9ce5-ef15e0220a9a(split.structure)" />
    <import index="u7mz" ref="r:c1927c62-1175-4830-af3a-957eac7fe707(store.structure)" />
    <import index="bxmu" ref="r:2caa4bf2-77af-43e0-8e72-8a12a8978a06(edit.structure)" />
    <import index="lkam" ref="r:b100cccc-1af1-49c1-9733-1312e9abf9e1(print.structure)" />
    <import index="ckmh" ref="r:a0b09593-26bd-4d75-98f1-657e49dea4f1(create.structure)" />
    <import index="5qo5" ref="r:6d93ddb1-b0b0-4eee-8079-51303666672a(org.iets3.core.expr.simpleTypes.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
    <import index="55s9" ref="r:349f01e8-2ba4-49f7-be71-679bbbf4b80d(features.structure)" implicit="true" />
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
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
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
  <node concept="1TIwiD" id="1UULepNY25E">
    <property role="EcuMT" value="2214298660873183594" />
    <property role="TrG5h" value="PhraselistType" />
    <property role="34LRSv" value="phraselist" />
    <property role="3GE5qa" value="phraselist" />
    <ref role="1TJDcQ" node="4fA_w_sqrL8" resolve="AbstractWordlistType" />
    <node concept="PrWs8" id="I1pY2rFDR6" role="PzmwI">
      <ref role="PrY4T" to="5frd:XZLIaPVfvV" resolve="IContainItems" />
    </node>
    <node concept="PrWs8" id="LOMnt$5cGk" role="PzmwI">
      <ref role="PrY4T" to="reag:LOMnt$1m84" resolve="ICanBeJoined" />
    </node>
    <node concept="PrWs8" id="4IazLL44Gut" role="PzmwI">
      <ref role="PrY4T" to="ckmh:4Z2dWAVu5W3" resolve="ICanBeLoaded" />
    </node>
    <node concept="PrWs8" id="4IazLL4q_ZH" role="PzmwI">
      <ref role="PrY4T" to="bxmu:XZLIaPLIAc" resolve="ICanBeEdited" />
    </node>
  </node>
  <node concept="1TIwiD" id="1UULepNY8iN">
    <property role="EcuMT" value="2214298660873209011" />
    <property role="TrG5h" value="WordlistLoader" />
    <property role="3GE5qa" value="wordlist" />
    <ref role="1TJDcQ" to="ckmh:4Z2dWAVyuhq" resolve="AbstractLoaderExpression" />
  </node>
  <node concept="1TIwiD" id="XZLIaPK4gy">
    <property role="EcuMT" value="1116829909625357346" />
    <property role="TrG5h" value="WordlistOutput" />
    <property role="3GE5qa" value="wordlist" />
    <ref role="1TJDcQ" to="lkam:4Oj5iGcvoJy" resolve="ObjectOutput" />
  </node>
  <node concept="1TIwiD" id="7bbTq02c3g_">
    <property role="EcuMT" value="8271957615990289445" />
    <property role="TrG5h" value="WordlistEditing" />
    <property role="3GE5qa" value="wordlist" />
    <ref role="1TJDcQ" to="bxmu:XZLIaPLIAd" resolve="AbstractTypeEditing" />
    <node concept="PrWs8" id="7WePDBhhOmo" role="PzmwI">
      <ref role="PrY4T" to="hm2y:6KxoTHgLv_I" resolve="IMayHaveEffect" />
    </node>
  </node>
  <node concept="1TIwiD" id="7bbTq02c4Xg">
    <property role="EcuMT" value="8271957615990296400" />
    <property role="3GE5qa" value="phraselist.phrase" />
    <property role="TrG5h" value="PhraselistItem" />
    <ref role="1TJDcQ" node="LOMnt$9jwD" resolve="WordlistItem" />
  </node>
  <node concept="1TIwiD" id="7bbTq02cieo">
    <property role="EcuMT" value="8271957615990350744" />
    <property role="TrG5h" value="AbstractWordlistEditingStatement" />
    <property role="3GE5qa" value="wordlist.editing" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="bxmu:7WePDBhhPDV" resolve="AbstractEditingStatment" />
  </node>
  <node concept="1TIwiD" id="7bbTq02cipN">
    <property role="EcuMT" value="8271957615990351475" />
    <property role="3GE5qa" value="wordlist.editing" />
    <property role="TrG5h" value="DeleteBySelectionStatement" />
    <property role="34LRSv" value="delete selection" />
    <property role="R4oN_" value="Delete selection of phrases." />
    <ref role="1TJDcQ" node="7bbTq02cieo" resolve="AbstractWordlistEditingStatement" />
    <node concept="1TJgyj" id="I1pY2rFyA_" role="1TKVEi">
      <property role="IQ2ns" value="829058020795099557" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="selection" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="I1pY2rFuRW" resolve="WordlistSelection" />
    </node>
  </node>
  <node concept="1TIwiD" id="7bbTq02cipO">
    <property role="EcuMT" value="8271957615990351476" />
    <property role="3GE5qa" value="wordlist.editing" />
    <property role="TrG5h" value="DeleteTermsByConditionStatement" />
    <property role="34LRSv" value="delete terms where" />
    <property role="R4oN_" value="Delete phrases that match condition." />
    <ref role="1TJDcQ" node="7bbTq02cieo" resolve="AbstractWordlistEditingStatement" />
    <node concept="1TJgyj" id="I1pY2rPO5o" role="1TKVEi">
      <property role="IQ2ns" value="829058020797792600" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="condition" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="7WePDBhfDGO" resolve="TermDependentExpression" />
    </node>
  </node>
  <node concept="1TIwiD" id="7bbTq02cipP">
    <property role="EcuMT" value="8271957615990351477" />
    <property role="3GE5qa" value="wordlist.editing" />
    <property role="TrG5h" value="AddTermStatement" />
    <property role="34LRSv" value="add term" />
    <ref role="1TJDcQ" node="7bbTq02cieo" resolve="AbstractWordlistEditingStatement" />
    <node concept="1TJgyj" id="10Ig25P8HlJ" role="1TKVEi">
      <property role="IQ2ns" value="1165939865978852719" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="terms" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" to="5qo5:4rZeNQ6OYR8" resolve="StringLiteral" />
    </node>
  </node>
  <node concept="1TIwiD" id="I1pY2rFuRW">
    <property role="EcuMT" value="829058020795084284" />
    <property role="3GE5qa" value="wordlist" />
    <property role="TrG5h" value="WordlistSelection" />
    <ref role="1TJDcQ" to="5frd:6Quy7yTNPCI" resolve="ItemSelection" />
  </node>
  <node concept="1TIwiD" id="I1pY2rQ8qL">
    <property role="EcuMT" value="829058020797875889" />
    <property role="3GE5qa" value="wordlist.condition" />
    <property role="TrG5h" value="TermConstant" />
    <property role="34LRSv" value="term" />
    <ref role="1TJDcQ" to="5frd:1Ho6EEsY2ow" resolve="PythonExpression" />
  </node>
  <node concept="1TIwiD" id="7WePDBhfDGO">
    <property role="EcuMT" value="9155491048619678516" />
    <property role="3GE5qa" value="wordlist.condition" />
    <property role="TrG5h" value="TermDependentExpression" />
    <ref role="1TJDcQ" to="5frd:1Ho6EEsY2ow" resolve="PythonExpression" />
    <node concept="1TJgyj" id="7WePDBhfDGP" role="1TKVEi">
      <property role="IQ2ns" value="9155491048619678517" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="hm2y:6sdnDbSla17" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="4fA_w_sqrL8">
    <property role="EcuMT" value="4892763012133928008" />
    <property role="TrG5h" value="AbstractWordlistType" />
    <property role="34LRSv" value="wordlist" />
    <property role="3GE5qa" value="wordlist" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="jqrd:XZLIaP_Y4I" resolve="AbstractType" />
    <node concept="1TJgyi" id="7YOY7Y_5ttv" role="1TKVEl">
      <property role="IQ2nx" value="9202253165738973023" />
      <property role="TrG5h" value="idCounter" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="PrWs8" id="4fA_w_sqrL9" role="PzmwI">
      <ref role="PrY4T" to="5frd:XZLIaPVfvV" resolve="IContainItems" />
    </node>
    <node concept="PrWs8" id="3MDuPPBEZSU" role="PzmwI">
      <ref role="PrY4T" to="w3db:crj2MTJa9l" resolve="ICanBeSplit" />
    </node>
    <node concept="PrWs8" id="2aoocMLhAC0" role="PzmwI">
      <ref role="PrY4T" to="u7mz:2aoocMLhbXK" resolve="ICanBeStored" />
    </node>
    <node concept="PrWs8" id="ntYdpmutMI" role="PzmwI">
      <ref role="PrY4T" to="lkam:4TFMgV46qb6" resolve="ICanBePrinted" />
    </node>
  </node>
  <node concept="1TIwiD" id="LOMnt$9jwD">
    <property role="EcuMT" value="897563740372023337" />
    <property role="3GE5qa" value="wordlist" />
    <property role="TrG5h" value="WordlistItem" />
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="LOMnt$9j$y" role="PzmwI">
      <ref role="PrY4T" to="5frd:6Quy7yTNPCP" resolve="IItemType" />
    </node>
    <node concept="1TJgyi" id="LOMnt$9j$$" role="1TKVEl">
      <property role="IQ2nx" value="897563740372023588" />
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="7YOY7Y$P4cq" role="1TKVEl">
      <property role="IQ2nx" value="9202253165734675226" />
      <property role="TrG5h" value="index" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="7YOY7Y$OWZW">
    <property role="EcuMT" value="9202253165734645756" />
    <property role="3GE5qa" value="wordlist.initialization" />
    <property role="TrG5h" value="AsNewListInitialization" />
    <property role="34LRSv" value="as new list" />
    <ref role="1TJDcQ" to="ckmh:1pFVOLkFKeb" resolve="AbstractTypeInitializator" />
    <node concept="1TJgyj" id="7YOY7Y$P4co" role="1TKVEi">
      <property role="IQ2ns" value="9202253165734675224" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="entries" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" to="tpee:f$Xl_Og" resolve="StringLiteral" />
    </node>
  </node>
  <node concept="1TIwiD" id="7YOY7Y_56U_">
    <property role="EcuMT" value="9202253165738880677" />
    <property role="3GE5qa" value="wordlist.editing.sort" />
    <property role="TrG5h" value="SortTermsStatement" />
    <property role="34LRSv" value="sort terms" />
    <ref role="1TJDcQ" node="7bbTq02cieo" resolve="AbstractWordlistEditingStatement" />
    <node concept="1TJgyi" id="7YOY7Y_c0Lm" role="1TKVEl">
      <property role="IQ2nx" value="9202253165740690518" />
      <property role="TrG5h" value="criterion" />
      <ref role="AX2Wp" node="7YOY7Y_c0Ei" resolve="sort_criterion" />
    </node>
  </node>
  <node concept="AxPO7" id="7YOY7Y_c0Ei">
    <property role="3GE5qa" value="wordlist.editing.sort" />
    <property role="TrG5h" value="sort_criterion" />
    <property role="3lZH7k" value="derive_from_internal_value" />
    <ref role="M4eZT" to="tpck:fKAQMTA" resolve="integer" />
    <node concept="M4N5e" id="7YOY7Y_c0Ej" role="M5hS2">
      <property role="1uS6qo" value="creation-order" />
      <property role="1uS6qv" value="0" />
    </node>
    <node concept="M4N5e" id="7YOY7Y_c0Ek" role="M5hS2">
      <property role="1uS6qo" value="alphabetical-order" />
      <property role="1uS6qv" value="1" />
    </node>
    <node concept="M4N5e" id="7YOY7Y_c0En" role="M5hS2">
      <property role="1uS6qo" value="randomized-order" />
      <property role="1uS6qv" value="2" />
    </node>
  </node>
  <node concept="1TIwiD" id="4fxn4ASrnlb">
    <property role="EcuMT" value="4891292141997618507" />
    <property role="3GE5qa" value="wordlist.initialization" />
    <property role="TrG5h" value="FromFeatureInitialization" />
    <ref role="1TJDcQ" to="ckmh:1pFVOLkFKeb" resolve="AbstractTypeInitializator" />
    <node concept="1TJgyj" id="4fxn4ASronk" role="1TKVEi">
      <property role="IQ2ns" value="4891292141997622740" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="grabber" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="55s9:4fxn4ASt7G7" resolve="FeatureGrabber" />
    </node>
  </node>
</model>

