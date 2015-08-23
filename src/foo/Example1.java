package foo;

import org.RDKit.RWMol;

public class Example1 {

  public static void main(String[] args) {

    System.loadLibrary("GraphMolWrap");
    String smiles = "c1ccccc1";
    RWMol m = RWMol.MolFromSmiles(smiles);
    System.out.println("Read smiles: " + smiles + " Number of atoms: " + m.getNumAtoms());
  }
}
