{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 3,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ -1878.0, 85.0, 1320.0, 929.0 ],
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
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 966.0, 326.0, 172.0, 22.0 ],
					"text" : "sprintf startserver localhost %s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 966.0, 296.0, 55.0, 22.0 ],
					"text" : "zl.slice 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1053.5, 264.0, 37.0, 22.0 ],
					"text" : "line 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 966.0, 182.0, 84.0, 22.0 ],
					"text" : "read config.txt"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "bang", "int" ],
					"patching_rect" : [ 966.0, 264.0, 40.0, 22.0 ],
					"text" : "text"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 431.75, 85.0, 59.0, 22.0 ],
					"text" : "modout 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 526.0, 85.0, 155.0, 22.0 ],
					"text" : "sprintf open %soriginal.wav"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 526.0, 19.0, 32.0, 22.0 ],
					"text" : "path"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 526.0, 49.0, 67.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1092.0, 470.0, 44.5, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 724.0, 503.0, 75.0, 22.0 ],
					"text" : "route /player"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 848.833333333333371, 447.0, 71.0, 22.0 ],
					"text" : "fromsymbol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1027.0, 557.0, 32.0, 22.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 8.0, 753.0, 119.0, 22.0 ],
					"text" : "/streamer stopserver"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 8.0, 777.0, 187.0, 22.0 ],
					"text" : "/streamer startserver localhost 80"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 880.0, 503.0, 90.0, 22.0 ],
					"text" : "route /streamer"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 635.0, 164.0, 32.0, 22.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 446.5, 10.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 773.5, 314.0, 65.0, 22.0 ],
					"text" : "stopserver"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "", "" ],
					"patching_rect" : [ 803.5, 413.0, 87.0, 22.0 ],
					"text" : "mxj~ Streamer"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1222.0, 78.0, 34.0, 22.0 ],
					"text" : "scan"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 729.0, 138.0, 22.0 ],
					"text" : "udpsend 127.0.0.1 8000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1175.0, 78.0, 38.0, 22.0 ],
					"text" : "listvst"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1208.0, 203.0, 32.0, 22.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1183.0, 130.0, 49.0, 22.0 ],
					"text" : "vstscan"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 284.5, 375.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1144.0, 879.0, 32.0, 22.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1144.0, 839.0, 97.0, 22.0 ],
					"text" : "udpreceive 9999"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 284.5, 399.0, 164.0, 22.0 ],
					"text" : "plug_vst3 \"FabFilter Pro-Q 2\""
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 422.25, 678.0, 92.5, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, 2, ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~[6]",
							"parameter_shortname" : "vst~[6]",
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
							"pluginsavedname" : "C74_VST3:/FabFilter Pro-Q 2",
							"pluginsaveduniqueid" : 1228206162,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "1198.VMjLgTJA...OVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9fCLy3hQEwFVFkjKt3hK1MjKt3hKDUEaYcVUGEldAgGUqE0Qi8FMwjkKt3hKtLyRt3hKt3hKt3BTy7VR33RPLcDazDmR4PlcO4hKt3hKA4hKtLDQt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt.kVOIyQAEjKt3hKt3hKtX2St3hKt3hKt3hK4LjKt3hKP4hKt3hKugiXkQDQt3hKt3hKt3hKq3hKt3hKt3hKtLySt3hKt3RPt3hKtnVL4gSTP4hKt3hKt3hKtbyPt3hKt3hKt3hYq3hKt3hKD4hKt3BTZ8jLGETPt3hKt3hKt3hcO4hKt3hKt3hKtjyPt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt.kVOIyQAEjKt3hKt3hKtX2St3hKt3hKt3hK4LjKt3hKP4hKt3hKugiXkQDQt3hKt3hKt3hKq3hKt3hKt3hKtLySt3hKt3RPt3hKtnVL4gSTP4hKt3hKt3hKtbyPt3hKt3hKt3hYq3hKt3hKD4hKt3BTZ8jLGETPt3hKt3hKt3hcO4hKt3hKt3hKtjyPt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt3hKt3hYq3hKt3hKt3hKtLySt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKy7jKt3hYq3hKt3hKt3hKtLySt3hKlshKt3hKtPjKt3BQP4hKt3hKt3hKtjyPt3hKt.kKt3hKt3hKt3RNK4hKt3hKA4hKt3BQt3hKt3BOujzPu0Fbu4VYtQmO7jTQjkFcC8lazI2arwVYx4SLx3hQYQUVpEjKt3hKt3hKt3hK77RREQVZzMzatQmbuwFakImO77hUSQ0LPwVcmklaSQWXzUlO.."
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
										"pluginsavedname" : "C74_VST3:/FabFilter Pro-Q 2",
										"pluginsaveduniqueid" : 1228206162,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"blob" : "1198.VMjLgTJA...OVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9fCLy3hQEwFVFkjKt3hK1MjKt3hKDUEaYcVUGEldAgGUqE0Qi8FMwjkKt3hKtLyRt3hKt3hKt3BTy7VR33RPLcDazDmR4PlcO4hKt3hKA4hKtLDQt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt.kVOIyQAEjKt3hKt3hKtX2St3hKt3hKt3hK4LjKt3hKP4hKt3hKugiXkQDQt3hKt3hKt3hKq3hKt3hKt3hKtLySt3hKt3RPt3hKtnVL4gSTP4hKt3hKt3hKtbyPt3hKt3hKt3hYq3hKt3hKD4hKt3BTZ8jLGETPt3hKt3hKt3hcO4hKt3hKt3hKtjyPt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt.kVOIyQAEjKt3hKt3hKtX2St3hKt3hKt3hK4LjKt3hKP4hKt3hKugiXkQDQt3hKt3hKt3hKq3hKt3hKt3hKtLySt3hKt3RPt3hKtnVL4gSTP4hKt3hKt3hKtbyPt3hKt3hKt3hYq3hKt3hKD4hKt3BTZ8jLGETPt3hKt3hKt3hcO4hKt3hKt3hKtjyPt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt3hKt3hYq3hKt3hKt3hKtLySt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKy7jKt3hYq3hKt3hKt3hKtLySt3hKlshKt3hKtPjKt3BQP4hKt3hKt3hKtjyPt3hKt.kKt3hKt3hKt3RNK4hKt3hKA4hKt3BQt3hKt3BOujzPu0Fbu4VYtQmO7jTQjkFcC8lazI2arwVYx4SLx3hQYQUVpEjKt3hKt3hKt3hK77RREQVZzMzatQmbuwFakImO77hUSQ0LPwVcmklaSQWXzUlO.."
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
, 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "FabFilter Pro-Q 2[1]",
									"origin" : "FabFilter Pro-Q 2.vst3info",
									"type" : "VST3",
									"subtype" : "MidiEffect",
									"embed" : 0,
									"fileref" : 									{
										"name" : "FabFilter Pro-Q 2[1]",
										"filename" : "FabFilter Pro-Q 2[1].maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "ba8b5e2957e5b0f127d63fd264711c80"
									}

								}
 ]
						}

					}
