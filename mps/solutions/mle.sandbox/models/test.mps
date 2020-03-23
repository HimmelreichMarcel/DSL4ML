<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c574a784-286f-4ae1-aa82-b9fd1f674a44(mle.sandbox.test)">
  <persistence version="9" />
  <languages>
    <use id="4f5b9324-36b5-46b2-a8c8-a56e7087f59e" name="rootfile" version="0" />
    <use id="8a945d2c-3408-48fb-a78b-e59c40503f85" name="languageComposition" version="0" />
    <use id="71934284-d7d1-45ee-a054-8c072591085f" name="org.iets3.core.expr.toplevel" version="4" />
    <use id="bf34da55-3533-4edf-b109-99f963cfd35f" name="base" version="0" />
    <use id="687b5f9a-0e36-4489-bf6c-50cc56c432a7" name="list" version="0" />
    <use id="621d0d8c-f204-4f80-8713-593fa865efff" name="number" version="0" />
    <use id="310f29b9-31de-4441-b8c4-4f6dc1581c7b" name="string" version="0" />
    <use id="c7d5e7b7-f5e4-4fa8-bdb5-cc4558bbde6f" name="stringlist" version="0" />
    <devkit ref="1c135998-5440-4972-9921-4d69b80567f1(org.iets3.core.expr.genjava.stateMachineExample.devkit)" />
    <devkit ref="04b65b28-381b-4a5d-aec3-3ccd0071d372(org.iets3.genjava.devkit)" />
  </languages>
  <imports>
    <import index="5qo5" ref="r:6d93ddb1-b0b0-4eee-8079-51303666672a(org.iets3.core.expr.simpleTypes.structure)" />
  </imports>
  <registry>
    <language id="cfaa4966-b7d5-4b69-b66a-309a6e1a7290" name="org.iets3.core.expr.base">
      <concept id="7425695345928347719" name="org.iets3.core.expr.base.structure.Expression" flags="ng" index="2vmvVl" />
      <concept id="7089558164905593724" name="org.iets3.core.expr.base.structure.IOptionallyTyped" flags="ng" index="2zM23E">
        <child id="7089558164905593725" name="type" index="2zM23F" />
      </concept>
      <concept id="5115872837156802409" name="org.iets3.core.expr.base.structure.UnaryExpression" flags="ng" index="30czhk">
        <child id="5115872837156802411" name="expr" index="30czhm" />
      </concept>
      <concept id="9002563722476995145" name="org.iets3.core.expr.base.structure.DotExpression" flags="ng" index="1QScDb">
        <child id="9002563722476995147" name="target" index="1QScD9" />
      </concept>
    </language>
    <language id="6b277d9a-d52d-416f-a209-1919bd737f50" name="org.iets3.core.expr.simpleTypes">
      <concept id="5994308065090560488" name="org.iets3.core.expr.simpleTypes.structure.StringLengthTarget" flags="ng" index="1uMQU5" />
    </language>
    <language id="4f5b9324-36b5-46b2-a8c8-a56e7087f59e" name="rootfile">
      <concept id="5982684445921750631" name="rootfile.structure.PrintExpr" flags="ng" index="1rmQD">
        <child id="1548582556464782616" name="expr" index="1a3FqT" />
      </concept>
      <concept id="9017328610538910774" name="rootfile.structure.OutPort" flags="ng" index="j08yI" />
      <concept id="9017328610538910767" name="rootfile.structure.InPort" flags="ng" index="j08yR">
        <reference id="6319627270671365935" name="from" index="12zMiE" />
        <reference id="6318635261739859956" name="outport" index="1mWFaZ" />
      </concept>
      <concept id="9017328610538793685" name="rootfile.structure.Section" flags="ng" index="j0_pd">
        <child id="9017328610538910781" name="inports" index="j08y_" />
        <child id="9017328610538910784" name="outports" index="j08zo" />
        <child id="9017328610538793797" name="block" index="j0_vt" />
        <child id="5846122217204090690" name="results" index="3$QpTG" />
      </concept>
      <concept id="9017328610538762973" name="rootfile.structure.FeaturesetType" flags="ng" index="j0GT5">
        <property id="2826967529118329169" name="numRows" index="13$wUG" />
        <property id="2826967529115725821" name="name" index="13IGw0" />
        <child id="5982684445921598713" name="coll" index="1rTWR" />
      </concept>
      <concept id="9017328610538751435" name="rootfile.structure.LoadExpr" flags="ng" index="j0J_j" />
      <concept id="9017328610539008174" name="rootfile.structure.OutPortRef" flags="ng" index="j1KKQ">
        <reference id="9017328610539008175" name="outport" index="j1KKR" />
      </concept>
      <concept id="9017328610538987045" name="rootfile.structure.InPortRef" flags="ng" index="j1QaX">
        <reference id="9017328610538987052" name="inport" index="j1QaO" />
      </concept>
      <concept id="4888012756749400493" name="rootfile.structure.CodeBlock" flags="ng" index="ktoKp" />
      <concept id="7754675969373931842" name="rootfile.structure.SimpleMessageOutput" flags="ng" index="HlaRR">
        <property id="7754675969373931873" name="message" index="HlaRk" />
      </concept>
      <concept id="6278827556619392203" name="rootfile.structure.MLE_File" flags="ng" index="L6niI">
        <child id="6278827556619419703" name="features" index="L7I1i" />
      </concept>
      <concept id="2308403226783564897" name="rootfile.structure.StringFeature" flags="ng" index="ULtNw" />
      <concept id="2308403226783577732" name="rootfile.structure.IntegerFeature" flags="ng" index="ULuS5" />
      <concept id="2308403226783716026" name="rootfile.structure.StringlistFeature" flags="ng" index="ULwCV" />
      <concept id="461597112112151588" name="rootfile.structure.IProvideTypeObject" flags="ng" index="2YFp04" />
      <concept id="461597112110864281" name="rootfile.structure.IFeatureType" flags="ng" index="2YOjIT">
        <property id="461597112110864288" name="status" index="2YOjI0" />
        <property id="461597112110864285" name="id" index="2YOjIX" />
        <property id="461597112110864286" name="scale" index="2YOjIY" />
        <property id="461597112110864287" name="emptyCells" index="2YOjIZ" />
      </concept>
      <concept id="6319627270672109250" name="rootfile.structure.ProvideOutportExpr" flags="ng" index="12YTP7">
        <child id="3444735032112140989" name="outport" index="2hFnFZ" />
        <child id="6318635261739235436" name="varRef" index="1myjkB" />
      </concept>
      <concept id="8151457080254903783" name="rootfile.structure.FeaturesTypeOutput" flags="ng" index="37s7Vx">
        <property id="8398780616028233893" name="dimensions" index="38gHrt" />
        <child id="8151457080254903784" name="features" index="37s7VI" />
      </concept>
      <concept id="1548582556462158999" name="rootfile.structure.LoadFeaturesetFile" flags="ng" index="1adFWQ">
        <child id="1548582556462159000" name="file" index="1adFWT" />
      </concept>
      <concept id="5550280874692062664" name="rootfile.structure.FeatureRef" flags="ng" index="3eFab4">
        <reference id="5550280874692062665" name="ref" index="3eFab5" />
      </concept>
      <concept id="1924326487942646519" name="rootfile.structure.MLEVariableReference" flags="ng" index="3j1HT9" />
    </language>
    <language id="71934284-d7d1-45ee-a054-8c072591085f" name="org.iets3.core.expr.toplevel">
      <concept id="543569365052711055" name="org.iets3.core.expr.toplevel.structure.Library" flags="ng" index="_iOnU">
        <child id="543569365052711058" name="contents" index="_iOnB" />
      </concept>
    </language>
    <language id="d3a0fd26-445a-466c-900e-10444ddfed52" name="com.mbeddr.mpsutil.filepicker">
      <concept id="6156524541422549000" name="com.mbeddr.mpsutil.filepicker.structure.AbstractPicker" flags="ng" index="3N1QpV">
        <property id="9294901202237533" name="mayBeEmpty" index="3kgbRO" />
        <property id="6156524541422553710" name="path" index="3N1Lgt" />
        <property id="2711621784026951428" name="pointOnlyToExistingFile" index="1RwFax" />
      </concept>
      <concept id="6156524541423588207" name="com.mbeddr.mpsutil.filepicker.structure.SolutionRelativeFilePicker" flags="ng" index="3NXOOs" />
    </language>
    <language id="c7d5e7b7-f5e4-4fa8-bdb5-cc4558bbde6f" name="stringlist">
      <concept id="8848631017143788920" name="stringlist.structure.JoinOperation" flags="ng" index="1n_O9Z" />
    </language>
    <language id="bf34da55-3533-4edf-b109-99f963cfd35f" name="base">
      <concept id="284586244689774630" name="base.structure.AddFeatureExpr" flags="ng" index="25gkm8">
        <child id="284586244689774743" name="expr" index="25gkkT" />
      </concept>
      <concept id="284586244689774704" name="base.structure.FeatureEditionExpression" flags="ng" index="25gknu">
        <property id="5766541999708903191" name="typestring" index="z0WxM" />
        <child id="284586244689774705" name="expression" index="25gknv" />
      </concept>
      <concept id="4464795241302343674" name="base.structure.DeleteFeatureExpr" flags="ng" index="3Hm1LB">
        <child id="4464795241302422379" name="feature" index="3Hml3Q" />
      </concept>
      <concept id="4464795241302189008" name="base.structure.FeaturesetEditorBlock" flags="ng" index="3Hns1d">
        <child id="4464795241302266427" name="featureset" index="3HmN6A" />
        <child id="4464795241302189122" name="body" index="3Hnsvv" />
      </concept>
    </language>
    <language id="8a945d2c-3408-48fb-a78b-e59c40503f85" name="languageComposition">
      <concept id="2787767185540350311" name="languageComposition.structure.ArtifactNodeRef" flags="ng" index="cbU8r">
        <reference id="2787767185540350312" name="ref" index="cbU8k" />
      </concept>
      <concept id="5017061955554621849" name="languageComposition.structure.ArtifactsTree" flags="ng" index="plprt">
        <property id="8567150045071098981" name="error" index="N2YnQ" />
        <child id="579560145579672213" name="root" index="2NiK1O" />
      </concept>
      <concept id="579560145579672261" name="languageComposition.structure.ArtifactNode1M" flags="ng" index="2NiK0$" />
      <concept id="579560145579672260" name="languageComposition.structure.ArtifactNodeNM" flags="ng" index="2NiK0_" />
      <concept id="579560145579672216" name="languageComposition.structure.AbstractArtifactNode" flags="ng" index="2NiK1T">
        <property id="3319807698070544063" name="isPrerequisited" index="824OW" />
        <property id="2787767185540487722" name="shortname" index="c4r_m" />
        <property id="2787767185540487716" name="path" index="c4r_o" />
        <property id="585492998997651059" name="isMandatoryChild" index="37AVyO" />
        <property id="121077668431995650" name="isSelected" index="1SGghX" />
        <child id="2787767185540397335" name="mandatory" index="c41DF" />
        <child id="5207986057635670435" name="childNodes" index="2SMt8q" />
      </concept>
      <concept id="579560145579672219" name="languageComposition.structure.ArtifactNodeIndep" flags="ng" index="2NiK1U" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="9464fa06-5ab9-409b-9274-64ab29588457" name="org.iets3.core.expr.lambda">
      <concept id="4790956042240983401" name="org.iets3.core.expr.lambda.structure.BlockExpression" flags="ng" index="1aduha">
        <child id="4790956042240983402" name="expressions" index="1aduh9" />
      </concept>
      <concept id="4790956042241105569" name="org.iets3.core.expr.lambda.structure.ValRef" flags="ng" index="1adzI2">
        <reference id="4790956042241106533" name="val" index="1adwt6" />
      </concept>
      <concept id="4790956042241053102" name="org.iets3.core.expr.lambda.structure.ValExpression" flags="ng" index="1adJid">
        <child id="4790956042241053105" name="expr" index="1adJii" />
      </concept>
    </language>
  </registry>
  <node concept="L6niI" id="5Xcftna6Cd8">
    <property role="TrG5h" value="test" />
    <node concept="plprt" id="5Xcftna6Cd9" role="L7I1i">
      <property role="N2YnQ" value="The requirements for the following selected language artifacts are not fulfilled: &#10; - core.testFeature" />
      <node concept="2NiK1U" id="5Xcftna6Cdd" role="2NiK1O">
        <property role="824OW" value="true" />
        <property role="1SGghX" value="true" />
        <property role="37AVyO" value="false" />
        <property role="c4r_o" value="core" />
        <property role="c4r_m" value="core" />
        <node concept="2NiK0_" id="5Xcftna6Cdj" role="2SMt8q">
          <property role="824OW" value="true" />
          <property role="1SGghX" value="true" />
          <property role="37AVyO" value="true" />
          <property role="c4r_o" value="core.featuresetEditing" />
          <property role="c4r_m" value="featuresetEditing" />
          <node concept="2NiK1U" id="5Xcftna6Cdb" role="2SMt8q">
            <property role="824OW" value="false" />
            <property role="1SGghX" value="true" />
            <property role="37AVyO" value="false" />
            <property role="c4r_o" value="core.featuresetEditing.listFeatureOps" />
            <property role="c4r_m" value="listFeatureOps" />
            <node concept="2NiK1U" id="5Xcftna6Cdn" role="2SMt8q">
              <property role="824OW" value="false" />
              <property role="1SGghX" value="false" />
              <property role="37AVyO" value="false" />
              <property role="c4r_o" value="core.featuresetEditing.listFeatureOps.stringListOps" />
              <property role="c4r_m" value="stringListOps" />
            </node>
          </node>
          <node concept="2NiK1U" id="5Xcftna6Cdf" role="2SMt8q">
            <property role="824OW" value="false" />
            <property role="1SGghX" value="true" />
            <property role="37AVyO" value="false" />
            <property role="c4r_o" value="core.featuresetEditing.numberFeatureOps" />
            <property role="c4r_m" value="numberFeatureOps" />
          </node>
          <node concept="2NiK1U" id="5Xcftna6Cdh" role="2SMt8q">
            <property role="824OW" value="false" />
            <property role="1SGghX" value="true" />
            <property role="37AVyO" value="false" />
            <property role="c4r_o" value="core.featuresetEditing.textFeatureOps" />
            <property role="c4r_m" value="textFeatureOps" />
          </node>
        </node>
        <node concept="2NiK1U" id="5Xcftna6Cdl" role="2SMt8q">
          <property role="824OW" value="false" />
          <property role="1SGghX" value="false" />
          <property role="37AVyO" value="false" />
          <property role="c4r_o" value="core.preprocessing" />
          <property role="c4r_m" value="preprocessing" />
        </node>
        <node concept="2NiK0$" id="5Xcftna6Cdp" role="2SMt8q">
          <property role="824OW" value="false" />
          <property role="1SGghX" value="true" />
          <property role="37AVyO" value="false" />
          <property role="c4r_o" value="core.testFeature" />
          <property role="c4r_m" value="testFeature" />
          <node concept="2NiK1U" id="5Xcftna6Cdt" role="2SMt8q">
            <property role="824OW" value="false" />
            <property role="1SGghX" value="false" />
            <property role="37AVyO" value="false" />
            <property role="c4r_o" value="core.testFeature.subFeatureB" />
            <property role="c4r_m" value="subFeatureB" />
          </node>
          <node concept="2NiK1U" id="5Xcftna6Cdv" role="2SMt8q">
            <property role="824OW" value="false" />
            <property role="1SGghX" value="false" />
            <property role="37AVyO" value="false" />
            <property role="c4r_o" value="core.testFeature.subFeatureC" />
            <property role="c4r_m" value="subFeatureC" />
          </node>
        </node>
        <node concept="cbU8r" id="5Xcftna6Cdw" role="c41DF">
          <ref role="cbU8k" node="5Xcftna6Cdj" />
        </node>
      </node>
    </node>
    <node concept="j0_pd" id="s_$oGKv$yP" role="_iOnB">
      <property role="TrG5h" value="LoadData" />
      <node concept="ktoKp" id="s_$oGKv$yQ" role="j0_vt">
        <node concept="j0J_j" id="s_$oGKv$yT" role="1aduh9">
          <property role="TrG5h" value="inst" />
          <node concept="1adFWQ" id="s_$oGKv$zo" role="1adJii">
            <node concept="3NXOOs" id="s_$oGKv$zq" role="1adFWT">
              <property role="1RwFax" value="true" />
              <property role="3kgbRO" value="false" />
              <property role="3N1Lgt" value="../../../data/instances.jsonl" />
            </node>
          </node>
          <node concept="j0GT5" id="1zQNQW5jL2x" role="2zM23F">
            <property role="13IGw0" value="inst" />
            <property role="13$wUG" value="19538" />
            <node concept="ULuS5" id="1zQNQW5jL2y" role="1rTWR">
              <property role="2YOjIX" value="0" />
              <property role="TrG5h" value="id" />
              <property role="2YOjIY" value="integer" />
              <property role="2YOjIZ" value="0" />
              <property role="2YOjI0" value="loaded" />
            </node>
            <node concept="ULwCV" id="1zQNQW5jL2z" role="1rTWR">
              <property role="2YOjIX" value="1" />
              <property role="TrG5h" value="postMedia" />
              <property role="2YOjIY" value="stringarray" />
              <property role="2YOjIZ" value="0" />
              <property role="2YOjI0" value="loaded" />
            </node>
            <node concept="ULwCV" id="1zQNQW5jL2$" role="1rTWR">
              <property role="2YOjIX" value="2" />
              <property role="TrG5h" value="postText" />
              <property role="2YOjIY" value="stringarray" />
              <property role="2YOjIZ" value="0" />
              <property role="2YOjI0" value="loaded" />
            </node>
            <node concept="ULtNw" id="1zQNQW5jL2_" role="1rTWR">
              <property role="2YOjIX" value="3" />
              <property role="TrG5h" value="postTimestamp" />
              <property role="2YOjIY" value="string" />
              <property role="2YOjIZ" value="0" />
              <property role="2YOjI0" value="loaded" />
            </node>
            <node concept="ULwCV" id="1zQNQW5jL2A" role="1rTWR">
              <property role="2YOjIX" value="4" />
              <property role="TrG5h" value="targetCaptions" />
              <property role="2YOjIY" value="stringarray" />
              <property role="2YOjIZ" value="0" />
              <property role="2YOjI0" value="loaded" />
            </node>
            <node concept="ULtNw" id="1zQNQW5jL2B" role="1rTWR">
              <property role="2YOjIX" value="5" />
              <property role="TrG5h" value="targetDescription" />
              <property role="2YOjIY" value="string" />
              <property role="2YOjIZ" value="0" />
              <property role="2YOjI0" value="loaded" />
            </node>
            <node concept="ULtNw" id="1zQNQW5jL2C" role="1rTWR">
              <property role="2YOjIX" value="6" />
              <property role="TrG5h" value="targetKeywords" />
              <property role="2YOjIY" value="string" />
              <property role="2YOjIZ" value="0" />
              <property role="2YOjI0" value="loaded" />
            </node>
            <node concept="ULwCV" id="1zQNQW5jL2D" role="1rTWR">
              <property role="2YOjIX" value="7" />
              <property role="TrG5h" value="targetParagraphs" />
              <property role="2YOjIY" value="stringarray" />
              <property role="2YOjIZ" value="0" />
              <property role="2YOjI0" value="loaded" />
            </node>
            <node concept="ULtNw" id="1zQNQW5jL2E" role="1rTWR">
              <property role="2YOjIX" value="8" />
              <property role="TrG5h" value="targetTitle" />
              <property role="2YOjIY" value="string" />
              <property role="2YOjIZ" value="0" />
              <property role="2YOjI0" value="loaded" />
            </node>
          </node>
        </node>
        <node concept="1rmQD" id="1zQNQW5jEQb" role="1aduh9">
          <node concept="3j1HT9" id="1zQNQW5jEXB" role="1a3FqT">
            <ref role="1adwt6" node="s_$oGKv$yT" resolve="inst" />
          </node>
        </node>
        <node concept="12YTP7" id="1zQNQW5jKsE" role="1aduh9">
          <node concept="3j1HT9" id="1zQNQW5jKws" role="1myjkB">
            <ref role="1adwt6" node="s_$oGKv$yT" resolve="inst" />
          </node>
          <node concept="j08yI" id="1zQNQW5jKwu" role="2hFnFZ">
            <property role="TrG5h" value="inst" />
            <node concept="j0GT5" id="1zQNQW5jL2R" role="2zM23F">
              <property role="13IGw0" value="inst" />
              <property role="13$wUG" value="19538" />
              <node concept="ULuS5" id="1zQNQW5jL2S" role="1rTWR">
                <property role="2YOjIX" value="0" />
                <property role="TrG5h" value="id" />
                <property role="2YOjIY" value="integer" />
                <property role="2YOjIZ" value="0" />
                <property role="2YOjI0" value="loaded" />
              </node>
              <node concept="ULwCV" id="1zQNQW5jL2T" role="1rTWR">
                <property role="2YOjIX" value="1" />
                <property role="TrG5h" value="postMedia" />
                <property role="2YOjIY" value="stringarray" />
                <property role="2YOjIZ" value="0" />
                <property role="2YOjI0" value="loaded" />
              </node>
              <node concept="ULwCV" id="1zQNQW5jL2U" role="1rTWR">
                <property role="2YOjIX" value="2" />
                <property role="TrG5h" value="postText" />
                <property role="2YOjIY" value="stringarray" />
                <property role="2YOjIZ" value="0" />
                <property role="2YOjI0" value="loaded" />
              </node>
              <node concept="ULtNw" id="1zQNQW5jL2V" role="1rTWR">
                <property role="2YOjIX" value="3" />
                <property role="TrG5h" value="postTimestamp" />
                <property role="2YOjIY" value="string" />
                <property role="2YOjIZ" value="0" />
                <property role="2YOjI0" value="loaded" />
              </node>
              <node concept="ULwCV" id="1zQNQW5jL2W" role="1rTWR">
                <property role="2YOjIX" value="4" />
                <property role="TrG5h" value="targetCaptions" />
                <property role="2YOjIY" value="stringarray" />
                <property role="2YOjIZ" value="0" />
                <property role="2YOjI0" value="loaded" />
              </node>
              <node concept="ULtNw" id="1zQNQW5jL2X" role="1rTWR">
                <property role="2YOjIX" value="5" />
                <property role="TrG5h" value="targetDescription" />
                <property role="2YOjIY" value="string" />
                <property role="2YOjIZ" value="0" />
                <property role="2YOjI0" value="loaded" />
              </node>
              <node concept="ULtNw" id="1zQNQW5jL2Y" role="1rTWR">
                <property role="2YOjIX" value="6" />
                <property role="TrG5h" value="targetKeywords" />
                <property role="2YOjIY" value="string" />
                <property role="2YOjIZ" value="0" />
                <property role="2YOjI0" value="loaded" />
              </node>
              <node concept="ULwCV" id="1zQNQW5jL2Z" role="1rTWR">
                <property role="2YOjIX" value="7" />
                <property role="TrG5h" value="targetParagraphs" />
                <property role="2YOjIY" value="stringarray" />
                <property role="2YOjIZ" value="0" />
                <property role="2YOjI0" value="loaded" />
              </node>
              <node concept="ULtNw" id="1zQNQW5jL30" role="1rTWR">
                <property role="2YOjIX" value="8" />
                <property role="TrG5h" value="targetTitle" />
                <property role="2YOjIY" value="string" />
                <property role="2YOjIZ" value="0" />
                <property role="2YOjI0" value="loaded" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="j1KKQ" id="1zQNQW5jKwv" role="j08zo">
        <ref role="j1KKR" node="1zQNQW5jKwu" resolve="inst" />
      </node>
      <node concept="HlaRR" id="1zQNQW5jL2F" role="3$QpTG">
        <property role="HlaRk" value="featuretable 'inst' loaded with 9 dimensions and 19538 rows" />
      </node>
      <node concept="37s7Vx" id="1zQNQW5jL2G" role="3$QpTG">
        <property role="38gHrt" value="9" />
        <node concept="j0GT5" id="1zQNQW5jL2H" role="37s7VI">
          <property role="13IGw0" value="inst" />
          <property role="13$wUG" value="19538" />
          <node concept="ULuS5" id="1zQNQW5jL2I" role="1rTWR">
            <property role="2YOjIX" value="0" />
            <property role="TrG5h" value="id" />
            <property role="2YOjIY" value="integer" />
            <property role="2YOjIZ" value="0" />
            <property role="2YOjI0" value="loaded" />
          </node>
          <node concept="ULwCV" id="1zQNQW5jL2J" role="1rTWR">
            <property role="2YOjIX" value="1" />
            <property role="TrG5h" value="postMedia" />
            <property role="2YOjIY" value="stringarray" />
            <property role="2YOjIZ" value="0" />
            <property role="2YOjI0" value="loaded" />
          </node>
          <node concept="ULwCV" id="1zQNQW5jL2K" role="1rTWR">
            <property role="2YOjIX" value="2" />
            <property role="TrG5h" value="postText" />
            <property role="2YOjIY" value="stringarray" />
            <property role="2YOjIZ" value="0" />
            <property role="2YOjI0" value="loaded" />
          </node>
          <node concept="ULtNw" id="1zQNQW5jL2L" role="1rTWR">
            <property role="2YOjIX" value="3" />
            <property role="TrG5h" value="postTimestamp" />
            <property role="2YOjIY" value="string" />
            <property role="2YOjIZ" value="0" />
            <property role="2YOjI0" value="loaded" />
          </node>
          <node concept="ULwCV" id="1zQNQW5jL2M" role="1rTWR">
            <property role="2YOjIX" value="4" />
            <property role="TrG5h" value="targetCaptions" />
            <property role="2YOjIY" value="stringarray" />
            <property role="2YOjIZ" value="0" />
            <property role="2YOjI0" value="loaded" />
          </node>
          <node concept="ULtNw" id="1zQNQW5jL2N" role="1rTWR">
            <property role="2YOjIX" value="5" />
            <property role="TrG5h" value="targetDescription" />
            <property role="2YOjIY" value="string" />
            <property role="2YOjIZ" value="0" />
            <property role="2YOjI0" value="loaded" />
          </node>
          <node concept="ULtNw" id="1zQNQW5jL2O" role="1rTWR">
            <property role="2YOjIX" value="6" />
            <property role="TrG5h" value="targetKeywords" />
            <property role="2YOjIY" value="string" />
            <property role="2YOjIZ" value="0" />
            <property role="2YOjI0" value="loaded" />
          </node>
          <node concept="ULwCV" id="1zQNQW5jL2P" role="1rTWR">
            <property role="2YOjIX" value="7" />
            <property role="TrG5h" value="targetParagraphs" />
            <property role="2YOjIY" value="stringarray" />
            <property role="2YOjIZ" value="0" />
            <property role="2YOjI0" value="loaded" />
          </node>
          <node concept="ULtNw" id="1zQNQW5jL2Q" role="1rTWR">
            <property role="2YOjIX" value="8" />
            <property role="TrG5h" value="targetTitle" />
            <property role="2YOjIY" value="string" />
            <property role="2YOjIZ" value="0" />
            <property role="2YOjI0" value="loaded" />
          </node>
        </node>
      </node>
    </node>
    <node concept="j0_pd" id="s_$oGKvI3e" role="_iOnB">
      <property role="TrG5h" value="Preprocess" />
      <node concept="ktoKp" id="s_$oGKvI3g" role="j0_vt">
        <node concept="3Hns1d" id="1zQNQW5jzv2" role="1aduh9">
          <node concept="j1QaX" id="1zQNQW5jEwu" role="3HmN6A">
            <ref role="j1QaO" node="1zQNQW5j$4J" resolve="inst" />
          </node>
          <node concept="3Hm1LB" id="1zQNQW5jKNf" role="3Hnsvv">
            <node concept="3eFab4" id="1zQNQW5jLcv" role="3Hml3Q">
              <ref role="3eFab5" node="1zQNQW5jL2T" resolve="postMedia" />
            </node>
          </node>
          <node concept="25gkm8" id="1zQNQW5jLrp" role="3Hnsvv">
            <property role="TrG5h" value="postMeta" />
            <node concept="25gknu" id="1zQNQW5jLyP" role="25gkkT">
              <property role="z0WxM" value="undefined" />
              <node concept="1QScDb" id="3$o$AJ1iEcN" role="25gknv">
                <node concept="3eFab4" id="4_Ybdo9M39I" role="30czhm">
                  <ref role="3eFab5" node="1zQNQW5jL2X" resolve="targetDescription" />
                </node>
                <node concept="1uMQU5" id="4_Ybdo9M3in" role="1QScD9" />
              </node>
            </node>
          </node>
          <node concept="3Hm1LB" id="1zQNQW5jLNF" role="3Hnsvv">
            <node concept="3eFab4" id="1zQNQW5jMiJ" role="3Hml3Q">
              <ref role="3eFab5" node="1zQNQW5jL2X" resolve="targetDescription" />
            </node>
          </node>
          <node concept="3Hm1LB" id="1zQNQW5jMqo" role="3Hnsvv">
            <node concept="3eFab4" id="46b_jc7TNAE" role="3Hml3Q">
              <ref role="3eFab5" node="1zQNQW5jL2T" resolve="postMedia" />
            </node>
          </node>
          <node concept="25gkm8" id="1zQNQW5jMDG" role="3Hnsvv">
            <property role="TrG5h" value="numParagraphs" />
            <node concept="25gknu" id="1zQNQW5jMLj" role="25gkkT">
              <property role="z0WxM" value="undefined" />
              <node concept="1QScDb" id="1zQNQW5jMLD" role="25gknv">
                <node concept="1n_O9Z" id="1zQNQW5kFAe" role="1QScD9" />
                <node concept="2vmvVl" id="3$o$AJ1iE$U" role="30czhm" />
              </node>
            </node>
          </node>
          <node concept="25gkm8" id="3$o$AJ1iDrB" role="3Hnsvv">
            <property role="TrG5h" value="asdasd" />
          </node>
        </node>
        <node concept="2vmvVl" id="46b_jc7TV5v" role="1aduh9" />
        <node concept="3Hns1d" id="1WKcFvq7KX8" role="1aduh9">
          <node concept="2YFp04" id="1WKcFvq7KXa" role="3HmN6A" />
        </node>
      </node>
      <node concept="j08yR" id="1zQNQW5j$4J" role="j08y_">
        <property role="TrG5h" value="inst" />
        <ref role="12zMiE" node="s_$oGKv$yP" resolve="LoadData" />
        <ref role="1mWFaZ" node="1zQNQW5jKwu" resolve="inst" />
      </node>
    </node>
  </node>
</model>

