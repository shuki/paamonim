$(function(){
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
		}
	});

//---------
	var house = $('table[id="house"]');
	var people = $('table[id="people"]');
	var council = $('table[id="council"]');
	var town = $('table[id="town"]');
	var country = $('table[id="country"]');
	var discount = $('table[id="discount"]');
	var unit = $('table[id="unit"]');
	
	$("#tabs").tabs();
	$("#tabs").height(windowHeight- 40);
	$("#tabs").width('98%');
	$("#tabs").bind("tabsshow", function(event, ui){
		//$.dump(ui);
		switch(ui.index)
		{
			case 1:
				if(!people.jset('defined'))
					people.jset($.jset.fn.getGridDefinition('people'));
			break;
			case 2:
				if(!council.jset('defined'))
					council.jset($.jset.fn.getGridDefinition('council'));
			break;
			case 3:
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
			break;
			default:
		}
	});
	
	$.jset.defaults.grid_frame.height_offset = 165;
	
	house.jset($.jset.fn.getGridDefinition('house'));
//--------

/*		
	var grid = $('#grid');
	var settings = {
	  	source: 'house', //name of table, view or the actual sql that you wish to display in the grid
		//db_name_target: 'nisha',
		//db_remote_definitions: false,
		load_edit_record: true, //reload record before editting
		export_options:{
			caption: '',
			title: 'ייצא לאקסל',
			buttonicon: 'ui-icon-star',
			position: 'last'
		},
		copy:{
			properties: {
				editCaption: 'העתק רשומה'
			},
			options: {
				title: 'העתק שורה מסומנת'
			}
		},
		help:{
			hide: false,
			navButtonAdd: true,
			dialog: {
				autoOpen: false,
				title: 'הסבר',
				width: 600,
				position: 'top'
			},
			options: {
				caption:'',
				title:'הסבר', 
				buttonicon :'ui-icon-lightbulb', 
				position: 'last'
			}
		},
		columnChooser:{
			navButtonAdd: true,
			options: {
				caption: '',
				title: 'בחר עמודות',
				buttonicon: 'ui-icon-calculator',
				position: 'last'
			},
			multiselect:{
			    locale: {
			        addAll: 'הצג את כל העמודות',
			        removeAll: 'הסתר את כל העמודות',
			        itemsCount: 'עמודות מוצגות'
			    }
			},
			col:{
			    width: 420,
			    modal: true,
			    msel_opts: {dividerLocation: 0.5},
			    dialog_opts: {
			        minWidth: 470,
			        minHeight: 370,
			        show: 'blind',
			        hide: 'explode'
			    }
			}
		},
		beforeShowForm: function(formid){
		},
		loadCompleteInit: function(data){
		},
		beforeSubmit: function(postdata, formid){
			return [true];
		},
		beforeRequest: function(){
		},
	    grid: {
	    	direction: 'rtl',
		    //sortname: 'creation_date',
		   //sortorder: 'desc',
		    scroll:false,
		    width: windowWidth - 40,
		    height: windowHeight - 240,
			gridComplete: function(){
				//alert($('table.Application_Main').height());
			}
	  	},
	  	navigation:{
			options : {
				search: false,
				view: false
			},
			edit:{
			},
			add:{
			},
			del:{
			},
			search:{
				//
			},
			view:{
			}
		}

	};
	
	grid.jset(settings);*/
});