,
					"text" : "vst~ 2",
					"varname" : "vst~[6]",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 422.25, 619.0, 92.5, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, 2, ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~[5]",
							"parameter_shortname" : "vst~[5]",
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
							"pluginsavedname" : "C74_VST3:/FabFilter Pro-Q 2",
							"pluginsaveduniqueid" : 1228206162,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "1198.VMjLgTJA...OVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9fCLy3hQEwFVFkjKt3hK1MjKt3hKDUEaYcVUGEldAgGUqE0Qi8FMwjkKt3hKtLyRt3hKt3hKt3BTy7VR33RPLcDazDmR4PlcO4hKt3hKA4hKtLDQt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt.kVOIyQAEjKt3hKt3hKtX2St3hKt3hKt3hK4LjKt3hKP4hKt3hKugiXkQDQt3hKt3hKt3hKq3hKt3hKt3hKtLySt3hKt3RPt3hKtnVL4gSTP4hKt3hKt3hKtbyPt3hKt3hKt3hYq3hKt3hKD4hKt3BTZ8jLGETPt3hKt3hKt3hcO4hKt3hKt3hKtjyPt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt.kVOIyQAEjKt3hKt3hKtX2St3hKt3hKt3hK4LjKt3hKP4hKt3hKugiXkQDQt3hKt3hKt3hKq3hKt3hKt3hKtLySt3hKt3RPt3hKtnVL4gSTP4hKt3hKt3hKtbyPt3hKt3hKt3hYq3hKt3hKD4hKt3BTZ8jLGETPt3hKt3hKt3hcO4hKt3hKt3hKtjyPt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt3hKt3hYq3hKt3hKt3hKtLySt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKy7jKt3hYq3hKt3hKt3hKtLySt3hKlshKt3hKtPjKt3BQP4hKt3hKt3hKtjyPt3hKt.kKt3hKt3hKt3RNK4hKt3hKA4hKt3BQt3hKt3BOujzPu0Fbu4VYtQmO7jTQjkFcC8lazI2arwVYx4SLx3hQYQUVpEjKt3hKt3hKt3hK77RREQVZzMzatQmbuwFakImO77hUSQ0LPwVcmklaSQWXzUlO.."
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
										"pluginsavedname" : "C74_VST3:/FabFilter Pro-Q 2",
										"pluginsaveduniqueid" : 1228206162,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"blob" : "1198.VMjLgTJA...OVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9fCLy3hQEwFVFkjKt3hK1MjKt3hKDUEaYcVUGEldAgGUqE0Qi8FMwjkKt3hKtLyRt3hKt3hKt3BTy7VR33RPLcDazDmR4PlcO4hKt3hKA4hKtLDQt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt.kVOIyQAEjKt3hKt3hKtX2St3hKt3hKt3hK4LjKt3hKP4hKt3hKugiXkQDQt3hKt3hKt3hKq3hKt3hKt3hKtLySt3hKt3RPt3hKtnVL4gSTP4hKt3hKt3hKtbyPt3hKt3hKt3hYq3hKt3hKD4hKt3BTZ8jLGETPt3hKt3hKt3hcO4hKt3hKt3hKtjyPt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt.kVOIyQAEjKt3hKt3hKtX2St3hKt3hKt3hK4LjKt3hKP4hKt3hKugiXkQDQt3hKt3hKt3hKq3hKt3hKt3hKtLySt3hKt3RPt3hKtnVL4gSTP4hKt3hKt3hKtbyPt3hKt3hKt3hYq3hKt3hKD4hKt3BTZ8jLGETPt3hKt3hKt3hcO4hKt3hKt3hKtjyPt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt3hKt3hYq3hKt3hKt3hKtLySt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKy7jKt3hYq3hKt3hKt3hKtLySt3hKlshKt3hKtPjKt3BQP4hKt3hKt3hKtjyPt3hKt.kKt3hKt3hKt3RNK4hKt3hKA4hKt3BQt3hKt3BOujzPu0Fbu4VYtQmO7jTQjkFcC8lazI2arwVYx4SLx3hQYQUVpEjKt3hKt3hKt3hK77RREQVZzMzatQmbuwFakImO77hUSQ0LPwVcmklaSQWXzUlO.."
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
, 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "FabFilter Pro-Q 2[1]",
									"origin" : "FabFilter Pro-Q 2.vst3info",
									"type" : "VST3",
									"subtype" : "MidiEffect",
									"embed" : 0,
									"fileref" : 									{
										"name" : "FabFilter Pro-Q 2[1]",
										"filename" : "FabFilter Pro-Q 2[1].maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "ba8b5e2957e5b0f127d63fd264711c80"
									}

								}
 ]
						}

					}
