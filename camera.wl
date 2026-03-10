(* ::Package:: *)

Camera3D[] := DynamicModule[
 {camPos = {0, 2, 5}, camRot = {0, 0}, speed = 0.2, blocks},

 blocks = {{0,0,0},{1,0,0},{2,0,0},{0,1,0},{1,1,0},{2,1,0}};

 EventHandler[
  Dynamic[
   Graphics3D[
    Table[Cuboid[pos, pos + {1, 1, 1}], {pos, blocks}],
    Boxed -> False,
    Lighting -> "Neutral",
    ViewPoint -> camPos,
    ViewVertical -> {0, 1, 0},
    SphericalRegion -> True
   ]
  ],
  
  {
   "UpArrowKeyDown" :> (camPos[[3]] -= speed),
   "DownArrowKeyDown" :> (camPos[[3]] += speed),
   "LeftArrowKeyDown" :> (camPos[[1]] -= speed),
   "RightArrowKeyDown" :> (camPos[[1]] += speed)
  }
 ]
]
