-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.16 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL version:             7.0.0.4156
-- Date/time:                    2013-06-18 19:05:23
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping structure for table paamonim.jset_column
DROP TABLE IF EXISTS `jset_column`;
CREATE TABLE IF NOT EXISTS `jset_column` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(10) unsigned NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `index` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `control` varchar(45) DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT NULL,
  `readonly` tinyint(1) DEFAULT NULL,
  `edithidden` tinyint(1) unsigned DEFAULT NULL,
  `noedit` tinyint(1) unsigned DEFAULT NULL,
  `unsortable` tinyint(1) unsigned DEFAULT NULL,
  `position` smallint(5) DEFAULT NULL,
  `rowpos` tinyint(4) DEFAULT NULL,
  `rowlabel` varchar(200) DEFAULT NULL,
  `default_value` varchar(2000) DEFAULT NULL,
  `search_default` varchar(100) DEFAULT NULL,
  `width` varchar(20) DEFAULT NULL,
  `usize` varchar(20) DEFAULT NULL,
  `height` varchar(20) DEFAULT NULL,
  `list` varchar(4000) DEFAULT NULL,
  `src` varchar(200) DEFAULT NULL,
  `override` varchar(200) DEFAULT NULL,
  `help` varchar(2000) DEFAULT NULL,
  `validation` varchar(4000) DEFAULT NULL,
  `aggregate` varchar(200) DEFAULT NULL,
  `object` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `parent` (`parent`,`name`),
  CONSTRAINT `FK_jset_table_parent` FOREIGN KEY (`parent`) REFERENCES `jset_table` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=600 DEFAULT CHARSET=utf8;

