{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 5,
			"minor" : 1,
			"revision" : 9
		}
,
		"rect" : [ 473.0, 86.0, 1368.0, 789.0 ],
		"bglocked" : 0,
		"defrect" : [ 473.0, 86.0, 1368.0, 789.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 18.0,
		"default_fontface" : 0,
		"default_fontname" : "Osaka",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r ss2",
					"id" : "obj-36",
					"fontname" : "Osaka",
					"numinlets" : 0,
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"patching_rect" : [ 712.0, 615.0, 53.0, 32.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-33",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 2,
					"patching_rect" : [ 325.0, 629.0, 86.0, 32.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "param amount $1",
					"id" : "obj-34",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"patching_rect" : [ 325.0, 677.0, 164.0, 30.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getparamlist",
					"id" : "obj-35",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"patching_rect" : [ 195.0, 616.0, 119.0, 30.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s ss2",
					"id" : "obj-32",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"patching_rect" : [ 208.0, 676.0, 55.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print",
					"id" : "obj-28",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"patching_rect" : [ 940.0, 644.0, 51.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"id" : "obj-29",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"prefix" : "gonzo:/Applications/Max5/Cycling '74/jitter-shaders/composite/",
					"fontsize" : 18.0,
					"numoutlets" : 3,
					"autopopulate" : 1,
					"types" : [  ],
					"items" : [ "co.accum.jxs", ",", "co.additive.jxs", ",", "co.alphablend.jxs", ",", "co.average.jxs", ",", "co.brightlight.jxs", ",", "co.burn.jxs", ",", "co.chromakey.jxs", ",", "co.darken.jxs", ",", "co.difference.jxs", ",", "co.dodge.jxs", ",", "co.exclude.jxs", ",", "co.freeze.jxs", ",", "co.glow.jxs", ",", "co.hardlight.jxs", ",", "co.heat.jxs", ",", "co.inverse.jxs", ",", "co.lighten.jxs", ",", "co.lumakey.jxs", ",", "co.multiply.jxs", ",", "co.negate.jxs", ",", "co.normal.jxs", ",", "co.overlay.jxs", ",", "co.reflect.jxs", ",", "co.screen.jxs", ",", "co.softlight.jxs", ",", "co.stamp.jxs", ",", "co.subtractive.jxs" ],
					"patching_rect" : [ 823.0, 500.0, 205.0, 32.0 ],
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend read",
					"id" : "obj-30",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"patching_rect" : [ 825.0, 549.0, 124.0, 32.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.gl.slab slabby",
					"id" : "obj-31",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"fontsize" : 18.0,
					"numoutlets" : 2,
					"patching_rect" : [ 810.0, 600.0, 149.0, 32.0 ],
					"outlettype" : [ "jit_gl_texture", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-27",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 2,
					"patching_rect" : [ 258.0, 447.0, 50.0, 32.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "param amount $1",
					"id" : "obj-25",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"patching_rect" : [ 258.0, 495.0, 164.0, 30.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print",
					"id" : "obj-23",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"patching_rect" : [ 736.0, 559.0, 51.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getparamlist",
					"id" : "obj-22",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"patching_rect" : [ 128.0, 434.0, 119.0, 30.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r ss",
					"id" : "obj-20",
					"fontname" : "Osaka",
					"numinlets" : 0,
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"patching_rect" : [ 499.0, 409.0, 41.0, 32.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s ss",
					"id" : "obj-19",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"patching_rect" : [ 188.0, 567.0, 43.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"id" : "obj-18",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"prefix" : "gonzo:/Applications/Max5/Cycling '74/jitter-shaders/composite/",
					"fontsize" : 18.0,
					"numoutlets" : 3,
					"autopopulate" : 1,
					"types" : [  ],
					"items" : [ "co.accum.jxs", ",", "co.additive.jxs", ",", "co.alphablend.jxs", ",", "co.average.jxs", ",", "co.brightlight.jxs", ",", "co.burn.jxs", ",", "co.chromakey.jxs", ",", "co.darken.jxs", ",", "co.difference.jxs", ",", "co.dodge.jxs", ",", "co.exclude.jxs", ",", "co.freeze.jxs", ",", "co.glow.jxs", ",", "co.hardlight.jxs", ",", "co.heat.jxs", ",", "co.inverse.jxs", ",", "co.lighten.jxs", ",", "co.lumakey.jxs", ",", "co.multiply.jxs", ",", "co.negate.jxs", ",", "co.normal.jxs", ",", "co.overlay.jxs", ",", "co.reflect.jxs", ",", "co.screen.jxs", ",", "co.softlight.jxs", ",", "co.stamp.jxs", ",", "co.subtractive.jxs" ],
					"patching_rect" : [ 619.0, 415.0, 205.0, 32.0 ],
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend read",
					"id" : "obj-17",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"patching_rect" : [ 621.0, 464.0, 124.0, 32.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.gl.slab slabby",
					"id" : "obj-16",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"fontsize" : 18.0,
					"numoutlets" : 2,
					"patching_rect" : [ 606.0, 515.0, 149.0, 32.0 ],
					"outlettype" : [ "jit_gl_texture", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.gl.videoplane slabby",
					"id" : "obj-15",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 2,
					"patching_rect" : [ 607.0, 710.0, 207.0, 32.0 ],
					"outlettype" : [ "jit_matrix", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "read",
					"id" : "obj-2",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"fontsize" : 20.0,
					"numoutlets" : 1,
					"patching_rect" : [ 949.0, 68.0, 53.0, 33.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.qt.movie @dim 320 240 @vol 0.",
					"id" : "obj-10",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 20.0,
					"numoutlets" : 2,
					"patching_rect" : [ 782.0, 132.0, 345.0, 35.0 ],
					"outlettype" : [ "jit_matrix", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r movie_bang",
					"id" : "obj-12",
					"fontname" : "Osaka",
					"numinlets" : 0,
					"fontsize" : 20.0,
					"numoutlets" : 1,
					"patching_rect" : [ 782.0, 68.0, 142.0, 35.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "read",
					"id" : "obj-11",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"fontsize" : 20.0,
					"numoutlets" : 1,
					"patching_rect" : [ 588.0, 68.0, 53.0, 33.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.qt.movie @dim 320 240 @vol 0.",
					"id" : "obj-9",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 20.0,
					"numoutlets" : 2,
					"patching_rect" : [ 421.0, 132.0, 345.0, 35.0 ],
					"outlettype" : [ "jit_matrix", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r movie_bang",
					"id" : "obj-8",
					"fontname" : "Osaka",
					"numinlets" : 0,
					"fontsize" : 20.0,
					"numoutlets" : 1,
					"patching_rect" : [ 421.0, 68.0, 142.0, 35.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s movie_bang",
					"id" : "obj-7",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 20.0,
					"numoutlets" : 0,
					"patching_rect" : [ 144.0, 203.0, 144.0, 35.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.window slabby @fsaa 1",
					"id" : "obj-6",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 20.0,
					"numoutlets" : 2,
					"patching_rect" : [ 79.0, 330.0, 257.0, 35.0 ],
					"outlettype" : [ "bang", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.gl.render slabby @erase_color 0. 0. 0. 1.",
					"id" : "obj-5",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 20.0,
					"numoutlets" : 2,
					"patching_rect" : [ 79.0, 259.0, 424.0, 35.0 ],
					"outlettype" : [ "bang", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b b erase",
					"id" : "obj-4",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 20.0,
					"numoutlets" : 3,
					"patching_rect" : [ 79.0, 138.0, 112.0, 35.0 ],
					"outlettype" : [ "bang", "bang", "erase" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-3",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 79.0, 45.0, 32.0, 32.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qmetro 20",
					"id" : "obj-1",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"fontsize" : 20.0,
					"numoutlets" : 1,
					"patching_rect" : [ 79.0, 91.0, 113.0, 35.0 ],
					"outlettype" : [ "bang" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-31", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 1 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 1 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-16", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 2 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
