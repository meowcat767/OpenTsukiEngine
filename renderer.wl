(* ::Package:: *)

RenderWorld[blocks_] :=
 Graphics3D[
  Table[
   Cuboid[pos, pos + {1, 1, 1}],
   {pos, blocks}
  ],
  Boxed -> False
 ]
