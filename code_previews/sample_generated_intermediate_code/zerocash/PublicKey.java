package xjsnark.zerocash;

/*Generated by MPS */

import backend.auxTypes.StructDefinition;
import java.util.ArrayList;
import backend.auxTypes.VariableState;
import backend.auxTypes.IAuxType;

public class PublicKey extends StructDefinition {


  /*package*/ Digest a_pk = new Digest();


  public void __makeInput() {














    if (a_pk != null) {
      a_pk.__makeInput();
    }






  }


  public void __makeOutput() {




    if (a_pk != null) {
      a_pk.__makeOutput();
    }

  }


  public void __makeWitness() {
















    if (a_pk != null) {
      a_pk.__makeWitness();
    }






  }


  public void __makeVerifiedWitness() {
















    if (a_pk != null) {
      a_pk.__makeVerifiedWitness();
    }







  }

  public void __alignAndPackAll() {

    ArrayList<VariableState> states = new ArrayList();



    if (a_pk != null) {
      a_pk.__alignAndPackAll();
    }




    for (VariableState state : states) {
      state.setPackedAhead(true);
      state.setMustBeWithinRange(true);
      state.setConditionallySplittedAndAlignedAhead(true);
    }

  }
  public static Class<?> __getClassRef() {
    return PublicKey.class;
  }

  public StructDefinition __copy() {
    return null;
  }
  public int[] __getBasicElementsDetails() {
    return null;
  }
  public ArrayList<IAuxType> __getBasicElements() {
    ArrayList<IAuxType> list = new ArrayList();



    if (a_pk != null) {
      list.addAll(a_pk.__getBasicElements());
    }




    return list;
  }
}