<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:87a865a3-34af-4e94-a539-fa744ec50ade(xjsnark.sortingVerification)">
  <persistence version="9" />
  <languages>
    <use id="0688d542-e2a3-492c-a31f-0e921fd6a8fb" name="xjsnark" version="0" />
    <use id="ed6d7656-532c-4bc2-81d1-af945aeb8280" name="jetbrains.mps.baseLanguage.blTypes" version="0" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
  </languages>
  <imports>
    <import index="xlxw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.math(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="562q" ref="1e4d45b9-368c-4e87-8555-ad69375f82e7/java:util(xjsnark.runtime/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
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
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
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
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
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
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
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
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
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
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1184950988562" name="jetbrains.mps.baseLanguage.structure.ArrayCreator" flags="nn" index="3$_iS1">
        <child id="1184951007469" name="componentType" index="3$_nBY" />
        <child id="1184952969026" name="dimensionExpression" index="3$GQph" />
      </concept>
      <concept id="1184952934362" name="jetbrains.mps.baseLanguage.structure.DimensionExpression" flags="nn" index="3$GHV9">
        <child id="1184953288404" name="expression" index="3$I4v7" />
      </concept>
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
      <concept id="7495353643781164522" name="xjsnark.structure.VerifiedWitnessBlock" flags="lg" index="zxlm7" />
      <concept id="7553992366103228384" name="xjsnark.structure.ExternalBlock" flags="ng" index="2DjkfC">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="7553992366104093706" name="xjsnark.structure.ValueOp" flags="ng" index="2Ds8w2" />
      <concept id="7495353643616961541" name="xjsnark.structure.SingleLineCommentClassMember" flags="ng" index="DJdLC">
        <property id="7495353643619293787" name="text" index="DRO8Q" />
      </concept>
      <concept id="7553992366094736353" name="xjsnark.structure.VerifyStatement" flags="ng" index="2DKZvD">
        <child id="7553992366094744703" name="condition" index="2DKX1R" />
      </concept>
      <concept id="2885914005883499260" name="xjsnark.structure.PermutationResolver" flags="ng" index="2H3A63">
        <child id="2885914005883499264" name="id" index="2H3A1Z" />
        <child id="2885914005883499261" name="argArray" index="2H3A62" />
      </concept>
      <concept id="2885914005883458218" name="xjsnark.structure.PermutationVerifier" flags="ng" index="2H3G7l">
        <child id="2885914005883458234" name="id" index="2H3G75" />
        <child id="2885914005883458230" name="array2" index="2H3G79" />
        <child id="2885914005883458227" name="array1" index="2H3G7c" />
        <child id="2885914005883458226" name="type" index="2H3G7d" />
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
      <concept id="4165393367774804580" name="xjsnark.structure.WitnessBlock" flags="lg" index="3qc$_m">
        <child id="4165393367774804581" name="witnesses" index="3qc$_n" />
      </concept>
      <concept id="4165393367774729195" name="xjsnark.structure.OutputBlock" flags="lg" index="3qdm3p" />
      <concept id="7263056763233056571" name="xjsnark.structure.ProgramDefinition" flags="ig" index="1KMFyu" />
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
  <node concept="312cEu" id="2qKKpuglJZM">
    <property role="TrG5h" value="IndexComparator" />
    <node concept="2tJIrI" id="2qKKpuglKd6" role="jymVt" />
    <node concept="312cEg" id="2wcORY53AJL" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="a" />
      <property role="3TUv4t" value="false" />
      <node concept="10Q1$e" id="2wcORY53AJO" role="1tU5fm">
        <node concept="3uibUv" id="2wcORY53AJN" role="10Q1$1">
          <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
        </node>
      </node>
      <node concept="3Tm6S6" id="2wcORY53AJP" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="2wcORY53AJQ" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3cqZAl" id="2wcORY53AJR" role="3clF45" />
      <node concept="37vLTG" id="2wcORY53AJS" role="3clF46">
        <property role="TrG5h" value="array" />
        <property role="3TUv4t" value="false" />
        <node concept="10Q1$e" id="2wcORY53AJU" role="1tU5fm">
          <node concept="3uibUv" id="2wcORY53AJT" role="10Q1$1">
            <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2wcORY53AJV" role="3clF47">
        <node concept="3clFbF" id="2wcORY53AJW" role="3cqZAp">
          <node concept="37vLTI" id="2wcORY53AJX" role="3clFbG">
            <node concept="2OqwBi" id="2wcORY53AJY" role="37vLTJ">
              <node concept="Xjq3P" id="2wcORY53AJZ" role="2Oq$k0" />
              <node concept="2OwXpG" id="2wcORY53AK0" role="2OqNvi">
                <ref role="2Oxat5" node="2wcORY53AJL" resolve="a" />
              </node>
            </node>
            <node concept="37vLTw" id="2wcORY53AK1" role="37vLTx">
              <ref role="3cqZAo" node="2wcORY53AJS" resolve="array" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2wcORY53AK2" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="2wcORY53AKA" role="jymVt">
      <property role="TrG5h" value="compare" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="2wcORY53AKB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="2wcORY53AKC" role="3clF46">
        <property role="TrG5h" value="index1" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="2wcORY53AKD" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
      </node>
      <node concept="37vLTG" id="2wcORY53AKE" role="3clF46">
        <property role="TrG5h" value="index2" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="2wcORY53AKF" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
      </node>
      <node concept="3clFbS" id="2wcORY53AKG" role="3clF47">
        <node concept="3cpWs6" id="2wcORY53AKH" role="3cqZAp">
          <node concept="2OqwBi" id="2wcORY53AKI" role="3cqZAk">
            <node concept="AH0OO" id="2wcORY53AKJ" role="2Oq$k0">
              <node concept="37vLTw" id="2wcORY53AKK" role="AHHXb">
                <ref role="3cqZAo" node="2wcORY53AJL" resolve="a" />
              </node>
              <node concept="37vLTw" id="2wcORY53AKL" role="AHEQo">
                <ref role="3cqZAo" node="2wcORY53AKC" resolve="index1" />
              </node>
            </node>
            <node concept="liA8E" id="2wcORY53AKM" role="2OqNvi">
              <ref role="37wK5l" to="xlxw:~BigInteger.compareTo(java.math.BigInteger):int" resolve="compareTo" />
              <node concept="AH0OO" id="2wcORY53AKN" role="37wK5m">
                <node concept="37vLTw" id="2wcORY53AKO" role="AHHXb">
                  <ref role="3cqZAo" node="2wcORY53AJL" resolve="a" />
                </node>
                <node concept="37vLTw" id="2wcORY53AKP" role="AHEQo">
                  <ref role="3cqZAo" node="2wcORY53AKE" resolve="index2" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2wcORY53AKQ" role="1B3o_S" />
      <node concept="10Oyi0" id="2wcORY53AKR" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="2qKKpuglKdZ" role="jymVt" />
    <node concept="2tJIrI" id="2qKKpuglKe4" role="jymVt" />
    <node concept="3Tm1VV" id="2qKKpuglJZN" role="1B3o_S" />
    <node concept="3uibUv" id="2qKKpuglL9b" role="EKbjA">
      <ref role="3uigEE" to="33ny:~Comparator" resolve="Comparator" />
      <node concept="3uibUv" id="2qKKpuglL_U" role="11_B2D">
        <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
      </node>
    </node>
  </node>
  <node concept="1KMFyu" id="2qKKpugm6P9">
    <property role="IEkAT" value="false" />
    <property role="1EXbeo" value="true" />
    <property role="2bfB8j" value="true" />
    <property role="1sVAO0" value="false" />
    <property role="TrG5h" value="SortingVerification" />
    <node concept="3Tm1VV" id="2qKKpugm6Pa" role="1B3o_S" />
    <node concept="DJdLC" id="2qKKpugm7sd" role="jymVt">
      <property role="DRO8Q" value="Instead of writing actual sorting code, a programmer can use non-determinism to handle sorting outside" />
    </node>
    <node concept="DJdLC" id="2qKKpugm9As" role="jymVt">
      <property role="DRO8Q" value="the circuit, and then just verify the result in the circuit. This can be much more efficient than just implementing" />
    </node>
    <node concept="DJdLC" id="2qKKpugmbrD" role="jymVt">
      <property role="DRO8Q" value="a sorting algorithm inside a zk-SNARK circuit. A Merge sort code handling the same size below will be much slower" />
    </node>
    <node concept="2tJIrI" id="2qKKpugn73d" role="jymVt" />
    <node concept="2tJIrI" id="2qKKpugm6Pc" role="jymVt" />
    <node concept="Wx3nA" id="2qKKpugmday" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="SIZE" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="2qKKpugmd4a" role="1B3o_S" />
      <node concept="10Oyi0" id="2qKKpugmd8N" role="1tU5fm" />
      <node concept="3cmrfG" id="2qKKpugmdGM" role="33vP2m">
        <property role="3cmrfH" value="1024" />
      </node>
    </node>
    <node concept="312cEg" id="2wcORY50J$x" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="unsortedArray" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="2wcORY50J$f" role="1B3o_S" />
      <node concept="10Q1$e" id="2wcORY50J$h" role="1tU5fm">
        <node concept="3qc1$W" id="2qKKpugmdWo" role="10Q1$1">
          <property role="3qc1Xj" value="16" />
        </node>
      </node>
      <node concept="2ShNRf" id="2wcORY50J_v" role="33vP2m">
        <node concept="3$_iS1" id="2wcORY50JG5" role="2ShVmc">
          <node concept="3$GHV9" id="2wcORY50JG7" role="3$GQph">
            <node concept="37vLTw" id="2qKKpugme$2" role="3$I4v7">
              <ref role="3cqZAo" node="2qKKpugmday" resolve="SIZE" />
            </node>
          </node>
          <node concept="3qc1$W" id="2qKKpugmeiv" role="3$_nBY">
            <property role="3qc1Xj" value="16" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="2wcORY50JHA" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="sortedArray" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="2wcORY50JHB" role="1B3o_S" />
      <node concept="10Q1$e" id="2wcORY50JHC" role="1tU5fm">
        <node concept="3qc1$W" id="2qKKpugme1G" role="10Q1$1">
          <property role="3qc1Xj" value="16" />
        </node>
      </node>
      <node concept="2ShNRf" id="2wcORY50JHE" role="33vP2m">
        <node concept="3$_iS1" id="2wcORY50JHF" role="2ShVmc">
          <node concept="3$GHV9" id="2wcORY50JHG" role="3$GQph">
            <node concept="37vLTw" id="2qKKpugmeFc" role="3$I4v7">
              <ref role="3cqZAo" node="2qKKpugmday" resolve="SIZE" />
            </node>
          </node>
          <node concept="3qc1$W" id="2qKKpugmepa" role="3$_nBY">
            <property role="3qc1Xj" value="16" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2qKKpugmdgy" role="jymVt" />
    <node concept="2tJIrI" id="2qKKpugmdip" role="jymVt" />
    <node concept="3q8xyn" id="2qKKpugm6Pg" role="jymVt">
      <node concept="37vLTw" id="2qKKpugmf0T" role="3q8w2r">
        <ref role="3cqZAo" node="2wcORY50J$x" resolve="unsortedArray" />
      </node>
    </node>
    <node concept="2tJIrI" id="2qKKpugmfbo" role="jymVt" />
    <node concept="zxlm7" id="2qKKpugm6Pi" role="jymVt" />
    <node concept="2tJIrI" id="2qKKpugmkqz" role="jymVt" />
    <node concept="DJdLC" id="2qKKpugmfs8" role="jymVt">
      <property role="DRO8Q" value="The reason we do not have to assert the range of the sortedArray in this context is that we verify later" />
    </node>
    <node concept="DJdLC" id="2qKKpugmgN1" role="jymVt">
      <property role="DRO8Q" value="that its elements are a permutation of another *publicly* known values, and also our verify_permutation" />
    </node>
    <node concept="DJdLC" id="2qKKpugmiNk" role="jymVt">
      <property role="DRO8Q" value="opcode will make sure anyway that its input from the other side match the type [more on that later]" />
    </node>
    <node concept="3qc$_m" id="2qKKpugm6Pj" role="jymVt">
      <node concept="37vLTw" id="2qKKpugmfjZ" role="3qc$_n">
        <ref role="3cqZAo" node="2wcORY50JHA" resolve="sortedArray" />
      </node>
    </node>
    <node concept="2tJIrI" id="2qKKpugm6Pk" role="jymVt" />
    <node concept="3qdm3p" id="2qKKpugm6Ph" role="jymVt" />
    <node concept="2tJIrI" id="2qKKpugmlcF" role="jymVt" />
    <node concept="2tJIrI" id="2qKKpugm6Pl" role="jymVt" />
    <node concept="3clFb_" id="2qKKpugm6Pm" role="jymVt">
      <property role="TrG5h" value="outsource" />
      <node concept="3cqZAl" id="2qKKpugm6Pn" role="3clF45" />
      <node concept="3Tm1VV" id="2qKKpugm6Po" role="1B3o_S" />
      <node concept="3clFbS" id="2qKKpugm6Pp" role="3clF47">
        <node concept="3clFbH" id="18zTa4dwlQ_" role="3cqZAp" />
        <node concept="3SKdUt" id="2qKKpugmlwL" role="3cqZAp">
          <node concept="3SKdUq" id="2qKKpugmlwN" role="3SKWNk">
            <property role="3SKdUp" value="Use the external code block to compute outside the circuit (More on its usage later in documentation)" />
          </node>
        </node>
        <node concept="3SKdUt" id="2qKKpugmA0k" role="3cqZAp">
          <node concept="3SKdUq" id="2qKKpugmA0m" role="3SKWNk">
            <property role="3SKdUp" value="The values this block reads from the circuit are the latest values assigned to the variables it relies on, " />
          </node>
        </node>
        <node concept="3SKdUt" id="2qKKpugmBAw" role="3cqZAp">
          <node concept="3SKdUq" id="2qKKpugmB4b" role="3SKWNk">
            <property role="3SKdUp" value="therefore, care is sometimes needed. The following case is simple though." />
          </node>
        </node>
        <node concept="2DjkfC" id="2qKKpugmlVT" role="3cqZAp">
          <node concept="3clFbS" id="2qKKpugmlVV" role="9aQI4">
            <node concept="3clFbH" id="2qKKpugmr0W" role="3cqZAp" />
            <node concept="3cpWs8" id="2wcORY53zfg" role="3cqZAp">
              <node concept="3cpWsn" id="2wcORY53zfm" role="3cpWs9">
                <property role="TrG5h" value="values" />
                <node concept="10Q1$e" id="2wcORY53zfo" role="1tU5fm">
                  <node concept="3uibUv" id="2wcORY53zfq" role="10Q1$1">
                    <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
                  </node>
                </node>
                <node concept="2ShNRf" id="2wcORY53zgM" role="33vP2m">
                  <node concept="3$_iS1" id="2wcORY53znk" role="2ShVmc">
                    <node concept="3$GHV9" id="2wcORY53znm" role="3$GQph">
                      <node concept="37vLTw" id="2qKKpugmmCc" role="3$I4v7">
                        <ref role="3cqZAo" node="2qKKpugmday" resolve="SIZE" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="2wcORY53zmF" role="3$_nBY">
                      <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="2qKKpugmnCX" role="3cqZAp">
              <node concept="3SKdUq" id="2qKKpugmnCZ" role="3SKWNk">
                <property role="3SKdUp" value="read the value from the circuit" />
              </node>
            </node>
            <node concept="1Dw8fO" id="2wcORY53zpn" role="3cqZAp">
              <node concept="3clFbS" id="2wcORY53zpp" role="2LFqv$">
                <node concept="3clFbF" id="2wcORY53zYq" role="3cqZAp">
                  <node concept="37vLTI" id="2wcORY53$2l" role="3clFbG">
                    <node concept="AH0OO" id="2wcORY53zZu" role="37vLTJ">
                      <node concept="37vLTw" id="2wcORY53$0d" role="AHEQo">
                        <ref role="3cqZAo" node="2wcORY53zpq" resolve="i" />
                      </node>
                      <node concept="37vLTw" id="2wcORY53zYo" role="AHHXb">
                        <ref role="3cqZAo" node="2wcORY53zfm" resolve="values" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2qKKpugmnog" role="37vLTx">
                      <node concept="AH0OO" id="2qKKpugmnkz" role="2Oq$k0">
                        <node concept="37vLTw" id="2qKKpugmnmu" role="AHEQo">
                          <ref role="3cqZAo" node="2wcORY53zpq" resolve="i" />
                        </node>
                        <node concept="37vLTw" id="2qKKpugmnem" role="AHHXb">
                          <ref role="3cqZAo" node="2wcORY50J$x" resolve="unsortedArray" />
                        </node>
                      </node>
                      <node concept="2Ds8w2" id="2qKKpugmnra" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="2wcORY53zpq" role="1Duv9x">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="2wcORY53zpM" role="1tU5fm" />
                <node concept="3cmrfG" id="2wcORY53zqi" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3eOVzh" id="2qKKpugmn0J" role="1Dwp0S">
                <node concept="37vLTw" id="2qKKpugmn5Q" role="3uHU7w">
                  <ref role="3cqZAo" node="2qKKpugmday" resolve="SIZE" />
                </node>
                <node concept="37vLTw" id="2qKKpugmmS8" role="3uHU7B">
                  <ref role="3cqZAo" node="2wcORY53zpq" resolve="i" />
                </node>
              </node>
              <node concept="3uNrnE" id="2wcORY53zUo" role="1Dwrff">
                <node concept="37vLTw" id="2wcORY53zUq" role="2$L3a6">
                  <ref role="3cqZAo" node="2wcORY53zpq" resolve="i" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="2qKKpugmrv0" role="3cqZAp">
              <node concept="3SKdUq" id="2qKKpugmrv2" role="3SKWNk">
                <property role="3SKdUp" value="now values is an array of numbers read from the circuit " />
              </node>
            </node>
            <node concept="3clFbH" id="2qKKpugmrbU" role="3cqZAp" />
            <node concept="3SKdUt" id="2qKKpugmp4J" role="3cqZAp">
              <node concept="3SKdUq" id="2qKKpugmp4L" role="3SKWNk">
                <property role="3SKdUp" value="find the permutation that makes the input sorted" />
              </node>
            </node>
            <node concept="3cpWs8" id="2wcORY53$fs" role="3cqZAp">
              <node concept="3cpWsn" id="2wcORY53$fr" role="3cpWs9">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="idxs" />
                <node concept="10Q1$e" id="2wcORY53$fu" role="1tU5fm">
                  <node concept="3uibUv" id="2wcORY53$ft" role="10Q1$1">
                    <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                  </node>
                </node>
                <node concept="2ShNRf" id="2qKKpugmt1W" role="33vP2m">
                  <node concept="3$_iS1" id="2qKKpugmtat" role="2ShVmc">
                    <node concept="3$GHV9" id="2qKKpugmtav" role="3$GQph">
                      <node concept="37vLTw" id="2qKKpugmtkR" role="3$I4v7">
                        <ref role="3cqZAo" node="2qKKpugmday" resolve="SIZE" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="2qKKpugmt7Y" role="3$_nBY">
                      <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Dw8fO" id="2qKKpugmtzj" role="3cqZAp">
              <node concept="3clFbS" id="2qKKpugmtzl" role="2LFqv$">
                <node concept="3clFbF" id="2qKKpugmu8j" role="3cqZAp">
                  <node concept="37vLTI" id="2qKKpugmufY" role="3clFbG">
                    <node concept="37vLTw" id="2qKKpugmugJ" role="37vLTx">
                      <ref role="3cqZAo" node="2qKKpugmtzm" resolve="i" />
                    </node>
                    <node concept="AH0OO" id="2qKKpugmu9W" role="37vLTJ">
                      <node concept="37vLTw" id="2qKKpugmubZ" role="AHEQo">
                        <ref role="3cqZAo" node="2qKKpugmtzm" resolve="i" />
                      </node>
                      <node concept="37vLTw" id="2qKKpugmu8h" role="AHHXb">
                        <ref role="3cqZAo" node="2wcORY53$fr" resolve="idxs" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="2qKKpugmtzm" role="1Duv9x">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="2qKKpugmtH8" role="1tU5fm" />
                <node concept="3cmrfG" id="2qKKpugmtI$" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3eOVzh" id="2qKKpugmtRk" role="1Dwp0S">
                <node concept="37vLTw" id="2qKKpugmtTQ" role="3uHU7w">
                  <ref role="3cqZAo" node="2qKKpugmday" resolve="SIZE" />
                </node>
                <node concept="37vLTw" id="2qKKpugmtKI" role="3uHU7B">
                  <ref role="3cqZAo" node="2qKKpugmtzm" resolve="i" />
                </node>
              </node>
              <node concept="3uNrnE" id="2qKKpugmu3j" role="1Dwrff">
                <node concept="37vLTw" id="2qKKpugmu3l" role="2$L3a6">
                  <ref role="3cqZAo" node="2qKKpugmtzm" resolve="i" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2wcORY53$fn" role="3cqZAp">
              <node concept="3cpWsn" id="2wcORY53$fm" role="3cpWs9">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="comparator" />
                <node concept="3uibUv" id="2qKKpugmo_j" role="1tU5fm">
                  <ref role="3uigEE" node="2qKKpuglJZM" resolve="IndexComparator" />
                </node>
                <node concept="2ShNRf" id="2wcORY53BhP" role="33vP2m">
                  <node concept="1pGfFk" id="2wcORY53BhQ" role="2ShVmc">
                    <ref role="37wK5l" node="2wcORY53AJQ" resolve="IndexComparator" />
                    <node concept="37vLTw" id="2wcORY53Bn$" role="37wK5m">
                      <ref role="3cqZAo" node="2wcORY53zfm" resolve="values" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="2qKKpugmwRC" role="3cqZAp">
              <node concept="3SKdUq" id="2qKKpugmwRE" role="3SKWNk">
                <property role="3SKdUp" value="use java sorting -- basically we can use external code not compiled in xjsnark" />
              </node>
            </node>
            <node concept="3SKdUt" id="2qKKpugmyeb" role="3cqZAp">
              <node concept="3SKdUq" id="2qKKpugmyed" role="3SKWNk">
                <property role="3SKdUp" value="figure out the locations of elements after sorting" />
              </node>
            </node>
            <node concept="3clFbF" id="2wcORY53$fw" role="3cqZAp">
              <node concept="2YIFZM" id="2wcORY53$gr" role="3clFbG">
                <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                <ref role="37wK5l" to="33ny:~Arrays.sort(java.lang.Object[],java.util.Comparator):void" resolve="sort" />
                <node concept="37vLTw" id="2wcORY53$fy" role="37wK5m">
                  <ref role="3cqZAo" node="2wcORY53$fr" resolve="idxs" />
                </node>
                <node concept="37vLTw" id="2wcORY53$fz" role="37wK5m">
                  <ref role="3cqZAo" node="2wcORY53$fm" resolve="comparator" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2wcORY53$f_" role="3cqZAp">
              <node concept="3cpWsn" id="2wcORY53$f$" role="3cpWs9">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="permutation" />
                <node concept="10Q1$e" id="2wcORY53$fB" role="1tU5fm">
                  <node concept="10Oyi0" id="2wcORY53$fA" role="10Q1$1" />
                </node>
                <node concept="2ShNRf" id="2wcORY53$fG" role="33vP2m">
                  <node concept="3$_iS1" id="2wcORY53$fE" role="2ShVmc">
                    <node concept="3$GHV9" id="2wcORY53$fF" role="3$GQph">
                      <node concept="37vLTw" id="2qKKpugmxtw" role="3$I4v7">
                        <ref role="3cqZAo" node="2qKKpugmday" resolve="SIZE" />
                      </node>
                    </node>
                    <node concept="10Oyi0" id="2wcORY53$fC" role="3$_nBY" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Dw8fO" id="2wcORY53$fH" role="3cqZAp">
              <node concept="3cpWsn" id="2wcORY53$fI" role="1Duv9x">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="2wcORY53$fK" role="1tU5fm" />
                <node concept="3cmrfG" id="2wcORY53$fL" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3eOVzh" id="2wcORY53$fM" role="1Dwp0S">
                <node concept="37vLTw" id="2wcORY53$fN" role="3uHU7B">
                  <ref role="3cqZAo" node="2wcORY53$fI" resolve="i" />
                </node>
                <node concept="37vLTw" id="2qKKpugmx$u" role="3uHU7w">
                  <ref role="3cqZAo" node="2qKKpugmday" resolve="SIZE" />
                </node>
              </node>
              <node concept="3uNrnE" id="2wcORY53$fQ" role="1Dwrff">
                <node concept="37vLTw" id="2wcORY53$fR" role="2$L3a6">
                  <ref role="3cqZAo" node="2wcORY53$fI" resolve="i" />
                </node>
              </node>
              <node concept="3clFbS" id="2wcORY53$fT" role="2LFqv$">
                <node concept="3clFbF" id="2wcORY53$fU" role="3cqZAp">
                  <node concept="37vLTI" id="2wcORY53$fV" role="3clFbG">
                    <node concept="AH0OO" id="2wcORY53$fW" role="37vLTJ">
                      <node concept="37vLTw" id="2wcORY53$fX" role="AHHXb">
                        <ref role="3cqZAo" node="2wcORY53$f$" resolve="permutation" />
                      </node>
                      <node concept="AH0OO" id="2wcORY53$fY" role="AHEQo">
                        <node concept="37vLTw" id="2wcORY53$fZ" role="AHHXb">
                          <ref role="3cqZAo" node="2wcORY53$fr" resolve="idxs" />
                        </node>
                        <node concept="37vLTw" id="2wcORY53$g0" role="AHEQo">
                          <ref role="3cqZAo" node="2wcORY53$fI" resolve="i" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="2wcORY53$g1" role="37vLTx">
                      <ref role="3cqZAo" node="2wcORY53$fI" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="2qKKpugmyHY" role="3cqZAp">
              <node concept="3SKdUq" id="2qKKpugmyI0" role="3SKWNk">
                <property role="3SKdUp" value="now we sort the array itself" />
              </node>
            </node>
            <node concept="3clFbF" id="2wcORY53$g2" role="3cqZAp">
              <node concept="2YIFZM" id="2wcORY53$gy" role="3clFbG">
                <ref role="37wK5l" to="33ny:~Arrays.sort(java.lang.Object[]):void" resolve="sort" />
                <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                <node concept="37vLTw" id="2wcORY53_FH" role="37wK5m">
                  <ref role="3cqZAo" node="2wcORY53zfm" resolve="values" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="2qKKpugm$1J" role="3cqZAp">
              <node concept="3SKdUq" id="2qKKpugm$1L" role="3SKWNk">
                <property role="3SKdUp" value="assign the sorted values to our witnesses" />
              </node>
            </node>
            <node concept="1Dw8fO" id="2wcORY53$g5" role="3cqZAp">
              <node concept="3cpWsn" id="2wcORY53$g6" role="1Duv9x">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="2wcORY53$g8" role="1tU5fm" />
                <node concept="3cmrfG" id="2wcORY53$g9" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3eOVzh" id="2wcORY53$ga" role="1Dwp0S">
                <node concept="37vLTw" id="2wcORY53$gb" role="3uHU7B">
                  <ref role="3cqZAo" node="2wcORY53$g6" resolve="i" />
                </node>
                <node concept="37vLTw" id="2qKKpugmzDh" role="3uHU7w">
                  <ref role="3cqZAo" node="2qKKpugmday" resolve="SIZE" />
                </node>
              </node>
              <node concept="3uNrnE" id="2wcORY53$ge" role="1Dwrff">
                <node concept="37vLTw" id="2wcORY53$gf" role="2$L3a6">
                  <ref role="3cqZAo" node="2wcORY53$g6" resolve="i" />
                </node>
              </node>
              <node concept="3clFbS" id="2wcORY53$gh" role="2LFqv$">
                <node concept="3clFbF" id="2wcORY53_M1" role="3cqZAp">
                  <node concept="37vLTI" id="2wcORY53_SZ" role="3clFbG">
                    <node concept="AH0OO" id="2wcORY53_Xj" role="37vLTx">
                      <node concept="37vLTw" id="2wcORY53_Zw" role="AHEQo">
                        <ref role="3cqZAo" node="2wcORY53$g6" resolve="i" />
                      </node>
                      <node concept="37vLTw" id="2wcORY53_UI" role="AHHXb">
                        <ref role="3cqZAo" node="2wcORY53zfm" resolve="values" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2qKKpugmzLr" role="37vLTJ">
                      <node concept="AH0OO" id="2wcORY53_MJ" role="2Oq$k0">
                        <node concept="37vLTw" id="2wcORY53_NK" role="AHEQo">
                          <ref role="3cqZAo" node="2wcORY53$g6" resolve="i" />
                        </node>
                        <node concept="37vLTw" id="2wcORY53_M0" role="AHHXb">
                          <ref role="3cqZAo" node="2wcORY50JHA" resolve="sortedArray" />
                        </node>
                      </node>
                      <node concept="2Ds8w2" id="2qKKpugmzOr" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2qKKpugmqjH" role="3cqZAp" />
            <node concept="3SKdUt" id="2qKKpugmq2h" role="3cqZAp">
              <node concept="3SKdUq" id="2qKKpugmq2j" role="3SKWNk">
                <property role="3SKdUp" value="give the permutation hint to circuit during evaluation" />
              </node>
            </node>
            <node concept="2H3A63" id="2qKKpugmHs_" role="3cqZAp">
              <node concept="37vLTw" id="2qKKpugmHB4" role="2H3A62">
                <ref role="3cqZAo" node="2wcORY53$f$" resolve="permutation" />
              </node>
              <node concept="Xl_RD" id="7exrx8Ua0D_" role="2H3A1Z">
                <property role="Xl_RC" value="p1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2qKKpugmILk" role="3cqZAp" />
        <node concept="3SKdUt" id="2qKKpugpm7M" role="3cqZAp">
          <node concept="3SKdUq" id="2qKKpugpmvi" role="3SKWNk">
            <property role="3SKdUp" value="The part that is actually in the circuit" />
          </node>
        </node>
        <node concept="2H3G7l" id="2qKKpugmF7d" role="3cqZAp">
          <node concept="3qc1$W" id="2qKKpugmFoI" role="2H3G7d">
            <property role="3qc1Xj" value="16" />
          </node>
          <node concept="37vLTw" id="2qKKpugmFw4" role="2H3G7c">
            <ref role="3cqZAo" node="2wcORY50J$x" resolve="unsortedArray" />
          </node>
          <node concept="37vLTw" id="2qKKpugmF$N" role="2H3G79">
            <ref role="3cqZAo" node="2wcORY50JHA" resolve="sortedArray" />
          </node>
          <node concept="Xl_RD" id="7exrx8Ua0u$" role="2H3G75">
            <property role="Xl_RC" value="p1" />
          </node>
        </node>
        <node concept="3clFbH" id="18zTa4dvprq" role="3cqZAp" />
        <node concept="3clFbH" id="18zTa4dvpP7" role="3cqZAp" />
        <node concept="1Dw8fO" id="1bbdoCsekDx" role="3cqZAp">
          <node concept="3clFbS" id="1bbdoCsekDz" role="2LFqv$">
            <node concept="2DKZvD" id="2qKKpugmGeo" role="3cqZAp">
              <node concept="2dkUwp" id="2qKKpugmGu9" role="2DKX1R">
                <node concept="AH0OO" id="2qKKpugmG$A" role="3uHU7w">
                  <node concept="3cpWs3" id="2qKKpugmGH3" role="AHEQo">
                    <node concept="3cmrfG" id="2qKKpugmGHj" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="37vLTw" id="2qKKpugmGBz" role="3uHU7B">
                      <ref role="3cqZAo" node="1bbdoCsekD$" resolve="i" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2qKKpugmGy6" role="AHHXb">
                    <ref role="3cqZAo" node="2wcORY50JHA" resolve="sortedArray" />
                  </node>
                </node>
                <node concept="AH0OO" id="2qKKpugmGo_" role="3uHU7B">
                  <node concept="37vLTw" id="2qKKpugmGpY" role="AHEQo">
                    <ref role="3cqZAo" node="1bbdoCsekD$" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="2qKKpugmGmo" role="AHHXb">
                    <ref role="3cqZAo" node="2wcORY50JHA" resolve="sortedArray" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1bbdoCsekD$" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="1bbdoCsekLJ" role="1tU5fm" />
            <node concept="3cmrfG" id="1bbdoCsekMi" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="1bbdoCsekTO" role="1Dwp0S">
            <node concept="37vLTw" id="1bbdoCsekMB" role="3uHU7B">
              <ref role="3cqZAo" node="1bbdoCsekD$" resolve="i" />
            </node>
            <node concept="3cpWsd" id="1bbdoCselDW" role="3uHU7w">
              <node concept="3cmrfG" id="1bbdoCselEt" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="37vLTw" id="2qKKpugmG3k" role="3uHU7B">
                <ref role="3cqZAo" node="2qKKpugmday" resolve="SIZE" />
              </node>
            </node>
          </node>
          <node concept="3uNrnE" id="1bbdoCselcl" role="1Dwrff">
            <node concept="37vLTw" id="1bbdoCselcn" role="2$L3a6">
              <ref role="3cqZAo" node="1bbdoCsekD$" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2qKKpugmDHp" role="3cqZAp" />
      </node>
    </node>
    <node concept="2tJIrI" id="2qKKpugm6Ps" role="jymVt" />
    <node concept="2tJIrI" id="2qKKpugm6Pt" role="jymVt" />
    <node concept="1UYk92" id="2qKKpugm6Pu" role="jymVt">
      <property role="3j8K$S" value="true" />
      <property role="3jfa3H" value="Sample_Run1" />
      <node concept="3jfauB" id="2qKKpugm6Pv" role="3jfavw">
        <node concept="3clFbS" id="2qKKpugm6Pw" role="3jfauw">
          <node concept="3SKdUt" id="2qKKpugmK0B" role="3cqZAp">
            <node concept="3SKdUq" id="2qKKpugmK0D" role="3SKWNk">
              <property role="3SKdUp" value="assign random values to input" />
            </node>
          </node>
          <node concept="1Dw8fO" id="7UGu0HuEWXP" role="3cqZAp">
            <node concept="3cpWsn" id="7UGu0HuEWXQ" role="1Duv9x">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="7UGu0HuEWYO" role="1tU5fm" />
              <node concept="3cmrfG" id="7UGu0HuEX2G" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="3clFbS" id="7UGu0HuEWXR" role="2LFqv$">
              <node concept="3clFbF" id="7UGu0HuEXFh" role="3cqZAp">
                <node concept="37vLTI" id="7UGu0HuEXVy" role="3clFbG">
                  <node concept="2OqwBi" id="2qKKpugmJS8" role="37vLTJ">
                    <node concept="AH0OO" id="2qKKpugmJO6" role="2Oq$k0">
                      <node concept="37vLTw" id="2qKKpugmJQb" role="AHEQo">
                        <ref role="3cqZAo" node="7UGu0HuEWXQ" resolve="i" />
                      </node>
                      <node concept="37vLTw" id="2qKKpugmJL8" role="AHHXb">
                        <ref role="3cqZAo" node="2wcORY50J$x" resolve="unsortedArray" />
                      </node>
                    </node>
                    <node concept="2Ds8w2" id="2qKKpugmJV2" role="2OqNvi" />
                  </node>
                  <node concept="2YIFZM" id="2qKKpugmKUW" role="37vLTx">
                    <ref role="37wK5l" to="562q:~Util.nextRandomBigInteger(int):java.math.BigInteger" resolve="nextRandomBigInteger" />
                    <ref role="1Pybhc" to="562q:~Util" resolve="Util" />
                    <node concept="3cmrfG" id="2qKKpugmKXk" role="37wK5m">
                      <property role="3cmrfH" value="16" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eOVzh" id="7UGu0HuEXct" role="1Dwp0S">
              <node concept="37vLTw" id="7UGu0HuEX3P" role="3uHU7B">
                <ref role="3cqZAo" node="7UGu0HuEWXQ" resolve="i" />
              </node>
              <node concept="37vLTw" id="2qKKpugmJxa" role="3uHU7w">
                <ref role="3cqZAo" node="2qKKpugmday" resolve="SIZE" />
              </node>
            </node>
            <node concept="3uNrnE" id="7UGu0HuEXt$" role="1Dwrff">
              <node concept="37vLTw" id="7UGu0HuEXtA" role="2$L3a6">
                <ref role="3cqZAo" node="7UGu0HuEWXQ" resolve="i" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3jfavX" id="2qKKpugm6Px" role="3jfasw">
        <node concept="3clFbS" id="2qKKpugm6Py" role="3jfavY">
          <node concept="3SKdUt" id="2qKKpugn9aW" role="3cqZAp">
            <node concept="3SKdUq" id="2qKKpugn9aX" role="3SKWNk">
              <property role="3SKdUp" value=" elements should be sorted. If sorting in the external block is done wrong, failed assertions will appear" />
            </node>
          </node>
          <node concept="1Dw8fO" id="2qKKpugnJ2q" role="3cqZAp">
            <node concept="3cpWsn" id="2qKKpugnJ2r" role="1Duv9x">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="2qKKpugnJ2s" role="1tU5fm" />
              <node concept="3cmrfG" id="2qKKpugnJ2t" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="3clFbS" id="2qKKpugnJ2u" role="2LFqv$">
              <node concept="3clFbF" id="2qKKpugnJeP" role="3cqZAp">
                <node concept="2OqwBi" id="2qKKpugnJig" role="3clFbG">
                  <node concept="10M0yZ" id="2qKKpugnJgi" role="2Oq$k0">
                    <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                    <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                  </node>
                  <node concept="liA8E" id="2qKKpugnJp$" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                    <node concept="3cpWs3" id="2qKKpugnK8B" role="37wK5m">
                      <node concept="2OqwBi" id="2qKKpugnKrY" role="3uHU7w">
                        <node concept="AH0OO" id="2qKKpugnKlf" role="2Oq$k0">
                          <node concept="37vLTw" id="2qKKpugnKp8" role="AHEQo">
                            <ref role="3cqZAo" node="2qKKpugnJ2r" resolve="i" />
                          </node>
                          <node concept="37vLTw" id="2qKKpugnKif" role="AHHXb">
                            <ref role="3cqZAo" node="2wcORY50JHA" resolve="sortedArray" />
                          </node>
                        </node>
                        <node concept="2Ds8w2" id="2qKKpugnKv6" role="2OqNvi" />
                      </node>
                      <node concept="3cpWs3" id="2qKKpugnJM_" role="3uHU7B">
                        <node concept="3cpWs3" id="2qKKpugnJBj" role="3uHU7B">
                          <node concept="Xl_RD" id="2qKKpugnJtt" role="3uHU7B">
                            <property role="Xl_RC" value="Element at " />
                          </node>
                          <node concept="37vLTw" id="2qKKpugnJD8" role="3uHU7w">
                            <ref role="3cqZAo" node="2qKKpugnJ2r" resolve="i" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="2qKKpugnJU0" role="3uHU7w">
                          <property role="Xl_RC" value=" &gt; " />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eOVzh" id="2qKKpugnJ2C" role="1Dwp0S">
              <node concept="37vLTw" id="2qKKpugnJ2D" role="3uHU7B">
                <ref role="3cqZAo" node="2qKKpugnJ2r" resolve="i" />
              </node>
              <node concept="37vLTw" id="2qKKpugnJ2J" role="3uHU7w">
                <ref role="3cqZAo" node="2qKKpugmday" resolve="SIZE" />
              </node>
            </node>
            <node concept="3uNrnE" id="2qKKpugnJ2E" role="1Dwrff">
              <node concept="37vLTw" id="2qKKpugnJ2F" role="2$L3a6">
                <ref role="3cqZAo" node="2qKKpugnJ2r" resolve="i" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="2qKKpugoDYi" role="3cqZAp">
            <node concept="3SKdUq" id="2qKKpugoDYk" role="3SKWNk">
              <property role="3SKdUp" value="disable the print statement above, and" />
            </node>
          </node>
          <node concept="3SKdUt" id="2qKKpugnLiD" role="3cqZAp">
            <node concept="3SKdUq" id="2qKKpugnLiF" role="3SKWNk">
              <property role="3SKdUp" value="try comment the Arrays.sort(values) or assign other values: Failed assertions should appeaar." />
            </node>
          </node>
          <node concept="3clFbH" id="2qKKpugnIXM" role="3cqZAp" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2qKKpugm6Pz" role="jymVt" />
    <node concept="2tJIrI" id="2qKKpugm6P$" role="jymVt" />
    <node concept="2YIFZL" id="2qKKpugm6P_" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="3cqZAl" id="2qKKpugm6PA" role="3clF45" />
      <node concept="3Tm1VV" id="2qKKpugm6PB" role="1B3o_S" />
      <node concept="3clFbS" id="2qKKpugm6PC" role="3clF47">
        <node concept="3SKdUt" id="2qKKpugm6PG" role="3cqZAp">
          <node concept="3SKdUq" id="2qKKpugm6PH" role="3SKWNk">
            <property role="3SKdUp" value="This is the java main method. Its purpose is to make the Progam runnable in the environment" />
          </node>
        </node>
        <node concept="3SKdUt" id="2qKKpugm6PI" role="3cqZAp">
          <node concept="3SKdUq" id="2qKKpugm6PJ" role="3SKWNk">
            <property role="3SKdUp" value="This method can be left empty, or used to set Configuration params (see examples)" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2qKKpugm6PD" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="2qKKpugm6PE" role="1tU5fm">
          <node concept="17QB3L" id="2qKKpugm6PF" role="10Q1$1" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1KMFyu" id="18zTa4duLkL">
    <property role="IEkAT" value="false" />
    <property role="1EXbeo" value="true" />
    <property role="2bfB8j" value="true" />
    <property role="1sVAO0" value="false" />
    <property role="TrG5h" value="SortingVerification2" />
    <node concept="DJdLC" id="18zTa4duMwx" role="jymVt">
      <property role="DRO8Q" value="This example just differs in the permutation hint. Now, it's not needed to give a permutation hint to the verify permutation call" />
    </node>
    <node concept="DJdLC" id="18zTa4dvlRW" role="jymVt">
      <property role="DRO8Q" value="This adds overhead in the backend, but does not affect the circuit." />
    </node>
    <node concept="3Tm1VV" id="18zTa4duLkM" role="1B3o_S" />
    <node concept="2tJIrI" id="18zTa4duLkR" role="jymVt" />
    <node concept="Wx3nA" id="18zTa4duLkS" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="SIZE" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="18zTa4duLkT" role="1B3o_S" />
      <node concept="10Oyi0" id="18zTa4duLkU" role="1tU5fm" />
      <node concept="3cmrfG" id="18zTa4duLkV" role="33vP2m">
        <property role="3cmrfH" value="1024" />
      </node>
    </node>
    <node concept="312cEg" id="18zTa4duLkW" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="unsortedArray" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="18zTa4duLkX" role="1B3o_S" />
      <node concept="10Q1$e" id="18zTa4duLkY" role="1tU5fm">
        <node concept="3qc1$W" id="18zTa4duLkZ" role="10Q1$1">
          <property role="3qc1Xj" value="16" />
        </node>
      </node>
      <node concept="2ShNRf" id="18zTa4duLl0" role="33vP2m">
        <node concept="3$_iS1" id="18zTa4duLl1" role="2ShVmc">
          <node concept="3$GHV9" id="18zTa4duLl2" role="3$GQph">
            <node concept="37vLTw" id="18zTa4duLpj" role="3$I4v7">
              <ref role="3cqZAo" node="18zTa4duLkS" resolve="SIZE" />
            </node>
          </node>
          <node concept="3qc1$W" id="18zTa4duLl3" role="3$_nBY">
            <property role="3qc1Xj" value="16" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="18zTa4duLl4" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="sortedArray" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="18zTa4duLl5" role="1B3o_S" />
      <node concept="10Q1$e" id="18zTa4duLl6" role="1tU5fm">
        <node concept="3qc1$W" id="18zTa4duLl7" role="10Q1$1">
          <property role="3qc1Xj" value="16" />
        </node>
      </node>
      <node concept="2ShNRf" id="18zTa4duLl8" role="33vP2m">
        <node concept="3$_iS1" id="18zTa4duLl9" role="2ShVmc">
          <node concept="3$GHV9" id="18zTa4duLla" role="3$GQph">
            <node concept="37vLTw" id="18zTa4duLpo" role="3$I4v7">
              <ref role="3cqZAo" node="18zTa4duLkS" resolve="SIZE" />
            </node>
          </node>
          <node concept="3qc1$W" id="18zTa4duLlb" role="3$_nBY">
            <property role="3qc1Xj" value="16" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="18zTa4duLlc" role="jymVt" />
    <node concept="2tJIrI" id="18zTa4duLld" role="jymVt" />
    <node concept="3q8xyn" id="18zTa4duLle" role="jymVt">
      <node concept="37vLTw" id="18zTa4duLlf" role="3q8w2r">
        <ref role="3cqZAo" node="18zTa4duLkW" resolve="unsortedArray" />
      </node>
    </node>
    <node concept="2tJIrI" id="18zTa4duLlg" role="jymVt" />
    <node concept="zxlm7" id="18zTa4duLlh" role="jymVt" />
    <node concept="2tJIrI" id="18zTa4duLli" role="jymVt" />
    <node concept="DJdLC" id="18zTa4duLlj" role="jymVt">
      <property role="DRO8Q" value="The reason we do not have to assert the range of the sortedArray in this context is that we verify later" />
    </node>
    <node concept="DJdLC" id="18zTa4duLlk" role="jymVt">
      <property role="DRO8Q" value="that its elements are a permutation of another *publicly* known values, and also our verify_permutation" />
    </node>
    <node concept="DJdLC" id="18zTa4duLll" role="jymVt">
      <property role="DRO8Q" value="opcode will make sure anyway that its input from the other side match the type [more on that later]" />
    </node>
    <node concept="3qc$_m" id="18zTa4duLlm" role="jymVt">
      <node concept="37vLTw" id="18zTa4duLln" role="3qc$_n">
        <ref role="3cqZAo" node="18zTa4duLl4" resolve="sortedArray" />
      </node>
    </node>
    <node concept="2tJIrI" id="18zTa4duLlo" role="jymVt" />
    <node concept="3qdm3p" id="18zTa4duLlp" role="jymVt" />
    <node concept="2tJIrI" id="18zTa4duLlq" role="jymVt" />
    <node concept="2tJIrI" id="18zTa4duLlr" role="jymVt" />
    <node concept="3clFb_" id="18zTa4duLls" role="jymVt">
      <property role="TrG5h" value="outsource" />
      <node concept="3cqZAl" id="18zTa4duLlt" role="3clF45" />
      <node concept="3Tm1VV" id="18zTa4duLlu" role="1B3o_S" />
      <node concept="3clFbS" id="18zTa4duLlv" role="3clF47">
        <node concept="3clFbH" id="18zTa4duLlw" role="3cqZAp" />
        <node concept="3SKdUt" id="18zTa4duLlx" role="3cqZAp">
          <node concept="3SKdUq" id="18zTa4duLly" role="3SKWNk">
            <property role="3SKdUp" value="Use the external code block to compute outside the circuit (More on its usage later in documentation)" />
          </node>
        </node>
        <node concept="3SKdUt" id="18zTa4duLlz" role="3cqZAp">
          <node concept="3SKdUq" id="18zTa4duLl$" role="3SKWNk">
            <property role="3SKdUp" value="The values this block reads from the circuit are the latest values assigned to the variables it relies on, " />
          </node>
        </node>
        <node concept="3SKdUt" id="18zTa4duLl_" role="3cqZAp">
          <node concept="3SKdUq" id="18zTa4duLlA" role="3SKWNk">
            <property role="3SKdUp" value="therefore, care is sometimes needed. The following case is simple though." />
          </node>
        </node>
        <node concept="2DjkfC" id="18zTa4duLlB" role="3cqZAp">
          <node concept="3clFbS" id="18zTa4duLlC" role="9aQI4">
            <node concept="3clFbH" id="18zTa4duLlD" role="3cqZAp" />
            <node concept="3cpWs8" id="18zTa4duLlE" role="3cqZAp">
              <node concept="3cpWsn" id="18zTa4duLlF" role="3cpWs9">
                <property role="TrG5h" value="values" />
                <node concept="10Q1$e" id="18zTa4duLlG" role="1tU5fm">
                  <node concept="3uibUv" id="18zTa4duLlH" role="10Q1$1">
                    <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
                  </node>
                </node>
                <node concept="2ShNRf" id="18zTa4duLlI" role="33vP2m">
                  <node concept="3$_iS1" id="18zTa4duLlJ" role="2ShVmc">
                    <node concept="3$GHV9" id="18zTa4duLlK" role="3$GQph">
                      <node concept="37vLTw" id="18zTa4duLpt" role="3$I4v7">
                        <ref role="3cqZAo" node="18zTa4duLkS" resolve="SIZE" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="18zTa4duLlL" role="3$_nBY">
                      <ref role="3uigEE" to="xlxw:~BigInteger" resolve="BigInteger" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="18zTa4duLlM" role="3cqZAp">
              <node concept="3SKdUq" id="18zTa4duLlN" role="3SKWNk">
                <property role="3SKdUp" value="read the value from the circuit" />
              </node>
            </node>
            <node concept="1Dw8fO" id="18zTa4duLlO" role="3cqZAp">
              <node concept="3clFbS" id="18zTa4duLlP" role="2LFqv$">
                <node concept="3clFbF" id="18zTa4duLlQ" role="3cqZAp">
                  <node concept="37vLTI" id="18zTa4duLlR" role="3clFbG">
                    <node concept="AH0OO" id="18zTa4duLlS" role="37vLTJ">
                      <node concept="37vLTw" id="18zTa4duLlT" role="AHEQo">
                        <ref role="3cqZAo" node="18zTa4duLm0" resolve="i" />
                      </node>
                      <node concept="37vLTw" id="18zTa4duLlU" role="AHHXb">
                        <ref role="3cqZAo" node="18zTa4duLlF" resolve="values" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="18zTa4duLlV" role="37vLTx">
                      <node concept="AH0OO" id="18zTa4duLlW" role="2Oq$k0">
                        <node concept="37vLTw" id="18zTa4duLlX" role="AHEQo">
                          <ref role="3cqZAo" node="18zTa4duLm0" resolve="i" />
                        </node>
                        <node concept="37vLTw" id="18zTa4duLlY" role="AHHXb">
                          <ref role="3cqZAo" node="18zTa4duLkW" resolve="unsortedArray" />
                        </node>
                      </node>
                      <node concept="2Ds8w2" id="18zTa4duLlZ" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="18zTa4duLm0" role="1Duv9x">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="18zTa4duLm1" role="1tU5fm" />
                <node concept="3cmrfG" id="18zTa4duLm2" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3eOVzh" id="18zTa4duLm3" role="1Dwp0S">
                <node concept="37vLTw" id="18zTa4duLpy" role="3uHU7w">
                  <ref role="3cqZAo" node="18zTa4duLkS" resolve="SIZE" />
                </node>
                <node concept="37vLTw" id="18zTa4duLm4" role="3uHU7B">
                  <ref role="3cqZAo" node="18zTa4duLm0" resolve="i" />
                </node>
              </node>
              <node concept="3uNrnE" id="18zTa4duLm5" role="1Dwrff">
                <node concept="37vLTw" id="18zTa4duLm6" role="2$L3a6">
                  <ref role="3cqZAo" node="18zTa4duLm0" resolve="i" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="18zTa4duLna" role="3cqZAp">
              <node concept="3SKdUq" id="18zTa4duLnb" role="3SKWNk">
                <property role="3SKdUp" value="sort the array itself" />
              </node>
            </node>
            <node concept="3clFbF" id="18zTa4duLnc" role="3cqZAp">
              <node concept="2YIFZM" id="18zTa4duLnd" role="3clFbG">
                <ref role="37wK5l" to="33ny:~Arrays.sort(java.lang.Object[]):void" resolve="sort" />
                <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                <node concept="37vLTw" id="18zTa4duLne" role="37wK5m">
                  <ref role="3cqZAo" node="18zTa4duLlF" resolve="values" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="18zTa4duLnf" role="3cqZAp">
              <node concept="3SKdUq" id="18zTa4duLng" role="3SKWNk">
                <property role="3SKdUp" value="assign the sorted values to our witnesses" />
              </node>
            </node>
            <node concept="1Dw8fO" id="18zTa4duLnh" role="3cqZAp">
              <node concept="3cpWsn" id="18zTa4duLni" role="1Duv9x">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="18zTa4duLnj" role="1tU5fm" />
                <node concept="3cmrfG" id="18zTa4duLnk" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3eOVzh" id="18zTa4duLnl" role="1Dwp0S">
                <node concept="37vLTw" id="18zTa4duLnm" role="3uHU7B">
                  <ref role="3cqZAo" node="18zTa4duLni" resolve="i" />
                </node>
                <node concept="37vLTw" id="18zTa4duLpV" role="3uHU7w">
                  <ref role="3cqZAo" node="18zTa4duLkS" resolve="SIZE" />
                </node>
              </node>
              <node concept="3uNrnE" id="18zTa4duLnn" role="1Dwrff">
                <node concept="37vLTw" id="18zTa4duLno" role="2$L3a6">
                  <ref role="3cqZAo" node="18zTa4duLni" resolve="i" />
                </node>
              </node>
              <node concept="3clFbS" id="18zTa4duLnp" role="2LFqv$">
                <node concept="3clFbF" id="18zTa4duLnq" role="3cqZAp">
                  <node concept="37vLTI" id="18zTa4duLnr" role="3clFbG">
                    <node concept="AH0OO" id="18zTa4duLns" role="37vLTx">
                      <node concept="37vLTw" id="18zTa4duLnt" role="AHEQo">
                        <ref role="3cqZAo" node="18zTa4duLni" resolve="i" />
                      </node>
                      <node concept="37vLTw" id="18zTa4duLnu" role="AHHXb">
                        <ref role="3cqZAo" node="18zTa4duLlF" resolve="values" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="18zTa4duLnv" role="37vLTJ">
                      <node concept="AH0OO" id="18zTa4duLnw" role="2Oq$k0">
                        <node concept="37vLTw" id="18zTa4duLnx" role="AHEQo">
                          <ref role="3cqZAo" node="18zTa4duLni" resolve="i" />
                        </node>
                        <node concept="37vLTw" id="18zTa4duLny" role="AHHXb">
                          <ref role="3cqZAo" node="18zTa4duLl4" resolve="sortedArray" />
                        </node>
                      </node>
                      <node concept="2Ds8w2" id="18zTa4duLnz" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="18zTa4duLn$" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbH" id="18zTa4duLnE" role="3cqZAp" />
        <node concept="3SKdUt" id="18zTa4duLnF" role="3cqZAp">
          <node concept="3SKdUq" id="18zTa4duLnG" role="3SKWNk">
            <property role="3SKdUp" value="The part that is actually in the circuit" />
          </node>
        </node>
        <node concept="2H3G7l" id="18zTa4duLnH" role="3cqZAp">
          <node concept="3qc1$W" id="18zTa4duLnI" role="2H3G7d">
            <property role="3qc1Xj" value="16" />
          </node>
          <node concept="37vLTw" id="18zTa4duLnJ" role="2H3G7c">
            <ref role="3cqZAo" node="18zTa4duLkW" resolve="unsortedArray" />
          </node>
          <node concept="37vLTw" id="18zTa4duLnK" role="2H3G79">
            <ref role="3cqZAo" node="18zTa4duLl4" resolve="sortedArray" />
          </node>
          <node concept="Xl_RD" id="18zTa4duLnL" role="2H3G75" />
        </node>
        <node concept="3clFbH" id="18zTa4duLnM" role="3cqZAp" />
        <node concept="1Dw8fO" id="18zTa4duLnN" role="3cqZAp">
          <node concept="3clFbS" id="18zTa4duLnO" role="2LFqv$">
            <node concept="2DKZvD" id="18zTa4duLnP" role="3cqZAp">
              <node concept="2dkUwp" id="18zTa4duLnQ" role="2DKX1R">
                <node concept="AH0OO" id="18zTa4duLnR" role="3uHU7w">
                  <node concept="3cpWs3" id="18zTa4duLnS" role="AHEQo">
                    <node concept="3cmrfG" id="18zTa4duLnT" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="37vLTw" id="18zTa4duLnU" role="3uHU7B">
                      <ref role="3cqZAo" node="18zTa4duLnZ" resolve="i" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="18zTa4duLnV" role="AHHXb">
                    <ref role="3cqZAo" node="18zTa4duLl4" resolve="sortedArray" />
                  </node>
                </node>
                <node concept="AH0OO" id="18zTa4duLnW" role="3uHU7B">
                  <node concept="37vLTw" id="18zTa4duLnX" role="AHEQo">
                    <ref role="3cqZAo" node="18zTa4duLnZ" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="18zTa4duLnY" role="AHHXb">
                    <ref role="3cqZAo" node="18zTa4duLl4" resolve="sortedArray" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="18zTa4duLnZ" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="18zTa4duLo0" role="1tU5fm" />
            <node concept="3cmrfG" id="18zTa4duLo1" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="18zTa4duLo2" role="1Dwp0S">
            <node concept="37vLTw" id="18zTa4duLo3" role="3uHU7B">
              <ref role="3cqZAo" node="18zTa4duLnZ" resolve="i" />
            </node>
            <node concept="3cpWsd" id="18zTa4duLo4" role="3uHU7w">
              <node concept="3cmrfG" id="18zTa4duLo5" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="37vLTw" id="18zTa4duLq0" role="3uHU7B">
                <ref role="3cqZAo" node="18zTa4duLkS" resolve="SIZE" />
              </node>
            </node>
          </node>
          <node concept="3uNrnE" id="18zTa4duLo6" role="1Dwrff">
            <node concept="37vLTw" id="18zTa4duLo7" role="2$L3a6">
              <ref role="3cqZAo" node="18zTa4duLnZ" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="18zTa4duLo8" role="3cqZAp" />
      </node>
    </node>
    <node concept="2tJIrI" id="18zTa4duLo9" role="jymVt" />
    <node concept="2tJIrI" id="18zTa4duLoa" role="jymVt" />
    <node concept="1UYk92" id="18zTa4duLob" role="jymVt">
      <property role="3j8K$S" value="true" />
      <property role="3jfa3H" value="Sample_Run1" />
      <node concept="3jfauB" id="18zTa4duLoc" role="3jfavw">
        <node concept="3clFbS" id="18zTa4duLod" role="3jfauw">
          <node concept="3SKdUt" id="18zTa4duLoe" role="3cqZAp">
            <node concept="3SKdUq" id="18zTa4duLof" role="3SKWNk">
              <property role="3SKdUp" value="assign random values to input" />
            </node>
          </node>
          <node concept="1Dw8fO" id="18zTa4duLog" role="3cqZAp">
            <node concept="3cpWsn" id="18zTa4duLoh" role="1Duv9x">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="18zTa4duLoi" role="1tU5fm" />
              <node concept="3cmrfG" id="18zTa4duLoj" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="3clFbS" id="18zTa4duLok" role="2LFqv$">
              <node concept="3clFbF" id="18zTa4duLol" role="3cqZAp">
                <node concept="37vLTI" id="18zTa4duLom" role="3clFbG">
                  <node concept="2OqwBi" id="18zTa4duLon" role="37vLTJ">
                    <node concept="AH0OO" id="18zTa4duLoo" role="2Oq$k0">
                      <node concept="37vLTw" id="18zTa4duLop" role="AHEQo">
                        <ref role="3cqZAo" node="18zTa4duLoh" resolve="i" />
                      </node>
                      <node concept="37vLTw" id="18zTa4duLoq" role="AHHXb">
                        <ref role="3cqZAo" node="18zTa4duLkW" resolve="unsortedArray" />
                      </node>
                    </node>
                    <node concept="2Ds8w2" id="18zTa4duLor" role="2OqNvi" />
                  </node>
                  <node concept="2YIFZM" id="18zTa4duLos" role="37vLTx">
                    <ref role="37wK5l" to="562q:~Util.nextRandomBigInteger(int):java.math.BigInteger" resolve="nextRandomBigInteger" />
                    <ref role="1Pybhc" to="562q:~Util" resolve="Util" />
                    <node concept="3cmrfG" id="18zTa4duLot" role="37wK5m">
                      <property role="3cmrfH" value="16" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eOVzh" id="18zTa4duLou" role="1Dwp0S">
              <node concept="37vLTw" id="18zTa4duLov" role="3uHU7B">
                <ref role="3cqZAo" node="18zTa4duLoh" resolve="i" />
              </node>
              <node concept="37vLTw" id="18zTa4duLq5" role="3uHU7w">
                <ref role="3cqZAo" node="18zTa4duLkS" resolve="SIZE" />
              </node>
            </node>
            <node concept="3uNrnE" id="18zTa4duLow" role="1Dwrff">
              <node concept="37vLTw" id="18zTa4duLox" role="2$L3a6">
                <ref role="3cqZAo" node="18zTa4duLoh" resolve="i" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3jfavX" id="18zTa4duLoy" role="3jfasw">
        <node concept="3clFbS" id="18zTa4duLoz" role="3jfavY">
          <node concept="3SKdUt" id="18zTa4duLo$" role="3cqZAp">
            <node concept="3SKdUq" id="18zTa4duLo_" role="3SKWNk">
              <property role="3SKdUp" value=" elements should be sorted. If sorting in the external block is done wrong, failed assertions will appear" />
            </node>
          </node>
          <node concept="1Dw8fO" id="18zTa4duLoA" role="3cqZAp">
            <node concept="3cpWsn" id="18zTa4duLoB" role="1Duv9x">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="18zTa4duLoC" role="1tU5fm" />
              <node concept="3cmrfG" id="18zTa4duLoD" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="3clFbS" id="18zTa4duLoE" role="2LFqv$">
              <node concept="3clFbF" id="18zTa4duLoF" role="3cqZAp">
                <node concept="2OqwBi" id="18zTa4duLoG" role="3clFbG">
                  <node concept="10M0yZ" id="18zTa4duLoH" role="2Oq$k0">
                    <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                    <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                  </node>
                  <node concept="liA8E" id="18zTa4duLoI" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                    <node concept="3cpWs3" id="18zTa4duLoJ" role="37wK5m">
                      <node concept="2OqwBi" id="18zTa4duLoK" role="3uHU7w">
                        <node concept="AH0OO" id="18zTa4duLoL" role="2Oq$k0">
                          <node concept="37vLTw" id="18zTa4duLoM" role="AHEQo">
                            <ref role="3cqZAo" node="18zTa4duLoB" resolve="i" />
                          </node>
                          <node concept="37vLTw" id="18zTa4duLoN" role="AHHXb">
                            <ref role="3cqZAo" node="18zTa4duLl4" resolve="sortedArray" />
                          </node>
                        </node>
                        <node concept="2Ds8w2" id="18zTa4duLoO" role="2OqNvi" />
                      </node>
                      <node concept="3cpWs3" id="18zTa4duLoP" role="3uHU7B">
                        <node concept="3cpWs3" id="18zTa4duLoQ" role="3uHU7B">
                          <node concept="Xl_RD" id="18zTa4duLoR" role="3uHU7B">
                            <property role="Xl_RC" value="Element at " />
                          </node>
                          <node concept="37vLTw" id="18zTa4duLoS" role="3uHU7w">
                            <ref role="3cqZAo" node="18zTa4duLoB" resolve="i" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="18zTa4duLoT" role="3uHU7w">
                          <property role="Xl_RC" value=" &gt; " />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eOVzh" id="18zTa4duLoU" role="1Dwp0S">
              <node concept="37vLTw" id="18zTa4duLoV" role="3uHU7B">
                <ref role="3cqZAo" node="18zTa4duLoB" resolve="i" />
              </node>
              <node concept="37vLTw" id="18zTa4duLqd" role="3uHU7w">
                <ref role="3cqZAo" node="18zTa4duLkS" resolve="SIZE" />
              </node>
            </node>
            <node concept="3uNrnE" id="18zTa4duLoW" role="1Dwrff">
              <node concept="37vLTw" id="18zTa4duLoX" role="2$L3a6">
                <ref role="3cqZAo" node="18zTa4duLoB" resolve="i" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="18zTa4duLoY" role="3cqZAp">
            <node concept="3SKdUq" id="18zTa4duLoZ" role="3SKWNk">
              <property role="3SKdUp" value="disable the print statement above, and" />
            </node>
          </node>
          <node concept="3SKdUt" id="18zTa4duLp0" role="3cqZAp">
            <node concept="3SKdUq" id="18zTa4duLp1" role="3SKWNk">
              <property role="3SKdUp" value="try comment the Arrays.sort(values) or assign other values: Failed assertions should appeaar." />
            </node>
          </node>
          <node concept="3clFbH" id="18zTa4duLp2" role="3cqZAp" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="18zTa4duLp3" role="jymVt" />
    <node concept="2tJIrI" id="18zTa4duLp4" role="jymVt" />
    <node concept="2YIFZL" id="18zTa4duLp5" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="3cqZAl" id="18zTa4duLp6" role="3clF45" />
      <node concept="3Tm1VV" id="18zTa4duLp7" role="1B3o_S" />
      <node concept="3clFbS" id="18zTa4duLp8" role="3clF47">
        <node concept="3SKdUt" id="18zTa4duLp9" role="3cqZAp">
          <node concept="3SKdUq" id="18zTa4duLpa" role="3SKWNk">
            <property role="3SKdUp" value="This is the java main method. Its purpose is to make the Progam runnable in the environment" />
          </node>
        </node>
        <node concept="3SKdUt" id="18zTa4duLpb" role="3cqZAp">
          <node concept="3SKdUq" id="18zTa4duLpc" role="3SKWNk">
            <property role="3SKdUp" value="This method can be left empty, or used to set Configuration params (see examples)" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="18zTa4duLpd" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="18zTa4duLpe" role="1tU5fm">
          <node concept="17QB3L" id="18zTa4duLpf" role="10Q1$1" />
        </node>
      </node>
    </node>
  </node>
</model>

