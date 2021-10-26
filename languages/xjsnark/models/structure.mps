<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ac758f58-669f-4ccd-a922-880e27e69e02(xjsnark.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1082978499127" name="jetbrains.mps.lang.structure.structure.ConstrainedDataTypeDeclaration" flags="ng" index="Az7Fb">
        <property id="1083066089218" name="constraint" index="FLfZY" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <property id="1587916991969465369" name="conceptId" index="1pbfSe" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="linkRole" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
  </registry>
  <node concept="Az7Fb" id="hhaVGVf">
    <property role="TrG5h" value="BigDecimal" />
    <property role="FLfZY" value="[0-9]+" />
  </node>
  <node concept="1TIwiD" id="5qibsSHh4tt">
    <property role="1pbfSe" value="2083097301" />
    <property role="TrG5h" value="BitsOp" />
    <property role="34LRSv" value="bits" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6w4Q6Pd$iOg" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
    <node concept="PrWs8" id="5qibsSHh4tv" role="PzmwI">
      <ref role="PrY4T" to="tpee:1wHCnsn58oY" resolve="IBinaryLike" />
    </node>
  </node>
  <node concept="1TIwiD" id="1bbdoCqDWd3">
    <property role="1pbfSe" value="762509517" />
    <property role="TrG5h" value="BoundedLoop" />
    <property role="34LRSv" value="bwhile" />
    <ref role="1TJDcQ" to="tpee:gMLF5Fu" resolve="AbstractLoopStatement" />
    <node concept="1TJgyj" id="fE$JKWK" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="condition" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="1bbdoCqDYqA" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="bound" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vW9i19HlKd">
    <property role="1pbfSe" value="1313767123" />
    <property role="TrG5h" value="ConversionBetweenTypes" />
    <property role="34LRSv" value="conv" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="6vW9i19HlKe" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="65gbDjFWKi1" resolve="XjsnarkType" />
    </node>
    <node concept="1TJgyj" id="6vW9i19HlKg" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="value" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="6zlb0z1A6Zw">
    <property role="1pbfSe" value="711826408" />
    <property role="TrG5h" value="ExternalBlock" />
    <property role="34LRSv" value="external" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyj" id="fK9aQHS" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="statements" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fzclF80" resolve="StatementList" />
    </node>
  </node>
  <node concept="1TIwiD" id="6zlb0z1MlFi">
    <property role="1pbfSe" value="715032282" />
    <property role="TrG5h" value="FieldRecord" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6zlb0z1MmAs" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="6zlb0z1MmA$" role="1TKVEl">
      <property role="TrG5h" value="prime" />
      <ref role="AX2Wp" node="hhaVGVf" resolve="BigDecimal" />
    </node>
  </node>
  <node concept="1TIwiD" id="6w4Q6P9O9cv">
    <property role="1pbfSe" value="1311413364" />
    <property role="TrG5h" value="LabelBlock" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="6w4Q6P1UZKS">
    <property role="1pbfSe" value="1443834715" />
    <property role="TrG5h" value="MultiLineCommentClassMember" />
    <property role="34LRSv" value="/*" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6w4Q6P1UZKT" role="PzmwI">
      <ref role="PrY4T" to="tpee:h9ngReX" resolve="ClassifierMember" />
    </node>
  </node>
  <node concept="1TIwiD" id="5FV0SM9LUhL">
    <property role="1pbfSe" value="457005059" />
    <property role="TrG5h" value="PostTestBlock" />
    <property role="34LRSv" value="post {" />
    <property role="3GE5qa" value="SampleRun" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyj" id="5FV0SM9LUhM" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="statements" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fzclF80" resolve="StatementList" />
    </node>
  </node>
  <node concept="1TIwiD" id="5FV0SM9LUgF">
    <property role="1pbfSe" value="457005129" />
    <property role="TrG5h" value="PreTestBlock" />
    <property role="34LRSv" value="pre {" />
    <property role="3GE5qa" value="SampleRun" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyj" id="5FV0SM9LUgG" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="statements" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fzclF80" resolve="StatementList" />
    </node>
  </node>
  <node concept="1TIwiD" id="6w4Q6P1I0g5">
    <property role="1pbfSe" value="1447240590" />
    <property role="TrG5h" value="SingleLineCommentClassMember" />
    <property role="34LRSv" value="//" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6w4Q6P1I2QN" role="PzmwI">
      <ref role="PrY4T" to="tpee:h9ngReX" resolve="ClassifierMember" />
    </node>
    <node concept="1TJgyi" id="6w4Q6P1QTDr" role="1TKVEl">
      <property role="TrG5h" value="text" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="3P8aN57Gm_N">
    <property role="1pbfSe" value="2064018268" />
    <property role="TrG5h" value="TestBlock" />
    <property role="34LRSv" value="SampleRun" />
    <property role="3GE5qa" value="SampleRun" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3P8aN57Gm_O" role="PzmwI">
      <ref role="PrY4T" to="tpee:h9ngReX" resolve="ClassifierMember" />
    </node>
    <node concept="PrWs8" id="3P8aN57Gm_T" role="PzmwI">
      <ref role="PrY4T" to="tpck:19gBtYEv0ln" resolve="ImplementationPart" />
    </node>
    <node concept="1TJgyi" id="5FV0SM9LUdx" role="1TKVEl">
      <property role="TrG5h" value="name" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="5FV0SM9Q0EO" role="1TKVEl">
      <property role="TrG5h" value="active" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="5FV0SM9LUhG" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="preBlock" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="5FV0SM9LUgF" resolve="PreTestBlock" />
    </node>
    <node concept="1TJgyj" id="5FV0SM9LUiG" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20lbJX" value="1" />
      <property role="20kJfa" value="postBlock" />
      <ref role="20lvS9" node="5FV0SM9LUhL" resolve="PostTestBlock" />
    </node>
  </node>
  <node concept="1TIwiD" id="6zlb0z1Dqga">
    <property role="1pbfSe" value="712691730" />
    <property role="TrG5h" value="ValueOp" />
    <property role="34LRSv" value="val" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6zlb0z1Dqgb" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
    <node concept="PrWs8" id="6zlb0z1JIuy" role="PzmwI">
      <ref role="PrY4T" to="tpee:1wHCnsn58oY" resolve="IBinaryLike" />
    </node>
  </node>
  <node concept="1TIwiD" id="5u98M4xbjNn">
    <property role="1pbfSe" value="2025218040" />
    <property role="TrG5h" value="JBooleanType" />
    <property role="3GE5qa" value="types" />
    <property role="34LRSv" value="bit" />
    <ref role="1TJDcQ" node="65gbDjFWKi1" resolve="XjsnarkType" />
  </node>
  <node concept="1TIwiD" id="6w4Q6PdgKLq">
    <property role="1pbfSe" value="1253579577" />
    <property role="3GE5qa" value="types" />
    <property role="TrG5h" value="JFieldConversion" />
    <property role="34LRSv" value="F_" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="6w4Q6PdgKLr" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="jType" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="6zlb0z1MBcM" resolve="JFieldType" />
    </node>
    <node concept="1TJgyj" id="6w4Q6PdgKLs" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="argument" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="6zlb0z1MBcM">
    <property role="1pbfSe" value="715104058" />
    <property role="TrG5h" value="JFieldType" />
    <property role="34LRSv" value="F_" />
    <property role="3GE5qa" value="types" />
    <ref role="1TJDcQ" node="65gbDjFWKi1" resolve="XjsnarkType" />
    <node concept="1TJgyj" id="6zlb0z1MBdc" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="fieldRec" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="6zlb0z1MlFi" resolve="FieldRecord" />
    </node>
  </node>
  <node concept="1TIwiD" id="7SXhc66hqcL">
    <property role="1pbfSe" value="75687922" />
    <property role="3GE5qa" value="types" />
    <property role="TrG5h" value="JUnsignedIntegerConversion" />
    <property role="34LRSv" value="uint_" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="7SXhc66hqcQ" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="jType" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3BesNbzZACe" resolve="JUnsignedIntegerType" />
    </node>
    <node concept="1TJgyj" id="7SXhc66hqdh" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="argument" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="3BesNbzZACe">
    <property role="1pbfSe" value="499965248" />
    <property role="TrG5h" value="JUnsignedIntegerType" />
    <property role="34LRSv" value="uint_" />
    <property role="3GE5qa" value="types" />
    <ref role="1TJDcQ" node="65gbDjFWKi1" resolve="XjsnarkType" />
    <node concept="1TJgyi" id="3BesNbzZALx" role="1TKVEl">
      <property role="TrG5h" value="bitwidth" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="65gbDjFWKi1">
    <property role="1pbfSe" value="1296249621" />
    <property role="3GE5qa" value="types" />
    <property role="TrG5h" value="XjsnarkType" />
    <property role="34LRSv" value="XjsnarkType" />
    <ref role="1TJDcQ" to="tpee:gWaQbR$" resolve="PrimitiveType" />
  </node>
  <node concept="1TIwiD" id="1sdDC1nZvXk">
    <property role="1pbfSe" value="1863034324" />
    <property role="3GE5qa" value="types" />
    <property role="TrG5h" value="xFieldDeclaration" />
    <property role="34LRSv" value="xfield" />
    <ref role="1TJDcQ" to="tpee:fz12cDC" resolve="FieldDeclaration" />
  </node>
  <node concept="1TIwiD" id="7eYK6MJDPdW">
    <property role="1pbfSe" value="593892328" />
    <property role="TrG5h" value="VerifyEqStatement" />
    <property role="34LRSv" value="verifyEq" />
    <property role="3GE5qa" value="verify" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyj" id="7eYK6MJDPdX" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="exp1" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="7eYK6MJDPdY" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="exp2" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="6zlb0z15HJx">
    <property role="1pbfSe" value="703334377" />
    <property role="TrG5h" value="VerifyStatement" />
    <property role="34LRSv" value="verify" />
    <property role="3GE5qa" value="verify" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyj" id="6zlb0z15JLZ" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="condition" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="3BesNbzV6I_">
    <property role="1pbfSe" value="498786007" />
    <property role="TrG5h" value="InputBlock" />
    <property role="3GE5qa" value="Labels" />
    <property role="34LRSv" value="inputs" />
    <ref role="1TJDcQ" node="6w4Q6P9O9cv" resolve="LabelBlock" />
    <node concept="1TJgyj" id="3BesNbzV7eD" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="inputs" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" to="tpee:fz7vLUo" resolve="VariableReference" />
    </node>
    <node concept="PrWs8" id="3BesNbzWdIW" role="PzmwI">
      <ref role="PrY4T" to="tpee:h9ngReX" resolve="ClassifierMember" />
    </node>
    <node concept="PrWs8" id="3BesNbzWdJ1" role="PzmwI">
      <ref role="PrY4T" to="tpck:19gBtYEv0ln" resolve="ImplementationPart" />
    </node>
  </node>
  <node concept="1TIwiD" id="3BesNbzYLfF">
    <property role="1pbfSe" value="499746589" />
    <property role="TrG5h" value="OutputBlock" />
    <property role="34LRSv" value="outputs" />
    <property role="3GE5qa" value="Labels" />
    <ref role="1TJDcQ" node="6w4Q6P9O9cv" resolve="LabelBlock" />
    <node concept="1TJgyj" id="3BesNbzYLfG" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="outputs" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" to="tpee:fz7vLUo" resolve="VariableReference" />
    </node>
    <node concept="PrWs8" id="3BesNbzYLfH" role="PzmwI">
      <ref role="PrY4T" to="tpee:h9ngReX" resolve="ClassifierMember" />
    </node>
    <node concept="PrWs8" id="3BesNbzYLfI" role="PzmwI">
      <ref role="PrY4T" to="tpck:19gBtYEv0ln" resolve="ImplementationPart" />
    </node>
  </node>
  <node concept="1TIwiD" id="6w4Q6PbwoRE">
    <property role="1pbfSe" value="1283037609" />
    <property role="TrG5h" value="VerifiedWitnessBlock" />
    <property role="3GE5qa" value="Labels" />
    <property role="34LRSv" value="witnesses_AssertRange" />
    <ref role="1TJDcQ" node="6w4Q6P9O9cv" resolve="LabelBlock" />
    <node concept="1TJgyj" id="6w4Q6PbwoRF" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="witnesses" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" to="tpee:fz7vLUo" resolve="VariableReference" />
    </node>
    <node concept="PrWs8" id="6w4Q6PbwoRG" role="PzmwI">
      <ref role="PrY4T" to="tpee:h9ngReX" resolve="ClassifierMember" />
    </node>
    <node concept="PrWs8" id="6w4Q6PbwoRH" role="PzmwI">
      <ref role="PrY4T" to="tpck:19gBtYEv0ln" resolve="ImplementationPart" />
    </node>
  </node>
  <node concept="1TIwiD" id="3BesNbzZ3D$">
    <property role="1pbfSe" value="499821974" />
    <property role="TrG5h" value="WitnessBlock" />
    <property role="3GE5qa" value="Labels" />
    <property role="34LRSv" value="witnesses" />
    <ref role="1TJDcQ" node="6w4Q6P9O9cv" resolve="LabelBlock" />
    <node concept="1TJgyj" id="3BesNbzZ3D_" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="witnesses" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" to="tpee:fz7vLUo" resolve="VariableReference" />
    </node>
    <node concept="PrWs8" id="3BesNbzZ3DA" role="PzmwI">
      <ref role="PrY4T" to="tpee:h9ngReX" resolve="ClassifierMember" />
    </node>
    <node concept="PrWs8" id="3BesNbzZ3DB" role="PzmwI">
      <ref role="PrY4T" to="tpck:19gBtYEv0ln" resolve="ImplementationPart" />
    </node>
  </node>
  <node concept="1TIwiD" id="6zlb0z1MlFh">
    <property role="1pbfSe" value="715032281" />
    <property role="TrG5h" value="FieldDefTable" />
    <property role="19KtqR" value="true" />
    <property role="3GE5qa" value="Roots" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6zlb0z1MnEv" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="fieldDefinitions" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="6zlb0z1MlFi" resolve="FieldRecord" />
    </node>
  </node>
  <node concept="1TIwiD" id="6jbzUkk0jsV">
    <property role="1pbfSe" value="2026686176" />
    <property role="TrG5h" value="ProgramDefinition" />
    <property role="19KtqR" value="true" />
    <property role="3GE5qa" value="Roots" />
    <ref role="1TJDcQ" to="tpee:fz12cDA" resolve="ClassConcept" />
    <node concept="1X3_iC" id="5RbNWZEt2uZ" role="lGtFl">
      <property role="3V$3am" value="linkDeclaration" />
      <property role="3V$3ak" value="c72da2b9-7cce-4447-8389-f407dc1158b7/1169125787135/1071489727083" />
      <node concept="1TJgyj" id="3BesNbzV8Pu" role="8Wnug">
        <property role="20lmBu" value="aggregation" />
        <property role="20lbJX" value="1" />
        <property role="20kJfa" value="inputBlock" />
        <ref role="20lvS9" node="3BesNbzV6I_" resolve="InputBlock" />
      </node>
    </node>
    <node concept="1X3_iC" id="5RbNWZEt2v0" role="lGtFl">
      <property role="3V$3am" value="linkDeclaration" />
      <property role="3V$3ak" value="c72da2b9-7cce-4447-8389-f407dc1158b7/1169125787135/1071489727083" />
      <node concept="1TJgyj" id="3BesNbzZ4jJ" role="8Wnug">
        <property role="20lmBu" value="aggregation" />
        <property role="20kJfa" value="witnessBlock" />
        <property role="20lbJX" value="1" />
        <ref role="20lvS9" node="3BesNbzZ3D$" resolve="WitnessBlock" />
      </node>
    </node>
    <node concept="1X3_iC" id="5RbNWZEt2v1" role="lGtFl">
      <property role="3V$3am" value="linkDeclaration" />
      <property role="3V$3ak" value="c72da2b9-7cce-4447-8389-f407dc1158b7/1169125787135/1071489727083" />
      <node concept="1TJgyj" id="3BesNbzYVBS" role="8Wnug">
        <property role="20lmBu" value="aggregation" />
        <property role="20kJfa" value="outputBlock" />
        <property role="20lbJX" value="1" />
        <ref role="20lvS9" node="3BesNbzYLfF" resolve="OutputBlock" />
      </node>
    </node>
    <node concept="PrWs8" id="5YAr2jJR4h$" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="5RbNWZGy0nW">
    <property role="1pbfSe" value="1247008203" />
    <property role="TrG5h" value="RuntimeStructDefinition" />
    <property role="19KtqR" value="true" />
    <property role="3GE5qa" value="Roots" />
    <ref role="1TJDcQ" to="tpee:fz12cDA" resolve="ClassConcept" />
  </node>
  <node concept="1TIwiD" id="70tVTRbBljW">
    <property role="1pbfSe" value="1002128537" />
    <property role="TrG5h" value="StructDefinition" />
    <property role="19KtqR" value="true" />
    <property role="3GE5qa" value="Roots" />
    <ref role="1TJDcQ" to="tpee:fz12cDA" resolve="ClassConcept" />
  </node>
  <node concept="1TIwiD" id="65gbDjG1ljM">
    <property role="1pbfSe" value="1297449862" />
    <property role="TrG5h" value="JIntegerConstant" />
    <property role="34LRSv" value="jint" />
    <property role="R4oN_" value="jint" />
    <property role="3GE5qa" value="literals" />
    <ref role="1TJDcQ" to="tpee:hanubx6" resolve="IntegerLiteral" />
    <node concept="1TJgyi" id="65gbDjG1lnK" role="1TKVEl">
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="PrWs8" id="65gbDjG1lnN" role="PzmwI">
      <ref role="PrY4T" to="tpck:1_TrU5E6oyb" resolve="IDontSubstituteByDefault" />
    </node>
  </node>
  <node concept="1TIwiD" id="7NY5omJ6dCI">
    <property role="1pbfSe" value="739700659" />
    <property role="TrG5h" value="JUnsignedBigIntegerDecimalConstant" />
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="literals" />
    <ref role="1TJDcQ" node="7NY5omJ6djM" resolve="JUnsignedBigIntegerLiteral" />
    <node concept="1TJgyi" id="7NY5omJ6dDe" role="1TKVEl">
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" node="7NY5omJ6dkk" resolve="JUnsignedBigIntegerDecimalConstantString" />
    </node>
  </node>
  <node concept="Az7Fb" id="7NY5omJ6dkk">
    <property role="FLfZY" value="[0-9]+(u|U)" />
    <property role="TrG5h" value="JUnsignedBigIntegerDecimalConstantString" />
    <property role="3GE5qa" value="literals" />
  </node>
  <node concept="1TIwiD" id="7NY5omJ6e5m">
    <property role="1pbfSe" value="739702491" />
    <property role="TrG5h" value="JUnsignedBigIntegerHexConstant" />
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="literals" />
    <ref role="1TJDcQ" node="7NY5omJ6djM" resolve="JUnsignedBigIntegerLiteral" />
    <node concept="1TJgyi" id="7NY5omJ6e5n" role="1TKVEl">
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" node="7NY5omJ6e4Q" resolve="JUnsignedBigIntegerHexConstantString" />
    </node>
  </node>
  <node concept="Az7Fb" id="7NY5omJ6e4Q">
    <property role="FLfZY" value="0x[0-9a-fA-F]+(u|U)" />
    <property role="TrG5h" value="JUnsignedBigIntegerHexConstantString" />
    <property role="3GE5qa" value="literals" />
  </node>
  <node concept="1TIwiD" id="7NY5omJ6djM">
    <property role="1pbfSe" value="739699319" />
    <property role="TrG5h" value="JUnsignedBigIntegerLiteral" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="literals" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
  </node>
  <node concept="1TIwiD" id="6w4Q6PaDdJ1">
    <property role="1pbfSe" value="1297501138" />
    <property role="3GE5qa" value="memory" />
    <property role="TrG5h" value="InitEmptyMemory" />
    <property role="R4oN_" value="Initialize empty random access smart memory " />
    <property role="34LRSv" value="INIT_EMPTY_RAM" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="6w4Q6PaDdJ2" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1H" resolve="Type" />
    </node>
    <node concept="1TJgyj" id="6w4Q6PaDei4" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="argLength" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1X3_iC" id="6w4Q6PaDdJ4" role="lGtFl">
      <property role="3V$3am" value="linkDeclaration" />
      <property role="3V$3ak" value="c72da2b9-7cce-4447-8389-f407dc1158b7/1169125787135/1071489727083" />
      <node concept="1TJgyj" id="6w4Q6PaDdJ5" role="8Wnug">
        <property role="20lmBu" value="aggregation" />
        <property role="20kJfa" value="writable" />
        <property role="20lbJX" value="1" />
        <ref role="20lvS9" to="tpee:htXhb8r" resolve="CharConstant" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="1YAwn0B3yo8">
    <property role="1pbfSe" value="1186244472" />
    <property role="3GE5qa" value="memory" />
    <property role="TrG5h" value="InitMemory" />
    <property role="R4oN_" value="Initialize a random access smart memory from an existing array" />
    <property role="34LRSv" value="INIT_RAM" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="1F6kLWsrCuz" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1H" resolve="Type" />
    </node>
    <node concept="1TJgyj" id="1YAwn0B3yoa" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20lbJX" value="1" />
      <property role="20kJfa" value="argArray" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1X3_iC" id="6w4Q6Pax$lY" role="lGtFl">
      <property role="3V$3am" value="linkDeclaration" />
      <property role="3V$3ak" value="c72da2b9-7cce-4447-8389-f407dc1158b7/1169125787135/1071489727083" />
      <node concept="1TJgyj" id="1YAwn0B3z_i" role="8Wnug">
        <property role="20lmBu" value="aggregation" />
        <property role="20kJfa" value="writable" />
        <property role="20lbJX" value="1" />
        <ref role="20lvS9" to="tpee:htXhb8r" resolve="CharConstant" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="1YAwn0B9j5B">
    <property role="1pbfSe" value="1187754711" />
    <property role="3GE5qa" value="memory" />
    <property role="TrG5h" value="MemoryAccessExpression" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="PrWs8" id="1YAwn0B9j5C" role="PzmwI">
      <ref role="PrY4T" to="tpee:1wHCnsn58oY" resolve="IBinaryLike" />
    </node>
    <node concept="1TJgyj" id="1YAwn0B9j5E" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="index" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="1YAwn0B9j5G" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="memory" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="1YAwn0BaAnQ" role="PzmwI">
      <ref role="PrY4T" to="tpck:1_TrU5E6oyb" resolve="IDontSubstituteByDefault" />
    </node>
  </node>
  <node concept="1TIwiD" id="1YAwn0B3ymP">
    <property role="1pbfSe" value="1186244389" />
    <property role="3GE5qa" value="memory" />
    <property role="TrG5h" value="MemoryType" />
    <property role="34LRSv" value="RAM" />
    <ref role="1TJDcQ" to="tpee:fz3vP1H" resolve="Type" />
    <node concept="1TJgyj" id="1YAwn0B3yn5" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1H" resolve="Type" />
    </node>
  </node>
  <node concept="1TIwiD" id="1YAwn0APCn6">
    <property role="1pbfSe" value="1182598966" />
    <property role="TrG5h" value="FieldInverseOp" />
    <property role="34LRSv" value="inv" />
    <property role="3GE5qa" value="ops" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1YAwn0APCn7" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
    <node concept="PrWs8" id="1YAwn0APCn8" role="PzmwI">
      <ref role="PrY4T" to="tpee:1wHCnsn58oY" resolve="IBinaryLike" />
    </node>
  </node>
  <node concept="1TIwiD" id="6zlb0z1wDxO">
    <property role="1pbfSe" value="710395004" />
    <property role="TrG5h" value="JAndExpression" />
    <property role="3GE5qa" value="ops" />
    <property role="34LRSv" value="AND" />
    <ref role="1TJDcQ" to="tpee:fJuHJVf" resolve="BinaryOperation" />
  </node>
  <node concept="1TIwiD" id="4JdZtZIAYwB">
    <property role="1pbfSe" value="980018694" />
    <property role="TrG5h" value="JEqualsExpression" />
    <property role="R4oN_" value="jsnark equals" />
    <property role="3GE5qa" value="ops" />
    <property role="34LRSv" value="EQ" />
    <ref role="1TJDcQ" to="tpee:fJuHJVf" resolve="BinaryOperation" />
  </node>
  <node concept="1TIwiD" id="7aL4SFttuq2">
    <property role="1pbfSe" value="1344731660" />
    <property role="TrG5h" value="JNotEqualsExpression" />
    <property role="R4oN_" value="jsnark not equals" />
    <property role="34LRSv" value="NEQ" />
    <property role="3GE5qa" value="ops" />
    <ref role="1TJDcQ" to="tpee:fJuHJVf" resolve="BinaryOperation" />
  </node>
  <node concept="1TIwiD" id="6zlb0z1wECl">
    <property role="1pbfSe" value="710399517" />
    <property role="3GE5qa" value="ops" />
    <property role="TrG5h" value="JNotExpression" />
    <property role="34LRSv" value="NOT" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="fJfr32$" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="6zlb0z1wECm" role="PzmwI">
      <ref role="PrY4T" to="tpee:1wHCnsn58oY" resolve="IBinaryLike" />
    </node>
  </node>
  <node concept="1TIwiD" id="6zlb0z1wDxP">
    <property role="1pbfSe" value="710395005" />
    <property role="TrG5h" value="JOrExpression" />
    <property role="3GE5qa" value="ops" />
    <property role="34LRSv" value="OR" />
    <ref role="1TJDcQ" to="tpee:fJuHJVf" resolve="BinaryOperation" />
  </node>
  <node concept="1TIwiD" id="XCno6kWLoW">
    <property role="1pbfSe" value="1537510467" />
    <property role="TrG5h" value="UnaryBitwiseNegate" />
    <property role="34LRSv" value="~" />
    <property role="R4oN_" value="xjsnark unary bitwise not" />
    <property role="3GE5qa" value="ops" />
    <ref role="1TJDcQ" to="tpee:i2$Kv9D" resolve="AbstractUnaryNumberOperation" />
  </node>
  <node concept="1TIwiD" id="2wcORY50FbW">
    <property role="1pbfSe" value="1391491461" />
    <property role="TrG5h" value="PermutationResolver" />
    <property role="34LRSv" value="resolve_permutation" />
    <property role="3GE5qa" value="permutation" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyj" id="2wcORY50FbX" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="argArray" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="2wcORY50Fc0" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="id" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:f$Xl_Og" resolve="StringLiteral" />
    </node>
  </node>
  <node concept="1TIwiD" id="2wcORY50xaE">
    <property role="1pbfSe" value="1391532503" />
    <property role="TrG5h" value="PermutationVerifier" />
    <property role="34LRSv" value="verify_permutation" />
    <property role="3GE5qa" value="permutation" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyj" id="2wcORY50xaM" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1H" resolve="Type" />
    </node>
    <node concept="1TJgyj" id="2wcORY50xaN" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20lbJX" value="1" />
      <property role="20kJfa" value="array1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="2wcORY50xaQ" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="array2" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="2wcORY50xaU" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="id" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:f$Xl_Og" resolve="StringLiteral" />
    </node>
  </node>
  <node concept="1TIwiD" id="2qKKpufl4hB">
    <property role="1pbfSe" value="1241184770" />
    <property role="3GE5qa" value="types" />
    <property role="TrG5h" value="JBooleanConversion" />
    <property role="34LRSv" value="bit" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="2qKKpufl4hC" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="jType" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="5u98M4xbjNn" resolve="JBooleanType" />
    </node>
    <node concept="1TJgyj" id="2qKKpufl4hD" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="argument" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="18zTa4d6jFp">
    <property role="1pbfSe" value="524099450" />
    <property role="TrG5h" value="VerifyNativeConstraintStatment" />
    <property role="34LRSv" value="verify_native_constraint" />
    <property role="3GE5qa" value="verify" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyj" id="18zTa4d6jFq" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="a" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="18zTa4d6nnF" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="b" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="18zTa4d6nr6" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="c" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="18zTa4dwmcd">
    <property role="1pbfSe" value="530925486" />
    <property role="TrG5h" value="LogStatement" />
    <property role="34LRSv" value="log" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyj" id="18zTa4dwmIs" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="18zTa4dwmNy" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="msg" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="5CNaGjSr7E0">
    <property role="1pbfSe" value="1386194244" />
    <property role="TrG5h" value="GroupRecord" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="5CNaGjSr7E1" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="5CNaGjSr7E3" role="1TKVEl">
      <property role="TrG5h" value="modulus" />
      <ref role="AX2Wp" node="hhaVGVf" resolve="BigDecimal" />
    </node>
  </node>
  <node concept="1TIwiD" id="5CNaGjSr9rf">
    <property role="1pbfSe" value="1386201491" />
    <property role="3GE5qa" value="types" />
    <property role="TrG5h" value="JGroupType" />
    <property role="34LRSv" value="Z*_" />
    <ref role="1TJDcQ" node="65gbDjFWKi1" resolve="XjsnarkType" />
    <node concept="1TJgyj" id="5CNaGjSr9rg" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="groupRec" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="5CNaGjSr7E0" resolve="GroupRecord" />
    </node>
  </node>
  <node concept="1TIwiD" id="5CNaGjSr9rE">
    <property role="1pbfSe" value="1386201518" />
    <property role="3GE5qa" value="Roots" />
    <property role="TrG5h" value="GroupDefTable" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5CNaGjSr9rF" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="groupDefinitions" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="5CNaGjSr7E0" resolve="GroupRecord" />
    </node>
  </node>
  <node concept="1TIwiD" id="5CNaGjSrd38">
    <property role="1pbfSe" value="1386216332" />
    <property role="3GE5qa" value="types" />
    <property role="TrG5h" value="JGroupConversion" />
    <property role="34LRSv" value="Z*_" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="5CNaGjSrd3$" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="jType" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="5CNaGjSr9rf" resolve="JGroupType" />
    </node>
    <node concept="1TJgyj" id="5CNaGjSrd3_" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="argument" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="5CNaGjSzweC">
    <property role="1pbfSe" value="1388392044" />
    <property role="TrG5h" value="GroupInverseOp" />
    <property role="34LRSv" value="inv" />
    <property role="3GE5qa" value="ops" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="5CNaGjSzweD" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
    <node concept="PrWs8" id="5CNaGjSzweE" role="PzmwI">
      <ref role="PrY4T" to="tpee:1wHCnsn58oY" resolve="IBinaryLike" />
    </node>
  </node>
</model>

