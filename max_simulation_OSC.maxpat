{
	"boxes" : [ 		{
			"box" : 			{
				"maxclass" : "umenu",
				"parameter_enable" : 0,
				"numinlets" : 1,
				"items" : [ "192.186.1.101", ",", "192.186.1.102", ",", "192.186.1.103", ",", "192.186.1.104", ",", "192.186.1.105", ",", "192.186.1.106", ",", "192.186.1.107" ],
				"numoutlets" : 3,
				"id" : "obj-149",
				"patching_rect" : [ 36.0, 134.0, 107.0, 22.0 ],
				"outlettype" : [ "int", "", "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "umenu",
				"fontsize" : 30.0,
				"parameter_enable" : 0,
				"numinlets" : 1,
				"items" : [ 1, ",", 2, ",", 3, ",", 4, ",", 5, ",", 6, ",", 7 ],
				"numoutlets" : 3,
				"id" : "obj-145",
				"patching_rect" : [ 36.0, 41.0, 127.5, 43.0 ],
				"outlettype" : [ "int", "", "" ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.701960784313725, 0.219607843137255, 0.392156862745098, 1.0 ],
				"bgfillcolor_color2" : [ 0.76078431372549, 0.725490196078431, 0.219607843137255, 1.0 ],
				"bgfillcolor_color" : [ 0.76078431372549, 0.725490196078431, 0.219607843137255, 1.0 ],
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5,
				"bgfillcolor_autogradient" : 0.0
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "umenu",
				"parameter_enable" : 0,
				"numinlets" : 1,
				"items" : [ "/pi1/band", ",", "/pi2/band", ",", "/pi3/band", ",", "/pi4/band", ",", "/pi5/band", ",", "/pi6/band", ",", "/pi7/band" ],
				"numoutlets" : 3,
				"id" : "obj-144",
				"patching_rect" : [ 148.0, 134.0, 107.0, 22.0 ],
				"outlettype" : [ "int", "", "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band 160",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-127",
				"patching_rect" : [ 892.0, 649.0, 93.5, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgfillcolor_autogradient" : 0.0,
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s 160",
				"fontsize" : 11.595186999999999,
				"numinlets" : 1,
				"fontname" : "Arial",
				"numoutlets" : 1,
				"id" : "obj-128",
				"patching_rect" : [ 966.5, 613.0, 82.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band 161",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-129",
				"patching_rect" : [ 865.25, 619.0, 93.5, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgfillcolor_autogradient" : 0.0,
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s 161",
				"fontsize" : 11.595186999999999,
				"numinlets" : 1,
				"fontname" : "Arial",
				"numoutlets" : 1,
				"id" : "obj-130",
				"patching_rect" : [ 939.75, 583.0, 82.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band 150",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-131",
				"patching_rect" : [ 706.0, 655.0, 93.5, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgfillcolor_autogradient" : 0.0,
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s 150",
				"fontsize" : 11.595186999999999,
				"numinlets" : 1,
				"fontname" : "Arial",
				"numoutlets" : 1,
				"id" : "obj-132",
				"patching_rect" : [ 780.5, 619.0, 82.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band 151",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-133",
				"patching_rect" : [ 679.25, 625.0, 93.5, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgfillcolor_autogradient" : 0.0,
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s 151",
				"fontsize" : 11.595186999999999,
				"numinlets" : 1,
				"fontname" : "Arial",
				"numoutlets" : 1,
				"id" : "obj-134",
				"patching_rect" : [ 753.75, 589.0, 82.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band 140",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-135",
				"patching_rect" : [ 517.5, 661.0, 93.5, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgfillcolor_autogradient" : 0.0,
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s 140",
				"fontsize" : 11.595186999999999,
				"numinlets" : 1,
				"fontname" : "Arial",
				"numoutlets" : 1,
				"id" : "obj-136",
				"patching_rect" : [ 592.0, 625.0, 82.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band 141",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-137",
				"patching_rect" : [ 490.75, 631.0, 93.5, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgfillcolor_autogradient" : 0.0,
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s 141",
				"fontsize" : 11.595186999999999,
				"numinlets" : 1,
				"fontname" : "Arial",
				"numoutlets" : 1,
				"id" : "obj-138",
				"patching_rect" : [ 565.25, 595.0, 82.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band 130",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-139",
				"patching_rect" : [ 331.5, 667.0, 93.5, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgfillcolor_autogradient" : 0.0,
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s 130",
				"fontsize" : 11.595186999999999,
				"numinlets" : 1,
				"fontname" : "Arial",
				"numoutlets" : 1,
				"id" : "obj-140",
				"patching_rect" : [ 406.0, 631.0, 82.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band 131",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-141",
				"patching_rect" : [ 304.75, 637.0, 93.5, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgfillcolor_autogradient" : 0.0,
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s 131",
				"fontsize" : 11.595186999999999,
				"numinlets" : 1,
				"fontname" : "Arial",
				"numoutlets" : 1,
				"id" : "obj-142",
				"patching_rect" : [ 379.25, 601.0, 82.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band 120",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-111",
				"patching_rect" : [ 892.0, 531.0, 93.5, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgfillcolor_autogradient" : 0.0,
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s 120",
				"fontsize" : 11.595186999999999,
				"numinlets" : 1,
				"fontname" : "Arial",
				"numoutlets" : 1,
				"id" : "obj-112",
				"patching_rect" : [ 966.5, 495.0, 82.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band 121",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-113",
				"patching_rect" : [ 865.25, 501.0, 93.5, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgfillcolor_autogradient" : 0.0,
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s 121",
				"fontsize" : 11.595186999999999,
				"numinlets" : 1,
				"fontname" : "Arial",
				"numoutlets" : 1,
				"id" : "obj-114",
				"patching_rect" : [ 939.75, 465.0, 82.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band 110",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-115",
				"patching_rect" : [ 706.0, 537.0, 93.5, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgfillcolor_autogradient" : 0.0,
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s 110",
				"fontsize" : 11.595186999999999,
				"numinlets" : 1,
				"fontname" : "Arial",
				"numoutlets" : 1,
				"id" : "obj-116",
				"patching_rect" : [ 780.5, 501.0, 81.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band 111",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-117",
				"patching_rect" : [ 679.25, 507.0, 93.5, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgfillcolor_autogradient" : 0.0,
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s 111",
				"fontsize" : 11.595186999999999,
				"numinlets" : 1,
				"fontname" : "Arial",
				"numoutlets" : 1,
				"id" : "obj-118",
				"patching_rect" : [ 753.75, 471.0, 80.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band 100",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-119",
				"patching_rect" : [ 517.5, 543.0, 93.5, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgfillcolor_autogradient" : 0.0,
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s 100",
				"fontsize" : 11.595186999999999,
				"numinlets" : 1,
				"fontname" : "Arial",
				"numoutlets" : 1,
				"id" : "obj-120",
				"patching_rect" : [ 592.0, 507.0, 82.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band 101",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-121",
				"patching_rect" : [ 490.75, 513.0, 93.5, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgfillcolor_autogradient" : 0.0,
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s 101",
				"fontsize" : 11.595186999999999,
				"numinlets" : 1,
				"fontname" : "Arial",
				"numoutlets" : 1,
				"id" : "obj-122",
				"patching_rect" : [ 565.25, 477.0, 82.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band 90",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-123",
				"patching_rect" : [ 331.5, 549.0, 93.5, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgfillcolor_autogradient" : 0.0,
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s 90",
				"fontsize" : 11.595186999999999,
				"numinlets" : 1,
				"fontname" : "Arial",
				"numoutlets" : 1,
				"id" : "obj-124",
				"patching_rect" : [ 406.0, 513.0, 76.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band 91",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-125",
				"patching_rect" : [ 304.75, 519.0, 93.5, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgfillcolor_autogradient" : 0.0,
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s 91",
				"fontsize" : 11.595186999999999,
				"numinlets" : 1,
				"fontname" : "Arial",
				"numoutlets" : 1,
				"id" : "obj-126",
				"patching_rect" : [ 379.25, 483.0, 76.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band 80",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-95",
				"patching_rect" : [ 892.0, 408.0, 93.5, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgfillcolor_autogradient" : 0.0,
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s 80",
				"fontsize" : 11.595186999999999,
				"numinlets" : 1,
				"fontname" : "Arial",
				"numoutlets" : 1,
				"id" : "obj-96",
				"patching_rect" : [ 966.5, 372.0, 76.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band 81",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-97",
				"patching_rect" : [ 865.25, 378.0, 93.5, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgfillcolor_autogradient" : 0.0,
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s 81",
				"fontsize" : 11.595186999999999,
				"numinlets" : 1,
				"fontname" : "Arial",
				"numoutlets" : 1,
				"id" : "obj-98",
				"patching_rect" : [ 939.75, 342.0, 76.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band 70",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-99",
				"patching_rect" : [ 706.0, 414.0, 93.5, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgfillcolor_autogradient" : 0.0,
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s 70",
				"fontsize" : 11.595186999999999,
				"numinlets" : 1,
				"fontname" : "Arial",
				"numoutlets" : 1,
				"id" : "obj-100",
				"patching_rect" : [ 780.5, 378.0, 76.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band 71",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-101",
				"patching_rect" : [ 679.25, 384.0, 93.5, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgfillcolor_autogradient" : 0.0,
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s 71",
				"fontsize" : 11.595186999999999,
				"numinlets" : 1,
				"fontname" : "Arial",
				"numoutlets" : 1,
				"id" : "obj-102",
				"patching_rect" : [ 753.75, 348.0, 76.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band 60",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-103",
				"patching_rect" : [ 517.5, 420.0, 93.5, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgfillcolor_autogradient" : 0.0,
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s 60",
				"fontsize" : 11.595186999999999,
				"numinlets" : 1,
				"fontname" : "Arial",
				"numoutlets" : 1,
				"id" : "obj-104",
				"patching_rect" : [ 592.0, 384.0, 76.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band 61",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-105",
				"patching_rect" : [ 490.75, 390.0, 93.5, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgfillcolor_autogradient" : 0.0,
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s 61",
				"fontsize" : 11.595186999999999,
				"numinlets" : 1,
				"fontname" : "Arial",
				"numoutlets" : 1,
				"id" : "obj-106",
				"patching_rect" : [ 565.25, 354.0, 76.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band 50",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-107",
				"patching_rect" : [ 331.5, 426.0, 93.5, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgfillcolor_autogradient" : 0.0,
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s 50",
				"fontsize" : 11.595186999999999,
				"numinlets" : 1,
				"fontname" : "Arial",
				"numoutlets" : 1,
				"id" : "obj-108",
				"patching_rect" : [ 406.0, 390.0, 76.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band 51",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-109",
				"patching_rect" : [ 304.75, 396.0, 93.5, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgfillcolor_autogradient" : 0.0,
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s 51",
				"fontsize" : 11.595186999999999,
				"numinlets" : 1,
				"fontname" : "Arial",
				"numoutlets" : 1,
				"id" : "obj-110",
				"patching_rect" : [ 379.25, 360.0, 76.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "192.186.1.106",
				"presentation_linecount" : 2,
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-76",
				"patching_rect" : [ 36.0, 171.0, 85.0, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.556862745098039, 0.352941176470588, 0.082352941176471, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.556862745098039, 0.352941176470588, 0.082352941176471, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.556862745098039, 0.352941176470588, 0.082352941176471, 1.0 ],
				"bgfillcolor_autogradient" : 0.0,
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band 40",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-68",
				"patching_rect" : [ 892.0, 287.0, 93.5, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgfillcolor_autogradient" : 0.0,
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s 40",
				"fontsize" : 11.595186999999999,
				"numinlets" : 1,
				"fontname" : "Arial",
				"numoutlets" : 1,
				"id" : "obj-69",
				"patching_rect" : [ 966.5, 251.0, 76.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band 41",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-70",
				"patching_rect" : [ 865.25, 257.0, 93.5, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgfillcolor_autogradient" : 0.0,
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s 41",
				"fontsize" : 11.595186999999999,
				"numinlets" : 1,
				"fontname" : "Arial",
				"numoutlets" : 1,
				"id" : "obj-71",
				"patching_rect" : [ 939.75, 221.0, 76.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band 30",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-72",
				"patching_rect" : [ 706.0, 293.0, 93.5, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgfillcolor_autogradient" : 0.0,
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s 30",
				"fontsize" : 11.595186999999999,
				"numinlets" : 1,
				"fontname" : "Arial",
				"numoutlets" : 1,
				"id" : "obj-73",
				"patching_rect" : [ 780.5, 257.0, 76.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band 31",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-74",
				"patching_rect" : [ 679.25, 263.0, 93.5, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgfillcolor_autogradient" : 0.0,
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s 31",
				"fontsize" : 11.595186999999999,
				"numinlets" : 1,
				"fontname" : "Arial",
				"numoutlets" : 1,
				"id" : "obj-75",
				"patching_rect" : [ 753.75, 227.0, 76.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band 20",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-64",
				"patching_rect" : [ 517.5, 299.0, 93.5, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5,
				"bgfillcolor_autogradient" : 0.0
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s 20",
				"fontsize" : 11.595186999999999,
				"numinlets" : 1,
				"fontname" : "Arial",
				"numoutlets" : 1,
				"id" : "obj-65",
				"patching_rect" : [ 592.0, 263.0, 76.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band 21",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-66",
				"patching_rect" : [ 490.75, 269.0, 93.5, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5,
				"bgfillcolor_autogradient" : 0.0
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s 21",
				"fontsize" : 11.595186999999999,
				"numinlets" : 1,
				"fontname" : "Arial",
				"numoutlets" : 1,
				"id" : "obj-67",
				"patching_rect" : [ 565.25, 233.0, 76.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band 10",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-62",
				"patching_rect" : [ 331.5, 305.0, 93.5, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.529411764705882, 0.423529411764706, 0.572549019607843, 1.0 ],
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5,
				"bgfillcolor_autogradient" : 0.0
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s 10",
				"fontsize" : 11.595186999999999,
				"numinlets" : 1,
				"fontname" : "Arial",
				"numoutlets" : 1,
				"id" : "obj-63",
				"patching_rect" : [ 406.0, 269.0, 76.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band 11",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-60",
				"patching_rect" : [ 304.75, 275.0, 93.5, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.2, 0.450980392156863, 0.501960784313725, 1.0 ],
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5,
				"bgfillcolor_autogradient" : 0.0
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s 11",
				"fontsize" : 11.595186999999999,
				"numinlets" : 1,
				"fontname" : "Arial",
				"numoutlets" : 1,
				"id" : "obj-61",
				"patching_rect" : [ 379.25, 239.0, 75.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "udpsend 192.168.1.101 7110",
				"numinlets" : 1,
				"numoutlets" : 0,
				"id" : "obj-57",
				"patching_rect" : [ 517.5, 775.0, 164.0, 22.0 ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf host %s",
				"numinlets" : 1,
				"numoutlets" : 1,
				"id" : "obj-42",
				"patching_rect" : [ 36.0, 697.0, 87.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band 0",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-41",
				"patching_rect" : [ 198.5, 275.0, 93.5, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.2, 0.258823529411765, 0.501960784313725, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.2, 0.258823529411765, 0.501960784313725, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.2, 0.258823529411765, 0.501960784313725, 1.0 ],
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5,
				"bgfillcolor_autogradient" : 0.0
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "message",
				"text" : "/pi6/band",
				"numinlets" : 2,
				"numoutlets" : 1,
				"id" : "obj-35",
				"patching_rect" : [ 131.0, 171.0, 58.0, 22.0 ],
				"outlettype" : [ "" ],
				"gradient" : 1,
				"bgcolor" : [ 0.556862745098039, 0.352941176470588, 0.082352941176471, 1.0 ],
				"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_type" : "gradient",
				"bgfillcolor_color1" : [ 0.556862745098039, 0.352941176470588, 0.082352941176471, 1.0 ],
				"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
				"bgfillcolor_color" : [ 0.556862745098039, 0.352941176470588, 0.082352941176471, 1.0 ],
				"bgfillcolor_angle" : 270.0,
				"bgfillcolor_proportion" : 0.5,
				"bgfillcolor_autogradient" : 0.0
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "sprintf %s 0",
				"fontsize" : 11.595186999999999,
				"numinlets" : 1,
				"fontname" : "Arial",
				"numoutlets" : 1,
				"id" : "obj-32",
				"patching_rect" : [ 273.0, 239.0, 69.0, 22.0 ],
				"outlettype" : [ "" ]
			}

		}
 ],
	"lines" : [ 		{
			"patchline" : 			{
				"source" : [ "obj-149", 1 ],
				"destination" : [ "obj-76", 0 ],
				"order" : 1
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-149", 1 ],
				"destination" : [ "obj-76", 1 ],
				"order" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-145", 0 ],
				"destination" : [ "obj-149", 0 ],
				"order" : 1
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-144", 1 ],
				"destination" : [ "obj-35", 0 ],
				"order" : 1
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-144", 1 ],
				"destination" : [ "obj-35", 1 ],
				"order" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-145", 0 ],
				"destination" : [ "obj-144", 0 ],
				"order" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-139", 0 ],
				"destination" : [ "obj-57", 0 ],
				"midpoints" : [ 341.0, 740.0, 527.0, 740.0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-141", 0 ],
				"destination" : [ "obj-57", 0 ],
				"midpoints" : [ 314.25, 750.0, 527.0, 750.0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-135", 0 ],
				"destination" : [ "obj-57", 0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-137", 0 ],
				"destination" : [ "obj-57", 0 ],
				"midpoints" : [ 500.25, 752.0, 527.0, 752.0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-131", 0 ],
				"destination" : [ "obj-57", 0 ],
				"midpoints" : [ 715.5, 761.0, 527.0, 761.0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-133", 0 ],
				"destination" : [ "obj-57", 0 ],
				"midpoints" : [ 688.75, 758.0, 527.0, 758.0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-127", 0 ],
				"destination" : [ "obj-57", 0 ],
				"midpoints" : [ 901.5, 755.0, 527.0, 755.0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-129", 0 ],
				"destination" : [ "obj-57", 0 ],
				"midpoints" : [ 874.75, 756.0, 527.0, 756.0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-111", 0 ],
				"destination" : [ "obj-57", 0 ],
				"midpoints" : [ 901.5, 574.0, 676.0, 574.0, 676.0, 739.0, 527.0, 739.0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-113", 0 ],
				"destination" : [ "obj-57", 0 ],
				"midpoints" : [ 874.75, 574.0, 676.0, 574.0, 676.0, 745.0, 527.0, 745.0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-115", 0 ],
				"destination" : [ "obj-57", 0 ],
				"midpoints" : [ 715.5, 610.0, 676.0, 610.0, 676.0, 754.0, 527.0, 754.0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-117", 0 ],
				"destination" : [ "obj-57", 0 ],
				"midpoints" : [ 688.75, 610.0, 676.0, 610.0, 676.0, 751.0, 527.0, 751.0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-119", 0 ],
				"destination" : [ "obj-57", 0 ],
				"midpoints" : [ 527.0, 616.0, 562.0, 616.0, 562.0, 628.0, 589.0, 628.0, 589.0, 658.0, 610.0, 658.0, 610.0, 747.0, 527.0, 747.0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-121", 0 ],
				"destination" : [ "obj-57", 0 ],
				"midpoints" : [ 500.25, 616.0, 562.0, 616.0, 562.0, 628.0, 589.0, 628.0, 589.0, 658.0, 610.0, 658.0, 610.0, 746.0, 527.0, 746.0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-123", 0 ],
				"destination" : [ "obj-57", 0 ],
				"midpoints" : [ 341.0, 622.0, 289.0, 622.0, 289.0, 752.0, 527.0, 752.0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-125", 0 ],
				"destination" : [ "obj-57", 0 ],
				"midpoints" : [ 314.25, 622.0, 289.0, 622.0, 289.0, 744.0, 527.0, 744.0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-109", 0 ],
				"destination" : [ "obj-57", 0 ],
				"midpoints" : [ 314.25, 505.0, 289.0, 505.0, 289.0, 744.0, 527.0, 744.0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-107", 0 ],
				"destination" : [ "obj-57", 0 ],
				"midpoints" : [ 341.0, 505.0, 289.0, 505.0, 289.0, 744.0, 527.0, 744.0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-105", 0 ],
				"destination" : [ "obj-57", 0 ],
				"midpoints" : [ 500.25, 468.0, 676.0, 468.0, 676.0, 745.0, 527.0, 745.0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-103", 0 ],
				"destination" : [ "obj-57", 0 ],
				"midpoints" : [ 527.0, 468.0, 676.0, 468.0, 676.0, 749.0, 527.0, 749.0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-101", 0 ],
				"destination" : [ "obj-57", 0 ],
				"midpoints" : [ 688.75, 493.0, 676.0, 493.0, 676.0, 740.0, 527.0, 740.0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-99", 0 ],
				"destination" : [ "obj-57", 0 ],
				"midpoints" : [ 715.5, 493.0, 676.0, 493.0, 676.0, 744.0, 527.0, 744.0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-97", 0 ],
				"destination" : [ "obj-57", 0 ],
				"midpoints" : [ 874.75, 457.0, 676.0, 457.0, 676.0, 744.0, 527.0, 744.0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-95", 0 ],
				"destination" : [ "obj-57", 0 ],
				"midpoints" : [ 901.5, 467.0, 676.0, 467.0, 676.0, 744.0, 527.0, 744.0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-128", 0 ],
				"midpoints" : [ 140.5, 468.0, 676.0, 468.0, 676.0, 574.0, 925.0, 574.0, 925.0, 607.0, 976.0, 607.0 ],
				"order" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-130", 0 ],
				"midpoints" : [ 140.5, 585.0, 550.0, 585.0, 550.0, 577.0, 949.25, 577.0 ],
				"order" : 4
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-132", 0 ],
				"midpoints" : [ 140.5, 468.0, 676.0, 468.0, 676.0, 610.0, 748.0, 610.0, 748.0, 613.0, 790.0, 613.0 ],
				"order" : 8
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-134", 0 ],
				"midpoints" : [ 140.5, 469.0, 676.0, 469.0, 676.0, 574.0, 763.25, 574.0 ],
				"order" : 12
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-136", 0 ],
				"midpoints" : [ 140.5, 586.0, 550.0, 586.0, 550.0, 619.0, 601.5, 619.0 ],
				"order" : 16
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-138", 0 ],
				"midpoints" : [ 140.5, 586.0, 574.75, 586.0 ],
				"order" : 20
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-140", 0 ],
				"midpoints" : [ 140.5, 622.0, 376.0, 622.0, 376.0, 625.0, 415.5, 625.0 ],
				"order" : 24
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-142", 0 ],
				"midpoints" : [ 140.5, 585.0, 388.75, 585.0 ],
				"order" : 28
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-124", 0 ],
				"midpoints" : [ 140.5, 505.0, 415.5, 505.0 ],
				"order" : 25
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-126", 0 ],
				"midpoints" : [ 140.5, 469.0, 388.75, 469.0 ],
				"order" : 29
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-116", 0 ],
				"midpoints" : [ 140.5, 468.0, 739.0, 468.0, 739.0, 496.0, 790.0, 496.0 ],
				"order" : 9
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-120", 0 ],
				"midpoints" : [ 140.5, 469.0, 550.0, 469.0, 550.0, 502.0, 601.5, 502.0 ],
				"order" : 17
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-122", 0 ],
				"midpoints" : [ 140.5, 469.0, 574.75, 469.0 ],
				"order" : 21
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-118", 0 ],
				"midpoints" : [ 140.5, 468.0, 763.25, 468.0 ],
				"order" : 13
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-112", 0 ],
				"midpoints" : [ 140.5, 214.0, 862.0, 214.0, 862.0, 487.0, 976.0, 487.0 ],
				"order" : 1
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-114", 0 ],
				"midpoints" : [ 140.5, 214.0, 862.0, 214.0, 862.0, 451.0, 949.25, 451.0 ],
				"order" : 5
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-96", 0 ],
				"midpoints" : [ 140.5, 214.0, 862.0, 214.0, 862.0, 364.0, 976.0, 364.0 ],
				"order" : 2
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-98", 0 ],
				"midpoints" : [ 140.5, 214.0, 862.0, 214.0, 862.0, 328.0, 949.25, 328.0 ],
				"order" : 6
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-100", 0 ],
				"midpoints" : [ 140.5, 340.0, 739.0, 340.0, 739.0, 373.0, 790.0, 373.0 ],
				"order" : 10
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-102", 0 ],
				"midpoints" : [ 140.5, 340.0, 763.25, 340.0 ],
				"order" : 14
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-104", 0 ],
				"midpoints" : [ 140.5, 346.0, 550.0, 346.0, 550.0, 379.0, 601.5, 379.0 ],
				"order" : 18
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-106", 0 ],
				"midpoints" : [ 140.5, 340.0, 574.75, 340.0 ],
				"order" : 22
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-108", 0 ],
				"midpoints" : [ 140.5, 382.0, 415.5, 382.0 ],
				"order" : 26
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-110", 0 ],
				"midpoints" : [ 140.5, 346.0, 388.75, 346.0 ],
				"order" : 30
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-128", 0 ],
				"destination" : [ "obj-127", 1 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-130", 0 ],
				"destination" : [ "obj-129", 1 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-132", 0 ],
				"destination" : [ "obj-131", 1 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-134", 0 ],
				"destination" : [ "obj-133", 1 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-136", 0 ],
				"destination" : [ "obj-135", 1 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-138", 0 ],
				"destination" : [ "obj-137", 1 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-140", 0 ],
				"destination" : [ "obj-139", 1 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-142", 0 ],
				"destination" : [ "obj-141", 1 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-112", 0 ],
				"destination" : [ "obj-111", 1 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-114", 0 ],
				"destination" : [ "obj-113", 1 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-116", 0 ],
				"destination" : [ "obj-115", 1 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-118", 0 ],
				"destination" : [ "obj-117", 1 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-120", 0 ],
				"destination" : [ "obj-119", 1 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-122", 0 ],
				"destination" : [ "obj-121", 1 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-124", 0 ],
				"destination" : [ "obj-123", 1 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-126", 0 ],
				"destination" : [ "obj-125", 1 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-96", 0 ],
				"destination" : [ "obj-95", 1 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-98", 0 ],
				"destination" : [ "obj-97", 1 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-100", 0 ],
				"destination" : [ "obj-99", 1 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-102", 0 ],
				"destination" : [ "obj-101", 1 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-104", 0 ],
				"destination" : [ "obj-103", 1 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-106", 0 ],
				"destination" : [ "obj-105", 1 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-108", 0 ],
				"destination" : [ "obj-107", 1 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-110", 0 ],
				"destination" : [ "obj-109", 1 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-68", 0 ],
				"destination" : [ "obj-57", 0 ],
				"midpoints" : [ 901.5, 334.0, 676.0, 334.0, 676.0, 746.0, 527.0, 746.0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-70", 0 ],
				"destination" : [ "obj-57", 0 ],
				"midpoints" : [ 874.75, 334.0, 676.0, 334.0, 676.0, 744.0, 527.0, 744.0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-72", 0 ],
				"destination" : [ "obj-57", 0 ],
				"midpoints" : [ 715.5, 370.0, 676.0, 370.0, 676.0, 742.0, 527.0, 742.0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-74", 0 ],
				"destination" : [ "obj-57", 0 ],
				"midpoints" : [ 688.75, 370.0, 676.0, 370.0, 676.0, 745.0, 527.0, 745.0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-64", 0 ],
				"destination" : [ "obj-57", 0 ],
				"midpoints" : [ 527.0, 340.0, 676.0, 340.0, 676.0, 744.0, 527.0, 744.0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-66", 0 ],
				"destination" : [ "obj-57", 0 ],
				"midpoints" : [ 500.25, 340.0, 676.0, 340.0, 676.0, 744.0, 527.0, 744.0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-62", 0 ],
				"destination" : [ "obj-57", 0 ],
				"midpoints" : [ 341.0, 382.0, 289.0, 382.0, 289.0, 738.0, 527.0, 738.0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-60", 0 ],
				"destination" : [ "obj-57", 0 ],
				"midpoints" : [ 314.25, 382.0, 289.0, 382.0, 289.0, 741.0, 527.0, 741.0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-41", 0 ],
				"destination" : [ "obj-57", 0 ],
				"midpoints" : [ 208.0, 740.0, 527.0, 740.0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-76", 0 ],
				"destination" : [ "obj-42", 0 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-73", 0 ],
				"midpoints" : [ 140.5, 218.0, 738.0, 218.0, 738.0, 251.0, 790.0, 251.0 ],
				"order" : 11
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-75", 0 ],
				"midpoints" : [ 140.5, 212.0, 763.25, 212.0 ],
				"order" : 15
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-69", 0 ],
				"midpoints" : [ 140.5, 212.0, 924.0, 212.0, 924.0, 245.0, 976.0, 245.0 ],
				"order" : 3
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-71", 0 ],
				"midpoints" : [ 140.5, 212.0, 949.25, 212.0 ],
				"order" : 7
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-69", 0 ],
				"destination" : [ "obj-68", 1 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-71", 0 ],
				"destination" : [ "obj-70", 1 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-73", 0 ],
				"destination" : [ "obj-72", 1 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-75", 0 ],
				"destination" : [ "obj-74", 1 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-65", 0 ],
				"destination" : [ "obj-64", 1 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-65", 0 ],
				"midpoints" : [ 140.5, 224.0, 552.0, 224.0, 552.0, 257.0, 601.5, 257.0 ],
				"order" : 19
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-63", 0 ],
				"destination" : [ "obj-62", 1 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-63", 0 ],
				"midpoints" : [ 140.5, 224.0, 366.0, 224.0, 366.0, 263.0, 415.5, 263.0 ],
				"order" : 27
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-67", 0 ],
				"midpoints" : [ 140.5, 218.0, 574.75, 218.0 ],
				"order" : 23
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-67", 0 ],
				"destination" : [ "obj-66", 1 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-32", 0 ],
				"destination" : [ "obj-41", 1 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-32", 0 ],
				"midpoints" : [ 140.5, 224.0, 282.5, 224.0 ],
				"order" : 32
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-35", 0 ],
				"destination" : [ "obj-61", 0 ],
				"midpoints" : [ 140.5, 224.0, 388.75, 224.0 ],
				"order" : 31
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-61", 0 ],
				"destination" : [ "obj-60", 1 ]
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-42", 0 ],
				"destination" : [ "obj-57", 0 ],
				"midpoints" : [ 45.5, 763.0, 527.0, 763.0 ]
			}

		}
 ],
	"appversion" : 	{
		"major" : 8,
		"minor" : 2,
		"revision" : 0,
		"architecture" : "x64",
		"modernui" : 1
	}
,
	"classnamespace" : "box"
}
