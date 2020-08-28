<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b8f24ffe-c5d6-460f-b30e-d91087af356a(xjsnark.rsa)">
  <persistence version="9" />
  <languages>
    <use id="0688d542-e2a3-492c-a31f-0e921fd6a8fb" name="xjsnark" version="0" />
    <use id="ed6d7656-532c-4bc2-81d1-af945aeb8280" name="jetbrains.mps.baseLanguage.blTypes" version="0" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
  </languages>
  <imports>
    <import index="xlxw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.math(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1179360813171" name="jetbrains.mps.baseLanguage.structure.HexIntegerLiteral" flags="nn" index="2nou5x">
        <property id="1179360856892" name="value" index="2noCCI" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
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
        <child id="1068431790190" name="initializer" index="33vP2m" />
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
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1214918975462" name="jetbrains.mps.baseLanguage.structure.PostfixDecrementExpression" flags="nn" index="3uO5VW" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="0688d542-e2a3-492c-a31f-0e921fd6a8fb" name="xjsnark">
      <concept id="6499585712695573120" name="xjsnark.structure.GroupRecord" flags="ng" index="2ynP14">
        <property id="6499585712695573123" name="modulus" index="2ynP17" />
      </concept>
      <concept id="6499585712695580367" name="xjsnark.structure.JGroupType" flags="ig" index="2ynVKb">
        <reference id="6499585712695580368" name="groupRec" index="2ynVKk" />
      </concept>
      <concept id="6499585712695580394" name="xjsnark.structure.GroupDefTable" flags="ng" index="2ynVKI">
        <child id="6499585712695580395" name="groupDefinitions" index="2ynVKJ" />
      </concept>
      <concept id="7495353643781164522" name="xjsnark.structure.VerifiedWitnessBlock" flags="lg" index="zxlm7" />
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
      <concept id="4165393367774729195" name="xjsnark.structure.OutputBlock" flags="lg" index="3qdm3p">
        <child id="4165393367774729196" name="outputs" index="3qdm3u" />
      </concept>
      <concept id="7263056763233056571" name="xjsnark.structure.ProgramDefinition" flags="ig" index="1KMFyu" />
      <concept id="6307611378306596055" name="xjsnark.structure.JBooleanType" flags="ig" index="1QD1ZQ" />
      <concept id="4415826925292972403" name="xjsnark.structure.TestBlock" flags="lg" index="1UYk92">
        <property id="6555837584710830772" name="active" index="3j8K$S" />
        <property id="6555837584709755745" name="name" index="3jfa3H" />
        <child id="6555837584709756076" name="postBlock" index="3jfasw" />
        <child id="6555837584709756012" name="preBlock" index="3jfavw" />
      </concept>
      <concept id="6238098797407520605" name="xjsnark.structure.BitsOp" flags="ng" index="1VPAEj" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2ynVKI" id="5CNaGjSS9v7">
    <node concept="2ynP14" id="5CNaGjSS9v8" role="2ynVKJ">
      <property role="TrG5h" value="N" />
      <property role="2ynP17" value="25195908475657893494027183240048398571429282126204032027777137836043662020707595556264018525880784406918290641249515082189298559149176184502808489120072844992687392807287776735971418347270261896375014971824691165077613379859095700097330459748808428401797429100642458691817195118746121515172654632282216869987549182422433637259085141865462043576798423387184774447920739934236584823824281198163815010674810451660377306056201619676256133844143603833904414952634432190114657544454178424020924616515723350778707749817125772467962926386356373289912154831438167899885040445364023527381951378636564391212010397122822120720357" />
    </node>
  </node>
  <node concept="1KMFyu" id="5CNaGjSS9Fb">
    <property role="IEkAT" value="false" />
    <property role="1EXbeo" value="true" />
    <property role="2bfB8j" value="true" />
    <property role="1sVAO0" value="false" />
    <property role="TrG5h" value="RSAModExpFixedModulusFixedExponent" />
    <node concept="DJdLC" id="5CNaGjSS9Fc" role="jymVt">
      <property role="DRO8Q" value=" This circuit computes b = a^e mod N where N is a 2048-bit modulus." />
    </node>
    <node concept="DJdLC" id="5CNaGjSS9Fd" role="jymVt">
      <property role="DRO8Q" value=" This assumes a fixed N that is set in a GroupDefTable and a fixed public exponent e = 0x10001." />
    </node>
    <node concept="2tJIrI" id="5CNaGjSS9Fe" role="jymVt" />
    <node concept="DJdLC" id="65Ie7c$2qHd" role="jymVt">
      <property role="DRO8Q" value="This uses a type Z*_ to indicate the multiplicative group of integers mod N. Note that this could have" />
    </node>
    <node concept="DJdLC" id="65Ie7c$2s4x" role="jymVt">
      <property role="DRO8Q" value="been implemented before using the Field type while restricting it to multiplications only." />
    </node>
    <node concept="DJdLC" id="65Ie7c$2t6J" role="jymVt">
      <property role="DRO8Q" value="However, this type was introduced to make it look more natural and avoid errors." />
    </node>
    <node concept="2tJIrI" id="65Ie7c$2tYp" role="jymVt" />
    <node concept="DJdLC" id="65Ie7c$2ud7" role="jymVt">
      <property role="DRO8Q" value="The following can also be implemented using the uint_ type and % operator, however, the back end " />
    </node>
    <node concept="DJdLC" id="65Ie7c$2v24" role="jymVt">
      <property role="DRO8Q" value="can make better decisions when the purpose of the programmer is known. It's also simpler" />
    </node>
    <node concept="DJdLC" id="65Ie7c$2vTM" role="jymVt">
      <property role="DRO8Q" value="to write the programs in the way below." />
    </node>
    <node concept="2tJIrI" id="65Ie7c$2zzU" role="jymVt" />
    <node concept="DJdLC" id="65Ie7c$2wyk" role="jymVt">
      <property role="DRO8Q" value="Support for variable modulus case will be pushed later to the front end. If interested in these cases," />
    </node>
    <node concept="DJdLC" id="65Ie7c$2xuS" role="jymVt">
      <property role="DRO8Q" value="the code of the RSA gadgets in jsnark can be checked. Both fixed and variable modulus cases are already" />
    </node>
    <node concept="DJdLC" id="65Ie7c$m7bs" role="jymVt">
      <property role="DRO8Q" value="supported there." />
    </node>
    <node concept="2tJIrI" id="65Ie7c$liOq" role="jymVt" />
    <node concept="DJdLC" id="65Ie7c$liX_" role="jymVt">
      <property role="DRO8Q" value="Note that using when using witnesses_assertRange on variables of type Z*_N, this will only verify that" />
    </node>
    <node concept="DJdLC" id="65Ie7c$lkJL" role="jymVt">
      <property role="DRO8Q" value="the witness is less than N. It won't verify that the witness is an element in the group. " />
    </node>
    <node concept="DJdLC" id="65Ie7c$lpS3" role="jymVt">
      <property role="DRO8Q" value="This check might not be needed in many cases. This is why it's not supported by default. " />
    </node>
    <node concept="DJdLC" id="65Ie7c$loPN" role="jymVt">
      <property role="DRO8Q" value="TODO: describe an example later for how to do it in the framework, or add native support for it." />
    </node>
    <node concept="2tJIrI" id="65Ie7c$lovY" role="jymVt" />
    <node concept="DJdLC" id="5CNaGjSS9Fo" role="jymVt">
      <property role="DRO8Q" value="ignore warning or change visibility" />
    </node>
    <node concept="312cEg" id="5CNaGjSS9Fp" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="a" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="5CNaGjSS9Fq" role="1B3o_S" />
      <node concept="2ynVKb" id="5CNaGjSSa2k" role="1tU5fm">
        <ref role="2ynVKk" node="5CNaGjSS9v8" resolve="N" />
      </node>
    </node>
    <node concept="312cEg" id="5CNaGjSS9Fs" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="b" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="5CNaGjSS9Ft" role="1B3o_S" />
      <node concept="2ynVKb" id="5CNaGjSSaaG" role="1tU5fm">
        <ref role="2ynVKk" node="5CNaGjSS9v8" resolve="N" />
      </node>
    </node>
    <node concept="2tJIrI" id="65Ie7c$2qdG" role="jymVt" />
    <node concept="2tJIrI" id="65Ie7c$2qla" role="jymVt" />
    <node concept="3Tm1VV" id="5CNaGjSS9Fw" role="1B3o_S" />
    <node concept="3q8xyn" id="5CNaGjSS9Fx" role="jymVt">
      <node concept="37vLTw" id="5CNaGjSS9Fy" role="3q8w2r">
        <ref role="3cqZAo" node="5CNaGjSS9Fp" resolve="a" />
      </node>
    </node>
    <node concept="3qdm3p" id="5CNaGjSS9Fz" role="jymVt">
      <node concept="37vLTw" id="5CNaGjSS9F$" role="3qdm3u">
        <ref role="3cqZAo" node="5CNaGjSS9Fs" resolve="b" />
      </node>
    </node>
    <node concept="zxlm7" id="5CNaGjSS9F_" role="jymVt" />
    <node concept="3qc$_m" id="5CNaGjSS9FA" role="jymVt" />
    <node concept="2tJIrI" id="5CNaGjSS9FB" role="jymVt" />
    <node concept="2tJIrI" id="5CNaGjSS9FC" role="jymVt" />
    <node concept="3clFb_" id="5CNaGjSS9FD" role="jymVt">
      <property role="TrG5h" value="outsource" />
      <node concept="3cqZAl" id="5CNaGjSS9FE" role="3clF45" />
      <node concept="3Tm1VV" id="5CNaGjSS9FF" role="1B3o_S" />
      <node concept="3clFbS" id="5CNaGjSS9FG" role="3clF47">
        <node concept="3SKdUt" id="65Ie7c$2Gap" role="3cqZAp">
          <node concept="3SKdUq" id="65Ie7c$2Gar" role="3SKWNk">
            <property role="3SKdUp" value="This computes b = a^e mod N (no need to specify the mod operation. This is handled in the background)" />
          </node>
        </node>
        <node concept="3clFbF" id="5CNaGjSS9FP" role="3cqZAp">
          <node concept="37vLTI" id="5CNaGjSS9FQ" role="3clFbG">
            <node concept="37vLTw" id="5CNaGjSS9FR" role="37vLTx">
              <ref role="3cqZAo" node="5CNaGjSS9Fp" resolve="a" />
            </node>
            <node concept="37vLTw" id="5CNaGjSS9FS" role="37vLTJ">
              <ref role="3cqZAo" node="5CNaGjSS9Fs" resolve="b" />
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="5CNaGjSS9FT" role="3cqZAp">
          <node concept="3clFbS" id="5CNaGjSS9FU" role="2LFqv$">
            <node concept="3clFbF" id="5CNaGjSS9FV" role="3cqZAp">
              <node concept="37vLTI" id="5CNaGjSS9FW" role="3clFbG">
                <node concept="17qRlL" id="5CNaGjSS9FX" role="37vLTx">
                  <node concept="37vLTw" id="5CNaGjSS9FY" role="3uHU7w">
                    <ref role="3cqZAo" node="5CNaGjSS9Fs" resolve="b" />
                  </node>
                  <node concept="37vLTw" id="5CNaGjSS9FZ" role="3uHU7B">
                    <ref role="3cqZAo" node="5CNaGjSS9Fs" resolve="b" />
                  </node>
                </node>
                <node concept="37vLTw" id="5CNaGjSS9G0" role="37vLTJ">
                  <ref role="3cqZAo" node="5CNaGjSS9Fs" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5CNaGjSS9G1" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="5CNaGjSS9G2" role="1tU5fm" />
            <node concept="3cmrfG" id="5CNaGjSS9G3" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="5CNaGjSS9G4" role="1Dwp0S">
            <node concept="3cmrfG" id="5CNaGjSS9G5" role="3uHU7w">
              <property role="3cmrfH" value="16" />
            </node>
            <node concept="37vLTw" id="5CNaGjSS9G6" role="3uHU7B">
              <ref role="3cqZAo" node="5CNaGjSS9G1" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="5CNaGjSS9G7" role="1Dwrff">
            <node concept="37vLTw" id="5CNaGjSS9G8" role="2$L3a6">
              <ref role="3cqZAo" node="5CNaGjSS9G1" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5CNaGjSS9G9" role="3cqZAp">
          <node concept="37vLTI" id="5CNaGjSS9Ga" role="3clFbG">
            <node concept="17qRlL" id="5CNaGjSS9Gb" role="37vLTx">
              <node concept="37vLTw" id="5CNaGjSS9Gc" role="3uHU7w">
                <ref role="3cqZAo" node="5CNaGjSS9Fp" resolve="a" />
              </node>
              <node concept="37vLTw" id="5CNaGjSS9Gd" role="3uHU7B">
                <ref role="3cqZAo" node="5CNaGjSS9Fs" resolve="b" />
              </node>
            </node>
            <node concept="37vLTw" id="5CNaGjSS9Ge" role="37vLTJ">
              <ref role="3cqZAo" node="5CNaGjSS9Fs" resolve="b" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5CNaGjSS9Gf" role="jymVt" />
    <node concept="1UYk92" id="5CNaGjSS9Gg" role="jymVt">
      <property role="3j8K$S" value="true" />
      <property role="3jfa3H" value="Sample_Run1" />
      <node concept="3jfauB" id="5CNaGjSS9Gh" role="3jfavw">
        <node concept="3clFbS" id="5CNaGjSS9Gi" role="3jfauw">
          <node concept="3clFbF" id="5CNaGjSS9Gj" role="3cqZAp">
            <node concept="37vLTI" id="5CNaGjSS9Gk" role="3clFbG">
              <node concept="2ShNRf" id="5CNaGjSS9Gl" role="37vLTx">
                <node concept="1pGfFk" id="5CNaGjSS9Gm" role="2ShVmc">
                  <ref role="37wK5l" to="xlxw:~BigInteger.&lt;init&gt;(java.lang.String)" resolve="BigInteger" />
                  <node concept="Xl_RD" id="5CNaGjSS9Gn" role="37wK5m">
                    <property role="Xl_RC" value="14622490781538377313046027984667565122001734301737993489240620299325830434011417032238876653456789361374620067300504413687155387982606047070437359120367768168959125133675417540948360335680860943360905070465320835303881014453576538443090748146681767859059104596160872939472318690408344317048613990009207689344764129416291964384018336815262546357393880504735389218689592018660082734565461532427974021588948938549652153069532368867013364841834569598713417519090233588942086054164559535453419403829125660164918847030913422963137212450839649779730816926161245008007959778599791254118526950556847883189689898829520513422592" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5CNaGjSS9Go" role="37vLTJ">
                <node concept="37vLTw" id="5CNaGjSS9Gp" role="2Oq$k0">
                  <ref role="3cqZAo" node="5CNaGjSS9Fp" resolve="a" />
                </node>
                <node concept="2Ds8w2" id="5CNaGjSS9Gq" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3jfavX" id="5CNaGjSS9Gr" role="3jfasw">
        <node concept="3clFbS" id="5CNaGjSS9Gs" role="3jfavY">
          <node concept="3cpWs8" id="5CNaGjSS9Gt" role="3cqZAp">
            <node concept="3cpWsn" id="5CNaGjSS9Gu" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="5CNaGjSS9Gv" role="1tU5fm">
                <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
              </node>
              <node concept="2ShNRf" id="5CNaGjSS9Gw" role="33vP2m">
                <node concept="1pGfFk" id="5CNaGjSS9Gx" role="2ShVmc">
                  <ref role="37wK5l" to="xlxw:~BigInteger.&lt;init&gt;(java.lang.String)" resolve="BigInteger" />
                  <node concept="Xl_RD" id="5CNaGjSS9Gy" role="37wK5m">
                    <property role="Xl_RC" value="14622490781538377313046027984667565122001734301737993489240620299325830434011417032238876653456789361374620067300504413687155387982606047070437359120367768168959125133675417540948360335680860943360905070465320835303881014453576538443090748146681767859059104596160872939472318690408344317048613990009207689344764129416291964384018336815262546357393880504735389218689592018660082734565461532427974021588948938549652153069532368867013364841834569598713417519090233588942086054164559535453419403829125660164918847030913422963137212450839649779730816926161245008007959778599791254118526950556847883189689898829520513422592" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5CNaGjSS9Gz" role="3cqZAp">
            <node concept="3cpWsn" id="5CNaGjSS9G$" role="3cpWs9">
              <property role="TrG5h" value="modulus" />
              <node concept="3uibUv" id="5CNaGjSS9G_" role="1tU5fm">
                <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
              </node>
              <node concept="2ShNRf" id="5CNaGjSS9GA" role="33vP2m">
                <node concept="1pGfFk" id="5CNaGjSS9GB" role="2ShVmc">
                  <ref role="37wK5l" to="xlxw:~BigInteger.&lt;init&gt;(java.lang.String)" resolve="BigInteger" />
                  <node concept="Xl_RD" id="5CNaGjSS9GC" role="37wK5m">
                    <property role="Xl_RC" value="25195908475657893494027183240048398571429282126204032027777137836043662020707595556264018525880784406918290641249515082189298559149176184502808489120072844992687392807287776735971418347270261896375014971824691165077613379859095700097330459748808428401797429100642458691817195118746121515172654632282216869987549182422433637259085141865462043576798423387184774447920739934236584823824281198163815010674810451660377306056201619676256133844143603833904414952634432190114657544454178424020924616515723350778707749817125772467962926386356373289912154831438167899885040445364023527381951378636564391212010397122822120720357" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5CNaGjSS9GD" role="3cqZAp">
            <node concept="2OqwBi" id="5CNaGjSS9GE" role="3clFbG">
              <node concept="10M0yZ" id="5CNaGjSS9GF" role="2Oq$k0">
                <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              </node>
              <node concept="liA8E" id="5CNaGjSS9GG" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                <node concept="3K4zz7" id="5CNaGjSS9GH" role="37wK5m">
                  <node concept="Xl_RD" id="5CNaGjSS9GI" role="3K4E3e">
                    <property role="Xl_RC" value="Sample Test Passed!" />
                  </node>
                  <node concept="Xl_RD" id="5CNaGjSS9GJ" role="3K4GZi">
                    <property role="Xl_RC" value="Sample Test Failed" />
                  </node>
                  <node concept="1eOMI4" id="5CNaGjSS9GK" role="3K4Cdx">
                    <node concept="2OqwBi" id="5CNaGjSS9GL" role="1eOMHV">
                      <node concept="2OqwBi" id="5CNaGjSS9GM" role="2Oq$k0">
                        <node concept="37vLTw" id="5CNaGjSS9GN" role="2Oq$k0">
                          <ref role="3cqZAo" node="5CNaGjSS9Fs" resolve="b" />
                        </node>
                        <node concept="2Ds8w2" id="5CNaGjSS9GO" role="2OqNvi" />
                      </node>
                      <node concept="liA8E" id="5CNaGjSS9GP" role="2OqNvi">
                        <ref role="37wK5l" to="xlxw:~BigInteger.equals(java.lang.Object):boolean" resolve="equals" />
                        <node concept="2OqwBi" id="5CNaGjSS9GQ" role="37wK5m">
                          <node concept="37vLTw" id="5CNaGjSS9GR" role="2Oq$k0">
                            <ref role="3cqZAo" node="5CNaGjSS9Gu" resolve="a" />
                          </node>
                          <node concept="liA8E" id="5CNaGjSS9GS" role="2OqNvi">
                            <ref role="37wK5l" to="xlxw:~BigInteger.modPow(java.math.BigInteger,java.math.BigInteger):java.math.BigInteger" resolve="modPow" />
                            <node concept="2YIFZM" id="5CNaGjSS9GT" role="37wK5m">
                              <ref role="37wK5l" to="xlxw:~BigInteger.valueOf(long):java.math.BigInteger" resolve="valueOf" />
                              <ref role="1Pybhc" to="xlxw:~BigInteger" resolve="BigInteger" />
                              <node concept="2nou5x" id="5CNaGjSS9GU" role="37wK5m">
                                <property role="2noCCI" value="10001" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="5CNaGjSS9GV" role="37wK5m">
                              <ref role="3cqZAo" node="5CNaGjSS9G$" resolve="modulus" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5CNaGjSS9GW" role="jymVt" />
    <node concept="2tJIrI" id="5CNaGjSS9GX" role="jymVt" />
    <node concept="2YIFZL" id="5CNaGjSS9GY" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="3cqZAl" id="5CNaGjSS9GZ" role="3clF45" />
      <node concept="3Tm1VV" id="5CNaGjSS9H0" role="1B3o_S" />
      <node concept="3clFbS" id="5CNaGjSS9H1" role="3clF47">
        <node concept="3clFbH" id="5CNaGjSS9H2" role="3cqZAp" />
        <node concept="3SKdUt" id="5CNaGjSS9H3" role="3cqZAp">
          <node concept="3SKdUq" id="5CNaGjSS9H4" role="3SKWNk">
            <property role="3SKdUp" value="This is the java main method. Its purpose is to make the Progam runnable in the environment" />
          </node>
        </node>
        <node concept="3SKdUt" id="5CNaGjSS9H5" role="3cqZAp">
          <node concept="3SKdUq" id="5CNaGjSS9H6" role="3SKWNk">
            <property role="3SKdUp" value="This method can be left empty, or used to set Configuration params (see examples)" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5CNaGjSS9H7" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="5CNaGjSS9H8" role="1tU5fm">
          <node concept="17QB3L" id="5CNaGjSS9H9" role="10Q1$1" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1KMFyu" id="5CNaGjSSMfy">
    <property role="IEkAT" value="false" />
    <property role="1EXbeo" value="true" />
    <property role="2bfB8j" value="true" />
    <property role="1sVAO0" value="false" />
    <property role="TrG5h" value="RSAModExpFixedModulusVariableExponent" />
    <node concept="DJdLC" id="5CNaGjSSMfz" role="jymVt">
      <property role="DRO8Q" value="This circuit computes b = a^e mod N where N is a 2048-bit modulus." />
    </node>
    <node concept="DJdLC" id="5CNaGjSSMf$" role="jymVt">
      <property role="DRO8Q" value="This assumes a fixed N that is set in a GroupDefTable and a variable 17-bit exponent." />
    </node>
    <node concept="DJdLC" id="65Ie7c$2A6H" role="jymVt">
      <property role="DRO8Q" value="This is just for illustration. In many settings, the public exponent can be hardcoded for" />
    </node>
    <node concept="DJdLC" id="65Ie7c$2BjU" role="jymVt">
      <property role="DRO8Q" value="RSA signatures and encryption." />
    </node>
    <node concept="2tJIrI" id="65Ie7c$2_Vk" role="jymVt" />
    <node concept="DJdLC" id="4P_MmFBd7ul" role="jymVt">
      <property role="DRO8Q" value="Note that the circuit will be more expensive in the variable exponent case." />
    </node>
    <node concept="2tJIrI" id="4P_MmFBd7i1" role="jymVt" />
    <node concept="DJdLC" id="65Ie7c$2Ckk" role="jymVt">
      <property role="DRO8Q" value="See notes about the Z*_N type in RSAModExpFixedModulusFixedExponent" />
    </node>
    <node concept="2tJIrI" id="5CNaGjSSMfB" role="jymVt" />
    <node concept="DJdLC" id="5CNaGjSSMfC" role="jymVt">
      <property role="DRO8Q" value="ignore warnings or change visibility" />
    </node>
    <node concept="312cEg" id="5CNaGjSSMfD" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="a" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="5CNaGjSSMfE" role="1B3o_S" />
      <node concept="2ynVKb" id="5CNaGjSSMfF" role="1tU5fm">
        <ref role="2ynVKk" node="5CNaGjSS9v8" resolve="N" />
      </node>
    </node>
    <node concept="312cEg" id="5CNaGjSSNez" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="exponent" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="5CNaGjSSN6K" role="1B3o_S" />
      <node concept="3qc1$W" id="5CNaGjSSNnd" role="1tU5fm">
        <property role="3qc1Xj" value="17" />
      </node>
    </node>
    <node concept="312cEg" id="5CNaGjSSMfG" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="b" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="5CNaGjSSMfH" role="1B3o_S" />
      <node concept="2ynVKb" id="5CNaGjSSMfI" role="1tU5fm">
        <ref role="2ynVKk" node="5CNaGjSS9v8" resolve="N" />
      </node>
    </node>
    <node concept="2tJIrI" id="5CNaGjSSMfJ" role="jymVt" />
    <node concept="3Tm1VV" id="5CNaGjSSMfK" role="1B3o_S" />
    <node concept="3q8xyn" id="5CNaGjSSMfL" role="jymVt">
      <node concept="37vLTw" id="5CNaGjSSMfM" role="3q8w2r">
        <ref role="3cqZAo" node="5CNaGjSSMfD" resolve="a" />
      </node>
      <node concept="37vLTw" id="5CNaGjSSNwp" role="3q8w2r">
        <ref role="3cqZAo" node="5CNaGjSSNez" resolve="exponent" />
      </node>
    </node>
    <node concept="3qdm3p" id="5CNaGjSSMfN" role="jymVt">
      <node concept="37vLTw" id="5CNaGjSSMfO" role="3qdm3u">
        <ref role="3cqZAo" node="5CNaGjSSMfG" resolve="b" />
      </node>
    </node>
    <node concept="zxlm7" id="5CNaGjSSMfP" role="jymVt" />
    <node concept="3qc$_m" id="5CNaGjSSMfQ" role="jymVt" />
    <node concept="2tJIrI" id="5CNaGjSSMfR" role="jymVt" />
    <node concept="2tJIrI" id="5CNaGjSSMfS" role="jymVt" />
    <node concept="3clFb_" id="5CNaGjSSMfT" role="jymVt">
      <property role="TrG5h" value="outsource" />
      <node concept="3cqZAl" id="5CNaGjSSMfU" role="3clF45" />
      <node concept="3Tm1VV" id="5CNaGjSSMfV" role="1B3o_S" />
      <node concept="3clFbS" id="5CNaGjSSMfW" role="3clF47">
        <node concept="3clFbF" id="5CNaGjSSMg5" role="3cqZAp">
          <node concept="37vLTI" id="5CNaGjSSMg6" role="3clFbG">
            <node concept="3cmrfG" id="5CNaGjSSOYl" role="37vLTx">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="37vLTw" id="5CNaGjSSMg8" role="37vLTJ">
              <ref role="3cqZAo" node="5CNaGjSSMfG" resolve="b" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5CNaGjSSNJT" role="3cqZAp">
          <node concept="3cpWsn" id="5CNaGjSSNJW" role="3cpWs9">
            <property role="TrG5h" value="expBits" />
            <node concept="10Q1$e" id="5CNaGjSSNLT" role="1tU5fm">
              <node concept="1QD1ZQ" id="5CNaGjSSNJR" role="10Q1$1" />
            </node>
            <node concept="2OqwBi" id="5CNaGjSSOEj" role="33vP2m">
              <node concept="37vLTw" id="5CNaGjSSODs" role="2Oq$k0">
                <ref role="3cqZAo" node="5CNaGjSSNez" resolve="exponent" />
              </node>
              <node concept="1VPAEj" id="5CNaGjSSOFC" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="5CNaGjSSMg9" role="3cqZAp">
          <node concept="3clFbS" id="5CNaGjSSMga" role="2LFqv$">
            <node concept="3clFbF" id="5CNaGjSSMgb" role="3cqZAp">
              <node concept="37vLTI" id="5CNaGjSSMgc" role="3clFbG">
                <node concept="17qRlL" id="5CNaGjSSMgd" role="37vLTx">
                  <node concept="37vLTw" id="5CNaGjSSMge" role="3uHU7w">
                    <ref role="3cqZAo" node="5CNaGjSSMfG" resolve="b" />
                  </node>
                  <node concept="37vLTw" id="5CNaGjSSMgf" role="3uHU7B">
                    <ref role="3cqZAo" node="5CNaGjSSMfG" resolve="b" />
                  </node>
                </node>
                <node concept="37vLTw" id="5CNaGjSSMgg" role="37vLTJ">
                  <ref role="3cqZAo" node="5CNaGjSSMfG" resolve="b" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5CNaGjSSOSU" role="3cqZAp">
              <node concept="3clFbS" id="5CNaGjSSOSW" role="3clFbx">
                <node concept="3clFbF" id="5CNaGjSSOZI" role="3cqZAp">
                  <node concept="37vLTI" id="5CNaGjSSP0O" role="3clFbG">
                    <node concept="17qRlL" id="5CNaGjSSP2X" role="37vLTx">
                      <node concept="37vLTw" id="5CNaGjSSP3d" role="3uHU7w">
                        <ref role="3cqZAo" node="5CNaGjSSMfD" resolve="a" />
                      </node>
                      <node concept="37vLTw" id="5CNaGjSSP1U" role="3uHU7B">
                        <ref role="3cqZAo" node="5CNaGjSSMfG" resolve="b" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="5CNaGjSSOZG" role="37vLTJ">
                      <ref role="3cqZAo" node="5CNaGjSSMfG" resolve="b" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="AH0OO" id="5CNaGjSSOVQ" role="3clFbw">
                <node concept="37vLTw" id="5CNaGjSSOX3" role="AHEQo">
                  <ref role="3cqZAo" node="5CNaGjSSMgh" resolve="i" />
                </node>
                <node concept="37vLTw" id="5CNaGjSSOUB" role="AHHXb">
                  <ref role="3cqZAo" node="5CNaGjSSNJW" resolve="expBits" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5CNaGjSSMgh" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="5CNaGjSSMgi" role="1tU5fm" />
            <node concept="3cpWsd" id="5CNaGjSV7l2" role="33vP2m">
              <node concept="3cmrfG" id="5CNaGjSV7li" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="5CNaGjSSOMw" role="3uHU7B">
                <node concept="37vLTw" id="5CNaGjSSOHJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="5CNaGjSSNJW" resolve="expBits" />
                </node>
                <node concept="1Rwk04" id="5CNaGjSSOOM" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="2d3UOw" id="5CNaGjSV7Hc" role="1Dwp0S">
            <node concept="3cmrfG" id="5CNaGjSV7Kw" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="5CNaGjSSMgm" role="3uHU7B">
              <ref role="3cqZAo" node="5CNaGjSSMgh" resolve="i" />
            </node>
          </node>
          <node concept="3uO5VW" id="5CNaGjSV7VB" role="1Dwrff">
            <node concept="37vLTw" id="5CNaGjSV7VD" role="2$L3a6">
              <ref role="3cqZAo" node="5CNaGjSSMgh" resolve="i" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5CNaGjSSMgv" role="jymVt" />
    <node concept="1UYk92" id="5CNaGjSSMgw" role="jymVt">
      <property role="3j8K$S" value="true" />
      <property role="3jfa3H" value="Sample_Run1" />
      <node concept="3jfauB" id="5CNaGjSSMgx" role="3jfavw">
        <node concept="3clFbS" id="5CNaGjSSMgy" role="3jfauw">
          <node concept="3clFbF" id="5CNaGjSSMgz" role="3cqZAp">
            <node concept="37vLTI" id="5CNaGjSSMg$" role="3clFbG">
              <node concept="2ShNRf" id="5CNaGjSSMg_" role="37vLTx">
                <node concept="1pGfFk" id="5CNaGjSSMgA" role="2ShVmc">
                  <ref role="37wK5l" to="xlxw:~BigInteger.&lt;init&gt;(java.lang.String)" resolve="BigInteger" />
                  <node concept="Xl_RD" id="5CNaGjSSMgB" role="37wK5m">
                    <property role="Xl_RC" value="14622490781538377313046027984667565122001734301737993489240620299325830434011417032238876653456789361374620067300504413687155387982606047070437359120367768168959125133675417540948360335680860943360905070465320835303881014453576538443090748146681767859059104596160872939472318690408344317048613990009207689344764129416291964384018336815262546357393880504735389218689592018660082734565461532427974021588948938549652153069532368867013364841834569598713417519090233588942086054164559535453419403829125660164918847030913422963137212450839649779730816926161245008007959778599791254118526950556847883189689898829520513422592" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5CNaGjSSMgC" role="37vLTJ">
                <node concept="37vLTw" id="5CNaGjSSMgD" role="2Oq$k0">
                  <ref role="3cqZAo" node="5CNaGjSSMfD" resolve="a" />
                </node>
                <node concept="2Ds8w2" id="5CNaGjSSMgE" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5CNaGjSSPcm" role="3cqZAp">
            <node concept="37vLTI" id="5CNaGjSSPhu" role="3clFbG">
              <node concept="2ShNRf" id="5CNaGjSSPj7" role="37vLTx">
                <node concept="1pGfFk" id="5CNaGjSSPu9" role="2ShVmc">
                  <ref role="37wK5l" to="xlxw:~BigInteger.&lt;init&gt;(java.lang.String,int)" resolve="BigInteger" />
                  <node concept="Xl_RD" id="5CNaGjSSPvh" role="37wK5m">
                    <property role="Xl_RC" value="10001" />
                  </node>
                  <node concept="3cmrfG" id="5CNaGjSSPKm" role="37wK5m">
                    <property role="3cmrfH" value="16" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5CNaGjSSPdz" role="37vLTJ">
                <node concept="37vLTw" id="5CNaGjSSPck" role="2Oq$k0">
                  <ref role="3cqZAo" node="5CNaGjSSNez" resolve="exponent" />
                </node>
                <node concept="2Ds8w2" id="5CNaGjSSPex" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3jfavX" id="5CNaGjSSMgF" role="3jfasw">
        <node concept="3clFbS" id="5CNaGjSSMgG" role="3jfavY">
          <node concept="3cpWs8" id="5CNaGjSSMgH" role="3cqZAp">
            <node concept="3cpWsn" id="5CNaGjSSMgI" role="3cpWs9">
              <property role="TrG5h" value="a" />
              <node concept="3uibUv" id="5CNaGjSSMgJ" role="1tU5fm">
                <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
              </node>
              <node concept="2ShNRf" id="5CNaGjSSMgK" role="33vP2m">
                <node concept="1pGfFk" id="5CNaGjSSMgL" role="2ShVmc">
                  <ref role="37wK5l" to="xlxw:~BigInteger.&lt;init&gt;(java.lang.String)" resolve="BigInteger" />
                  <node concept="Xl_RD" id="5CNaGjSSMgM" role="37wK5m">
                    <property role="Xl_RC" value="14622490781538377313046027984667565122001734301737993489240620299325830434011417032238876653456789361374620067300504413687155387982606047070437359120367768168959125133675417540948360335680860943360905070465320835303881014453576538443090748146681767859059104596160872939472318690408344317048613990009207689344764129416291964384018336815262546357393880504735389218689592018660082734565461532427974021588948938549652153069532368867013364841834569598713417519090233588942086054164559535453419403829125660164918847030913422963137212450839649779730816926161245008007959778599791254118526950556847883189689898829520513422592" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5CNaGjSSMgN" role="3cqZAp">
            <node concept="3cpWsn" id="5CNaGjSSMgO" role="3cpWs9">
              <property role="TrG5h" value="modulus" />
              <node concept="3uibUv" id="5CNaGjSSMgP" role="1tU5fm">
                <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
              </node>
              <node concept="2ShNRf" id="5CNaGjSSMgQ" role="33vP2m">
                <node concept="1pGfFk" id="5CNaGjSSMgR" role="2ShVmc">
                  <ref role="37wK5l" to="xlxw:~BigInteger.&lt;init&gt;(java.lang.String)" resolve="BigInteger" />
                  <node concept="Xl_RD" id="5CNaGjSSMgS" role="37wK5m">
                    <property role="Xl_RC" value="25195908475657893494027183240048398571429282126204032027777137836043662020707595556264018525880784406918290641249515082189298559149176184502808489120072844992687392807287776735971418347270261896375014971824691165077613379859095700097330459748808428401797429100642458691817195118746121515172654632282216869987549182422433637259085141865462043576798423387184774447920739934236584823824281198163815010674810451660377306056201619676256133844143603833904414952634432190114657544454178424020924616515723350778707749817125772467962926386356373289912154831438167899885040445364023527381951378636564391212010397122822120720357" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5CNaGjSSMgT" role="3cqZAp">
            <node concept="2OqwBi" id="5CNaGjSSMgU" role="3clFbG">
              <node concept="10M0yZ" id="5CNaGjSSMgV" role="2Oq$k0">
                <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              </node>
              <node concept="liA8E" id="5CNaGjSSMgW" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                <node concept="3K4zz7" id="5CNaGjSSMgX" role="37wK5m">
                  <node concept="Xl_RD" id="5CNaGjSSMgY" role="3K4E3e">
                    <property role="Xl_RC" value="Sample Test Passed!" />
                  </node>
                  <node concept="Xl_RD" id="5CNaGjSSMgZ" role="3K4GZi">
                    <property role="Xl_RC" value="Sample Test Failed" />
                  </node>
                  <node concept="1eOMI4" id="5CNaGjSSMh0" role="3K4Cdx">
                    <node concept="2OqwBi" id="5CNaGjSSMh1" role="1eOMHV">
                      <node concept="2OqwBi" id="5CNaGjSSMh2" role="2Oq$k0">
                        <node concept="37vLTw" id="5CNaGjSSMh3" role="2Oq$k0">
                          <ref role="3cqZAo" node="5CNaGjSSMfG" resolve="b" />
                        </node>
                        <node concept="2Ds8w2" id="5CNaGjSSMh4" role="2OqNvi" />
                      </node>
                      <node concept="liA8E" id="5CNaGjSSMh5" role="2OqNvi">
                        <ref role="37wK5l" to="xlxw:~BigInteger.equals(java.lang.Object):boolean" resolve="equals" />
                        <node concept="2OqwBi" id="5CNaGjSSMh6" role="37wK5m">
                          <node concept="37vLTw" id="5CNaGjSSMh7" role="2Oq$k0">
                            <ref role="3cqZAo" node="5CNaGjSSMgI" resolve="a" />
                          </node>
                          <node concept="liA8E" id="5CNaGjSSMh8" role="2OqNvi">
                            <ref role="37wK5l" to="xlxw:~BigInteger.modPow(java.math.BigInteger,java.math.BigInteger):java.math.BigInteger" resolve="modPow" />
                            <node concept="2YIFZM" id="5CNaGjSSMh9" role="37wK5m">
                              <ref role="37wK5l" to="xlxw:~BigInteger.valueOf(long):java.math.BigInteger" resolve="valueOf" />
                              <ref role="1Pybhc" to="xlxw:~BigInteger" resolve="BigInteger" />
                              <node concept="2nou5x" id="5CNaGjSSMha" role="37wK5m">
                                <property role="2noCCI" value="10001" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="5CNaGjSSMhb" role="37wK5m">
                              <ref role="3cqZAo" node="5CNaGjSSMgO" resolve="modulus" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5CNaGjSSMhc" role="jymVt" />
    <node concept="2tJIrI" id="5CNaGjSSMhd" role="jymVt" />
    <node concept="2YIFZL" id="5CNaGjSSMhe" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="3cqZAl" id="5CNaGjSSMhf" role="3clF45" />
      <node concept="3Tm1VV" id="5CNaGjSSMhg" role="1B3o_S" />
      <node concept="3clFbS" id="5CNaGjSSMhh" role="3clF47">
        <node concept="3clFbH" id="5CNaGjSSMhi" role="3cqZAp" />
        <node concept="3SKdUt" id="5CNaGjSSMhj" role="3cqZAp">
          <node concept="3SKdUq" id="5CNaGjSSMhk" role="3SKWNk">
            <property role="3SKdUp" value="This is the java main method. Its purpose is to make the Progam runnable in the environment" />
          </node>
        </node>
        <node concept="3SKdUt" id="5CNaGjSSMhl" role="3cqZAp">
          <node concept="3SKdUq" id="5CNaGjSSMhm" role="3SKWNk">
            <property role="3SKdUp" value="This method can be left empty, or used to set Configuration params (see examples)" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5CNaGjSSMhn" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="5CNaGjSSMho" role="1tU5fm">
          <node concept="17QB3L" id="5CNaGjSSMhp" role="10Q1$1" />
        </node>
      </node>
    </node>
  </node>
</model>

