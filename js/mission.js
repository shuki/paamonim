$.jset.fn.registerGridDefinition('mission', {
	  	source: 'mission',
		load_edit_record: true, 
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
			},
			showFormInit: function(formid, source_id){
				var grid = $.jset.fn.get_grid_by_formid(formid);
				$($.jset.fn.get_form_field(formid, 'created_on')).val('');
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
		afterShowForm: function(formid){
			$($.jset.fn.get_form_field(formid, 'description')).focus();
		},
		beforeShowForm: function(formid){
			/*var grid = $.jset.fn.get_grid_by_formid(formid);
			console.log(grid.data('form_action'));
			if(grid.data('form_action') == 'add' || grid.data('form_action') == 'copy')
			{
				$.ajaxSetup({async:false});
				$.jset.fn.get_rows(grid, 
					'select if(max(cast(name as signed)) is null, 1, max(cast(name as signed)) + 1) as next_number from mission',
					function(data){
						$.ajaxSetup({async:true});
						$($.jset.fn.get_form_field(formid, 'name')).val(data.length ? data[0].next_number : '');
				});
			}*/
		},
	    grid: {
	    		direction: 'rtl',
				sortname: 'due_date',
				sortorder: 'desc',
			    width: $(window).width() - 90,
			    height: $(window).height() - 193,
				footerrow : true,
				userDataOnFooter : true
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

	});