{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 2,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ -1886.0, 77.0, 1852.0, 929.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 602.5, 1024.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 648.5, 815.0, 28.0, 148.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "gain~",
					"multichannelvariant" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 488.5, 815.0, 22.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 619.5, 815.0, 28.0, 148.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "gain~",
					"multichannelvariant" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 464.5, 815.0, 22.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 261.0, 395.0, 732.0, 386.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, "FabFilter Pro-Q 2.vst3info", ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~",
							"parameter_shortname" : "vst~",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "vst~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"pluginname" : "FabFilter Pro-Q 2.vst3info",
							"plugindisplayname" : "FabFilter Pro-Q 2",
							"pluginsavedname" : "FabFilter Pro-Q 2",
							"pluginsaveduniqueid" : 0,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"sliderorder" : [  ],
							"slidervisibility" : [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ],
							"blob" : "1198.VMjLgTJA...OVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9fCLy3hQEwFVFkjKt3hK1MjKt3hKDUEaYcVUGEldAgGUqE0Qi8FMwjkKt3hKtLyRt3hKt3hKt3BTy7VR33RPPcDazDmR4PlcO4hKt3hKA4hKtLDQt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt.kVOIyQAEjKt3hKt3hKtX2St3hKt3hKt3hK4LjKt3hKP4hKt3hKugiXkQDQt3hKt3hKt3hKq3hKt3hKt3hKtLySt3hKt3RPt3hKtnVL4gSTP4hKt3hKt3hKtbyPt3hKt3hKt3hYq3hKt3hKD4hKt3BTZ8jLGETPt3hKt3hKt3hcO4hKt3hKt3hKtjyPt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt.kVOIyQAEjKt3hKt3hKtX2St3hKt3hKt3hK4LjKt3hKP4hKt3hKugiXkQDQt3hKt3hKt3hKq3hKt3hKt3hKtLySt3hKt3RPt3hKtnVL4gSTP4hKt3hKt3hKtbyPt3hKt3hKt3hYq3hKt3hKD4hKt3BTZ8jLGETPt3hKt3hKt3hcO4hKt3hKt3hKtjyPt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt3hKt3hYq3hKt3hKt3hKtLySt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKy7jKt3hYq3hKt3hKt3hKtLySt3hKlshKt3hKtPjKt3BQP4hKt3hKt3hKtjyPt3hKt.kKt3hKt3hKt3RNK4hKt3hKA4hKt3BQt3hKt3BOujzPu0Fbu4VYtQmO7jTQjkFcC8lazI2arwVYx4SLx3hQYQUVpEjKt3hKt3hKt3hK77RREQVZzMzatQmbuwFakImO77hUSQ0LPwVcmklaSQWXzUlO.."
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "FabFilter Pro-Q 2",
									"origin" : "FabFilter Pro-Q 2.vst3info",
									"type" : "VST3",
									"subtype" : "MidiEffect",
									"embed" : 0,
									"snapshot" : 									{
										"pluginname" : "FabFilter Pro-Q 2.vst3info",
										"plugindisplayname" : "FabFilter Pro-Q 2",
										"pluginsavedname" : "FabFilter Pro-Q 2",
										"pluginsaveduniqueid" : 0,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"sliderorder" : [  ],
										"slidervisibility" : [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ],
										"blob" : "1198.VMjLgTJA...OVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9fCLy3hQEwFVFkjKt3hK1MjKt3hKDUEaYcVUGEldAgGUqE0Qi8FMwjkKt3hKtLyRt3hKt3hKt3BTy7VR33RPPcDazDmR4PlcO4hKt3hKA4hKtLDQt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt.kVOIyQAEjKt3hKt3hKtX2St3hKt3hKt3hK4LjKt3hKP4hKt3hKugiXkQDQt3hKt3hKt3hKq3hKt3hKt3hKtLySt3hKt3RPt3hKtnVL4gSTP4hKt3hKt3hKtbyPt3hKt3hKt3hYq3hKt3hKD4hKt3BTZ8jLGETPt3hKt3hKt3hcO4hKt3hKt3hKtjyPt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt.kVOIyQAEjKt3hKt3hKtX2St3hKt3hKt3hK4LjKt3hKP4hKt3hKugiXkQDQt3hKt3hKt3hKq3hKt3hKt3hKtLySt3hKt3RPt3hKtnVL4gSTP4hKt3hKt3hKtbyPt3hKt3hKt3hYq3hKt3hKD4hKt3BTZ8jLGETPt3hKt3hKt3hcO4hKt3hKt3hKtjyPt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt3hKt3hYq3hKt3hKt3hKtLySt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKy7jKt3hYq3hKt3hKt3hKtLySt3hKlshKt3hKtPjKt3BQP4hKt3hKt3hKtjyPt3hKt.kKt3hKt3hKt3RNK4hKt3hKA4hKt3BQt3hKt3BOujzPu0Fbu4VYtQmO7jTQjkFcC8lazI2arwVYx4SLx3hQYQUVpEjKt3hKt3hKt3hK77RREQVZzMzatQmbuwFakImO77hUSQ0LPwVcmklaSQWXzUlO.."
									}
,
									"fileref" : 									{
										"name" : "FabFilter Pro-Q 2",
										"filename" : "FabFilter Pro-Q 2.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "4457a2dfd9188ad09016ae3ac87659b8"
									}

								}
 ]
						}

					}
,
					"text" : "vst~ \"FabFilter Pro-Q 2.vst3info\"",
					"varname" : "vst~",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 684.0, 35.5, 35.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "bang" ],
					"patching_rect" : [ 641.0, 228.0, 57.0, 22.0 ],
					"saved_object_attributes" : 					{
						"basictuning" : 440,
						"followglobaltempo" : 0,
						"formantcorrection" : 0,
						"mode" : "basic",
						"originallength" : [ 0.0, "ticks" ],
						"originaltempo" : 120.0,
						"pitchcorrection" : 0,
						"quality" : "basic",
						"timestretch" : [ 0 ]
					}
,
					"text" : "sfplay~ 2"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-20", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"order" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-21", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"order" : 1,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"order" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 1 ],
					"order" : 1,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 1 ],
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-20" : [ "vst~", "vst~", 0 ],
			"parameterbanks" : 			{

			}

		}
,
		"dependency_cache" : [ 			{
				"name" : "FabFilter Pro-Q 2.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../../Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