-- Dumping data for table paamonim.jset_column: ~124 rows (approximately)
DELETE FROM `jset_column`;
/*!40000 ALTER TABLE `jset_column` DISABLE KEYS */;
INSERT INTO `jset_column` (`id`, `parent`, `name`, `index`, `title`, `control`, `hidden`, `readonly`, `edithidden`, `noedit`, `unsortable`, `position`, `rowpos`, `rowlabel`, `default_value`, `search_default`, `width`, `usize`, `height`, `list`, `src`, `override`, `help`, `validation`, `aggregate`, `object`) VALUES
	(17, 3, 'source', NULL, 'Source', 'textarea', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', '8', 'v_source', NULL, NULL, 'The data source of this record.', NULL, NULL, NULL),
	(18, 3, 'target', NULL, 'Target', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'v_target', NULL, NULL, 'The data target of this record.', NULL, NULL, NULL),
	(26, 4, 'parent', NULL, 'Parent', 'intexact', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(35, 3, 'help', 'help_table', 'Help', 'editor', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Help about the jset_table grid as a whole. It is available by pressing the lamp button on the grid.', NULL, NULL, NULL),
	(36, 3, 'title', 'title_table', 'Title', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '40', NULL, NULL, NULL, NULL, 'The title of the grid using this record as it\'s source.', NULL, NULL, NULL),
	(37, 3, 'id', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(38, 3, 'name', NULL, 'Name', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '40', NULL, NULL, NULL, NULL, 'The name of this jset_table record.', NULL, NULL, NULL),
	(70, 3, 'description', NULL, 'Description', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100', NULL, NULL, NULL, NULL, 'Description of this record, free text.', NULL, NULL, NULL),
	(128, 13, 'id', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(129, 13, 'parent', NULL, NULL, 'intexact', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(131, 13, 'help', NULL, 'Tip', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(138, 13, 'field', NULL, 'Field', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(165, 19, 'id', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(166, 19, 'parent', NULL, NULL, 'intexact', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(167, 19, 'before_insert', NULL, 'Before Insert', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Php method(s) to execute before inserting a record. Methods are separated by the tilda (~) character.', NULL, NULL, NULL),
	(168, 19, 'after_insert', NULL, 'After Insert', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Php method(s) to execute after inserting a record. Methods are separated by the tilda (~) character.', NULL, NULL, NULL),
	(169, 19, 'before_select', NULL, 'Before Select', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not in use.', NULL, NULL, NULL),
	(170, 19, 'after_select', NULL, 'After Select', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not in use yet.', NULL, NULL, NULL),
	(171, 19, 'before_update', NULL, 'Before Update', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Php method(s) to execute before updating a record. Methods are separated by the tilda (~) character.', NULL, NULL, NULL),
	(172, 19, 'after_update', NULL, 'After Update', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Php method(s) to execute after updating a record. Methods are separated by the tilda (~) character.', NULL, NULL, NULL),
	(173, 19, 'before_delete', NULL, 'Before Delete', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Php method(s) to execute before deleting record(s). Methods are separated by the tilda (~) character.', NULL, NULL, NULL),
	(174, 19, 'after_delete', NULL, 'After Delete', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Php method(s) to execute after deleting record(s). Methods are separated by the tilda (~) character.', NULL, NULL, NULL),
	(180, 4, 'id', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(181, 4, 'name', NULL, 'Name', NULL, 0, 0, 0, 0, NULL, NULL, 10, NULL, NULL, NULL, NULL, '20', NULL, NULL, NULL, NULL, 'The name of this field. That should match the name of the field in the table or view.', NULL, NULL, NULL),
	(182, 4, 'index', NULL, 'Index', NULL, 0, 0, 0, 0, NULL, NULL, 10, NULL, NULL, NULL, NULL, '20', NULL, NULL, NULL, NULL, 'When we have more than one grid on a page and a field have the same name on different grids, use this attribute to set a different id for a field.', NULL, NULL, NULL),
	(183, 4, 'title', NULL, 'Title', NULL, 0, 0, 0, 0, NULL, NULL, 10, NULL, NULL, NULL, NULL, '20', NULL, NULL, NULL, NULL, 'The title of the field.', NULL, NULL, NULL),
	(184, 4, 'control', NULL, 'Control', NULL, 0, 0, 0, 0, NULL, NULL, 20, NULL, NULL, NULL, NULL, '20', NULL, NULL, NULL, NULL, 'The gui control for this field. The full list of available controls can be found in the file jset/jquery/js/jquery.jset.components.js.', NULL, NULL, NULL),
	(185, 4, 'hidden', NULL, 'Hidden', 'checkbox', 0, 0, 0, 0, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Set to hide the field.', NULL, NULL, NULL),
	(186, 4, 'edithidden', NULL, 'Edit Hidden', 'checkbox', 0, 0, 0, 0, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'In conjunction with the hidden attribute, let an hidden filed be editable in the form.', NULL, NULL, NULL),
	(187, 4, 'noedit', NULL, 'No Edit', 'checkbox', 0, 0, 0, 0, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Set to hide the field in the form, but show the field in the grid.', NULL, NULL, NULL),
	(188, 4, 'list', NULL, 'List', 'textarea', 0, 0, 0, 0, 0, NULL, 20, NULL, NULL, NULL, NULL, '80', '4', NULL, NULL, NULL, 'For the selectbox control, specify the name of the table or view of the control items.', NULL, NULL, NULL),
	(189, 4, 'rowpos', NULL, 'Row Position', NULL, 0, 0, 0, 0, NULL, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Specifying fields with the same rowpos will cause them to be displayed on the same row in the edit form.', NULL, NULL, NULL),
	(190, 4, 'rowlabel', NULL, 'Row Label', NULL, 0, 0, 0, 0, NULL, NULL, 40, NULL, NULL, NULL, NULL, '60', NULL, NULL, NULL, NULL, 'When using the rowpos attribute, this attribute sets the row lable.', NULL, NULL, NULL),
	(191, 4, 'position', NULL, 'Position', NULL, 0, 0, 0, 0, NULL, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Control the order of the fields in the grid and in the form. By default fields are shown in the order of their appearance in the table/view of the source. The list is furthur ordered by the numbers in this attribute.', NULL, NULL, NULL),
	(192, 4, 'readonly', NULL, 'Read Only', 'checkbox', 0, 0, 0, 0, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sets a field to be readonly.', NULL, NULL, NULL),
	(193, 4, 'default_value', NULL, 'Default Value', NULL, 0, 0, 0, 0, NULL, NULL, 70, NULL, NULL, NULL, NULL, '100', NULL, NULL, NULL, NULL, 'The default value for this field when creating a new record.', NULL, NULL, NULL),
	(194, 4, 'search_default', NULL, 'Default Filter', NULL, 0, 0, 0, 0, NULL, NULL, 72, NULL, NULL, NULL, NULL, '100', NULL, NULL, NULL, NULL, 'The default filter for this field.', NULL, NULL, NULL),
	(195, 4, 'override', NULL, 'Override', NULL, 0, 0, 0, 0, 0, NULL, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(196, 4, 'width', NULL, 'Column Width', NULL, 0, 0, 0, 0, NULL, NULL, 60, NULL, NULL, NULL, NULL, '10', NULL, NULL, NULL, NULL, 'The width of the field in grid view. Note that the width is relative to the other fields in the grid. The default width is 80. Specifying a number greater than 80 will increase the width and vise versa.', NULL, NULL, NULL),
	(197, 4, 'usize', NULL, 'Field Width', NULL, 0, 0, 0, 0, NULL, NULL, 60, NULL, NULL, NULL, NULL, '10', NULL, NULL, NULL, NULL, 'The width of the field in the edit form.', NULL, NULL, NULL),
	(198, 4, 'height', NULL, 'Field Height', NULL, 0, 0, 0, 0, NULL, NULL, 60, NULL, NULL, NULL, NULL, '10', NULL, NULL, NULL, NULL, 'The height of this field\'s control in the form.', NULL, NULL, NULL),
	(199, 4, 'src', NULL, 'Source Url', NULL, 0, 0, 0, 0, NULL, NULL, 20, NULL, NULL, NULL, NULL, '50', NULL, NULL, NULL, NULL, 'For the grid_frame control the url of the page to be shown.', NULL, NULL, NULL),
	(200, 4, 'help', NULL, 'Help', 'textarea', 0, 0, 0, 0, NULL, NULL, 90, NULL, NULL, NULL, NULL, '120', '4', NULL, NULL, NULL, 'The help text for this field. The text is shown in the edit and view forms when we mouse over the field\'s title.', NULL, NULL, NULL),
	(201, 4, 'validation', NULL, 'Validation', 'textarea', 0, 0, 0, 0, NULL, NULL, 80, NULL, NULL, NULL, NULL, '120', '4', NULL, NULL, NULL, 'Validation rules using the jquery validator plugin syntax.', NULL, NULL, NULL),
	(202, 4, 'aggregate', NULL, 'Aggregate', NULL, 0, 0, 0, 0, 0, NULL, 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Aggregation function to perform on the column, to be displayed on the footer row of the grid (if present).', NULL, NULL, NULL),
	(204, 20, 'active', NULL, 'Active', 'checkbox', 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(206, 20, 'host', NULL, 'Host', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '50', NULL, NULL, NULL, NULL, 'IP address or domain of the host.', NULL, NULL, NULL),
	(207, 20, 'id', NULL, NULL, NULL, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(208, 20, 'name', NULL, 'Name', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '50', NULL, NULL, NULL, NULL, 'Name of the host, free text.', NULL, NULL, NULL),
	(209, 20, 'password', NULL, 'Password', 'password', 1, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '50', NULL, NULL, NULL, NULL, 'Database user password.', NULL, NULL, NULL),
	(210, 20, 'user', NULL, 'User', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '50', NULL, NULL, NULL, NULL, 'Database user name.', NULL, NULL, NULL),
	(217, 20, 'db_name', NULL, 'Database', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '50', NULL, NULL, NULL, NULL, 'Database name.', NULL, NULL, NULL),
	(218, 3, 'system', NULL, 'System', 'checkbox', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '0', '30', NULL, NULL, NULL, NULL, NULL, 'If this is a system table, check it.', NULL, NULL, NULL),
	(227, 24, 'id', NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(228, 24, 'name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(229, 24, 'integer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(230, 24, 'boolean', NULL, 'Boolean', 'checkbox', 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(231, 24, 'text', NULL, NULL, 'textarea', 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '50', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(232, 24, 'decimal', NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'required:true', NULL, NULL),
	(233, 24, 'picture', NULL, NULL, 'upload_image', 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(234, 24, 'select', NULL, NULL, 'selectbox', 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'v_list_control', NULL, NULL, NULL, NULL, NULL, NULL),
	(235, 24, 'video', NULL, NULL, 'upload_video', 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(236, 24, 'multiselect', NULL, NULL, 'multiselect', 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'v_list_control', NULL, NULL, NULL, NULL, NULL, NULL),
	(237, 24, 'date', NULL, NULL, 'date', 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(275, 4, 'unsortable', NULL, 'Unsortable', 'checkbox', 0, 0, 0, 0, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Check this field if you wish this column to not be sortable.', NULL, NULL, NULL),
	(278, 4, 'object', NULL, 'Object', 'textarea', 0, 0, 0, 0, 0, NULL, 100, NULL, NULL, NULL, NULL, '120', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(279, 3, 'validation', NULL, 'Validation', 'textarea', 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '100', '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(280, 28, 'id', NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(281, 28, 'category', NULL, 'קטגוריה', 'selectbox', 1, 0, 0, 1, 0, NULL, 100, NULL, NULL, NULL, '40', NULL, NULL, 'mission_category', NULL, NULL, 'קטגורית המשימה', NULL, NULL, NULL),
	(282, 28, 'name', NULL, 'סעיף', NULL, 0, 1, 0, 0, 0, NULL, 100, NULL, NULL, NULL, '20', '3', NULL, NULL, NULL, NULL, 'סעיף מספר למשימה. ', NULL, NULL, NULL),
	(284, 28, 'estimated_hours', NULL, 'תמחור', NULL, 1, 0, 0, 0, 0, NULL, 110, NULL, NULL, NULL, '25', '3', NULL, NULL, NULL, NULL, 'הצעת מחיר בשעות, ימולא על ידי המפתח לאחר שהמשימה אופיינה.', NULL, NULL, NULL),
	(285, 28, 'approved', NULL, 'מאושר?', 'checkbox', 1, 0, 0, 0, 0, NULL, 110, NULL, NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, 'הצעת המחיר מאושרת.\nהשדה יסומן לציין שהצעת המחיר מאושרת ואפשר להתחיל את תהליך הפיתוח', NULL, NULL, NULL),
	(286, 28, 'approved_date', NULL, 'תאריך אישור', NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(287, 28, 'due_date', NULL, 'תאריך משוער', NULL, 0, 0, 0, 0, 0, NULL, 100, NULL, 'fx: db_utils::current_date()', NULL, '40', NULL, NULL, NULL, NULL, NULL, 'תאריך משוער לביצוע המשימה.', NULL, NULL, NULL),
	(288, 28, 'delivery_date', NULL, 'תאריך ביצוע', NULL, 0, 0, 0, 0, 0, NULL, 100, NULL, NULL, NULL, '40', NULL, NULL, NULL, NULL, NULL, 'התאריך בו בוצעה המשימה.', NULL, NULL, NULL),
	(289, 28, 'invoice_number', NULL, 'חשבונית', NULL, 1, 0, 0, 1, 0, NULL, 120, NULL, NULL, NULL, '30', '3', NULL, NULL, NULL, NULL, 'ימולא על ידי המפתח לציין באיזו חשבונית חוייבה העבודה על המשימה', NULL, NULL, NULL),
	(290, 28, 'status', NULL, 'סטטוס', 'selectbox', 0, 0, 0, 0, 0, NULL, 100, NULL, '1', NULL, '40', NULL, NULL, 'mission_status', NULL, NULL, 'סטטוסי המשימה:\n\nאופיין - המשימה אופיינה\nטופל - המשימה טופלה\nלא הושלם - המשימה לא הושלמה', NULL, NULL, NULL),
	(292, 28, 'comments', NULL, 'ביצוע', 'textarea', 0, 0, 0, 0, 0, NULL, 124, NULL, NULL, NULL, '180', '160', '5', NULL, NULL, NULL, 'הערות על ביצוע המשימה.', NULL, NULL, NULL),
	(296, 28, 'picture', NULL, 'תמונה', 'upload_image', 1, 0, 0, 0, 0, NULL, 126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'צרף תמונה', NULL, NULL, NULL),
	(299, 28, 'created_on', NULL, 'זמן יצירה', 'timestamp', 1, 0, 0, 1, 0, NULL, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'הזמן בו נוצרה המשימה', NULL, NULL, NULL),
	(302, 28, 'priority', NULL, 'עדיפות', 'selectbox', 0, 0, 0, 0, 0, NULL, 100, NULL, '1', NULL, '30', NULL, NULL, 'v_priority', NULL, NULL, 'עדיפות המשימה:\n\nרגילה או דחופה', NULL, NULL, NULL),
	(303, 28, 'actual_hours', NULL, 'חיוב', NULL, 1, 0, 0, 0, 0, NULL, 110, NULL, NULL, NULL, '20', '3', NULL, NULL, NULL, NULL, 'חיוב בפועל עבור המשימה', NULL, NULL, NULL),
	(552, 24, 'char', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(553, 24, 'image', NULL, NULL, 'upload_file', 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(554, 24, 'link', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(555, 24, 'html', NULL, NULL, 'editor', 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(559, 24, 'multicheckbox', NULL, NULL, 'multicheckbox', 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'v_list_control', NULL, NULL, NULL, NULL, NULL, NULL),
	(560, 25, 'id', NULL, '#', NULL, 1, 0, 0, 0, 0, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(561, 25, 'created_on', NULL, NULL, 'datetime', 0, 0, 0, 0, 0, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(562, 25, 'category', NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(563, 25, 'paid', NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(564, 25, 'invoice_number', NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(565, 25, 'due_date', NULL, 'תאריך', NULL, 1, 0, 1, 0, 0, NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(566, 25, 'date', 'date_expense', 'תאריך', NULL, 0, 0, 0, 0, 0, NULL, 20, NULL, 'fx: db_utils::current_date()', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(567, 25, 'provider', NULL, 'ספק', NULL, 0, 0, 0, 0, 0, NULL, 40, NULL, NULL, NULL, NULL, '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(568, 25, 'amount', NULL, 'סכום', 'currency', 0, 0, 0, 0, 0, NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sum(`amount`)', NULL),
	(569, 25, 'comments', NULL, 'הערות', 'textarea', 0, 0, 0, 0, 0, NULL, 70, NULL, NULL, NULL, NULL, '100', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(570, 25, 'picture', NULL, 'תמונה', 'upload_image', 1, 0, 1, 0, 0, NULL, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(571, 25, 'payment_type', NULL, 'סוג תשלום', 'selectbox', 0, 0, 0, 0, 0, NULL, 30, NULL, '1', NULL, NULL, NULL, NULL, 'select tid as id, name from jset_list where type = \'payment_type\'', NULL, NULL, NULL, NULL, NULL, NULL),
	(572, 26, 'amount', NULL, 'סכום', 'currency', 0, 0, 0, 0, 0, NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sum(`amount`)', NULL),
	(573, 26, 'category', NULL, NULL, NULL, 1, 0, 0, 0, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(574, 26, 'comments', NULL, 'הערות', 'textarea', 0, 0, 0, 0, 0, NULL, 70, NULL, NULL, NULL, NULL, '100', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(575, 26, 'created_on', NULL, NULL, 'datetime', 1, 0, 0, 0, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(576, 26, 'date', 'date_loan', 'תאריך', NULL, 0, 0, 0, 0, 0, NULL, 20, NULL, 'fx: db_utils::current_date()', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(577, 26, 'due_date', NULL, 'תאריך', NULL, 1, 0, 1, 0, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(578, 26, 'id', NULL, '#', NULL, 1, 0, 0, 0, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(579, 26, 'invoice_number', NULL, NULL, NULL, 1, 0, 0, 0, NULL, NULL, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(580, 26, 'paid', NULL, NULL, NULL, 1, 0, 0, 0, NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(581, 26, 'payment_type', NULL, 'סוג תשלום', 'selectbox', 0, 0, 0, 0, NULL, NULL, 30, NULL, '1', NULL, NULL, NULL, NULL, 'select tid as id, name from jset_list where type = \'payment_type\'', NULL, NULL, NULL, NULL, NULL, NULL),
	(582, 26, 'picture', NULL, 'תמונה', 'upload_image', 1, 0, 0, 0, 0, NULL, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(583, 26, 'provider', NULL, 'ספק', NULL, 0, 0, 0, 0, NULL, NULL, 40, NULL, NULL, NULL, NULL, '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(587, 27, 'amount', NULL, 'סכום', 'currency', 0, 0, 0, 0, 0, NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sum(`amount`)', NULL),
	(588, 27, 'category', NULL, NULL, NULL, 1, 0, 0, 0, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(589, 27, 'comments', NULL, 'הערות', 'textarea', 0, 0, 0, 0, 0, NULL, 70, NULL, NULL, NULL, NULL, '100', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(590, 27, 'created_on', NULL, NULL, 'datetime', 1, 0, 0, 0, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(591, 27, 'date', 'date_income', 'תאריך', NULL, 0, 0, 0, 0, 0, NULL, 20, NULL, 'fx: db_utils::current_date()', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(592, 27, 'due_date', NULL, 'תאריך', NULL, 1, 0, 1, 0, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(593, 27, 'id', NULL, '#', NULL, 1, 0, 0, 0, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(594, 27, 'invoice_number', NULL, NULL, NULL, 1, 0, 0, 0, NULL, NULL, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(595, 27, 'paid', NULL, NULL, NULL, 1, 0, 0, 0, NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(596, 27, 'payment_type', NULL, 'סוג תשלום', 'selectbox', 0, 0, 0, 0, NULL, NULL, 30, NULL, '1', NULL, NULL, NULL, NULL, 'select tid as id, name from jset_list where type = \'payment_type\'', NULL, NULL, NULL, NULL, NULL, NULL),
	(597, 27, 'picture', NULL, 'תמונה', 'upload_image', 1, 0, 0, 0, NULL, NULL, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(598, 27, 'provider', NULL, 'ספק', NULL, 0, 0, 0, 0, NULL, NULL, 40, NULL, NULL, NULL, NULL, '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(599, 28, 'description', NULL, 'תאור', 'textarea', 0, 0, 0, 0, 0, NULL, 122, NULL, NULL, NULL, '180', '160', '5', NULL, NULL, NULL, 'תאור המשימה.\n', NULL, NULL, NULL);
/*!40000 ALTER TABLE `jset_column` ENABLE KEYS */;


-- Dumping structure for table paamonim.jset_table
DROP TABLE IF EXISTS `jset_table`;
CREATE TABLE IF NOT EXISTS `jset_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `source` varchar(4000) DEFAULT NULL,
  `target` varchar(100) DEFAULT NULL,
  `help` text,
  `validation` varchar(8000) DEFAULT NULL,
  `system` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- Dumping data for table paamonim.jset_table: ~10 rows (approximately)
DELETE FROM `jset_table`;
/*!40000 ALTER TABLE `jset_table` DISABLE KEYS */;
INSERT INTO `jset_table` (`id`, `name`, `description`, `title`, `source`, `target`, `help`, `validation`, `system`) VALUES
	(3, 'jset_table', 'Manage grid definition', 'Tables', 'jset_table', 'jset_table', '<div>This grid let you define data objects to be used by grids in an application.</div>', NULL, 1),
	(4, 'jset_column', NULL, 'Columns', 'jset_column', 'jset_column', 'This grid let you define attributes for each field in a grid. Help on each attribute\'s meaning is available in edit and view modes by moving the mouse over an attribute name.', NULL, 1),
	(13, 'jset_help', NULL, 'Help Tips', 'v_jset_help', 'jset_column', NULL, NULL, 1),
	(19, 'jset_event', NULL, 'Events', 'jset_event', 'jset_event', 'This grid let you define events for a grid.<br />An event is a php method that can be set to run on the following situations:<br /><br />before insert<br />after insert<br />before select<br />after select<br />before update<br />after update<br />before delete<br />after delete<br /><br />', NULL, 1),
	(20, 'jset_host', NULL, 'Hosts', 'jset_host', 'jset_host', 'This grid let you define credentials for accessing projects.', NULL, 1),
	(24, 'demo', NULL, NULL, 'demo', 'demo', '<div>&nbsp;</div>', NULL, 0),
	(25, 'expense', 'הוצאות', NULL, 'expense', 'expense', '<div>&nbsp;</div>', NULL, 0),
	(26, 'loan', NULL, NULL, 'loan', 'loan', NULL, NULL, 0),
	(27, 'income', NULL, NULL, 'income', 'income', NULL, NULL, 0),
	(28, 'mission', NULL, NULL, 'mission', 'mission', '<div style="text-align: right;" dir="rtl">\n<h1>משימות לביצוע במערכת סופרסטאר</h1>\n</div>\n<div style="text-align: right;" dir="rtl">\n<h2>תהליך הגדרת וביצוע משימה</h2>\n</div>\n<div style="text-align: right;" dir="rtl">משימה נוצרת כשזוהה צורך בתיקון, שינוי או הרחבה של המערכת.</div>\n<div style="text-align: right;" dir="rtl">\n<h3>שלב ראשון</h3>\n</div>\n<div style="text-align: right;" dir="rtl">המשימה תאופיין ותתווסף לרשימת המשימות בסטטוס <em><strong>אופיין</strong></em>.</div>\n<div style="text-align: right;" dir="rtl">\n<div style="text-align: right;" dir="rtl">\n<h3>שלב שני</h3>\n</div>\n</div>\n<div style="text-align: right;" dir="rtl">המפתח יקבל את האיפיון ויתבקש לתת הצעת מחיר.</div>\n<div style="text-align: right;" dir="rtl">המפתח ירשום את הערכת זמן העבודה לביצוע המשימה, בשעות, בשדה <strong>תמחור</strong> וישנה את הסטטוס ל<em><strong>הצעת מחיר</strong></em>.</div>\n<div style="text-align: right;" dir="rtl">\n<h3>שלב שלישי</h3>\n</div>\n<div style="text-align: right;" dir="rtl">פול תתבקש לאשר הצעות מחיר. האישור יעשה על ידי סימון השדה <strong>אושר?</strong>.</div>\n<div style="text-align: right;" dir="rtl">\n<h3>שלב רביעי</h3>\n</div>\n<div style="text-align: right;" dir="rtl">המפתח יפתח את המשימות שאושרו, יעלה את העידכונים אל שרת הפיתוח וישנה את הסטטוס ל<em><strong>טופל</strong></em>.</div>\n<div style="text-align: right;" dir="rtl">\n<h3>שלב חמישי</h3>\n</div>\n<div style="text-align: right;" dir="rtl">ענת תבדוק את המשימות שטופלו ותסמן משימות שעובדות כהלכה בסטטוס <em><strong>נבדק.</strong></em></div>\n<div style="text-align: right;" dir="rtl">משימות שלא עובדות כהלכה יסומנו בסטטוס <em><strong>טיפול חוזר</strong></em>. בשדה <strong>הערות </strong>יכתב מדוע המשימה נשלחה לטיפול חוזר.</div>\n<div style="text-align: right;" dir="rtl">\n<h3>שלב שישי</h3>\n</div>\n<div style="text-align: right;" dir="rtl">המפתח יעלה הפיתוחים שנבדקו אל שרת העבודה וישנה את הסטטוס ל<em><strong>בוצע</strong></em>.</div>\n<div style="text-align: right;" dir="rtl">&nbsp;</div>', NULL, 0);
/*!40000 ALTER TABLE `jset_table` ENABLE KEYS */;


-- Dumping structure for table paamonim.lists
DROP TABLE IF EXISTS `lists`;
CREATE TABLE IF NOT EXISTS `lists` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table paamonim.lists: ~2 rows (approximately)
DELETE FROM `lists`;
/*!40000 ALTER TABLE `lists` DISABLE KEYS */;
INSERT INTO `lists` (`id`, `value`, `name`, `type`) VALUES
	(1, 1, 'רגילה', 'priority'),
	(2, 50, 'דחופה', 'priority');
/*!40000 ALTER TABLE `lists` ENABLE KEYS */;


-- Dumping structure for table paamonim.mission_category
DROP TABLE IF EXISTS `mission_category`;
CREATE TABLE IF NOT EXISTS `mission_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table paamonim.mission_category: ~6 rows (approximately)
DELETE FROM `mission_category`;
/*!40000 ALTER TABLE `mission_category` DISABLE KEYS */;
INSERT INTO `mission_category` (`id`, `name`) VALUES
	(1, 'רשות'),
	(2, 'מערכת השמות'),
	(3, 'כל השאר'),
	(4, 'באג'),
	(5, 'תחזוקה'),
	(6, 'מיון קו"ח');
/*!40000 ALTER TABLE `mission_category` ENABLE KEYS */;


-- Dumping structure for table paamonim.mission_status
DROP TABLE IF EXISTS `mission_status`;
CREATE TABLE IF NOT EXISTS `mission_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Dumping data for table paamonim.mission_status: ~3 rows (approximately)
DELETE FROM `mission_status`;
/*!40000 ALTER TABLE `mission_status` DISABLE KEYS */;
INSERT INTO `mission_status` (`id`, `name`) VALUES
	(1, 'אופיין'),
	(3, 'טופל'),
	(7, 'לא הושלם');
/*!40000 ALTER TABLE `mission_status` ENABLE KEYS */;


-- Dumping structure for view paamonim.v_expense
DROP VIEW IF EXISTS `v_expense`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_expense` (
	`id` INT(10) NOT NULL,
	`created_on` TIMESTAMP NOT NULL,
	`date` DATE NULL,
	`amount` DECIMAL(10,2) NULL,
	`payment_type` TINYINT(4) NULL,
	`due_date` DATE NULL,
	`provider` VARCHAR(100) NULL COLLATE 'utf8_general_ci',
	`category` SMALLINT(7) NULL,
	`paid` TINYINT(4) NULL,
	`comments` TEXT NULL COLLATE 'utf8_general_ci',
	`invoice_number` MEDIUMINT(9) NULL,
	`picture` VARCHAR(250) NULL COLLATE 'utf8_general_ci',
	`pictures` INT(10) NOT NULL
) ENGINE=MyISAM;


-- Dumping structure for view paamonim.v_expense
DROP VIEW IF EXISTS `v_expense`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_expense`;
CREATE ALGORITHM=UNDEFINED VIEW `v_expense` AS SELECT *, id as pictures from expense ;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
