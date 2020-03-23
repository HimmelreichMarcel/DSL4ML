<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d2c2d624-edef-4b6b-99ff-505e8b64643f(join.constraints)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="4" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="reag" ref="r:ade3e00b-044f-42e0-846c-a1a8f349d15b(join.structure)" implicit="true" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" implicit="true" />
    <import index="64zb" ref="r:72ccc19c-1ef1-4520-9a39-c0d16ee2dcda(core.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="6702802731807420587" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAParent" flags="ig" index="9SLcT" />
      <concept id="6738154313879680265" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_childNode" flags="nn" index="2H4GUG" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="6702802731807532712" name="canBeParent" index="9SGkU" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
    </language>
  </registry>
  <node concept="1M2fIO" id="10zQN_$VZIM">
    <ref role="1M2myG" to="reag:10zQN_$VSWC" resolve="JoinStatement" />
    <node concept="9SLcT" id="10zQN_$VZPW" role="9SGkU">
      <node concept="3clFbS" id="10zQN_$VZPX" role="2VODD2">
        <node concept="3clFbJ" id="10zQN_$VZX5" role="3cqZAp">
          <node concept="2OqwBi" id="10zQN_$W0jg" role="3clFbw">
            <node concept="2H4GUG" id="10zQN_$W04m" role="2Oq$k0" />
            <node concept="3x8VRR" id="10zQN_$W0$0" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="10zQN_$VZX7" role="3clFbx">
            <node concept="3cpWs6" id="10zQN_$W0GK" role="3cqZAp">
              <node concept="2OqwBi" id="10zQN_$W38B" role="3cqZAk">
                <node concept="2OqwBi" id="10zQN_$W2$3" role="2Oq$k0">
                  <node concept="1PxgMI" id="10zQN_$W2b0" role="2Oq$k0">
                    <node concept="chp4Y" id="10zQN_$W2iw" role="3oSUPX">
                      <ref role="cht4Q" to="5frd:pBV22SMBK$" resolve="IProvideTypeObject" />
                    </node>
                    <node concept="2H4GUG" id="10zQN_$W0V4" role="1m5AlR" />
                  </node>
                  <node concept="2qgKlT" id="10zQN_$W2M2" role="2OqNvi">
                    <ref role="37wK5l" to="64zb:1qp0740gyb2" resolve="getTypeObject" />
                  </node>
                </node>
                <node concept="1mIQ4w" id="10zQN_$W3uX" role="2OqNvi">
                  <node concept="chp4Y" id="10zQN_$W3Gn" role="cj9EA">
                    <ref role="cht4Q" to="5frd:XZLIaPVfvV" resolve="IContainItems" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="10zQN_$Wbxt" role="3cqZAp">
          <node concept="3clFbT" id="7Agrdoq7_30" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

