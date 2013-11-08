{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 5,
			"minor" : 1,
			"revision" : 9
		}
,
		"rect" : [ 563.0, 103.0, 899.0, 655.0 ],
		"bglocked" : 0,
		"defrect" : [ 563.0, 103.0, 899.0, 655.0 ],
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
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 18.0,
					"numinlets" : 1,
					"patching_rect" : [ 163.0, 257.0, 75.0, 32.0 ],
					"numoutlets" : 2,
					"id" : "obj-14",
					"fontname" : "Osaka"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"numinlets" : 1,
					"patching_rect" : [ 180.0, 152.0, 46.0, 46.0 ],
					"numoutlets" : 1,
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+~",
					"outlettype" : [ "signal" ],
					"fontsize" : 18.0,
					"numinlets" : 2,
					"patching_rect" : [ 522.0, 423.0, 78.0, 32.0 ],
					"numoutlets" : 1,
					"id" : "obj-10",
					"fontname" : "Osaka"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~ 0.4",
					"outlettype" : [ "signal" ],
					"fontsize" : 18.0,
					"presentation_rect" : [ 379.0, 307.0, 0.0, 0.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 379.0, 307.0, 66.0, 32.0 ],
					"numoutlets" : 1,
					"id" : "obj-9",
					"fontname" : "Osaka"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~ 0.4",
					"outlettype" : [ "signal" ],
					"fontsize" : 18.0,
					"numinlets" : 2,
					"patching_rect" : [ 308.0, 307.0, 66.0, 32.0 ],
					"numoutlets" : 1,
					"id" : "obj-8",
					"fontname" : "Osaka"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open, loop 1",
					"outlettype" : [ "" ],
					"bgcolor" : [ 0.933333, 0.921569, 0.921569, 1.0 ],
					"fontsize" : 18.0,
					"numinlets" : 2,
					"patching_rect" : [ 308.0, 174.0, 117.0, 30.0 ],
					"numoutlets" : 1,
					"id" : "obj-7",
					"fontname" : "Osaka"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sfplay~ 2 @loop 1",
					"outlettype" : [ "signal", "signal", "bang" ],
					"fontsize" : 18.0,
					"numinlets" : 2,
					"patching_rect" : [ 308.0, 238.0, 166.0, 32.0 ],
					"numoutlets" : 3,
					"id" : "obj-5",
					"fontname" : "Osaka",
					"save" : [ "#N", "sfplay~", "", 2, 120960, 0, "", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~",
					"fontsize" : 18.0,
					"numinlets" : 2,
					"patching_rect" : [ 308.0, 417.0, 53.0, 32.0 ],
					"numoutlets" : 0,
					"id" : "obj-4",
					"fontname" : "Osaka"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-5", 0 ],
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
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
