$.jset.fn.registerGridDefinition('expense', {
  	source: 'expense', 
	load_edit_record: true,
	export_options:{
		caption: '',
		title: 'ייצא לאקסל',
		buttonicon: 'ui-icon-star',
		position: 'last'
	},
	copy:{
		properties: {
			editCaption: 'העתק הוצאה'
		},
		options: {
			title: 'העתק הוצאה'
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
		    //modal: true,
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
	afterShowForm: function(formid){
		$($.jset.fn.get_form_field(formid, 'amount')).focus();
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
	    sortname: 'created_on',
	    sortorder: 'desc',
	    //scroll:false,
	    width: $(window).width() - 90,
	    height: $(window).height() - 170,
		gridComplete: function(){
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