,
					"text" : "vst~ 2",
					"varname" : "vst~[5]",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 422.25, 564.0, 92.5, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, 2, ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~[4]",
							"parameter_shortname" : "vst~[4]",
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
							"pluginsavedname" : "C74_VST3:/FabFilter Pro-Q 2",
							"pluginsaveduniqueid" : 1228206162,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "1198.VMjLgTJA...OVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9fCLy3hQEwFVFkjKt3hK1MjKt3hKDUEaYcVUGEldAgGUqE0Qi8FMwjkKt3hKtLyRt3hKt3hKt3BTy7VR33RPLcDazDmR4PlcO4hKt3hKA4hKtLDQt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt.kVOIyQAEjKt3hKt3hKtX2St3hKt3hKt3hK4LjKt3hKP4hKt3hKugiXkQDQt3hKt3hKt3hKq3hKt3hKt3hKtLySt3hKt3RPt3hKtnVL4gSTP4hKt3hKt3hKtbyPt3hKt3hKt3hYq3hKt3hKD4hKt3BTZ8jLGETPt3hKt3hKt3hcO4hKt3hKt3hKtjyPt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt.kVOIyQAEjKt3hKt3hKtX2St3hKt3hKt3hK4LjKt3hKP4hKt3hKugiXkQDQt3hKt3hKt3hKq3hKt3hKt3hKtLySt3hKt3RPt3hKtnVL4gSTP4hKt3hKt3hKtbyPt3hKt3hKt3hYq3hKt3hKD4hKt3BTZ8jLGETPt3hKt3hKt3hcO4hKt3hKt3hKtjyPt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt3hKt3hYq3hKt3hKt3hKtLySt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKy7jKt3hYq3hKt3hKt3hKtLySt3hKlshKt3hKtPjKt3BQP4hKt3hKt3hKtjyPt3hKt.kKt3hKt3hKt3RNK4hKt3hKA4hKt3BQt3hKt3BOujzPu0Fbu4VYtQmO7jTQjkFcC8lazI2arwVYx4SLx3hQYQUVpEjKt3hKt3hKt3hK77RREQVZzMzatQmbuwFakImO77hUSQ0LPwVcmklaSQWXzUlO.."
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
										"pluginsavedname" : "C74_VST3:/FabFilter Pro-Q 2",
										"pluginsaveduniqueid" : 1228206162,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"blob" : "1198.VMjLgTJA...OVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9fCLy3hQEwFVFkjKt3hK1MjKt3hKDUEaYcVUGEldAgGUqE0Qi8FMwjkKt3hKtLyRt3hKt3hKt3BTy7VR33RPLcDazDmR4PlcO4hKt3hKA4hKtLDQt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt.kVOIyQAEjKt3hKt3hKtX2St3hKt3hKt3hK4LjKt3hKP4hKt3hKugiXkQDQt3hKt3hKt3hKq3hKt3hKt3hKtLySt3hKt3RPt3hKtnVL4gSTP4hKt3hKt3hKtbyPt3hKt3hKt3hYq3hKt3hKD4hKt3BTZ8jLGETPt3hKt3hKt3hcO4hKt3hKt3hKtjyPt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt.kVOIyQAEjKt3hKt3hKtX2St3hKt3hKt3hK4LjKt3hKP4hKt3hKugiXkQDQt3hKt3hKt3hKq3hKt3hKt3hKtLySt3hKt3RPt3hKtnVL4gSTP4hKt3hKt3hKtbyPt3hKt3hKt3hYq3hKt3hKD4hKt3BTZ8jLGETPt3hKt3hKt3hcO4hKt3hKt3hKtjyPt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt3hKt3hYq3hKt3hKt3hKtLySt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKy7jKt3hYq3hKt3hKt3hKtLySt3hKlshKt3hKtPjKt3BQP4hKt3hKt3hKtjyPt3hKt.kKt3hKt3hKt3RNK4hKt3hKA4hKt3BQt3hKt3BOujzPu0Fbu4VYtQmO7jTQjkFcC8lazI2arwVYx4SLx3hQYQUVpEjKt3hKt3hKt3hK77RREQVZzMzatQmbuwFakImO77hUSQ0LPwVcmklaSQWXzUlO.."
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
, 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "FabFilter Pro-Q 2[1]",
									"origin" : "FabFilter Pro-Q 2.vst3info",
									"type" : "VST3",
									"subtype" : "MidiEffect",
									"embed" : 0,
									"fileref" : 									{
										"name" : "FabFilter Pro-Q 2[1]",
										"filename" : "FabFilter Pro-Q 2[1].maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "ba8b5e2957e5b0f127d63fd264711c80"
									}

								}
 ]
						}

					}
