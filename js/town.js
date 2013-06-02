$.jset.fn.registerGridDefinition('town', {
  	source: 'town', 
	load_edit_record: true,
	export_options:{
		caption: '',
		title: 'ייצא לאקסל',
		buttonicon: 'ui-icon-star',
		position: 'last'
	},
	copy:{
		properties: {
			editCaption: 'העתק ישוב'
		},
		options: {
			title: 'העתק ישוב'
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
	    //sortname: 'name',
	    //sortorder: 'desc',
	    //scroll:false,
	    width: $(window).width() - 140,
	    height: $(window).height() - 240,
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
		},
		view:{
		}
	}
});