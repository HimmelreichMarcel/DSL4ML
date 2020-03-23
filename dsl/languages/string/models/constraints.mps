<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a7af23be-2c0f-41c6-9dac-9539c4582b71(string.constraints)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="4" />
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="1" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="0" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="hm2y" ref="r:66e07cb4-a4b0-4bf3-a36d-5e9ed1ff1bd3(org.iets3.core.expr.base.structure)" />
    <import index="ni5j" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.regex(JDK/)" />
    <import index="tpbt" ref="r:65aadb5c-2f1e-4a2a-b988-9153ab74365c(string.structure)" implicit="true" />
    <import index="5frd" ref="r:2c632212-6c5f-4a88-a6c7-adfd4d7ed66e(core.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="6702802731807351367" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAChild" flags="in" index="9S07l" />
      <concept id="1202989658459" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_parentNode" flags="nn" index="nLn13" />
      <concept id="1147467115080" name="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" flags="ng" index="EnEH3">
        <reference id="1147467295099" name="applicableProperty" index="EomxK" />
        <child id="1212097481299" name="propertyValidator" index="QCWH9" />
      </concept>
      <concept id="1212096972063" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyValidator" flags="in" index="QB0g5" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="6702802731807737306" name="canBeChild" index="9Vyp8" />
        <child id="1213098023997" name="property" index="1MhHOB" />
      </concept>
      <concept id="1153138554286" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_propertyValue" flags="nn" index="1Wqviy" />
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1176544042499" name="jetbrains.mps.lang.typesystem.structure.Node_TypeOperation" flags="nn" index="3JvlWi" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
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
  <node concept="1M2fIO" id="7WePDBgMsMq">
    <property role="3GE5qa" value="correspondence" />
    <ref role="1M2myG" to="tpbt:7WePDBgMhw9" resolve="MatchesExpressionOp" />
    <node concept="EnEH3" id="7WePDBgMsMr" role="1MhHOB">
      <ref role="EomxK" to="tpbt:7WePDBgMsLu" resolve="targetExpression" />
      <node concept="QB0g5" id="7WePDBgMsMt" role="QCWH9">
        <node concept="3clFbS" id="7WePDBgMsMu" role="2VODD2">
          <node concept="SfApY" id="7WePDBgMsTA" role="3cqZAp">
            <node concept="3clFbS" id="7WePDBgMsTB" role="SfCbr">
              <node concept="3clFbF" id="7WePDBgM$S0" role="3cqZAp">
                <node concept="2YIFZM" id="7WePDBgM_0E" role="3clFbG">
                  <ref role="37wK5l" to="ni5j:~Pattern.compile(java.lang.String):java.util.regex.Pattern" resolve="compile" />
                  <ref role="1Pybhc" to="ni5j:~Pattern" resolve="Pattern" />
                  <node concept="1Wqviy" id="7WePDBgM_7T" role="37wK5m" />
                </node>
              </node>
              <node concept="3cpWs6" id="7WePDBgM_ox" role="3cqZAp">
                <node concept="3clFbT" id="7WePDBgM_w0" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="TDmWw" id="7WePDBgMsTC" role="TEbGg">
              <node concept="3cpWsn" id="7WePDBgMsTD" role="TDEfY">
                <property role="TrG5h" value="e" />
                <node concept="3uibUv" id="7WePDBgMyAW" role="1tU5fm">
                  <ref role="3uigEE" to="ni5j:~PatternSyntaxException" resolve="PatternSyntaxException" />
                </node>
              </node>
              <node concept="3clFbS" id="7WePDBgMsTF" role="TDEfX">
                <node concept="3cpWs6" id="7WePDBgM_Bw" role="3cqZAp">
                  <node concept="3clFbT" id="7WePDBgM_J7" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="7D1YCyB4a4z">
    <property role="3GE5qa" value="" />
    <ref role="1M2myG" to="tpbt:7D1YCyB4a47" resolve="AbstractStringOp" />
    <node concept="9S07l" id="7D1YCyB4a4B" role="9Vyp8">
      <node concept="3clFbS" id="7D1YCyB4a4C" role="2VODD2">
        <node concept="3cpWs8" id="7D1YCyB4aqT" role="3cqZAp">
          <node concept="3cpWsn" id="7D1YCyB4aqU" role="3cpWs9">
            <property role="TrG5h" value="typestring" />
            <node concept="17QB3L" id="7D1YCyB4aqV" role="1tU5fm" />
            <node concept="3cpWs3" id="7D1YCyB4aqW" role="33vP2m">
              <node concept="Xl_RD" id="7D1YCyB4aqX" role="3uHU7w">
                <property role="Xl_RC" value="" />
              </node>
              <node concept="2OqwBi" id="7D1YCyB4aqY" role="3uHU7B">
                <node concept="2OqwBi" id="7D1YCyB4aqZ" role="2Oq$k0">
                  <node concept="1PxgMI" id="7D1YCyB4ar0" role="2Oq$k0">
                    <node concept="chp4Y" id="7D1YCyB4ar1" role="3oSUPX">
                      <ref role="cht4Q" to="5frd:CAhoO5mCkr" resolve="DotExpression" />
                    </node>
                    <node concept="nLn13" id="7D1YCyB4ar2" role="1m5AlR" />
                  </node>
                  <node concept="3TrEf2" id="7D1YCyB4ar3" role="2OqNvi">
                    <ref role="3Tt5mk" to="hm2y:4rZeNQ6NgXF" resolve="expr" />
                  </node>
                </node>
                <node concept="3JvlWi" id="7D1YCyB4ar4" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7D1YCyB4ar5" role="3cqZAp">
          <node concept="2OqwBi" id="7D1YCyB4ar6" role="3cqZAk">
            <node concept="37vLTw" id="7D1YCyB4ar7" role="2Oq$k0">
              <ref role="3cqZAo" node="7D1YCyB4aqU" resolve="typestring" />
            </node>
            <node concept="liA8E" id="7D1YCyB4ar8" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="Xl_RD" id="7D1YCyB4ar9" role="37wK5m">
                <property role="Xl_RC" value="string" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