,
					"text" : "vst~ 2",
					"varname" : "vst~[4]",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 422.25, 505.0, 92.5, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, 2, ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~[3]",
							"parameter_shortname" : "vst~[3]",
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
							"pluginsavedname" : "C74_VST3:/FabFilter Pro-Q 2",
							"pluginsaveduniqueid" : 1228206162,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "1198.VMjLgTJA...OVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9fCLy3hQEwFVFkjKt3hK1MjKt3hKDUEaYcVUGEldAgGUqE0Qi8FMwjkKt3hKtLyRt3hKt3hKt3BTy7VR33RPLcDazDmR4PlcO4hKt3hKA4hKtLDQt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt.kVOIyQAEjKt3hKt3hKtX2St3hKt3hKt3hK4LjKt3hKP4hKt3hKugiXkQDQt3hKt3hKt3hKq3hKt3hKt3hKtLySt3hKt3RPt3hKtnVL4gSTP4hKt3hKt3hKtbyPt3hKt3hKt3hYq3hKt3hKD4hKt3BTZ8jLGETPt3hKt3hKt3hcO4hKt3hKt3hKtjyPt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt.kVOIyQAEjKt3hKt3hKtX2St3hKt3hKt3hK4LjKt3hKP4hKt3hKugiXkQDQt3hKt3hKt3hKq3hKt3hKt3hKtLySt3hKt3RPt3hKtnVL4gSTP4hKt3hKt3hKtbyPt3hKt3hKt3hYq3hKt3hKD4hKt3BTZ8jLGETPt3hKt3hKt3hcO4hKt3hKt3hKtjyPt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt3hKt3hYq3hKt3hKt3hKtLySt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKy7jKt3hYq3hKt3hKt3hKtLySt3hKlshKt3hKtPjKt3BQP4hKt3hKt3hKtjyPt3hKt.kKt3hKt3hKt3RNK4hKt3hKA4hKt3BQt3hKt3BOujzPu0Fbu4VYtQmO7jTQjkFcC8lazI2arwVYx4SLx3hQYQUVpEjKt3hKt3hKt3hK77RREQVZzMzatQmbuwFakImO77hUSQ0LPwVcmklaSQWXzUlO.."
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
										"pluginsavedname" : "C74_VST3:/FabFilter Pro-Q 2",
										"pluginsaveduniqueid" : 1228206162,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"blob" : "1198.VMjLgTJA...OVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9fCLy3hQEwFVFkjKt3hK1MjKt3hKDUEaYcVUGEldAgGUqE0Qi8FMwjkKt3hKtLyRt3hKt3hKt3BTy7VR33RPLcDazDmR4PlcO4hKt3hKA4hKtLDQt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt.kVOIyQAEjKt3hKt3hKtX2St3hKt3hKt3hK4LjKt3hKP4hKt3hKugiXkQDQt3hKt3hKt3hKq3hKt3hKt3hKtLySt3hKt3RPt3hKtnVL4gSTP4hKt3hKt3hKtbyPt3hKt3hKt3hYq3hKt3hKD4hKt3BTZ8jLGETPt3hKt3hKt3hcO4hKt3hKt3hKtjyPt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt.kVOIyQAEjKt3hKt3hKtX2St3hKt3hKt3hK4LjKt3hKP4hKt3hKugiXkQDQt3hKt3hKt3hKq3hKt3hKt3hKtLySt3hKt3RPt3hKtnVL4gSTP4hKt3hKt3hKtbyPt3hKt3hKt3hYq3hKt3hKD4hKt3BTZ8jLGETPt3hKt3hKt3hcO4hKt3hKt3hKtjyPt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt3hKt3hYq3hKt3hKt3hKtLySt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKy7jKt3hYq3hKt3hKt3hKtLySt3hKlshKt3hKtPjKt3BQP4hKt3hKt3hKtjyPt3hKt.kKt3hKt3hKt3RNK4hKt3hKA4hKt3BQt3hKt3BOujzPu0Fbu4VYtQmO7jTQjkFcC8lazI2arwVYx4SLx3hQYQUVpEjKt3hKt3hKt3hK77RREQVZzMzatQmbuwFakImO77hUSQ0LPwVcmklaSQWXzUlO.."
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
, 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "FabFilter Pro-Q 2[1]",
									"origin" : "FabFilter Pro-Q 2.vst3info",
									"type" : "VST3",
									"subtype" : "MidiEffect",
									"embed" : 0,
									"fileref" : 									{
										"name" : "FabFilter Pro-Q 2[1]",
										"filename" : "FabFilter Pro-Q 2[1].maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "ba8b5e2957e5b0f127d63fd264711c80"
									}

								}
 ]
						}

					}
