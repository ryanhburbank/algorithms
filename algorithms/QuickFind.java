public class UF {
  public static void main(String[] args)
  {
    int N = StdIn.readInt();
    UF uf = new UF(N);
    while (!StdIn.isEmpty())
    {
      int p = StdIn.readInt();
      int q = StdIn.readInt();
      if (!uf.connected(p,q))
      {
        uf.union(p,q);
        StdOut.println(p + " " + q);
      }
    }
  }

  UF(int N) {}
  // this is the contructor  
  // initialize union-find data structure
  // with  N objects 
  void union(int p, int q) {}
  // add connection between p & q
  boolean connected(int p, int q) {}
  // are p and q in the same component
}
