<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a3c890d1-ba29-4628-8336-00501786ff69(comment.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="5" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="ja9q" ref="r:fc597f30-d1d1-4d82-975e-209a1fdb1f96(statements.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="3KhNVPMZ3DZ">
    <property role="EcuMT" value="4328469129464658559" />
    <property role="TrG5h" value="ExplainationComment" />
    <property role="34LRSv" value="!" />
    <ref role="1TJDcQ" to="ja9q:4rZ4tH4gay8" resolve="VisibleStructureStatement" />
    <node concept="1TJgyi" id="3KhNVPMZ9$m" role="1TKVEl">
      <property role="IQ2nx" value="4328469129464682774" />
      <property role="TrG5h" value="comment" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="3KhNVPMZP_E">
    <property role="EcuMT" value="4328469129464863082" />
    <property role="TrG5h" value="QuestionComment" />
    <property role="34LRSv" value="?" />
    <ref role="1TJDcQ" to="ja9q:4rZ4tH4gay8" resolve="VisibleStructureStatement" />
    <node concept="1TJgyi" id="3KhNVPMZP_F" role="1TKVEl">
      <property role="IQ2nx" value="4328469129464863083" />
      <property role="TrG5h" value="comment" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
</model>

