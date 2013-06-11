$.jset.fn.registerGridDefinition('income', {
  	source: 'income', 
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
		$($.jset.fn.get_form_field(formid, 'payment_type')).change(function(){
			console.log('value: ' + $(this).val() + ' name: ' + $(this).attr('name'));
			($(this).val() == 3) ?	$.jset.fn.show_field(formid, 'due_date') : $.jset.fn.hide_field(formid, 'due_date');
		}).change();
		
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
	afterclickPgButtons : function(whichbutton, formid, rowid){
		console.log(formid);
		$($.jset.fn.get_form_field(formid, 'payment_type')).change();
	},
	grid: {
    	direction: 'rtl',
	    sortname: 'date',
	    sortorder: 'desc',
	    //scroll:false,
	    width: $(window).width() - 90,
	    height: $(window).height() - 193,
		footerrow : true,
		userDataOnFooter : true, 
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
