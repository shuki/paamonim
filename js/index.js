$(function(){
	var urlVars = $.getUrlVars();
	var searchDefaults = [];
	var gridOptions = {};
	var liveSettings = {};
	//$.dump(urlVars);
	$.each(urlVars, function(key, value){
		switch(value){
			case '_order_by_':
				gridOptions.sortname = urlVars[value];
				break;
			case '_order_direction_':
				gridOptions.sortorder = urlVars[value];
				break;
			default:
				var obj = {};
				obj.name = value;
				obj.value = decodeURIComponent(urlVars[value]);
				searchDefaults.push(obj);
		}
	});
	
	liveSettings.grid = gridOptions;
	liveSettings.search_default = searchDefaults;
	
	$.extend($.validator.messages, {
	  required: 'שדה חובה',
	  email: 'איימל לא תקין'
	});
	
	var windowWidth = $(window).width();
	var windowHeight = $(window).height();
	
	$.extend(true, $.jset.defaults, {
		control:{
			align: 'right',
			checkbox: {
				searchoptions:{
					value: {0:'לא', 1:'כן'},
				}
			},
			datepicker: {
				region: 'he'
			},
			selectbox:{
				align: 'right'
			},
			text:{
				align:'right'
			},
			textarea:{
				align:'right'
			},
			varchar:{
				align:'right'
			},
			editor:{
				align:'right',
				editoptions:{
					directionality : 'rtl'
				}
			}
		},
	upload_image:{
		max_width: '400'
		}
	}
);

//---------
	var expense = $('table[id="expense"]');
	var loan = $('table[id="loan"]');
	var income = $('table[id="income"]');
	/*var town = $('table[id="town"]');
	var country = $('table[id="country"]');
	var discount = $('table[id="discount"]');
	var unit = $('table[id="unit"]');*/
	
	$("#tabs").tabs();
	$("#tabs").height(windowHeight- 25);
	$("#tabs").width('98%');
	$("#tabs").bind("tabsshow", function(event, ui){
		//$.dump(ui);
		switch(ui.index)
		{
			case 1:
				if(!loan.jset('defined'))
					loan.jset($.jset.fn.getGridDefinition('loan'));
			break;
			case 2:
				if(!income.jset('defined'))
					income.jset($.jset.fn.getGridDefinition('income'));
			break;
			/*case 3:
				if(!town.jset('defined'))
					town.jset($.jset.fn.getGridDefinition('town'));
			break;
			case 4:
				if(!country.jset('defined'))
					country.jset($.jset.fn.getGridDefinition('country'));
			break;
			case 5:
				if(!discount.jset('defined'))
					discount.jset($.jset.fn.getGridDefinition('discount'));
			break;
			case 6:
				if(!unit.jset('defined'))
					unit.jset($.jset.fn.getGridDefinition('unit'));
			break;*/
			default:
		}
	});
	
	$.jset.defaults.grid_frame.height_offset = 165;
	
	expense.jset($.jset.fn.getGridDefinition('expense'));
});

