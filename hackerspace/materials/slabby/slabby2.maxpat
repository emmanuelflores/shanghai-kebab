{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 5,
			"minor" : 1,
			"revision" : 9
		}
,
		"rect" : [ 521.0, 97.0, 1218.0, 879.0 ],
		"bglocked" : 0,
		"defrect" : [ 521.0, 97.0, 1218.0, 879.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 20.0,
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
					"maxclass" : "message",
					"text" : "dispose",
					"id" : "obj-49",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"fontsize" : 20.0,
					"numoutlets" : 1,
					"patching_rect" : [ 1034.0, 634.0, 83.0, 33.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-47",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 20.0,
					"numoutlets" : 2,
					"patching_rect" : [ 948.0, 675.0, 50.0, 35.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "param width $1",
					"id" : "obj-45",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"fontsize" : 20.0,
					"numoutlets" : 1,
					"patching_rect" : [ 948.0, 726.0, 161.0, 33.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getparamtype width",
					"id" : "obj-43",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"fontsize" : 20.0,
					"numoutlets" : 1,
					"patching_rect" : [ 877.0, 542.0, 205.0, 33.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getparamlist",
					"id" : "obj-41",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"presentation_rect" : [ 732.0, 631.0, 0.0, 0.0 ],
					"fontsize" : 20.0,
					"numoutlets" : 1,
					"patching_rect" : [ 732.0, 631.0, 131.0, 33.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getparamdefault width",
					"id" : "obj-40",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"presentation_rect" : [ 868.0, 594.0, 0.0, 0.0 ],
					"fontsize" : 20.0,
					"numoutlets" : 1,
					"patching_rect" : [ 868.0, 594.0, 229.0, 33.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r ss2",
					"id" : "obj-39",
					"fontname" : "Osaka",
					"numinlets" : 0,
					"fontsize" : 20.0,
					"numoutlets" : 1,
					"patching_rect" : [ 511.0, 467.0, 57.0, 35.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s ss2",
					"id" : "obj-38",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 20.0,
					"numoutlets" : 0,
					"patching_rect" : [ 866.0, 759.0, 60.0, 35.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"id" : "obj-37",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"prefix" : "gonzo:/Applications/Max5/Cycling '74/jitter-shaders/convolution/",
					"fontsize" : 20.0,
					"numoutlets" : 3,
					"autopopulate" : 1,
					"types" : [  ],
					"items" : [ "cf.blur.jxs", ",", "cf.convolve.jxs", ",", "cf.deinterlace.jxs", ",", "cf.dilate.jxs", ",", "cf.edgedetect.jxs", ",", "cf.emboss.jxs", ",", "cf.erode.jxs", ",", "cf.gaussian.2p.jxs", ",", "cf.laplace.jxs", ",", "cf.median.2p.jxs", ",", "cf.radialblur.jxs", ",", "cf.sharpen.ip.jxs", ",", "cf.sharpen.jxs", ",", "cf.sobel.jxs" ],
					"patching_rect" : [ 800.0, 422.0, 198.0, 35.0 ],
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend read",
					"id" : "obj-36",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 20.0,
					"numoutlets" : 1,
					"patching_rect" : [ 800.0, 466.0, 137.0, 35.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print",
					"id" : "obj-35",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"presentation_rect" : [ 709.0, 566.0, 0.0, 0.0 ],
					"fontsize" : 20.0,
					"numoutlets" : 0,
					"patching_rect" : [ 710.0, 563.0, 55.0, 35.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.gl.slab slabby",
					"id" : "obj-34",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"presentation_rect" : [ 574.0, 513.0, 0.0, 0.0 ],
					"fontsize" : 20.0,
					"numoutlets" : 2,
					"patching_rect" : [ 565.0, 513.0, 164.0, 35.0 ],
					"outlettype" : [ "jit_gl_texture", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-33",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 20.0,
					"numoutlets" : 2,
					"patching_rect" : [ 285.0, 718.0, 50.0, 35.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "param theta $1",
					"id" : "obj-31",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"fontsize" : 20.0,
					"numoutlets" : 1,
					"patching_rect" : [ 285.0, 762.0, 160.0, 33.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-27",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"presentation_rect" : [ 218.0, 391.0, 0.0, 0.0 ],
					"fontsize" : 20.0,
					"numoutlets" : 2,
					"patching_rect" : [ 238.0, 391.0, 79.0, 35.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-28",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"presentation_rect" : [ 153.0, 391.0, 0.0, 0.0 ],
					"fontsize" : 20.0,
					"numoutlets" : 2,
					"patching_rect" : [ 153.0, 391.0, 79.0, 35.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak param zoom 1. 1.",
					"id" : "obj-29",
					"fontname" : "Osaka",
					"numinlets" : 4,
					"fontsize" : 20.0,
					"numoutlets" : 1,
					"patching_rect" : [ 38.0, 446.0, 219.0, 35.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-26",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 20.0,
					"numoutlets" : 2,
					"patching_rect" : [ 373.0, 498.0, 59.0, 35.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-25",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 20.0,
					"numoutlets" : 2,
					"patching_rect" : [ 308.0, 498.0, 59.0, 35.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak param offset 0. 0.",
					"id" : "obj-23",
					"fontname" : "Osaka",
					"numinlets" : 4,
					"fontsize" : 20.0,
					"numoutlets" : 1,
					"patching_rect" : [ 193.0, 553.0, 224.0, 35.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getparamdefault anchor",
					"id" : "obj-22",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"fontsize" : 20.0,
					"numoutlets" : 1,
					"patching_rect" : [ 241.0, 639.0, 241.0, 33.0 ],
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
					"fontsize" : 20.0,
					"numoutlets" : 1,
					"patching_rect" : [ 518.0, 310.0, 44.0, 35.0 ],
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
					"fontsize" : 20.0,
					"numoutlets" : 0,
					"patching_rect" : [ 147.0, 709.0, 47.0, 35.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getparamlist",
					"id" : "obj-18",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"fontsize" : 20.0,
					"numoutlets" : 1,
					"patching_rect" : [ 32.0, 652.0, 131.0, 33.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print",
					"id" : "obj-16",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 20.0,
					"numoutlets" : 0,
					"patching_rect" : [ 710.0, 407.0, 55.0, 35.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"id" : "obj-15",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"prefix" : "gonzo:/Applications/Max5/Cycling '74/jitter-shaders/texdisplace/",
					"fontsize" : 20.0,
					"numoutlets" : 3,
					"autopopulate" : 1,
					"types" : [  ],
					"items" : [ "td.cartopol.jxs", ",", "td.fisheye.jxs", ",", "td.kaleido.jxs", ",", "td.lens.jxs", ",", "td.lumadisplace.jxs", ",", "td.mirror.jxs", ",", "td.plane3d.jxs", ",", "td.repos.jxs", ",", "td.resample.jxs", ",", "td.ripples.jxs", ",", "td.rota.jxs", ",", "td.sinefold.jxs", ",", "td.twirl.jxs", ",", "td.wobble.jxs" ],
					"patching_rect" : [ 691.0, 240.0, 218.0, 35.0 ],
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend read",
					"id" : "obj-14",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 20.0,
					"numoutlets" : 1,
					"patching_rect" : [ 691.0, 284.0, 137.0, 35.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.gl.videoplane slabby",
					"id" : "obj-13",
					"fontname" : "Osaka",
					"numinlets" : 1,
					"fontsize" : 20.0,
					"numoutlets" : 2,
					"patching_rect" : [ 565.0, 702.0, 228.0, 35.0 ],
					"outlettype" : [ "jit_matrix", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.gl.slab slabby",
					"id" : "obj-12",
					"fontname" : "Osaka",
					"numinlets" : 2,
					"fontsize" : 20.0,
					"numoutlets" : 2,
					"patching_rect" : [ 565.0, 359.0, 164.0, 35.0 ],
					"outlettype" : [ "jit_gl_texture", "" ]
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
					"patching_rect" : [ 732.0, 114.0, 53.0, 33.0 ],
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
					"patching_rect" : [ 565.0, 166.0, 345.0, 35.0 ],
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
					"patching_rect" : [ 565.0, 102.0, 142.0, 35.0 ],
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
					"patching_rect" : [ 129.0, 188.0, 144.0, 35.0 ]
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
					"patching_rect" : [ 64.0, 315.0, 257.0, 35.0 ],
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
					"patching_rect" : [ 64.0, 244.0, 424.0, 35.0 ],
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
					"patching_rect" : [ 64.0, 123.0, 112.0, 35.0 ],
					"outlettype" : [ "bang", "bang", "erase" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-3",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 64.0, 30.0, 32.0, 32.0 ],
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
					"patching_rect" : [ 64.0, 76.0, 113.0, 35.0 ],
					"outlettype" : [ "bang" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 1 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 1 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-29", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-29", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-23", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-23", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-19", 0 ],
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
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 1 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-12", 0 ],
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
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-9", 0 ],
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
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
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
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
