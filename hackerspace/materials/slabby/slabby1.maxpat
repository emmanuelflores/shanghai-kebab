{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 5,
			"minor" : 1,
			"revision" : 9
		}
,
		"rect" : [ 355.0, 104.0, 1361.0, 783.0 ],
		"bglocked" : 0,
		"defrect" : [ 355.0, 104.0, 1361.0, 783.0 ],
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
					"maxclass" : "flonum",
					"id" : "obj-40",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 2,
					"patching_rect" : [ 734.0, 640.0, 50.0, 32.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-39",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 2,
					"patching_rect" : [ 672.0, 640.0, 50.0, 32.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak param offset 0. 0.",
					"id" : "obj-37",
					"fontname" : "Osaka",
					"numinlets" : 4,
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"patching_rect" : [ 576.0, 687.0, 202.0, 32.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getparamdefault offset",
					"id" : "obj-36",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"patching_rect" : [ 926.0, 459.0, 212.0, 30.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print",
					"id" : "obj-10",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"patching_rect" : [ 788.0, 450.0, 51.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"id" : "obj-4",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"prefix" : "gonzo:/Applications/Max5/Cycling '74/jitter-shaders/texdisplace/",
					"fontsize" : 18.0,
					"numoutlets" : 3,
					"autopopulate" : 1,
					"types" : [  ],
					"items" : [ "td.cartopol.jxs", ",", "td.fisheye.jxs", ",", "td.kaleido.jxs", ",", "td.lens.jxs", ",", "td.lumadisplace.jxs", ",", "td.mirror.jxs", ",", "td.plane3d.jxs", ",", "td.repos.jxs", ",", "td.resample.jxs", ",", "td.ripples.jxs", ",", "td.rota.jxs", ",", "td.sinefold.jxs", ",", "td.twirl.jxs", ",", "td.wobble.jxs" ],
					"patching_rect" : [ 545.0, 532.0, 147.0, 32.0 ],
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend read",
					"id" : "obj-1",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"patching_rect" : [ 544.0, 573.0, 124.0, 32.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "dispose",
					"id" : "obj-2",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"patching_rect" : [ 938.0, 507.0, 79.0, 30.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "read cf.sobel.jxs",
					"id" : "obj-35",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"patching_rect" : [ 779.0, 507.0, 154.0, 30.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r slabby",
					"id" : "obj-34",
					"fontname" : "Osaka",
					"numinlets" : 0,
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"patching_rect" : [ 488.0, 350.0, 78.0, 32.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s slabby",
					"id" : "obj-33",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"patching_rect" : [ 822.0, 565.0, 80.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getparamtype scale",
					"id" : "obj-25",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"patching_rect" : [ 952.0, 248.0, 184.0, 30.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getparamdefault scale",
					"id" : "obj-26",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"patching_rect" : [ 952.0, 208.0, 206.0, 30.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getparamval scale",
					"id" : "obj-27",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"patching_rect" : [ 952.0, 169.0, 169.0, 30.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getparamlist",
					"id" : "obj-28",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"patching_rect" : [ 944.0, 558.0, 122.0, 30.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-29",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"triscale" : 0.9,
					"fontsize" : 18.0,
					"numoutlets" : 2,
					"patching_rect" : [ 805.0, 315.0, 66.0, 32.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "param scale $1",
					"id" : "obj-18",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"patching_rect" : [ 805.0, 383.0, 145.0, 30.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-30",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"triscale" : 0.9,
					"fontsize" : 18.0,
					"numoutlets" : 2,
					"patching_rect" : [ 966.0, 330.0, 66.0, 32.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "param bias $1",
					"id" : "obj-31",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"patching_rect" : [ 966.0, 384.0, 136.0, 30.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "read cc.scalebias.jxs",
					"id" : "obj-32",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"patching_rect" : [ 721.0, 263.0, 191.0, 30.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.gl.slab wawa",
					"id" : "obj-59",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"fontsize" : 18.0,
					"numoutlets" : 2,
					"patching_rect" : [ 575.0, 399.0, 141.0, 32.0 ],
					"outlettype" : [ "jit_gl_texture", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.gl.videoplane wawa",
					"id" : "obj-23",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 2,
					"patching_rect" : [ 575.0, 470.0, 199.0, 32.0 ],
					"outlettype" : [ "jit_matrix", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"id" : "obj-22",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 3,
					"types" : [  ],
					"items" : [ "texture", ",", "tex1" ],
					"patching_rect" : [ 235.0, 536.0, 173.0, 32.0 ],
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend texture",
					"id" : "obj-21",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"patching_rect" : [ 235.0, 578.0, 150.0, 32.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.gl.texture wawa @name tex1",
					"id" : "obj-20",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 2,
					"patching_rect" : [ 500.0, 202.0, 283.0, 32.0 ],
					"outlettype" : [ "jit_gl_texture", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "reset",
					"id" : "obj-19",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"patching_rect" : [ 181.0, 35.0, 55.0, 30.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.gl.handle wawa @inherit_transform 1",
					"id" : "obj-17",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 2,
					"patching_rect" : [ 181.0, 72.0, 353.0, 32.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.gl.gridshape wawa @shape plane @blend_enable 1 @enable 0",
					"id" : "obj-16",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 2,
					"patching_rect" : [ 17.0, 635.0, 560.0, 32.0 ],
					"outlettype" : [ "jit_matrix", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qlim 100",
					"id" : "obj-15",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"patching_rect" : [ 323.0, 257.0, 87.0, 32.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r movie_bang",
					"id" : "obj-14",
					"fontname" : "Osaka",
					"numinlets" : 0,
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"patching_rect" : [ 554.0, 110.0, 129.0, 32.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s movie_bang",
					"id" : "obj-13",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"patching_rect" : [ 110.0, 146.0, 131.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"id" : "obj-12",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 323.0, 300.0, 149.0, 121.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "read",
					"id" : "obj-11",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"patching_rect" : [ 500.0, 110.0, 49.0, 30.0 ],
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
					"fontsize" : 18.0,
					"numoutlets" : 2,
					"patching_rect" : [ 500.0, 152.0, 311.0, 32.0 ],
					"outlettype" : [ "jit_matrix", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.window wawa @fsaa 1",
					"id" : "obj-8",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 2,
					"patching_rect" : [ 55.0, 300.0, 225.0, 32.0 ],
					"outlettype" : [ "bang", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.gl.render wawa @erase_color 0. 0. 0. 1.",
					"id" : "obj-7",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 2,
					"patching_rect" : [ 42.0, 180.0, 375.0, 32.0 ],
					"outlettype" : [ "bang", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b b erase",
					"id" : "obj-6",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 3,
					"patching_rect" : [ 42.0, 109.0, 102.0, 32.0 ],
					"outlettype" : [ "bang", "bang", "erase" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-5",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 42.0, 29.0, 24.0, 24.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qmetro 20",
					"id" : "obj-3",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"patching_rect" : [ 42.0, 63.0, 103.0, 32.0 ],
					"outlettype" : [ "bang" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-37", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-37", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 2 ],
					"destination" : [ "obj-7", 0 ],
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
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 1 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-16", 0 ],
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
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