,
					"text" : "vst~ 2",
					"varname" : "vst~[3]",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 8.0, 873.0, 76.0, 22.0 ],
					"text" : "/param 0 5 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 8.0, 849.0, 76.0, 22.0 ],
					"text" : "/param 0 5 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 801.0, 503.0, 77.0, 22.0 ],
					"text" : "route /param"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 600.0, 678.0, 46.0, 22.0 ],
					"text" : "route 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 600.0, 619.0, 46.0, 22.0 ],
					"text" : "route 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 600.0, 564.0, 46.0, 22.0 ],
					"text" : "route 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 600.0, 505.0, 46.0, 22.0 ],
					"text" : "route 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 600.0, 449.0, 46.0, 22.0 ],
					"text" : "route 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 972.0, 503.0, 75.0, 22.0 ],
					"text" : "route /plugin"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 8.0, 825.0, 213.0, 22.0 ],
					"text" : "/plugin 0 plug_vst3 \"FabFilter Pro-Q 2\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 8.0, 801.0, 202.0, 22.0 ],
					"text" : "/plugin 0 plug_vst3 \"FabFilter Pro-R\""
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 422.25, 449.0, 92.5, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, 2, ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~[1]",
							"parameter_shortname" : "vst~[1]",
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
							"pluginsavedname" : "C74_VST3:/FabFilter Pro-Q 2",
							"pluginsaveduniqueid" : 1228206162,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "1198.VMjLgTJA...OVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9fCLy3hQEwFVFkjKt3hK1MjKt3hKDUEaYcVUGEldAgGUqE0Qi8FMwjkKt3hKtLyRt3hKt3hKt3BTy7VR33RPLcDazDmR4PlcO4hKt3hKA4hKtLDQt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt.kVOIyQAEjKt3hKt3hKtX2St3hKt3hKt3hK4LjKt3hKP4hKt3hKugiXkQDQt3hKt3hKt3hKq3hKt3hKt3hKtLySt3hKt3RPt3hKtnVL4gSTP4hKt3hKt3hKtbyPt3hKt3hKt3hYq3hKt3hKD4hKt3BTZ8jLGETPt3hKt3hKt3hcO4hKt3hKt3hKtjyPt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt.kVOIyQAEjKt3hKt3hKtX2St3hKt3hKt3hK4LjKt3hKP4hKt3hKugiXkQDQt3hKt3hKt3hKq3hKt3hKt3hKtLySt3hKt3RPt3hKtnVL4gSTP4hKt3hKt3hKtbyPt3hKt3hKt3hYq3hKt3hKD4hKt3BTZ8jLGETPt3hKt3hKt3hcO4hKt3hKt3hKtjyPt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt3hKt3hYq3hKt3hKt3hKtLySt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKy7jKt3hYq3hKt3hKt3hKtLySt3hKlshKt3hKtPjKt3BQP4hKt3hKt3hKtjyPt3hKt.kKt3hKt3hKt3RNK4hKt3hKA4hKt3BQt3hKt3BOujzPu0Fbu4VYtQmO7jTQjkFcC8lazI2arwVYx4SLx3hQYQUVpEjKt3hKt3hKt3hK77RREQVZzMzatQmbuwFakImO77hUSQ0LPwVcmklaSQWXzUlO.."
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
										"pluginsavedname" : "C74_VST3:/FabFilter Pro-Q 2",
										"pluginsaveduniqueid" : 1228206162,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"blob" : "1198.VMjLgTJA...OVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9fCLy3hQEwFVFkjKt3hK1MjKt3hKDUEaYcVUGEldAgGUqE0Qi8FMwjkKt3hKtLyRt3hKt3hKt3BTy7VR33RPLcDazDmR4PlcO4hKt3hKA4hKtLDQt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt.kVOIyQAEjKt3hKt3hKtX2St3hKt3hKt3hK4LjKt3hKP4hKt3hKugiXkQDQt3hKt3hKt3hKq3hKt3hKt3hKtLySt3hKt3RPt3hKtnVL4gSTP4hKt3hKt3hKtbyPt3hKt3hKt3hYq3hKt3hKD4hKt3BTZ8jLGETPt3hKt3hKt3hcO4hKt3hKt3hKtjyPt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt.kVOIyQAEjKt3hKt3hKtX2St3hKt3hKt3hK4LjKt3hKP4hKt3hKugiXkQDQt3hKt3hKt3hKq3hKt3hKt3hKtLySt3hKt3RPt3hKtnVL4gSTP4hKt3hKt3hKtbyPt3hKt3hKt3hYq3hKt3hKD4hKt3BTZ8jLGETPt3hKt3hKt3hcO4hKt3hKt3hKtjyPt3hKt.kKt3hKt7FNhUFQD4hKt3hKt3hKtrhKt3hKt3hKt3xLO4hKt3hKA4hKt3hZwjGNQAkKt3hKt3hKt3xMC4hKt3hKt3hKlshKt3hKtPjKt3hKPo0SxbTPA4hKt3hKt3hK18jKt3hKt3hKt3RNC4hKt3BTt3hKt3xa3HVYDQjKt3hKt3hKt3xJt3hKt3hKt3hKy7jKt3hKtDjKt3hKpESd3DETt3hKt3hKt3hK2LjKt3hKt3hKtX1Jt3hKt3BQt3hKt3hKt3hYq3hKt3hKt3hKtLySt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKt3hKy7jKt3hYq3hKt3hKt3hKtLySt3hKlshKt3hKtPjKt3BQP4hKt3hKt3hKtjyPt3hKt.kKt3hKt3hKt3RNK4hKt3hKA4hKt3BQt3hKt3BOujzPu0Fbu4VYtQmO7jTQjkFcC8lazI2arwVYx4SLx3hQYQUVpEjKt3hKt3hKt3hK77RREQVZzMzatQmbuwFakImO77hUSQ0LPwVcmklaSQWXzUlO.."
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
, 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "FabFilter Pro-Q 2[1]",
									"origin" : "FabFilter Pro-Q 2.vst3info",
									"type" : "VST3",
									"subtype" : "MidiEffect",
									"embed" : 0,
									"fileref" : 									{
										"name" : "FabFilter Pro-Q 2[1]",
										"filename" : "FabFilter Pro-Q 2[1].maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "ba8b5e2957e5b0f127d63fd264711c80"
									}

								}
 ]
						}

					}
