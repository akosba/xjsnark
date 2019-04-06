<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:73ac15ae-3fdc-4863-94d7-12cafed86172(xjsnark.sudoku)">
  <persistence version="9" />
  <languages>
    <use id="0688d542-e2a3-492c-a31f-0e921fd6a8fb" name="xjsnark" version="0" />
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
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153422105332" name="jetbrains.mps.baseLanguage.structure.RemExpression" flags="nn" index="2dk9JS" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
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
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
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
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT" />
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
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
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
      <concept id="1307139697228200665" name="xjsnark.structure.VerifyNativeConstraintStatment" flags="ng" index="veHTS">
        <child id="1307139697228215787" name="b" index="veD5a" />
        <child id="1307139697228216006" name="c" index="veD9B" />
        <child id="1307139697228200666" name="a" index="veHTV" />
      </concept>
      <concept id="7495353643781164522" name="xjsnark.structure.VerifiedWitnessBlock" flags="lg" index="zxlm7" />
      <concept id="7495353643810622554" name="xjsnark.structure.JFieldConversion" flags="ng" index="_hXgR">
        <child id="7495353643810622556" name="argument" index="_hXgL" />
        <child id="7495353643810622555" name="jType" index="_hXgQ" />
      </concept>
      <concept id="7553992366106434257" name="xjsnark.structure.FieldDefTable" flags="ng" index="2D77rp">
        <child id="7553992366106442399" name="fieldDefinitions" index="2D75qn" />
      </concept>
      <concept id="7553992366106434258" name="xjsnark.structure.FieldRecord" flags="ng" index="2D77rq">
        <property id="7553992366106438052" name="prime" index="2D74mG" />
      </concept>
      <concept id="7553992366106506034" name="xjsnark.structure.JFieldType" flags="ig" index="2D7PWU">
        <reference id="7553992366106506060" name="fieldRec" index="2D7PX4" />
      </concept>
      <concept id="7553992366104093706" name="xjsnark.structure.ValueOp" flags="ng" index="2Ds8w2" />
      <concept id="7495353643616961541" name="xjsnark.structure.SingleLineCommentClassMember" flags="ng" index="DJdLC">
        <property id="7495353643619293787" name="text" index="DRO8Q" />
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
      <concept id="4165393367774804580" name="xjsnark.structure.WitnessBlock" flags="lg" index="3qc$_m">
        <child id="4165393367774804581" name="witnesses" index="3qc$_n" />
      </concept>
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
  <node concept="1KMFyu" id="18zTa4d4FrA">
    <property role="IEkAT" value="false" />
    <property role="1EXbeo" value="true" />
    <property role="2bfB8j" value="true" />
    <property role="1sVAO0" value="false" />
    <property role="TrG5h" value="Sudoku9x9" />
    <node concept="DJdLC" id="18zTa4d4TiK" role="jymVt">
      <property role="DRO8Q" value="This program proves the knowledge of a valid 9x9 sudoku solution" />
    </node>
    <node concept="2tJIrI" id="18zTa4d4T9J" role="jymVt" />
    <node concept="DJdLC" id="18zTa4d4Vmn" role="jymVt">
      <property role="DRO8Q" value="Use F_native types to ensure efficiency (native is defined in FieldDefTable)" />
    </node>
    <node concept="3Tm1VV" id="18zTa4d4FrB" role="1B3o_S" />
    <node concept="312cEg" id="18zTa4d4Hyx" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="puzzle" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="18zTa4d4Hre" role="1B3o_S" />
      <node concept="10Q1$e" id="18zTa4d4HtC" role="1tU5fm">
        <node concept="10Q1$e" id="18zTa4d4HuD" role="10Q1$1">
          <node concept="2D7PWU" id="18zTa4d4Hrc" role="10Q1$1">
            <ref role="2D7PX4" node="18zTa4d4Gfv" resolve="native" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="18zTa4d4J3L" role="33vP2m">
        <node concept="3$_iS1" id="18zTa4d4Jg4" role="2ShVmc">
          <node concept="3$GHV9" id="18zTa4d4Jg6" role="3$GQph">
            <node concept="3cmrfG" id="18zTa4d4Jou" role="3$I4v7">
              <property role="3cmrfH" value="9" />
            </node>
          </node>
          <node concept="3$GHV9" id="18zTa4d4Jjk" role="3$GQph">
            <node concept="3cmrfG" id="18zTa4d4JrZ" role="3$I4v7">
              <property role="3cmrfH" value="9" />
            </node>
          </node>
          <node concept="2D7PWU" id="18zTa4d4Jg3" role="3$_nBY">
            <ref role="2D7PX4" node="18zTa4d4Gfv" resolve="native" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="18zTa4d4Iy4" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="solution" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="18zTa4d4Iy5" role="1B3o_S" />
      <node concept="10Q1$e" id="18zTa4d4Iy6" role="1tU5fm">
        <node concept="10Q1$e" id="18zTa4d4Iy7" role="10Q1$1">
          <node concept="2D7PWU" id="18zTa4d4Iy8" role="10Q1$1">
            <ref role="2D7PX4" node="18zTa4d4Gfv" resolve="native" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="18zTa4d4J$7" role="33vP2m">
        <node concept="3$_iS1" id="18zTa4d4JDP" role="2ShVmc">
          <node concept="3$GHV9" id="18zTa4d4JDR" role="3$GQph">
            <node concept="3cmrfG" id="18zTa4d4JH6" role="3$I4v7">
              <property role="3cmrfH" value="9" />
            </node>
          </node>
          <node concept="3$GHV9" id="18zTa4d4JJw" role="3$GQph">
            <node concept="3cmrfG" id="18zTa4d4JMZ" role="3$I4v7">
              <property role="3cmrfH" value="9" />
            </node>
          </node>
          <node concept="2D7PWU" id="18zTa4d4JDO" role="3$_nBY">
            <ref role="2D7PX4" node="18zTa4d4Gfv" resolve="native" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="18zTa4d4ItK" role="jymVt" />
    <node concept="DJdLC" id="18zTa4d4HOd" role="jymVt">
      <property role="DRO8Q" value="The puzzle matrix specifies the sudoku puzzle. The empty positions in the puzzle matrix have a zero value. " />
    </node>
    <node concept="DJdLC" id="6rAc_GD9sFi" role="jymVt">
      <property role="DRO8Q" value="The prover is only allowed to replace the zero entries." />
    </node>
    <node concept="2tJIrI" id="6rAc_GD9uoK" role="jymVt" />
    <node concept="3q8xyn" id="18zTa4d4FrH" role="jymVt">
      <node concept="37vLTw" id="18zTa4d4HIg" role="3q8w2r">
        <ref role="3cqZAo" node="18zTa4d4Hyx" resolve="puzzle" />
      </node>
    </node>
    <node concept="2tJIrI" id="18zTa4d4IjV" role="jymVt" />
    <node concept="3qc$_m" id="18zTa4d4FrK" role="jymVt">
      <node concept="37vLTw" id="18zTa4d4IUg" role="3qc$_n">
        <ref role="3cqZAo" node="18zTa4d4Iy4" resolve="solution" />
      </node>
    </node>
    <node concept="2tJIrI" id="18zTa4dvEVg" role="jymVt" />
    <node concept="DJdLC" id="18zTa4dvJ2u" role="jymVt">
      <property role="DRO8Q" value="No need for range assertions as this is implicity verified by the permutation checks below." />
    </node>
    <node concept="zxlm7" id="18zTa4dvI14" role="jymVt" />
    <node concept="2tJIrI" id="18zTa4dvHvw" role="jymVt" />
    <node concept="2tJIrI" id="18zTa4dw6rN" role="jymVt" />
    <node concept="3clFb_" id="18zTa4d4FrN" role="jymVt">
      <property role="TrG5h" value="outsource" />
      <node concept="3cqZAl" id="18zTa4d4FrO" role="3clF45" />
      <node concept="3Tm1VV" id="18zTa4d4FrP" role="1B3o_S" />
      <node concept="3clFbS" id="18zTa4d4FrQ" role="3clF47">
        <node concept="3SKdUt" id="18zTa4d4Kn3" role="3cqZAp">
          <node concept="3SKdUq" id="18zTa4d4Kn5" role="3SKWNk">
            <property role="3SKdUp" value="first verify that the non-zero entries in the puzzle matrix are the same in the solution matrix" />
          </node>
        </node>
        <node concept="1Dw8fO" id="18zTa4d4Lfs" role="3cqZAp">
          <node concept="3clFbS" id="18zTa4d4Lfu" role="2LFqv$">
            <node concept="1Dw8fO" id="18zTa4d4LEy" role="3cqZAp">
              <node concept="3clFbS" id="18zTa4d4LE$" role="2LFqv$">
                <node concept="3SKdUt" id="18zTa4d4OiH" role="3cqZAp">
                  <node concept="3SKdUq" id="18zTa4d4OiJ" role="3SKWNk">
                    <property role="3SKdUp" value="if puzzle[i][j] is not zero, then solution[i][j] must have the same value" />
                  </node>
                </node>
                <node concept="veHTS" id="18zTa4dgQS4" role="3cqZAp">
                  <node concept="3cpWsd" id="18zTa4dh1M0" role="veHTV">
                    <node concept="AH0OO" id="18zTa4dh1M1" role="3uHU7w">
                      <node concept="37vLTw" id="18zTa4dh1M2" role="AHEQo">
                        <ref role="3cqZAo" node="18zTa4d4LE_" resolve="j" />
                      </node>
                      <node concept="AH0OO" id="18zTa4dh1M3" role="AHHXb">
                        <node concept="37vLTw" id="18zTa4dh1M4" role="AHEQo">
                          <ref role="3cqZAo" node="18zTa4d4Lfv" resolve="i" />
                        </node>
                        <node concept="37vLTw" id="18zTa4dh1M5" role="AHHXb">
                          <ref role="3cqZAo" node="18zTa4d4Iy4" resolve="solution" />
                        </node>
                      </node>
                    </node>
                    <node concept="AH0OO" id="18zTa4dh1M6" role="3uHU7B">
                      <node concept="37vLTw" id="18zTa4dh1M7" role="AHEQo">
                        <ref role="3cqZAo" node="18zTa4d4LE_" resolve="j" />
                      </node>
                      <node concept="AH0OO" id="18zTa4dh1M8" role="AHHXb">
                        <node concept="37vLTw" id="18zTa4dh1M9" role="AHEQo">
                          <ref role="3cqZAo" node="18zTa4d4Lfv" resolve="i" />
                        </node>
                        <node concept="37vLTw" id="18zTa4dh1Ma" role="AHHXb">
                          <ref role="3cqZAo" node="18zTa4d4Hyx" resolve="puzzle" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="AH0OO" id="18zTa4dh1RV" role="veD5a">
                    <node concept="37vLTw" id="18zTa4dh1RW" role="AHEQo">
                      <ref role="3cqZAo" node="18zTa4d4LE_" resolve="j" />
                    </node>
                    <node concept="AH0OO" id="18zTa4dh1RX" role="AHHXb">
                      <node concept="37vLTw" id="18zTa4dh1RY" role="AHEQo">
                        <ref role="3cqZAo" node="18zTa4d4Lfv" resolve="i" />
                      </node>
                      <node concept="37vLTw" id="18zTa4dh1RZ" role="AHHXb">
                        <ref role="3cqZAo" node="18zTa4d4Hyx" resolve="puzzle" />
                      </node>
                    </node>
                  </node>
                  <node concept="_hXgR" id="18zTa4dovbi" role="veD9B">
                    <node concept="2D7PWU" id="18zTa4dovbk" role="_hXgQ">
                      <ref role="2D7PX4" node="18zTa4d4Gfv" resolve="native" />
                    </node>
                    <node concept="3cmrfG" id="18zTa4dovi_" role="_hXgL">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="18zTa4d4LE_" role="1Duv9x">
                <property role="TrG5h" value="j" />
                <node concept="10Oyi0" id="18zTa4d4LFY" role="1tU5fm" />
                <node concept="3cmrfG" id="18zTa4d4LId" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3eOVzh" id="18zTa4d4LQN" role="1Dwp0S">
                <node concept="3cmrfG" id="18zTa4d4LRo" role="3uHU7w">
                  <property role="3cmrfH" value="9" />
                </node>
                <node concept="37vLTw" id="18zTa4d4LIY" role="3uHU7B">
                  <ref role="3cqZAo" node="18zTa4d4LE_" resolve="j" />
                </node>
              </node>
              <node concept="3uNrnE" id="18zTa4d4M1q" role="1Dwrff">
                <node concept="37vLTw" id="18zTa4d4M1s" role="2$L3a6">
                  <ref role="3cqZAo" node="18zTa4d4LE_" resolve="j" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="18zTa4d4Lfv" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="18zTa4d4Lg8" role="1tU5fm" />
            <node concept="3cmrfG" id="18zTa4d4LhW" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="18zTa4d4Lsu" role="1Dwp0S">
            <node concept="3cmrfG" id="18zTa4d4Lt3" role="3uHU7w">
              <property role="3cmrfH" value="9" />
            </node>
            <node concept="37vLTw" id="18zTa4d4Lml" role="3uHU7B">
              <ref role="3cqZAo" node="18zTa4d4Lfv" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="18zTa4d4LAu" role="1Dwrff">
            <node concept="37vLTw" id="18zTa4d4LAw" role="2$L3a6">
              <ref role="3cqZAo" node="18zTa4d4Lfv" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6rAc_GCpoBB" role="3cqZAp" />
        <node concept="3SKdUt" id="18zTa4dw1R9" role="3cqZAp">
          <node concept="3SKdUq" id="18zTa4dw1Rb" role="3SKWNk">
            <property role="3SKdUp" value="second, check that the prover only used valid values " />
          </node>
        </node>
        <node concept="3SKdUt" id="6rAc_GD9vvp" role="3cqZAp">
          <node concept="3SKdUq" id="6rAc_GD9vvq" role="3SKWNk">
            <property role="3SKdUp" value="and that there are no repetitions in any row, column, or subsquare" />
          </node>
        </node>
        <node concept="3cpWs8" id="18zTa4d4PbO" role="3cqZAp">
          <node concept="3cpWsn" id="18zTa4d4PbR" role="3cpWs9">
            <property role="TrG5h" value="ref" />
            <node concept="10Q1$e" id="18zTa4d4Pl_" role="1tU5fm">
              <node concept="2D7PWU" id="18zTa4d4PbM" role="10Q1$1">
                <ref role="2D7PX4" node="18zTa4d4Gfv" resolve="native" />
              </node>
            </node>
            <node concept="2ShNRf" id="18zTa4d4R3z" role="33vP2m">
              <node concept="3g6Rrh" id="18zTa4d4Raw" role="2ShVmc">
                <node concept="2D7PWU" id="18zTa4d4R9k" role="3g7fb8">
                  <ref role="2D7PX4" node="18zTa4d4Gfv" resolve="native" />
                </node>
                <node concept="3cmrfG" id="18zTa4d4Rdr" role="3g7hyw">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="3cmrfG" id="18zTa4d4Rgq" role="3g7hyw">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="3cmrfG" id="18zTa4d4RhI" role="3g7hyw">
                  <property role="3cmrfH" value="3" />
                </node>
                <node concept="3cmrfG" id="18zTa4d4Ri4" role="3g7hyw">
                  <property role="3cmrfH" value="4" />
                </node>
                <node concept="3cmrfG" id="18zTa4d4Ris" role="3g7hyw">
                  <property role="3cmrfH" value="5" />
                </node>
                <node concept="3cmrfG" id="18zTa4d4RjG" role="3g7hyw">
                  <property role="3cmrfH" value="6" />
                </node>
                <node concept="3cmrfG" id="18zTa4d4Rk8" role="3g7hyw">
                  <property role="3cmrfH" value="7" />
                </node>
                <node concept="3cmrfG" id="18zTa4d4RkA" role="3g7hyw">
                  <property role="3cmrfH" value="8" />
                </node>
                <node concept="3cmrfG" id="18zTa4d4Rnt" role="3g7hyw">
                  <property role="3cmrfH" value="9" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="18zTa4doNn5" role="3cqZAp">
          <node concept="3clFbS" id="18zTa4doNn7" role="2LFqv$">
            <node concept="2H3G7l" id="18zTa4doObh" role="3cqZAp">
              <node concept="2D7PWU" id="18zTa4doOew" role="2H3G7d">
                <ref role="2D7PX4" node="18zTa4d4Gfv" resolve="native" />
              </node>
              <node concept="AH0OO" id="18zTa4doOqr" role="2H3G7c">
                <node concept="37vLTw" id="18zTa4doOs_" role="AHEQo">
                  <ref role="3cqZAo" node="18zTa4doNn8" resolve="i" />
                </node>
                <node concept="37vLTw" id="18zTa4doOnE" role="AHHXb">
                  <ref role="3cqZAo" node="18zTa4d4Iy4" resolve="solution" />
                </node>
              </node>
              <node concept="37vLTw" id="18zTa4doOkX" role="2H3G79">
                <ref role="3cqZAo" node="18zTa4d4PbR" resolve="ref" />
              </node>
              <node concept="Xl_RD" id="18zTa4doObp" role="2H3G75" />
            </node>
            <node concept="2H3G7l" id="18zTa4dpRuV" role="3cqZAp">
              <node concept="2D7PWU" id="18zTa4dpRuW" role="2H3G7d">
                <ref role="2D7PX4" node="18zTa4d4Gfv" resolve="native" />
              </node>
              <node concept="37vLTw" id="18zTa4dpRv0" role="2H3G79">
                <ref role="3cqZAo" node="18zTa4d4PbR" resolve="ref" />
              </node>
              <node concept="Xl_RD" id="18zTa4dpRv1" role="2H3G75" />
              <node concept="1rXfSq" id="18zTa4dpZvA" role="2H3G7c">
                <ref role="37wK5l" node="18zTa4dpTJv" resolve="getColumn" />
                <node concept="37vLTw" id="18zTa4dq0ky" role="37wK5m">
                  <ref role="3cqZAo" node="18zTa4d4Iy4" resolve="solution" />
                </node>
                <node concept="37vLTw" id="18zTa4dq0q3" role="37wK5m">
                  <ref role="3cqZAo" node="18zTa4doNn8" resolve="i" />
                </node>
              </node>
            </node>
            <node concept="2H3G7l" id="18zTa4dq236" role="3cqZAp">
              <node concept="2D7PWU" id="18zTa4dq237" role="2H3G7d">
                <ref role="2D7PX4" node="18zTa4d4Gfv" resolve="native" />
              </node>
              <node concept="37vLTw" id="18zTa4dq238" role="2H3G79">
                <ref role="3cqZAo" node="18zTa4d4PbR" resolve="ref" />
              </node>
              <node concept="Xl_RD" id="18zTa4dq239" role="2H3G75" />
              <node concept="1rXfSq" id="18zTa4dq23a" role="2H3G7c">
                <ref role="37wK5l" node="18zTa4dpYb_" resolve="getSubSquare" />
                <node concept="37vLTw" id="18zTa4dq23b" role="37wK5m">
                  <ref role="3cqZAo" node="18zTa4d4Iy4" resolve="solution" />
                </node>
                <node concept="37vLTw" id="18zTa4dq23c" role="37wK5m">
                  <ref role="3cqZAo" node="18zTa4doNn8" resolve="i" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="18zTa4doNn8" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="18zTa4doNto" role="1tU5fm" />
            <node concept="3cmrfG" id="18zTa4doNvB" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="18zTa4doNEZ" role="1Dwp0S">
            <node concept="37vLTw" id="18zTa4doNxe" role="3uHU7B">
              <ref role="3cqZAo" node="18zTa4doNn8" resolve="i" />
            </node>
            <node concept="3cmrfG" id="18zTa4doNVg" role="3uHU7w">
              <property role="3cmrfH" value="9" />
            </node>
          </node>
          <node concept="3uNrnE" id="18zTa4doO5x" role="1Dwrff">
            <node concept="37vLTw" id="18zTa4doO5z" role="2$L3a6">
              <ref role="3cqZAo" node="18zTa4doNn8" resolve="i" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="18zTa4dpRZl" role="jymVt" />
    <node concept="2YIFZL" id="18zTa4dpTJv" role="jymVt">
      <property role="TrG5h" value="getColumn" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="18zTa4dpTJy" role="3clF47">
        <node concept="3cpWs8" id="18zTa4dpUqc" role="3cqZAp">
          <node concept="3cpWsn" id="18zTa4dpUqf" role="3cpWs9">
            <property role="TrG5h" value="col" />
            <node concept="10Q1$e" id="18zTa4dpVm2" role="1tU5fm">
              <node concept="2D7PWU" id="18zTa4dpUqb" role="10Q1$1">
                <ref role="2D7PX4" node="18zTa4d4Gfv" resolve="native" />
              </node>
            </node>
            <node concept="2ShNRf" id="18zTa4dpUx6" role="33vP2m">
              <node concept="3$_iS1" id="18zTa4dpUGe" role="2ShVmc">
                <node concept="3$GHV9" id="18zTa4dpUGg" role="3$GQph">
                  <node concept="2OqwBi" id="18zTa4dpVbW" role="3$I4v7">
                    <node concept="37vLTw" id="18zTa4dpV9H" role="2Oq$k0">
                      <ref role="3cqZAo" node="18zTa4dpUfj" resolve="array" />
                    </node>
                    <node concept="1Rwk04" id="18zTa4dpViT" role="2OqNvi" />
                  </node>
                </node>
                <node concept="2D7PWU" id="18zTa4dpUGd" role="3$_nBY">
                  <ref role="2D7PX4" node="18zTa4d4Gfv" resolve="native" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="18zTa4dpVq_" role="3cqZAp">
          <node concept="3clFbS" id="18zTa4dpVqB" role="2LFqv$">
            <node concept="3clFbF" id="18zTa4dpW5c" role="3cqZAp">
              <node concept="37vLTI" id="18zTa4dpWdo" role="3clFbG">
                <node concept="AH0OO" id="18zTa4dpX7P" role="37vLTx">
                  <node concept="37vLTw" id="18zTa4dpXaV" role="AHEQo">
                    <ref role="3cqZAo" node="18zTa4dpZ_O" resolve="idx" />
                  </node>
                  <node concept="AH0OO" id="18zTa4dpWPn" role="AHHXb">
                    <node concept="37vLTw" id="18zTa4dpWRy" role="AHEQo">
                      <ref role="3cqZAo" node="18zTa4dpVqC" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="18zTa4dpWki" role="AHHXb">
                      <ref role="3cqZAo" node="18zTa4dpUfj" resolve="array" />
                    </node>
                  </node>
                </node>
                <node concept="AH0OO" id="18zTa4dpW6d" role="37vLTJ">
                  <node concept="37vLTw" id="18zTa4dpW8g" role="AHEQo">
                    <ref role="3cqZAo" node="18zTa4dpVqC" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="18zTa4dpW5a" role="AHHXb">
                    <ref role="3cqZAo" node="18zTa4dpUqf" resolve="col" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="18zTa4dpVqC" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="18zTa4dpVrm" role="1tU5fm" />
            <node concept="3cmrfG" id="18zTa4dpVuQ" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="18zTa4dpVAA" role="1Dwp0S">
            <node concept="2OqwBi" id="18zTa4dpVF_" role="3uHU7w">
              <node concept="37vLTw" id="18zTa4dpVBA" role="2Oq$k0">
                <ref role="3cqZAo" node="18zTa4dpUqf" resolve="col" />
              </node>
              <node concept="1Rwk04" id="18zTa4dpVIL" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="18zTa4dpVvB" role="3uHU7B">
              <ref role="3cqZAo" node="18zTa4dpVqC" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="18zTa4dpVRy" role="1Dwrff">
            <node concept="37vLTw" id="18zTa4dpVR$" role="2$L3a6">
              <ref role="3cqZAo" node="18zTa4dpVqC" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="18zTa4dpXhw" role="3cqZAp">
          <node concept="37vLTw" id="18zTa4dpXll" role="3cqZAk">
            <ref role="3cqZAo" node="18zTa4dpUqf" resolve="col" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="18zTa4dpTdY" role="1B3o_S" />
      <node concept="10Q1$e" id="18zTa4dpTBd" role="3clF45">
        <node concept="2D7PWU" id="18zTa4dpTdW" role="10Q1$1">
          <ref role="2D7PX4" node="18zTa4d4Gfv" resolve="native" />
        </node>
      </node>
      <node concept="37vLTG" id="18zTa4dpUfj" role="3clF46">
        <property role="TrG5h" value="array" />
        <node concept="10Q1$e" id="18zTa4dpUj2" role="1tU5fm">
          <node concept="10Q1$e" id="18zTa4dpUjC" role="10Q1$1">
            <node concept="2D7PWU" id="18zTa4dpUgj" role="10Q1$1">
              <ref role="2D7PX4" node="18zTa4d4Gfv" resolve="native" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="18zTa4dpZ_O" role="3clF46">
        <property role="TrG5h" value="idx" />
        <node concept="10Oyi0" id="18zTa4dpZDX" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="18zTa4dpXr4" role="jymVt" />
    <node concept="2tJIrI" id="18zTa4dw7jp" role="jymVt" />
    <node concept="2YIFZL" id="18zTa4dpYb_" role="jymVt">
      <property role="TrG5h" value="getSubSquare" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="18zTa4dpYbA" role="3clF47">
        <node concept="3cpWs8" id="18zTa4dpYbB" role="3cqZAp">
          <node concept="3cpWsn" id="18zTa4dpYbC" role="3cpWs9">
            <property role="TrG5h" value="square" />
            <node concept="10Q1$e" id="18zTa4dpYbD" role="1tU5fm">
              <node concept="2D7PWU" id="18zTa4dpYbE" role="10Q1$1">
                <ref role="2D7PX4" node="18zTa4d4Gfv" resolve="native" />
              </node>
            </node>
            <node concept="2ShNRf" id="18zTa4dpYbF" role="33vP2m">
              <node concept="3$_iS1" id="18zTa4dpYbG" role="2ShVmc">
                <node concept="3$GHV9" id="18zTa4dpYbH" role="3$GQph">
                  <node concept="2OqwBi" id="18zTa4dpYbI" role="3$I4v7">
                    <node concept="37vLTw" id="18zTa4dpYbJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="18zTa4dpYcf" resolve="array" />
                    </node>
                    <node concept="1Rwk04" id="18zTa4dpYbK" role="2OqNvi" />
                  </node>
                </node>
                <node concept="2D7PWU" id="18zTa4dpYbL" role="3$_nBY">
                  <ref role="2D7PX4" node="18zTa4d4Gfv" resolve="native" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="18zTa4dq4oT" role="3cqZAp">
          <node concept="3cpWsn" id="18zTa4dq4oW" role="3cpWs9">
            <property role="TrG5h" value="d" />
            <node concept="10Oyi0" id="18zTa4dq4oR" role="1tU5fm" />
            <node concept="10QFUN" id="18zTa4dq4Em" role="33vP2m">
              <node concept="10Oyi0" id="18zTa4dq4HG" role="10QFUM" />
              <node concept="2YIFZM" id="18zTa4dq3Lc" role="10QFUP">
                <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                <ref role="37wK5l" to="wyt6:~Math.sqrt(double):double" resolve="sqrt" />
                <node concept="2OqwBi" id="18zTa4dq40v" role="37wK5m">
                  <node concept="37vLTw" id="18zTa4dq3UO" role="2Oq$k0">
                    <ref role="3cqZAo" node="18zTa4dpYcf" resolve="array" />
                  </node>
                  <node concept="1Rwk04" id="18zTa4dq4a4" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="18zTa4dq6$U" role="3cqZAp">
          <node concept="3cpWsn" id="18zTa4dq6$X" role="3cpWs9">
            <property role="TrG5h" value="counter" />
            <node concept="10Oyi0" id="18zTa4dq6$S" role="1tU5fm" />
            <node concept="3cmrfG" id="18zTa4dq6Lo" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="18zTa4dpYbM" role="3cqZAp">
          <node concept="3clFbS" id="18zTa4dpYbN" role="2LFqv$">
            <node concept="1Dw8fO" id="18zTa4dq5vn" role="3cqZAp">
              <node concept="3clFbS" id="18zTa4dq5vp" role="2LFqv$">
                <node concept="3clFbF" id="18zTa4dq7Dk" role="3cqZAp">
                  <node concept="37vLTI" id="18zTa4dq7VQ" role="3clFbG">
                    <node concept="AH0OO" id="18zTa4dqay6" role="37vLTx">
                      <node concept="AH0OO" id="18zTa4dqaiP" role="AHHXb">
                        <node concept="3cpWs3" id="18zTa4dqaot" role="AHEQo">
                          <node concept="17qRlL" id="18zTa4dqcjz" role="3uHU7w">
                            <node concept="37vLTw" id="18zTa4dqcjN" role="3uHU7w">
                              <ref role="3cqZAo" node="18zTa4dq4oW" resolve="d" />
                            </node>
                            <node concept="1eOMI4" id="18zTa4dqb2a" role="3uHU7B">
                              <node concept="FJ1c_" id="18zTa4dqdaB" role="1eOMHV">
                                <node concept="37vLTw" id="18zTa4dqbkD" role="3uHU7B">
                                  <ref role="3cqZAo" node="18zTa4dqdOm" resolve="idx" />
                                </node>
                                <node concept="37vLTw" id="18zTa4dqbAc" role="3uHU7w">
                                  <ref role="3cqZAo" node="18zTa4dq4oW" resolve="d" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="18zTa4dqasm" role="3uHU7B">
                            <ref role="3cqZAo" node="18zTa4dpYbY" resolve="i" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="18zTa4dqafG" role="AHHXb">
                          <ref role="3cqZAo" node="18zTa4dpYcf" resolve="array" />
                        </node>
                      </node>
                      <node concept="3cpWs3" id="18zTa4dqdiU" role="AHEQo">
                        <node concept="17qRlL" id="18zTa4dqdiV" role="3uHU7w">
                          <node concept="37vLTw" id="18zTa4dqdiW" role="3uHU7w">
                            <ref role="3cqZAo" node="18zTa4dq4oW" resolve="d" />
                          </node>
                          <node concept="1eOMI4" id="18zTa4dqdiX" role="3uHU7B">
                            <node concept="2dk9JS" id="18zTa4dqdrK" role="1eOMHV">
                              <node concept="37vLTw" id="18zTa4dqdiZ" role="3uHU7B">
                                <ref role="3cqZAo" node="18zTa4dqdOm" resolve="idx" />
                              </node>
                              <node concept="37vLTw" id="18zTa4dqdj0" role="3uHU7w">
                                <ref role="3cqZAo" node="18zTa4dq4oW" resolve="d" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="18zTa4dqdzN" role="3uHU7B">
                          <ref role="3cqZAo" node="18zTa4dq5vq" resolve="j" />
                        </node>
                      </node>
                    </node>
                    <node concept="AH0OO" id="18zTa4dq7DY" role="37vLTJ">
                      <node concept="3uNrnE" id="18zTa4dq7LQ" role="AHEQo">
                        <node concept="37vLTw" id="18zTa4dq7LS" role="2$L3a6">
                          <ref role="3cqZAo" node="18zTa4dq6$X" resolve="counter" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="18zTa4dq7Di" role="AHHXb">
                        <ref role="3cqZAo" node="18zTa4dpYbC" resolve="square" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="18zTa4dq5vq" role="1Duv9x">
                <property role="TrG5h" value="j" />
                <node concept="10Oyi0" id="18zTa4dq5wi" role="1tU5fm" />
                <node concept="3cmrfG" id="18zTa4dq5yW" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3eOVzh" id="18zTa4dq5GF" role="1Dwp0S">
                <node concept="37vLTw" id="18zTa4dq5IG" role="3uHU7w">
                  <ref role="3cqZAo" node="18zTa4dq4oW" resolve="d" />
                </node>
                <node concept="37vLTw" id="18zTa4dq5$I" role="3uHU7B">
                  <ref role="3cqZAo" node="18zTa4dq5vq" resolve="j" />
                </node>
              </node>
              <node concept="3uNrnE" id="18zTa4dq5Xw" role="1Dwrff">
                <node concept="37vLTw" id="18zTa4dq5Xy" role="2$L3a6">
                  <ref role="3cqZAo" node="18zTa4dq5vq" resolve="j" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="18zTa4dpYbY" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="18zTa4dpYbZ" role="1tU5fm" />
            <node concept="3cmrfG" id="18zTa4dpYc0" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="18zTa4dpYc1" role="1Dwp0S">
            <node concept="37vLTw" id="18zTa4dpYc5" role="3uHU7B">
              <ref role="3cqZAo" node="18zTa4dpYbY" resolve="i" />
            </node>
            <node concept="37vLTw" id="18zTa4dq5p2" role="3uHU7w">
              <ref role="3cqZAo" node="18zTa4dq4oW" resolve="d" />
            </node>
          </node>
          <node concept="3uNrnE" id="18zTa4dpYc6" role="1Dwrff">
            <node concept="37vLTw" id="18zTa4dpYc7" role="2$L3a6">
              <ref role="3cqZAo" node="18zTa4dpYbY" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="18zTa4dpYc8" role="3cqZAp">
          <node concept="37vLTw" id="18zTa4dpYc9" role="3cqZAk">
            <ref role="3cqZAo" node="18zTa4dpYbC" resolve="square" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="18zTa4dpYca" role="1B3o_S" />
      <node concept="10Q1$e" id="18zTa4dpYcb" role="3clF45">
        <node concept="2D7PWU" id="18zTa4dpYcc" role="10Q1$1">
          <ref role="2D7PX4" node="18zTa4d4Gfv" resolve="native" />
        </node>
      </node>
      <node concept="37vLTG" id="18zTa4dpYcf" role="3clF46">
        <property role="TrG5h" value="array" />
        <node concept="10Q1$e" id="18zTa4dpYcg" role="1tU5fm">
          <node concept="10Q1$e" id="18zTa4dpYch" role="10Q1$1">
            <node concept="2D7PWU" id="18zTa4dpYci" role="10Q1$1">
              <ref role="2D7PX4" node="18zTa4d4Gfv" resolve="native" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="18zTa4dqdOm" role="3clF46">
        <property role="TrG5h" value="idx" />
        <node concept="10Oyi0" id="18zTa4dqdWX" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="18zTa4dw9fX" role="jymVt" />
    <node concept="1UYk92" id="18zTa4d4FrV" role="jymVt">
      <property role="3j8K$S" value="true" />
      <property role="3jfa3H" value="Sample_Run1" />
      <node concept="3jfauB" id="18zTa4d4FrW" role="3jfavw">
        <node concept="3clFbS" id="18zTa4d4FrX" role="3jfauw">
          <node concept="3SKdUt" id="18zTa4d550t" role="3cqZAp">
            <node concept="3SKdUq" id="18zTa4d550v" role="3SKWNk">
              <property role="3SKdUp" value="A simple puzzle with many possible solutions, just for testing" />
            </node>
          </node>
          <node concept="3clFbH" id="18zTa4d54Yw" role="3cqZAp" />
          <node concept="3SKdUt" id="18zTa4d53JT" role="3cqZAp">
            <node concept="3SKdUq" id="18zTa4d53JV" role="3SKWNk">
              <property role="3SKdUp" value="[1,2,3,4,5,6,7,8,9]" />
            </node>
          </node>
          <node concept="3SKdUt" id="18zTa4d5403" role="3cqZAp">
            <node concept="3SKdUq" id="18zTa4d542q" role="3SKWNk">
              <property role="3SKdUp" value="[4,5,6,7,8,9],0,0,0" />
            </node>
          </node>
          <node concept="3SKdUt" id="18zTa4d546c" role="3cqZAp">
            <node concept="3SKdUq" id="18zTa4d546d" role="3SKWNk">
              <property role="3SKdUp" value="[7,8,9],0,0,0,0,0,0" />
            </node>
          </node>
          <node concept="3clFbH" id="18zTa4dqQDR" role="3cqZAp" />
          <node concept="3SKdUt" id="18zTa4dqOhg" role="3cqZAp">
            <node concept="3SKdUq" id="18zTa4dqOhh" role="3SKWNk">
              <property role="3SKdUp" value="[2,3,4,5,6,7,8,9],0" />
            </node>
          </node>
          <node concept="3SKdUt" id="18zTa4d543i" role="3cqZAp">
            <node concept="3SKdUq" id="18zTa4d543j" role="3SKWNk">
              <property role="3SKdUp" value="[5,6,7,8,9],0,0,0,0" />
            </node>
          </node>
          <node concept="3SKdUt" id="18zTa4d547n" role="3cqZAp">
            <node concept="3SKdUq" id="18zTa4d547o" role="3SKWNk">
              <property role="3SKdUp" value="[8,9],0,0,0,0,0,0,0" />
            </node>
          </node>
          <node concept="3clFbH" id="18zTa4dqPjG" role="3cqZAp" />
          <node concept="3SKdUt" id="18zTa4d541A" role="3cqZAp">
            <node concept="3SKdUq" id="18zTa4d541B" role="3SKWNk">
              <property role="3SKdUp" value="[3,4,5,6,7,8,9],0,0" />
            </node>
          </node>
          <node concept="3SKdUt" id="18zTa4d544h" role="3cqZAp">
            <node concept="3SKdUq" id="18zTa4d544i" role="3SKWNk">
              <property role="3SKdUp" value="[6,7,8,9],0,0,0,0,0" />
            </node>
          </node>
          <node concept="3SKdUt" id="18zTa4d54b_" role="3cqZAp">
            <node concept="3SKdUq" id="18zTa4d54bA" role="3SKWNk">
              <property role="3SKdUp" value="[9],0,0,0,0,0,0,0,0" />
            </node>
          </node>
          <node concept="3clFbH" id="18zTa4d549T" role="3cqZAp" />
          <node concept="1Dw8fO" id="18zTa4d55QK" role="3cqZAp">
            <node concept="3clFbS" id="18zTa4d55QM" role="2LFqv$">
              <node concept="1Dw8fO" id="18zTa4d56jH" role="3cqZAp">
                <node concept="3clFbS" id="18zTa4d56jJ" role="2LFqv$">
                  <node concept="3clFbJ" id="18zTa4d57K5" role="3cqZAp">
                    <node concept="3clFbS" id="18zTa4d57K7" role="3clFbx">
                      <node concept="3clFbF" id="18zTa4d56K1" role="3cqZAp">
                        <node concept="37vLTI" id="18zTa4d59l1" role="3clFbG">
                          <node concept="2YIFZM" id="18zTa4d59Jr" role="37vLTx">
                            <ref role="37wK5l" to="xlxw:~BigInteger.valueOf(long):java.math.BigInteger" resolve="valueOf" />
                            <ref role="1Pybhc" to="xlxw:~BigInteger" resolve="BigInteger" />
                            <node concept="3cpWs3" id="18zTa4d5caJ" role="37wK5m">
                              <node concept="3cmrfG" id="18zTa4d5cgH" role="3uHU7w">
                                <property role="3cmrfH" value="1" />
                              </node>
                              <node concept="2dk9JS" id="18zTa4d5b09" role="3uHU7B">
                                <node concept="1eOMI4" id="18zTa4d5aJl" role="3uHU7B">
                                  <node concept="3cpWs3" id="18zTa4d5a6d" role="1eOMHV">
                                    <node concept="37vLTw" id="18zTa4d5a03" role="3uHU7B">
                                      <ref role="3cqZAo" node="18zTa4d55QN" resolve="i" />
                                    </node>
                                    <node concept="37vLTw" id="18zTa4d5agX" role="3uHU7w">
                                      <ref role="3cqZAo" node="18zTa4d56jK" resolve="j" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cmrfG" id="18zTa4d5b0p" role="3uHU7w">
                                  <property role="3cmrfH" value="9" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="18zTa4d56WQ" role="37vLTJ">
                            <node concept="AH0OO" id="18zTa4d56Rl" role="2Oq$k0">
                              <node concept="37vLTw" id="18zTa4d56UB" role="AHEQo">
                                <ref role="3cqZAo" node="18zTa4d56jK" resolve="j" />
                              </node>
                              <node concept="AH0OO" id="18zTa4d56LU" role="AHHXb">
                                <node concept="3cpWs3" id="18zTa4dryow" role="AHEQo">
                                  <node concept="FJ1c_" id="18zTa4dryCH" role="3uHU7w">
                                    <node concept="3cmrfG" id="18zTa4dryCX" role="3uHU7w">
                                      <property role="3cmrfH" value="3" />
                                    </node>
                                    <node concept="37vLTw" id="18zTa4dryvc" role="3uHU7B">
                                      <ref role="3cqZAo" node="18zTa4d55QN" resolve="i" />
                                    </node>
                                  </node>
                                  <node concept="2dk9JS" id="18zTa4dqTEP" role="3uHU7B">
                                    <node concept="1eOMI4" id="18zTa4dqTt_" role="3uHU7B">
                                      <node concept="17qRlL" id="18zTa4dqSPe" role="1eOMHV">
                                        <node concept="3cmrfG" id="18zTa4dqSPu" role="3uHU7w">
                                          <property role="3cmrfH" value="3" />
                                        </node>
                                        <node concept="37vLTw" id="18zTa4d56O1" role="3uHU7B">
                                          <ref role="3cqZAo" node="18zTa4d55QN" resolve="i" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3cmrfG" id="18zTa4dqTF5" role="3uHU7w">
                                      <property role="3cmrfH" value="9" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTw" id="18zTa4d56JZ" role="AHHXb">
                                  <ref role="3cqZAo" node="18zTa4d4Hyx" resolve="puzzle" />
                                </node>
                              </node>
                            </node>
                            <node concept="2Ds8w2" id="18zTa4d572V" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="3SKdUt" id="18zTa4dq9tB" role="3cqZAp">
                        <node concept="3SKdUq" id="18zTa4dq9tD" role="3SKWNk">
                          <property role="3SKdUp" value="if the value of solution[.][.] is different from above, an assertion will fail" />
                        </node>
                      </node>
                      <node concept="3clFbF" id="18zTa4d57um" role="3cqZAp">
                        <node concept="37vLTI" id="18zTa4d57un" role="3clFbG">
                          <node concept="2OqwBi" id="18zTa4d57up" role="37vLTJ">
                            <node concept="AH0OO" id="18zTa4d57uq" role="2Oq$k0">
                              <node concept="37vLTw" id="18zTa4d57ur" role="AHEQo">
                                <ref role="3cqZAo" node="18zTa4d56jK" resolve="j" />
                              </node>
                              <node concept="AH0OO" id="18zTa4d57us" role="AHHXb">
                                <node concept="37vLTw" id="18zTa4d57_o" role="AHHXb">
                                  <ref role="3cqZAo" node="18zTa4d4Iy4" resolve="solution" />
                                </node>
                                <node concept="3cpWs3" id="18zTa4dryRj" role="AHEQo">
                                  <node concept="FJ1c_" id="18zTa4drz7w" role="3uHU7w">
                                    <node concept="3cmrfG" id="18zTa4drz7K" role="3uHU7w">
                                      <property role="3cmrfH" value="3" />
                                    </node>
                                    <node concept="37vLTw" id="18zTa4dryXZ" role="3uHU7B">
                                      <ref role="3cqZAo" node="18zTa4d55QN" resolve="i" />
                                    </node>
                                  </node>
                                  <node concept="2dk9JS" id="18zTa4dqTQ2" role="3uHU7B">
                                    <node concept="1eOMI4" id="18zTa4dqTQ4" role="3uHU7B">
                                      <node concept="17qRlL" id="18zTa4dqTQ5" role="1eOMHV">
                                        <node concept="3cmrfG" id="18zTa4dqTQ6" role="3uHU7w">
                                          <property role="3cmrfH" value="3" />
                                        </node>
                                        <node concept="37vLTw" id="18zTa4dqTQ7" role="3uHU7B">
                                          <ref role="3cqZAo" node="18zTa4d55QN" resolve="i" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3cmrfG" id="18zTa4dqTQ3" role="3uHU7w">
                                      <property role="3cmrfH" value="9" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2Ds8w2" id="18zTa4d57uv" role="2OqNvi" />
                          </node>
                          <node concept="2YIFZM" id="18zTa4d5dhu" role="37vLTx">
                            <ref role="1Pybhc" to="xlxw:~BigInteger" resolve="BigInteger" />
                            <ref role="37wK5l" to="xlxw:~BigInteger.valueOf(long):java.math.BigInteger" resolve="valueOf" />
                            <node concept="3cpWs3" id="18zTa4d5dhv" role="37wK5m">
                              <node concept="3cmrfG" id="18zTa4d5dhw" role="3uHU7w">
                                <property role="3cmrfH" value="1" />
                              </node>
                              <node concept="2dk9JS" id="18zTa4d5dhx" role="3uHU7B">
                                <node concept="1eOMI4" id="18zTa4d5dhy" role="3uHU7B">
                                  <node concept="3cpWs3" id="18zTa4d5dhz" role="1eOMHV">
                                    <node concept="37vLTw" id="18zTa4d5dh$" role="3uHU7B">
                                      <ref role="3cqZAo" node="18zTa4d55QN" resolve="i" />
                                    </node>
                                    <node concept="37vLTw" id="18zTa4d5dh_" role="3uHU7w">
                                      <ref role="3cqZAo" node="18zTa4d56jK" resolve="j" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cmrfG" id="18zTa4d5dhA" role="3uHU7w">
                                  <property role="3cmrfH" value="9" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3eOVzh" id="18zTa4d58YF" role="3clFbw">
                      <node concept="37vLTw" id="18zTa4d58Bw" role="3uHU7B">
                        <ref role="3cqZAo" node="18zTa4d56jK" resolve="j" />
                      </node>
                      <node concept="3cpWsd" id="18zTa4d58PL" role="3uHU7w">
                        <node concept="37vLTw" id="18zTa4d58Q1" role="3uHU7w">
                          <ref role="3cqZAo" node="18zTa4d55QN" resolve="i" />
                        </node>
                        <node concept="3cmrfG" id="18zTa4d58I9" role="3uHU7B">
                          <property role="3cmrfH" value="9" />
                        </node>
                      </node>
                    </node>
                    <node concept="9aQIb" id="18zTa4d5bhD" role="9aQIa">
                      <node concept="3clFbS" id="18zTa4d5bhE" role="9aQI4">
                        <node concept="3clFbF" id="18zTa4d5bqM" role="3cqZAp">
                          <node concept="37vLTI" id="18zTa4d5bqN" role="3clFbG">
                            <node concept="2OqwBi" id="18zTa4d5bqX" role="37vLTJ">
                              <node concept="AH0OO" id="18zTa4d5bqY" role="2Oq$k0">
                                <node concept="37vLTw" id="18zTa4d5bqZ" role="AHEQo">
                                  <ref role="3cqZAo" node="18zTa4d56jK" resolve="j" />
                                </node>
                                <node concept="AH0OO" id="18zTa4d5br0" role="AHHXb">
                                  <node concept="37vLTw" id="18zTa4d5br2" role="AHHXb">
                                    <ref role="3cqZAo" node="18zTa4d4Hyx" resolve="puzzle" />
                                  </node>
                                  <node concept="3cpWs3" id="18zTa4drzkq" role="AHEQo">
                                    <node concept="FJ1c_" id="18zTa4drzz4" role="3uHU7w">
                                      <node concept="3cmrfG" id="18zTa4drzzk" role="3uHU7w">
                                        <property role="3cmrfH" value="3" />
                                      </node>
                                      <node concept="37vLTw" id="18zTa4drzq9" role="3uHU7B">
                                        <ref role="3cqZAo" node="18zTa4d55QN" resolve="i" />
                                      </node>
                                    </node>
                                    <node concept="2dk9JS" id="18zTa4dqTYt" role="3uHU7B">
                                      <node concept="1eOMI4" id="18zTa4dqTYv" role="3uHU7B">
                                        <node concept="17qRlL" id="18zTa4dqTYw" role="1eOMHV">
                                          <node concept="3cmrfG" id="18zTa4dqTYx" role="3uHU7w">
                                            <property role="3cmrfH" value="3" />
                                          </node>
                                          <node concept="37vLTw" id="18zTa4dqTYy" role="3uHU7B">
                                            <ref role="3cqZAo" node="18zTa4d55QN" resolve="i" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3cmrfG" id="18zTa4dqTYu" role="3uHU7w">
                                        <property role="3cmrfH" value="9" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2Ds8w2" id="18zTa4d5br3" role="2OqNvi" />
                            </node>
                            <node concept="10M0yZ" id="18zTa4d5cX$" role="37vLTx">
                              <ref role="1PxDUh" to="xlxw:~BigInteger" resolve="BigInteger" />
                              <ref role="3cqZAo" to="xlxw:~BigInteger.ZERO" resolve="ZERO" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="18zTa4dpQRX" role="3cqZAp">
                          <node concept="37vLTI" id="18zTa4dpQRY" role="3clFbG">
                            <node concept="2OqwBi" id="18zTa4dpQRZ" role="37vLTJ">
                              <node concept="AH0OO" id="18zTa4dpQS0" role="2Oq$k0">
                                <node concept="37vLTw" id="18zTa4dpQS1" role="AHEQo">
                                  <ref role="3cqZAo" node="18zTa4d56jK" resolve="j" />
                                </node>
                                <node concept="AH0OO" id="18zTa4dpQS2" role="AHHXb">
                                  <node concept="37vLTw" id="18zTa4dpQS4" role="AHHXb">
                                    <ref role="3cqZAo" node="18zTa4d4Iy4" resolve="solution" />
                                  </node>
                                  <node concept="3cpWs3" id="18zTa4drzI9" role="AHEQo">
                                    <node concept="FJ1c_" id="18zTa4drzZc" role="3uHU7w">
                                      <node concept="3cmrfG" id="18zTa4drzZs" role="3uHU7w">
                                        <property role="3cmrfH" value="3" />
                                      </node>
                                      <node concept="37vLTw" id="18zTa4drzPF" role="3uHU7B">
                                        <ref role="3cqZAo" node="18zTa4d55QN" resolve="i" />
                                      </node>
                                    </node>
                                    <node concept="2dk9JS" id="18zTa4dqU4I" role="3uHU7B">
                                      <node concept="1eOMI4" id="18zTa4dqU4K" role="3uHU7B">
                                        <node concept="17qRlL" id="18zTa4dqU4L" role="1eOMHV">
                                          <node concept="3cmrfG" id="18zTa4dqU4M" role="3uHU7w">
                                            <property role="3cmrfH" value="3" />
                                          </node>
                                          <node concept="37vLTw" id="18zTa4dqU4N" role="3uHU7B">
                                            <ref role="3cqZAo" node="18zTa4d55QN" resolve="i" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3cmrfG" id="18zTa4dqU4J" role="3uHU7w">
                                        <property role="3cmrfH" value="9" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2Ds8w2" id="18zTa4dpQS5" role="2OqNvi" />
                            </node>
                            <node concept="2YIFZM" id="18zTa4dpQS6" role="37vLTx">
                              <ref role="1Pybhc" to="xlxw:~BigInteger" resolve="BigInteger" />
                              <ref role="37wK5l" to="xlxw:~BigInteger.valueOf(long):java.math.BigInteger" resolve="valueOf" />
                              <node concept="3cpWs3" id="18zTa4dpQS7" role="37wK5m">
                                <node concept="3cmrfG" id="18zTa4dpQS8" role="3uHU7w">
                                  <property role="3cmrfH" value="1" />
                                </node>
                                <node concept="2dk9JS" id="18zTa4dpQS9" role="3uHU7B">
                                  <node concept="1eOMI4" id="18zTa4dpQSa" role="3uHU7B">
                                    <node concept="3cpWs3" id="18zTa4dpQSb" role="1eOMHV">
                                      <node concept="37vLTw" id="18zTa4dpQSc" role="3uHU7B">
                                        <ref role="3cqZAo" node="18zTa4d55QN" resolve="i" />
                                      </node>
                                      <node concept="37vLTw" id="18zTa4dpQSd" role="3uHU7w">
                                        <ref role="3cqZAo" node="18zTa4d56jK" resolve="j" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3cmrfG" id="18zTa4dpQSe" role="3uHU7w">
                                    <property role="3cmrfH" value="9" />
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
                <node concept="3cpWsn" id="18zTa4d56jK" role="1Duv9x">
                  <property role="TrG5h" value="j" />
                  <node concept="10Oyi0" id="18zTa4d56kj" role="1tU5fm" />
                  <node concept="3cmrfG" id="18zTa4d56os" role="33vP2m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
                <node concept="3eOVzh" id="18zTa4d56vP" role="1Dwp0S">
                  <node concept="3cmrfG" id="18zTa4d56wq" role="3uHU7w">
                    <property role="3cmrfH" value="9" />
                  </node>
                  <node concept="37vLTw" id="18zTa4d56pd" role="3uHU7B">
                    <ref role="3cqZAo" node="18zTa4d56jK" resolve="j" />
                  </node>
                </node>
                <node concept="3uNrnE" id="18zTa4d56Es" role="1Dwrff">
                  <node concept="37vLTw" id="18zTa4d56Eu" role="2$L3a6">
                    <ref role="3cqZAo" node="18zTa4d56jK" resolve="j" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="18zTa4d55QN" role="1Duv9x">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="18zTa4d55RO" role="1tU5fm" />
              <node concept="3cmrfG" id="18zTa4d55Vh" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="3eOVzh" id="18zTa4d564X" role="1Dwp0S">
              <node concept="3cmrfG" id="18zTa4d565h" role="3uHU7w">
                <property role="3cmrfH" value="9" />
              </node>
              <node concept="37vLTw" id="18zTa4d55W2" role="3uHU7B">
                <ref role="3cqZAo" node="18zTa4d55QN" resolve="i" />
              </node>
            </node>
            <node concept="3uNrnE" id="18zTa4d56eN" role="1Dwrff">
              <node concept="37vLTw" id="18zTa4d56eP" role="2$L3a6">
                <ref role="3cqZAo" node="18zTa4d55QN" resolve="i" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3jfavX" id="18zTa4d4FrY" role="3jfasw">
        <node concept="3clFbS" id="18zTa4d4FrZ" role="3jfavY">
          <node concept="3clFbF" id="18zTa4dupvI" role="3cqZAp">
            <node concept="2OqwBi" id="18zTa4dupz0" role="3clFbG">
              <node concept="10M0yZ" id="18zTa4dupvH" role="2Oq$k0">
                <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              </node>
              <node concept="liA8E" id="18zTa4dupA9" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                <node concept="Xl_RD" id="18zTa4dupCL" role="37wK5m">
                  <property role="Xl_RC" value="If no exceptions or failed assertions appear, then things should be ok" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="18zTa4d4Fs0" role="jymVt" />
    <node concept="2tJIrI" id="18zTa4d4Fs1" role="jymVt" />
    <node concept="2YIFZL" id="18zTa4d4Fs2" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="3cqZAl" id="18zTa4d4Fs3" role="3clF45" />
      <node concept="3Tm1VV" id="18zTa4d4Fs4" role="1B3o_S" />
      <node concept="3clFbS" id="18zTa4d4Fs5" role="3clF47">
        <node concept="3SKdUt" id="18zTa4d4Fs9" role="3cqZAp">
          <node concept="3SKdUq" id="18zTa4d4Fsa" role="3SKWNk">
            <property role="3SKdUp" value="This is the java main method. Its purpose is to make the Progam runnable in the environment" />
          </node>
        </node>
        <node concept="3SKdUt" id="18zTa4d4Fsb" role="3cqZAp">
          <node concept="3SKdUq" id="18zTa4d4Fsc" role="3SKWNk">
            <property role="3SKdUp" value="This method can be left empty, or used to set Configuration params (see examples)" />
          </node>
        </node>
        <node concept="3clFbF" id="18zTa4dtHFn" role="3cqZAp">
          <node concept="37vLTI" id="18zTa4dtHJO" role="3clFbG">
            <node concept="3clFbT" id="18zTa4dtHLY" role="37vLTx" />
            <node concept="10M0yZ" id="18zTa4dtHFm" role="37vLTJ">
              <ref role="1PxDUh" to="85wc:~Config" resolve="Config" />
              <ref role="3cqZAo" to="85wc:~Config.inputVerbose" resolve="inputVerbose" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="18zTa4dO5GF" role="3cqZAp">
          <node concept="37vLTI" id="18zTa4dO5OU" role="3clFbG">
            <node concept="3clFbT" id="18zTa4dO5QE" role="37vLTx" />
            <node concept="10M0yZ" id="18zTa4dO5GE" role="37vLTJ">
              <ref role="1PxDUh" to="85wc:~Config" resolve="Config" />
              <ref role="3cqZAo" to="85wc:~Config.debugVerbose" resolve="debugVerbose" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="18zTa4d4Fs6" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="18zTa4d4Fs7" role="1tU5fm">
          <node concept="17QB3L" id="18zTa4d4Fs8" role="10Q1$1" />
        </node>
      </node>
    </node>
  </node>
  <node concept="2D77rp" id="18zTa4d4G8F">
    <node concept="2D77rq" id="18zTa4d4Gfv" role="2D75qn">
      <property role="TrG5h" value="native" />
      <property role="2D74mG" value="21888242871839275222246405745257275088548364400416034343698204186575808495617" />
    </node>
  </node>
</model>

