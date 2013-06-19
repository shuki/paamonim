<?php 
/*
 * jxset
 * Copyright (c) 2010 - 2013, Shuki Shukrun (shukrun.shuki at gmail.com).
 * Dual licensed under the MIT and GPL licenses
 * http://www.opensource.org/licenses/mit-license.php
 * http://www.gnu.org/licenses/gpl.html
 */
 include_once("autoload.php");
 $dir_pre = config::jxset;
 jset_page::create(config::jxset);
?>
<style>
	.ui-tabs { direction: rtl; }
	.ui-tabs .ui-tabs-nav li.ui-tabs-selected,
	.ui-tabs .ui-tabs-nav li.ui-state-default {float: right; }
	.ui-tabs .ui-tabs-nav li a { float: right; }
	
	table.EditTable tr {
    	background-color: #A9E2F3;
    	background-size:100%;
	}
	
</style>
<script src="<?php echo $dir_pre ?>jset/i18n/jset.locale-he.js" type="text/javascript"></script>
<script src="<?php echo $dir_pre ?>jset/i18n/grid.locale-he.js" type="text/javascript"></script>
<head>
<title>פעמונים</title>
<script src="js/expense.js" type="text/javascript"></script>
<script src="js/loan.js" type="text/javascript"></script>
<script src="js/income.js" type="text/javascript"></script>
<script src="js/mission.js" type="text/javascript"></script>
<script src="js/index.js" type="text/javascript"></script>
</head>

<body>
	<div id="tabs">
		<ul>
			<li><a href="#tabs-1">הוצאות</a></li>
			<li><a href="#tabs-2">הלוואות</a></li>
			<li><a href="#tabs-3">הכנסות</a></li>
			<li><a href="#tabs-4">משימות</a></li>
			<!--li><a href="#tabs-5">ארצות</a></li>
			<li><a href="#tabs-6">הנחות</a></li>
			<li><a href="#tabs-7">מחלקות</a></li-->
		</ul>
		<div id="tabs-1">
			<table id="expense"></table>
			<!--div style="height:10px"></div>
			<table id="house" border="1"></table-->
		</div>
		<div id="tabs-2">
			<table id="loan" border="1"></table>
		</div>
		<div id="tabs-3">
			<table id="income" border="1"></table>
		</div>
		<div id="tabs-4">
			<table id="mission" border="1"></table>
		</div>
		<!--div id="tabs-5">
			<table id="country" border="1"></table>
		</div>
		<div id="tabs-6">
			<table id="discount" border="1"></table>
		</div>
		<div id="tabs-7">
			<table id="unit" border="1"></table>
		</div-->
	</div>
	<!--table id="grid"></table-->
</body>
</html>