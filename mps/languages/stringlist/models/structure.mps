<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:662c3a69-17c0-4355-ba5a-686537f4a650(stringlist.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="6" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="amyc" ref="r:999800c2-1941-4cf0-8fc5-d15eb2e8e3d8(base.structure)" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ">
        <child id="1169127546356" name="extends" index="PrDN$" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="7FcDKsHmYlS">
    <property role="EcuMT" value="8848631017143788920" />
    <property role="TrG5h" value="JoinOperation" />
    <property role="34LRSv" value="join" />
    <node concept="PrWs8" id="yww_xQqnYC" role="PzmwI">
      <ref role="PrY4T" node="7FcDKsHo1OT" resolve="IStringlistOp" />
    </node>
  </node>
  <node concept="PlHQZ" id="7FcDKsHo1OT">
    <property role="EcuMT" value="8848631017144065337" />
    <property role="TrG5h" value="IStringlistOp" />
    <node concept="PrWs8" id="yww_xQqfvT" role="PrDN$">
      <ref role="PrY4T" to="amyc:yww_xQoDAb" resolve="IFeatureRefDotTarget" />
    </node>
  </node>
</model>