,
					"text" : "vst~ 2",
					"varname" : "vst~[1]",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 333.25, 142.0, 33.0, 20.0 ],
					"text" : "Stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 369.0, 142.0, 33.0, 20.0 ],
					"text" : "Play"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 335.0, 164.0, 29.5, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 369.0, 164.0, 29.5, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 493.0, 164.0, 49.0, 22.0 ],
					"text" : "resume"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 446.5, 164.0, 41.0, 22.0 ],
					"text" : "pause"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 1092.0, 503.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1043.5, 647.0, 29.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1013.5, 647.0, 29.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 549.0, 164.0, 35.0, 22.0 ],
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
					"patching_rect" : [ 493.0, 239.0, 57.0, 22.0 ],
					"saved_object_attributes" : 					{
						"basictuning" : 440,
						"followglobaltempo" : 0,
						"formantcorrection" : 0,
						"mode" : "basic",
						"originallength" : [ 13165.720000000001164, "ticks" ],
						"originaltempo" : 120.000000000000014,
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
					"destination" : [ "obj-49", 1 ],
					"midpoints" : [ 442.25, 492.0, 505.25, 492.0 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"midpoints" : [ 431.75, 474.0, 431.75, 474.0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"midpoints" : [ 1222.5, 198.0, 1217.5, 198.0 ],
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"midpoints" : [ 1192.5, 189.0, 1217.5, 189.0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 378.5, 225.0, 502.5, 225.0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"midpoints" : [ 17.5, 825.0, 3.0, 825.0, 3.0, 438.0, 981.5, 438.0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 344.5, 225.0, 502.5, 225.0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"midpoints" : [ 17.5, 849.0, 3.0, 849.0, 3.0, 438.0, 981.5, 438.0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"midpoints" : [ 889.5, 537.0, 710.0, 537.0, 710.0, 408.0, 813.0, 408.0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 558.5, 225.0, 502.5, 225.0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"midpoints" : [ 1184.5, 117.0, 1192.5, 117.0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-26", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"midpoints" : [ 1231.5, 117.0, 1192.5, 117.0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"midpoints" : [ 783.0, 399.0, 813.0, 399.0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"midpoints" : [ 1153.5, 864.0, 1153.5, 864.0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"midpoints" : [ 981.5, 537.0, 656.0, 537.0, 656.0, 435.0, 609.5, 435.0 ],
					"order" : 4,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"midpoints" : [ 981.5, 537.0, 656.0, 537.0, 656.0, 492.0, 609.5, 492.0 ],
					"order" : 3,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"midpoints" : [ 981.5, 549.0, 609.5, 549.0 ],
					"order" : 2,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"midpoints" : [ 981.5, 606.0, 609.5, 606.0 ],
					"order" : 1,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"midpoints" : [ 981.5, 633.0, 656.0, 633.0, 656.0, 663.0, 609.5, 663.0 ],
					"order" : 0,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 609.5, 474.0, 524.0, 474.0, 524.0, 435.0, 431.75, 435.0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"midpoints" : [ 609.5, 528.0, 524.0, 528.0, 524.0, 492.0, 431.75, 492.0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"midpoints" : [ 609.5, 588.0, 524.0, 588.0, 524.0, 549.0, 431.75, 549.0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"midpoints" : [ 609.5, 642.0, 524.0, 642.0, 524.0, 606.0, 431.75, 606.0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"midpoints" : [ 609.5, 702.0, 524.0, 702.0, 524.0, 663.0, 431.75, 663.0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"midpoints" : [ 986.0, 288.0, 1017.0, 288.0, 1017.0, 258.0, 1063.0, 258.0 ],
					"source" : [ "obj-36", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"midpoints" : [ 813.0, 489.0, 1071.0, 489.0, 1071.0, 633.0, 1023.0, 633.0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"midpoints" : [ 835.666666666666629, 489.0, 1071.0, 489.0, 1071.0, 633.0, 1053.0, 633.0 ],
					"source" : [ "obj-37", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"midpoints" : [ 858.333333333333371, 438.0, 1058.0, 438.0, 1058.0, 543.0, 1036.5, 543.0 ],
					"order" : 0,
					"source" : [ "obj-37", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"midpoints" : [ 858.333333333333371, 438.0, 858.333333333333371, 438.0 ],
					"order" : 1,
					"source" : [ "obj-37", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"midpoints" : [ 810.5, 528.0, 656.0, 528.0, 656.0, 435.0, 609.5, 435.0 ],
					"order" : 4,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"midpoints" : [ 810.5, 528.0, 656.0, 528.0, 656.0, 492.0, 609.5, 492.0 ],
					"order" : 3,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"midpoints" : [ 810.5, 549.0, 609.5, 549.0 ],
					"order" : 2,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"midpoints" : [ 810.5, 606.0, 609.5, 606.0 ],
					"order" : 1,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"midpoints" : [ 810.5, 663.0, 609.5, 663.0 ],
					"order" : 0,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 644.5, 225.0, 502.5, 225.0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 441.25, 150.0, 432.0, 150.0, 432.0, 225.0, 502.5, 225.0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 1 ],
					"midpoints" : [ 442.25, 549.0, 505.25, 549.0 ],
					"source" : [ "obj-49", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"midpoints" : [ 431.75, 528.0, 431.75, 528.0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"midpoints" : [ 521.5, 435.0, 505.25, 435.0 ],
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 502.5, 435.0, 431.75, 435.0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 1 ],
					"midpoints" : [ 442.25, 606.0, 505.25, 606.0 ],
					"source" : [ "obj-50", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"midpoints" : [ 431.75, 588.0, 431.75, 588.0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 1 ],
					"midpoints" : [ 442.25, 663.0, 505.25, 663.0 ],
					"source" : [ "obj-51", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"midpoints" : [ 431.75, 642.0, 431.75, 642.0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 1 ],
					"midpoints" : [ 442.25, 711.0, 711.0, 711.0, 711.0, 399.0, 881.0, 399.0 ],
					"source" : [ "obj-52", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"midpoints" : [ 431.75, 711.0, 711.0, 711.0, 711.0, 408.0, 813.0, 408.0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 294.0, 435.0, 431.75, 435.0 ],
					"order" : 4,
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"midpoints" : [ 294.0, 492.0, 431.75, 492.0 ],
					"order" : 3,
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"midpoints" : [ 294.0, 549.0, 431.75, 549.0 ],
					"order" : 2,
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"midpoints" : [ 294.0, 606.0, 431.75, 606.0 ],
					"order" : 1,
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"midpoints" : [ 294.0, 663.0, 431.75, 663.0 ],
					"order" : 0,
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 535.5, 150.0, 543.0, 150.0, 543.0, 225.0, 502.5, 225.0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"midpoints" : [ 1063.0, 288.0, 1032.0, 288.0, 1032.0, 249.0, 975.5, 249.0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"midpoints" : [ 858.333333333333371, 489.0, 889.5, 489.0 ],
					"order" : 2,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"midpoints" : [ 858.333333333333371, 489.0, 981.5, 489.0 ],
					"order" : 1,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"midpoints" : [ 858.333333333333371, 489.0, 810.5, 489.0 ],
					"order" : 3,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"midpoints" : [ 858.333333333333371, 489.0, 1059.0, 489.0, 1059.0, 543.0, 1036.5, 543.0 ],
					"order" : 0,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"midpoints" : [ 858.333333333333371, 489.0, 733.5, 489.0 ],
					"order" : 4,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 733.5, 528.0, 656.0, 528.0, 656.0, 348.0, 560.0, 348.0, 560.0, 225.0, 502.5, 225.0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 456.0, 225.0, 502.5, 225.0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-60", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"midpoints" : [ 975.5, 399.0, 813.0, 399.0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"midpoints" : [ 294.0, 393.0, 294.0, 393.0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 502.5, 189.0, 502.5, 189.0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"midpoints" : [ 456.0, 150.0, 1101.5, 150.0 ],
					"order" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"midpoints" : [ 456.0, 42.0, 525.0, 42.0, 525.0, 15.0, 535.5, 15.0 ],
					"order" : 2,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"midpoints" : [ 456.0, 72.0, 441.25, 72.0 ],
					"order" : 3,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"midpoints" : [ 456.0, 72.0, 513.0, 72.0, 513.0, 150.0, 975.5, 150.0 ],
					"order" : 1,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-50" : [ "vst~[4]", "vst~[4]", 0 ],
			"obj-51" : [ "vst~[5]", "vst~[5]", 0 ],
			"obj-52" : [ "vst~[6]", "vst~[6]", 0 ],
			"obj-1" : [ "vst~[1]", "vst~[1]", 0 ],
			"obj-49" : [ "vst~[3]", "vst~[3]", 0 ],
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
, 			{
				"name" : "FabFilter Pro-Q 2[1].maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../../Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "mxj~.mxe64",
				"type" : "mx64"
			}
 ],
		"autosave" : 0
	}

}
