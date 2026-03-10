(* ::Package:: *)

If[$InputFileName === "",
    SetDirectory[NotebookDirectory[]],
    SetDirectory[DirectoryName[$InputFileName]]
]

Get["renderer.wl"]#
Get["camera.wl"]
Camera3D[]


world={
	{0, 0, 0},
	{1, 0, 0},
	{2, 0, 0},
	{0, 1, 0}
};

RenderWorld[world]


(* ::Input:: *)
(*\!\(\**)
(*TagBox[*)
(*DynamicBox[ToBoxes[Graphics3D[Table[Cuboid[$CellContext`pos, $CellContext`pos + {1, 1, 1}], {$CellContext`pos, $CellContext`blocks$$}], Boxed -> False, Lighting -> "Neutral", ViewPoint -> $CellContext`camPos$$, ViewVertical -> {0, 1, 0}, SphericalRegion -> True], StandardForm],*)
(*ImageSizeCache->{90., {42.193359375, 47.806640625}}],*)
(*EventHandlerTag[{"UpArrowKeyDown" :> SubtractFrom[Part[$CellContext`camPos$$, 3], $CellContext`speed$$], "DownArrowKeyDown" :> AddTo[Part[$CellContext`camPos$$, 3], $CellContext`speed$$], "LeftArrowKeyDown" :> SubtractFrom[Part[$CellContext`camPos$$, 1], $CellContext`speed$$], "RightArrowKeyDown" :> AddTo[Part[$CellContext`camPos$$, 1], $CellContext`speed$$], Method -> "Preemptive", PassEventsDown -> Automatic, PassEventsUp -> True}]]\)Association*)
(**)


(* ::Input:: *)
(*RenderWorld[{{0,0,0},{1,0,0},{2,0,0},{0,1,0}}]*)
(*ClearAll[RenderWorld]*)
(*Get["renderer.wl"]*)
(*DownValues[RenderWorld]*)



