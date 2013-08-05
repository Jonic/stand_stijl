{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ -12.0, 101.0, 1196.0, 672.0 ],
		"bglocked" : 0,
		"defrect" : [ -12.0, 101.0, 1196.0, 672.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
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
					"text" : "unpack 1",
					"numoutlets" : 1,
					"id" : "obj-43",
					"outlettype" : [ "int" ],
					"fontname" : "Arial",
					"presentation_rect" : [ 379.0, 530.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 50.0, 482.0, 59.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcherargs 8798",
					"numoutlets" : 2,
					"id" : "obj-44",
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"presentation_rect" : [ 379.0, 507.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 50.0, 459.0, 104.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "port $1",
					"numoutlets" : 1,
					"id" : "obj-45",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"presentation_rect" : [ 379.0, 553.0, 0.0, 0.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 50.0, 505.0, 48.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "udpsend localhost 8798",
					"numoutlets" : 0,
					"id" : "obj-47",
					"fontname" : "Arial",
					"presentation_rect" : [ 59.0, 586.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 246.0, 551.0, 137.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"id" : "obj-25",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 225.0, 93.0, 0.0, 0.0 ],
					"numinlets" : 0,
					"patching_rect" : [ 390.0, 149.0, 25.0, 25.0 ],
					"comment" : "Toggle Grid Stroke On/Off (Trigger: 1.0)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"id" : "obj-26",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 194.0, 93.0, 0.0, 0.0 ],
					"numinlets" : 0,
					"patching_rect" : [ 359.0, 149.0, 25.0, 25.0 ],
					"comment" : "Set the Grid's Text (String)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"id" : "obj-27",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 156.0, 93.0, 0.0, 0.0 ],
					"numinlets" : 0,
					"patching_rect" : [ 329.0, 151.0, 25.0, 25.0 ],
					"comment" : "Shift the Text (Trigger: 1.0)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"id" : "obj-28",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 126.0, 93.0, 0.0, 0.0 ],
					"numinlets" : 0,
					"patching_rect" : [ 296.0, 149.0, 25.0, 25.0 ],
					"comment" : "Update Grid Colors (Trigger: 1.0)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"id" : "obj-29",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 95.0, 93.0, 0.0, 0.0 ],
					"numinlets" : 0,
					"patching_rect" : [ 265.0, 150.0, 25.0, 25.0 ],
					"comment" : "Change the Draw Mode (Trigger: 1.0)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"id" : "obj-42",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 67.0, 93.0, 0.0, 0.0 ],
					"numinlets" : 0,
					"patching_rect" : [ 237.0, 149.0, 25.0, 25.0 ],
					"comment" : "Generate A New Grid Pattern (Trigger: 1.0)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /StandStijl/ChangeDrawMode",
					"numoutlets" : 1,
					"id" : "obj-24",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 272.0, 270.0, 215.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /StandStijl/ToggleStroke",
					"numoutlets" : 1,
					"id" : "obj-23",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 362.0, 390.0, 185.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /StandStijl/SetText",
					"numoutlets" : 1,
					"id" : "obj-22",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 338.0, 361.0, 155.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Port Defaults to 8798\nOptional argument can change that",
					"linecount" : 3,
					"numoutlets" : 0,
					"id" : "obj-2",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 41.0, 388.0, 160.0, 48.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /StandStijl/UpdateColors",
					"numoutlets" : 1,
					"id" : "obj-50",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 296.0, 301.0, 189.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /StandStijl/ShiftText",
					"numoutlets" : 1,
					"id" : "obj-46",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 316.0, 332.0, 161.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /StandStijl/GenerateNewGrid",
					"numoutlets" : 1,
					"id" : "obj-81",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 251.0, 242.0, 212.0, 20.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
