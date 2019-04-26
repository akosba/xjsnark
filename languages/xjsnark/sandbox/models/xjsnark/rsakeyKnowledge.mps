<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1d35c16c-bfe5-4213-b027-918b73201c71(xjsnark.rsakeyKnowledge)">
  <persistence version="9" />
  <languages>
    <use id="0688d542-e2a3-492c-a31f-0e921fd6a8fb" name="xjsnark" version="0" />
    <use id="ed6d7656-532c-4bc2-81d1-af945aeb8280" name="jetbrains.mps.baseLanguage.blTypes" version="0" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
  </languages>
  <imports>
    <import index="xlxw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.math(JDK/)" />
    <import index="85wc" ref="1e4d45b9-368c-4e87-8555-ad69375f82e7/java:backend.config(xjsnark.runtime/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="0688d542-e2a3-492c-a31f-0e921fd6a8fb" name="xjsnark">
      <concept id="7495353643781164522" name="xjsnark.structure.VerifiedWitnessBlock" flags="lg" index="zxlm7">
        <child id="7495353643781164523" name="witnesses" index="zxlm6" />
      </concept>
      <concept id="7553992366104093706" name="xjsnark.structure.ValueOp" flags="ng" index="2Ds8w2" />
      <concept id="7495353643616961541" name="xjsnark.structure.SingleLineCommentClassMember" flags="ng" index="DJdLC">
        <property id="7495353643619293787" name="text" index="DRO8Q" />
      </concept>
      <concept id="6555837584709755947" name="xjsnark.structure.PreTestBlock" flags="ng" index="3jfauB">
        <child id="6555837584709755948" name="statements" index="3jfauw" />
      </concept>
      <concept id="6555837584709756017" name="xjsnark.structure.PostTestBlock" flags="ng" index="3jfavX">
        <child id="6555837584709756018" name="statements" index="3jfavY" />
      </concept>
      <concept id="4165393367773768613" name="xjsnark.structure.InputBlock" flags="lg" index="3q8xyn">
        <child id="4165393367773770665" name="inputs" index="3q8w2r" />
      </concept>
      <concept id="4165393367774947854" name="xjsnark.structure.JUnsignedIntegerType" flags="ig" index="3qc1$W">
        <property id="4165393367774948449" name="bitwidth" index="3qc1Xj" />
      </concept>
      <concept id="4165393367774804580" name="xjsnark.structure.WitnessBlock" flags="lg" index="3qc$_m" />
      <concept id="4165393367774729195" name="xjsnark.structure.OutputBlock" flags="lg" index="3qdm3p" />
      <concept id="8340315132972716924" name="xjsnark.structure.VerifyEqStatement" flags="ng" index="3s6pcg">
        <child id="8340315132972716925" name="exp1" index="3s6pch" />
        <child id="8340315132972716926" name="exp2" index="3s6pci" />
      </concept>
      <concept id="7263056763233056571" name="xjsnark.structure.ProgramDefinition" flags="ig" index="1KMFyu" />
      <concept id="9096502420330357553" name="xjsnark.structure.JUnsignedIntegerConversion" flags="ng" index="3SuevK">
        <child id="9096502420330357585" name="argument" index="3Sueug" />
        <child id="9096502420330357558" name="jType" index="3SuevR" />
      </concept>
      <concept id="4415826925292972403" name="xjsnark.structure.TestBlock" flags="lg" index="1UYk92">
        <property id="6555837584710830772" name="active" index="3j8K$S" />
        <property id="6555837584709755745" name="name" index="3jfa3H" />
        <child id="6555837584709756076" name="postBlock" index="3jfasw" />
        <child id="6555837584709756012" name="preBlock" index="3jfavw" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1KMFyu" id="2qKKpuf7uBp">
    <property role="IEkAT" value="false" />
    <property role="1EXbeo" value="true" />
    <property role="2bfB8j" value="true" />
    <property role="1sVAO0" value="false" />
    <property role="TrG5h" value="RSA_KeyKnowledge" />
    <node concept="DJdLC" id="2qKKpuf7AUw" role="jymVt">
      <property role="DRO8Q" value="declare inputs/witnesses" />
    </node>
    <node concept="3Tm1VV" id="2qKKpuf7uBq" role="1B3o_S" />
    <node concept="312cEg" id="6w4Q6PbPAY5" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="p" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm1VV" id="6w4Q6PbPDoc" role="1B3o_S" />
      <node concept="3qc1$W" id="2qKKpuf7uWr" role="1tU5fm">
        <property role="3qc1Xj" value="1024" />
      </node>
    </node>
    <node concept="312cEg" id="6w4Q6PbPB1V" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="q" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm1VV" id="6w4Q6PbPDsG" role="1B3o_S" />
      <node concept="3qc1$W" id="2qKKpuf7uZ1" role="1tU5fm">
        <property role="3qc1Xj" value="1024" />
      </node>
    </node>
    <node concept="312cEg" id="6w4Q6PbPBeE" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="modulus" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm1VV" id="6w4Q6PbPDuY" role="1B3o_S" />
      <node concept="3qc1$W" id="2qKKpuf7v6o" role="1tU5fm">
        <property role="3qc1Xj" value="2048" />
      </node>
    </node>
    <node concept="DJdLC" id="2qKKpuf7vpa" role="jymVt">
      <property role="DRO8Q" value="Note that &quot;public&quot; above is the java visibility, not whether something is secret or not." />
    </node>
    <node concept="DJdLC" id="2qKKpuf7wy0" role="jymVt">
      <property role="DRO8Q" value="To label an attribute as secret for the circuit use the labeling blocks below." />
    </node>
    <node concept="DJdLC" id="2qKKpuf7zOm" role="jymVt">
      <property role="DRO8Q" value="** The reason for declaring them as public just to avoid a warning in the underlying framework about unassigned private fields" />
    </node>
    <node concept="2tJIrI" id="2qKKpuf7uBv" role="jymVt" />
    <node concept="DJdLC" id="2qKKpuf7$FL" role="jymVt">
      <property role="DRO8Q" value="now define what's input/output or witnesses that have or have not to be checked" />
    </node>
    <node concept="3q8xyn" id="2qKKpuf7uBw" role="jymVt">
      <node concept="37vLTw" id="2qKKpuf7x53" role="3q8w2r">
        <ref role="3cqZAo" node="6w4Q6PbPBeE" resolve="modulus" />
      </node>
    </node>
    <node concept="3qdm3p" id="2qKKpuf7uBx" role="jymVt" />
    <node concept="2tJIrI" id="2qKKpuf7xik" role="jymVt" />
    <node concept="DJdLC" id="2qKKpuf7xo7" role="jymVt">
      <property role="DRO8Q" value="Here we want to verify the ranges of the wires representing p and q so that the prover does not cheat using " />
    </node>
    <node concept="DJdLC" id="5tgzV4FBcMd" role="jymVt">
      <property role="DRO8Q" value="arithmetic overflows. " />
    </node>
    <node concept="DJdLC" id="2qKKpuf7xv1" role="jymVt">
      <property role="DRO8Q" value="Use this block to label witnesses if not sure whether range checks are needed or not." />
    </node>
    <node concept="zxlm7" id="2qKKpuf7uBy" role="jymVt">
      <node concept="37vLTw" id="2qKKpuf7x6d" role="zxlm6">
        <ref role="3cqZAo" node="6w4Q6PbPAY5" resolve="p" />
      </node>
      <node concept="37vLTw" id="2qKKpuf7x8p" role="zxlm6">
        <ref role="3cqZAo" node="6w4Q6PbPB1V" resolve="q" />
      </node>
    </node>
    <node concept="2tJIrI" id="5tgzV4FBdZE" role="jymVt" />
    <node concept="3qc$_m" id="2qKKpuf7uBz" role="jymVt" />
    <node concept="2tJIrI" id="2qKKpuf7uB_" role="jymVt" />
    <node concept="3clFb_" id="2qKKpuf7uBA" role="jymVt">
      <property role="TrG5h" value="outsource" />
      <node concept="3cqZAl" id="2qKKpuf7uBB" role="3clF45" />
      <node concept="3Tm1VV" id="2qKKpuf7uBC" role="1B3o_S" />
      <node concept="3clFbS" id="2qKKpuf7uBD" role="3clF47">
        <node concept="3clFbH" id="18zTa4dXFub" role="3cqZAp" />
        <node concept="3SKdUt" id="2qKKpuf80GG" role="3cqZAp">
          <node concept="3SKdUq" id="2qKKpuf80GI" role="3SKWNk">
            <property role="3SKdUp" value="Checking Validity" />
          </node>
        </node>
        <node concept="3SKdUt" id="2qKKpuf7zpk" role="3cqZAp">
          <node concept="3SKdUq" id="6w4Q6PbQohm" role="3SKWNk">
            <property role="3SKdUp" value="if we multiply p*q directly, we will get a 1024-bit integer" />
          </node>
        </node>
        <node concept="3SKdUt" id="2qKKpuf7zs3" role="3cqZAp">
          <node concept="3SKdUq" id="2qKKpuf7zs5" role="3SKWNk">
            <property role="3SKdUp" value="therefore we just promote one of them to the higher bitwidth type, using uint_2048(p)" />
          </node>
        </node>
        <node concept="3s6pcg" id="2qKKpuf7zkt" role="3cqZAp">
          <node concept="37vLTw" id="2qKKpuf7zlB" role="3s6pch">
            <ref role="3cqZAo" node="6w4Q6PbPBeE" resolve="modulus" />
          </node>
          <node concept="17qRlL" id="2qKKpuf7znC" role="3s6pci">
            <node concept="37vLTw" id="2qKKpuf7znS" role="3uHU7w">
              <ref role="3cqZAo" node="6w4Q6PbPB1V" resolve="q" />
            </node>
            <node concept="3SuevK" id="2qKKpuf7zBC" role="3uHU7B">
              <node concept="3qc1$W" id="2qKKpuf7zBE" role="3SuevR">
                <property role="3qc1Xj" value="2048" />
              </node>
              <node concept="37vLTw" id="2qKKpuf7zDb" role="3Sueug">
                <ref role="3cqZAo" node="6w4Q6PbPAY5" resolve="p" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2qKKpuf7z_6" role="3cqZAp">
          <node concept="3SKdUq" id="2qKKpuf7z_8" role="3SKWNk">
            <property role="3SKdUp" value="casting can be done as well, but its editing is bit tricky in this environment" />
          </node>
        </node>
        <node concept="3clFbH" id="2qKKpuf7PI9" role="3cqZAp" />
        <node concept="3SKdUt" id="2qKKpuf7PPf" role="3cqZAp">
          <node concept="3SKdUq" id="2qKKpuf7PPh" role="3SKWNk">
            <property role="3SKdUp" value="In the background, xjsnark checks conditions on p and q, and verifies the equality efficiently" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2qKKpuf7uBG" role="jymVt" />
    <node concept="2tJIrI" id="2qKKpuf7uBH" role="jymVt" />
    <node concept="1UYk92" id="2qKKpuf7uBI" role="jymVt">
      <property role="3j8K$S" value="true" />
      <property role="3jfa3H" value="Sample_Run1" />
      <node concept="3jfauB" id="2qKKpuf7uBJ" role="3jfavw">
        <node concept="3clFbS" id="2qKKpuf7uBK" role="3jfauw">
          <node concept="3SKdUt" id="6w4Q6PbQvDy" role="3cqZAp">
            <node concept="3SKdUq" id="6w4Q6PbQvD$" role="3SKWNk">
              <property role="3SKdUp" value="Use Java BigInteger to set values" />
            </node>
          </node>
          <node concept="3clFbF" id="6w4Q6PbQxsW" role="3cqZAp">
            <node concept="37vLTI" id="6w4Q6PbQxzo" role="3clFbG">
              <node concept="2OqwBi" id="2qKKpuf7QfC" role="37vLTJ">
                <node concept="37vLTw" id="6w4Q6PbQxsU" role="2Oq$k0">
                  <ref role="3cqZAo" node="6w4Q6PbPBeE" resolve="modulus" />
                </node>
                <node concept="2Ds8w2" id="2qKKpuf7Qh1" role="2OqNvi" />
              </node>
              <node concept="2ShNRf" id="6w4Q6PcpDW0" role="37vLTx">
                <node concept="1pGfFk" id="6w4Q6PcpEak" role="2ShVmc">
                  <ref role="37wK5l" to="xlxw:~BigInteger.&lt;init&gt;(java.lang.String,int)" resolve="BigInteger" />
                  <node concept="Xl_RD" id="6w4Q6PcpEch" role="37wK5m">
                    <property role="Xl_RC" value="cdfde0f7da44ba3f44e1a07cac97c079bc407697caab25089a92cbaf00efc98a081029407b851133febd308a5360b4be8ffaa3e176b586bc224c6f8589148bf12c409cf338bff75b9e760e28868d4084d62bd42b97c4bdd72784ab9fe5be6b16b6ed75ab75c11f685e3f44f985c3d573854985953a752262d26543fd2e39592b76afb62ab05a0fdfcd1e673bb069d1b8c5ef93b319006085f62dab8758d2b314b9ed569285a3753505642e2b687349e42fec9c19f57eb7467549d4746f0c3876ba59b1aeef75869dd6a45252b92259e61b9bead6eeb5e1809e09215ea2970018bb9015d00a49ba7de55e7a230e4b468aba7c0a88eb736705fd6b260a763f2583" />
                  </node>
                  <node concept="3cmrfG" id="6w4Q6PcuW5U" role="37wK5m">
                    <property role="3cmrfH" value="16" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6w4Q6PbQxVK" role="3cqZAp" />
          <node concept="3clFbF" id="6w4Q6PbQvnU" role="3cqZAp">
            <node concept="37vLTI" id="6w4Q6PbQvtg" role="3clFbG">
              <node concept="2ShNRf" id="6w4Q6PcpCVM" role="37vLTx">
                <node concept="1pGfFk" id="6w4Q6PcpDaW" role="2ShVmc">
                  <ref role="37wK5l" to="xlxw:~BigInteger.&lt;init&gt;(java.lang.String,int)" resolve="BigInteger" />
                  <node concept="Xl_RD" id="6w4Q6PcpDc0" role="37wK5m">
                    <property role="Xl_RC" value="f290a3bf144c3155194c0bafd14f7c28e775e960e2d41f7a2089b5315f6027937d0e7e53a2a51e66a6b1c4d08b9015ca89c4a1e2085eea680dca3ec18ff085627fbc20fc56363d40615264772600702be853acbe46d79271ca7d6699c5fab3e11a9cd0c77b2c0bed064143c112f7cd938439b5f5a02e9a7094ee549366dd2e11" />
                  </node>
                  <node concept="3cmrfG" id="6w4Q6PcuW1o" role="37wK5m">
                    <property role="3cmrfH" value="16" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2qKKpuf7Rvc" role="37vLTJ">
                <node concept="37vLTw" id="2qKKpuf7Ruo" role="2Oq$k0">
                  <ref role="3cqZAo" node="6w4Q6PbPAY5" resolve="p" />
                </node>
                <node concept="2Ds8w2" id="2qKKpuf7Rwv" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6w4Q6PbQvYh" role="3cqZAp">
            <node concept="37vLTI" id="6w4Q6PbQw4g" role="3clFbG">
              <node concept="2ShNRf" id="6w4Q6PcpDxn" role="37vLTx">
                <node concept="1pGfFk" id="6w4Q6PcpDJG" role="2ShVmc">
                  <ref role="37wK5l" to="xlxw:~BigInteger.&lt;init&gt;(java.lang.String,int)" resolve="BigInteger" />
                  <node concept="Xl_RD" id="6w4Q6PcpDLC" role="37wK5m">
                    <property role="Xl_RC" value="d966a96decaad14b86f2372d228c5ac955ebe9410f88dd77c2a26d40549a9ddaf2c03476ed1725d0e5b42cf89d1ee1ca367dcfbd8febb2d7d8431e92c441ae3900394391b1ca9bb02eb3b4e69418d2e8099be805e28e1024965897a181872581dd3e46dfa6069fab969064b885528c1217973f58876bc4823a78ca204c97d653" />
                  </node>
                  <node concept="3cmrfG" id="6w4Q6PcuVU6" role="37wK5m">
                    <property role="3cmrfH" value="16" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2qKKpuf7RC1" role="37vLTJ">
                <node concept="37vLTw" id="2qKKpuf7RAE" role="2Oq$k0">
                  <ref role="3cqZAo" node="6w4Q6PbPB1V" resolve="q" />
                </node>
                <node concept="2Ds8w2" id="2qKKpuf7RDk" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3jfavX" id="2qKKpuf7uBL" role="3jfasw">
        <node concept="3clFbS" id="2qKKpuf7uBM" role="3jfavY">
          <node concept="3SKdUt" id="2qKKpuf7S5m" role="3cqZAp">
            <node concept="3SKdUq" id="2qKKpuf7S5n" role="3SKWNk">
              <property role="3SKdUp" value="no output expected. We just want to see that the assertions will go through. " />
            </node>
          </node>
          <node concept="3SKdUt" id="2qKKpuf878l" role="3cqZAp">
            <node concept="3SKdUq" id="2qKKpuf878n" role="3SKWNk">
              <property role="3SKdUp" value="Any changes to the numbers above should result into failed assertions" />
            </node>
          </node>
          <node concept="3clFbF" id="2qKKpufJ71x" role="3cqZAp">
            <node concept="2OqwBi" id="2qKKpufJ74s" role="3clFbG">
              <node concept="10M0yZ" id="2qKKpufJ71w" role="2Oq$k0">
                <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              </node>
              <node concept="liA8E" id="2qKKpufJ77E" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                <node concept="Xl_RD" id="2qKKpufJ79t" role="37wK5m">
                  <property role="Xl_RC" value="If no failed assertions appear, everything looks to be OK for this circuit." />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1t1EHTMi9DS" role="3cqZAp" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2qKKpuf7uBN" role="jymVt" />
    <node concept="2tJIrI" id="2qKKpuf7uBO" role="jymVt" />
    <node concept="2YIFZL" id="2qKKpuf7uBP" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="3cqZAl" id="2qKKpuf7uBQ" role="3clF45" />
      <node concept="3Tm1VV" id="2qKKpuf7uBR" role="1B3o_S" />
      <node concept="3clFbS" id="2qKKpuf7uBS" role="3clF47">
        <node concept="3SKdUt" id="2qKKpuf7uBW" role="3cqZAp">
          <node concept="3SKdUq" id="2qKKpuf7uBX" role="3SKWNk">
            <property role="3SKdUp" value="This is the java main method. Its purpose is to make the Progam runnable in the environment" />
          </node>
        </node>
        <node concept="3SKdUt" id="2qKKpuf7uBY" role="3cqZAp">
          <node concept="3SKdUq" id="2qKKpuf7uBZ" role="3SKWNk">
            <property role="3SKdUp" value="This method can be left empty, or used to set Configuration params (see examples)" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2qKKpuf7uBT" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="2qKKpuf7uBU" role="1tU5fm">
          <node concept="17QB3L" id="2qKKpuf7uBV" role="10Q1$1" />
        </node>
      </node>
    </node>
  </node>
</model>

