<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ae6e20e4-21d3-4b4e-9744-2c4d301accdb(languageComposition.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="1" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="uppb" ref="r:5d0a6785-dbcb-4f7f-8750-d549f6bd192c(languageComposition.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1227096774658" name="jetbrains.mps.lang.typesystem.structure.MessageStatement" flags="ng" index="2OEH$v">
        <child id="1227096802790" name="nodeToReport" index="2OEOjV" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="18kY7G" id="7r$Cpd5PsEF">
    <property role="TrG5h" value="check_AbstractArtifactNode" />
    <property role="3GE5qa" value="artifactsTree" />
    <node concept="3clFbS" id="7r$Cpd5PsEG" role="18ibNy">
      <node concept="3clFbJ" id="7r$Cpd5QyhY" role="3cqZAp">
        <node concept="3clFbS" id="7r$Cpd5Qyi0" role="3clFbx">
          <node concept="3clFbJ" id="7r$Cpd5QxId" role="3cqZAp">
            <node concept="3clFbS" id="7r$Cpd5QxIe" role="3clFbx">
              <node concept="2MkqsV" id="7r$Cpd5QxIf" role="3cqZAp">
                <node concept="3cpWs3" id="7r$Cpd5QxIg" role="2MkJ7o">
                  <node concept="2OqwBi" id="7r$Cpd5QxIh" role="3uHU7w">
                    <node concept="1YBJjd" id="7r$Cpd5QxIi" role="2Oq$k0">
                      <ref role="1YBMHb" node="7r$Cpd5PsEI" resolve="node" />
                    </node>
                    <node concept="3TrcHB" id="7r$Cpd5QxIj" role="2OqNvi">
                      <ref role="3TsBF5" to="uppb:2qK8RKECpCE" resolve="shortname" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="7r$Cpd5QxIk" role="3uHU7B">
                    <property role="Xl_RC" value="Exactly one child artifact node is required for " />
                  </node>
                </node>
                <node concept="1YBJjd" id="7r$Cpd5QxIl" role="2OEOjV">
                  <ref role="1YBMHb" node="7r$Cpd5PsEI" resolve="node" />
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="7r$Cpd5Rl3A" role="3clFbw">
              <node concept="2OqwBi" id="7r$Cpd5QxIE" role="3uHU7B">
                <node concept="1YBJjd" id="7r$Cpd5QxIF" role="2Oq$k0">
                  <ref role="1YBMHb" node="7r$Cpd5PsEI" resolve="node" />
                </node>
                <node concept="1mIQ4w" id="7r$Cpd5QxIG" role="2OqNvi">
                  <node concept="chp4Y" id="7r$Cpd5QxIH" role="cj9EA">
                    <ref role="cht4Q" to="uppb:wb0I6Vg0b5" resolve="ArtifactNode1M" />
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="7r$Cpd5QxIn" role="3uHU7w">
                <node concept="3cmrfG" id="7r$Cpd5QxIo" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="7r$Cpd5QxIp" role="3uHU7B">
                  <node concept="2OqwBi" id="7r$Cpd5QxIq" role="2Oq$k0">
                    <node concept="2OqwBi" id="7r$Cpd5QxIr" role="2Oq$k0">
                      <node concept="1YBJjd" id="7r$Cpd5QxIs" role="2Oq$k0">
                        <ref role="1YBMHb" node="7r$Cpd5PsEI" resolve="node" />
                      </node>
                      <node concept="3Tsc0h" id="7r$Cpd5Rf_h" role="2OqNvi">
                        <ref role="3TtcxE" to="uppb:4x6uVBKzUAz" resolve="childNodes" />
                      </node>
                    </node>
                    <node concept="3zZkjj" id="7r$Cpd5QxIu" role="2OqNvi">
                      <node concept="1bVj0M" id="7r$Cpd5QxIv" role="23t8la">
                        <node concept="3clFbS" id="7r$Cpd5QxIw" role="1bW5cS">
                          <node concept="3clFbF" id="7r$Cpd5QxIx" role="3cqZAp">
                            <node concept="2OqwBi" id="7r$Cpd5QxIy" role="3clFbG">
                              <node concept="1PxgMI" id="7r$Cpd5QxIz" role="2Oq$k0">
                                <node concept="chp4Y" id="7r$Cpd5QxI$" role="3oSUPX">
                                  <ref role="cht4Q" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
                                </node>
                                <node concept="37vLTw" id="7r$Cpd5QxI_" role="1m5AlR">
                                  <ref role="3cqZAo" node="7r$Cpd5QxIB" resolve="it" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="7r$Cpd5QxIA" role="2OqNvi">
                                <ref role="3TsBF5" to="uppb:6I9RXT7Mc2" resolve="isSelected" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="7r$Cpd5QxIB" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="7r$Cpd5QxIC" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="34oBXx" id="7r$Cpd5QxID" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7r$Cpd5Q9sc" role="3cqZAp">
            <node concept="3clFbS" id="7r$Cpd5Q9se" role="3clFbx">
              <node concept="2MkqsV" id="7r$Cpd5PsIk" role="3cqZAp">
                <node concept="3cpWs3" id="7r$Cpd5QitH" role="2MkJ7o">
                  <node concept="2OqwBi" id="7r$Cpd5QiMw" role="3uHU7w">
                    <node concept="1YBJjd" id="7r$Cpd5QiB6" role="2Oq$k0">
                      <ref role="1YBMHb" node="7r$Cpd5PsEI" resolve="node" />
                    </node>
                    <node concept="3TrcHB" id="7r$Cpd5Qj7W" role="2OqNvi">
                      <ref role="3TsBF5" to="uppb:2qK8RKECpCE" resolve="shortname" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="7r$Cpd5PsRk" role="3uHU7B">
                    <property role="Xl_RC" value="At least one child artifact node is required for " />
                  </node>
                </node>
                <node concept="1YBJjd" id="7r$Cpd5PsRA" role="2OEOjV">
                  <ref role="1YBMHb" node="7r$Cpd5PsEI" resolve="node" />
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="7r$Cpd5Qb57" role="3clFbw">
              <node concept="3clFbC" id="7r$Cpd5QzJj" role="3uHU7w">
                <node concept="2OqwBi" id="7r$Cpd5QgW9" role="3uHU7B">
                  <node concept="2OqwBi" id="7r$Cpd5QcAx" role="2Oq$k0">
                    <node concept="2OqwBi" id="7r$Cpd5Qboz" role="2Oq$k0">
                      <node concept="1YBJjd" id="7r$Cpd5Qb9T" role="2Oq$k0">
                        <ref role="1YBMHb" node="7r$Cpd5PsEI" resolve="node" />
                      </node>
                      <node concept="32TBzR" id="7r$Cpd5Qbzl" role="2OqNvi" />
                    </node>
                    <node concept="3zZkjj" id="7r$Cpd5Qdt2" role="2OqNvi">
                      <node concept="1bVj0M" id="7r$Cpd5Qdt4" role="23t8la">
                        <node concept="3clFbS" id="7r$Cpd5Qdt5" role="1bW5cS">
                          <node concept="3clFbF" id="7r$Cpd5QdD0" role="3cqZAp">
                            <node concept="2OqwBi" id="7r$Cpd5Qfu_" role="3clFbG">
                              <node concept="1PxgMI" id="7r$Cpd5QeZw" role="2Oq$k0">
                                <node concept="chp4Y" id="7r$Cpd5Qf9R" role="3oSUPX">
                                  <ref role="cht4Q" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
                                </node>
                                <node concept="37vLTw" id="7r$Cpd5QdCZ" role="1m5AlR">
                                  <ref role="3cqZAo" node="7r$Cpd5Qdt6" resolve="it" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="7r$Cpd5QfV9" role="2OqNvi">
                                <ref role="3TsBF5" to="uppb:6I9RXT7Mc2" resolve="isSelected" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="7r$Cpd5Qdt6" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="7r$Cpd5Qdt7" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="34oBXx" id="7r$Cpd5Qhg3" role="2OqNvi" />
                </node>
                <node concept="3cmrfG" id="7r$Cpd5Q$Vh" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="2OqwBi" id="7r$Cpd5Q9Ag" role="3uHU7B">
                <node concept="1YBJjd" id="7r$Cpd5Q9tG" role="2Oq$k0">
                  <ref role="1YBMHb" node="7r$Cpd5PsEI" resolve="node" />
                </node>
                <node concept="1mIQ4w" id="7r$Cpd5Q9GX" role="2OqNvi">
                  <node concept="chp4Y" id="7r$Cpd5Qzql" role="cj9EA">
                    <ref role="cht4Q" to="uppb:wb0I6Vg0b4" resolve="ArtifactNodeNM" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="7r$Cpd5Qys4" role="3clFbw">
          <node concept="1YBJjd" id="7r$Cpd5Qyjw" role="2Oq$k0">
            <ref role="1YBMHb" node="7r$Cpd5PsEI" resolve="node" />
          </node>
          <node concept="3TrcHB" id="7r$Cpd5QyVb" role="2OqNvi">
            <ref role="3TsBF5" to="uppb:6I9RXT7Mc2" resolve="isSelected" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7r$Cpd5PsEI" role="1YuTPh">
      <property role="TrG5h" value="node" />
      <ref role="1YaFvo" to="uppb:wb0I6Vg0ao" resolve="AbstractArtifactNode" />
    </node>
  </node>
</model>

