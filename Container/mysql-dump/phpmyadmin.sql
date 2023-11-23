-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql:3306
-- Generation Time: May 21, 2023 at 02:24 PM
-- Server version: 8.0.33
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `query` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `col_length` text COLLATE utf8mb3_bin,
  `col_collation` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  `col_default` text COLLATE utf8mb3_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `settings_data` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8mb3_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `template_data` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'table', 'user1', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"allrows\":\"1\",\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@TABLE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'table', 'kickavenue', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"allrows\":\"1\",\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@TABLE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(3, 'root', 'database', 'phpmyadmin', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"pma__bookmark\",\"pma__central_columns\",\"pma__column_info\",\"pma__designer_settings\",\"pma__export_templates\",\"pma__favorite\",\"pma__history\",\"pma__navigationhiding\",\"pma__pdf_pages\",\"pma__recent\",\"pma__relation\",\"pma__savedsearches\",\"pma__table_coords\",\"pma__table_info\",\"pma__table_uiprefs\",\"pma__tracking\",\"pma__userconfig\",\"pma__usergroups\",\"pma__users\",\"tbl_cart\",\"tbl_order\",\"tbl_product\",\"tbl_product_imgs\",\"tbl_product_size\",\"tbl_user\",\"user1\"],\"table_structure[]\":[\"pma__bookmark\",\"pma__central_columns\",\"pma__column_info\",\"pma__designer_settings\",\"pma__export_templates\",\"pma__favorite\",\"pma__history\",\"pma__navigationhiding\",\"pma__pdf_pages\",\"pma__recent\",\"pma__relation\",\"pma__savedsearches\",\"pma__table_coords\",\"pma__table_info\",\"pma__table_uiprefs\",\"pma__tracking\",\"pma__userconfig\",\"pma__usergroups\",\"pma__users\",\"tbl_cart\",\"tbl_order\",\"tbl_product\",\"tbl_product_imgs\",\"tbl_product_size\",\"tbl_user\",\"user1\"],\"table_data[]\":[\"pma__bookmark\",\"pma__central_columns\",\"pma__column_info\",\"pma__designer_settings\",\"pma__export_templates\",\"pma__favorite\",\"pma__history\",\"pma__navigationhiding\",\"pma__pdf_pages\",\"pma__recent\",\"pma__relation\",\"pma__savedsearches\",\"pma__table_coords\",\"pma__table_info\",\"pma__table_uiprefs\",\"pma__tracking\",\"pma__userconfig\",\"pma__usergroups\",\"pma__users\",\"tbl_cart\",\"tbl_order\",\"tbl_product\",\"tbl_product_imgs\",\"tbl_product_size\",\"tbl_user\",\"user1\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(4, 'root', 'table', 'cart', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"allrows\":\"1\",\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@TABLE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(5, 'root', 'database', 'ngoc', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"pma__bookmark\",\"pma__central_columns\",\"pma__column_info\",\"pma__designer_settings\",\"pma__export_templates\",\"pma__favorite\",\"pma__history\",\"pma__navigationhiding\",\"pma__pdf_pages\",\"pma__recent\",\"pma__relation\",\"pma__savedsearches\",\"pma__table_coords\",\"pma__table_info\",\"pma__table_uiprefs\",\"pma__tracking\",\"pma__userconfig\",\"pma__usergroups\",\"pma__users\",\"tbl_cart\",\"tbl_order\",\"tbl_product\",\"tbl_product_imgs\",\"tbl_product_size\",\"tbl_user\",\"user1\"],\"table_structure[]\":[\"pma__bookmark\",\"pma__central_columns\",\"pma__column_info\",\"pma__designer_settings\",\"pma__export_templates\",\"pma__favorite\",\"pma__history\",\"pma__navigationhiding\",\"pma__pdf_pages\",\"pma__recent\",\"pma__relation\",\"pma__savedsearches\",\"pma__table_coords\",\"pma__table_info\",\"pma__table_uiprefs\",\"pma__tracking\",\"pma__userconfig\",\"pma__usergroups\",\"pma__users\",\"tbl_cart\",\"tbl_order\",\"tbl_product\",\"tbl_product_imgs\",\"tbl_product_size\",\"tbl_user\",\"user1\"],\"table_data[]\":[\"pma__bookmark\",\"pma__central_columns\",\"pma__column_info\",\"pma__designer_settings\",\"pma__export_templates\",\"pma__favorite\",\"pma__history\",\"pma__navigationhiding\",\"pma__pdf_pages\",\"pma__recent\",\"pma__relation\",\"pma__savedsearches\",\"pma__table_coords\",\"pma__table_info\",\"pma__table_uiprefs\",\"pma__tracking\",\"pma__userconfig\",\"pma__usergroups\",\"pma__users\",\"tbl_cart\",\"tbl_order\",\"tbl_product\",\"tbl_product_imgs\",\"tbl_product_size\",\"tbl_user\",\"user1\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `tables` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `page_nr` int UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `tables` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"phpmyadmin\",\"table\":\"tbl_cart\"},{\"db\":\"phpmyadmin\",\"table\":\"tbl_user\"},{\"db\":\"phpmyadmin\",\"table\":\"user1\"},{\"db\":\"phpmyadmin\",\"table\":\"tbl_order\"},{\"db\":\"phpmyadmin\",\"table\":\"tbl_product\"},{\"db\":\"phpmyadmin\",\"table\":\"tbl_product_size\"}]'),
('user', '[{\"db\":\"phpmyadmin\",\"table\":\"user1\"},{\"db\":\"phpmyadmin\",\"table\":\"tbl_order\"},{\"db\":\"phpmyadmin\",\"table\":\"tbl_cart\"},{\"db\":\"phpmyadmin\",\"table\":\"tbl_product\"},{\"db\":\"phpmyadmin\",\"table\":\"tbl_product_imgs\"},{\"db\":\"phpmyadmin\",\"table\":\"tbl_product_size\"},{\"db\":\"phpmyadmin\",\"table\":\"tbl_user\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `pdf_page_number` int NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `prefs` text COLLATE utf8mb3_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'pe_store_data', 'emp', '{\"sorted_col\":\"`emp`.`age` DESC\"}', '2023-03-28 16:50:47'),
('root', 'pe_store_data', 'tbl_product', '{\"sorted_col\":\"`tbl_product`.`product_name` ASC\"}', '2023-03-28 17:21:55'),
('root', 'pe_store_data', 'tbl_product_imgs', '{\"CREATE_TIME\":\"2023-03-29 00:18:14\",\"col_order\":[0,1,2],\"col_visib\":[1,1,1]}', '2023-04-22 16:50:26'),
('root', 'phpmyadmin', 'tbl_cart', '{\"sorted_col\":\"`tbl_cart`.`price` DESC\"}', '2023-05-14 00:33:28');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `version` int UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8mb3_bin NOT NULL,
  `schema_sql` text COLLATE utf8mb3_bin,
  `data_sql` longtext COLLATE utf8mb3_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8mb3_bin DEFAULT NULL,
  `tracking_active` int UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-05-13 07:07:21', '{\"Console\\/Mode\":\"collapse\"}'),
('user', '2023-05-21 13:52:18', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8mb3_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Users and their assignments to user groups';

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cart_id` int NOT NULL,
  `product_id` int NOT NULL,
  `product_quantity` int NOT NULL,
  `price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cart_id`, `product_id`, `product_quantity`, `price`) VALUES
(1, 2, 1, 3239000),
(1, 3, 1, 3829000),
(2, 3, 1, 3829000),
(2, 4, 1, 3829000),
(2, 2, 1, 3239000),
(2, 1, 1, 2929000),
(3, 4, 2, 7658000),
(4, 1, 1, 2929000),
(4, 2, 1, 3239000),
(4, 3, 1, 3829000),
(4, 4, 1, 3829000),
(4, 9, 1, 4000000),
(5, 2, 1, 3239000),
(5, 1, 1, 2929000),
(6, 10, 1, 3300000),
(6, 7, 1, 2000000),
(8, 2, 1, 3239000),
(8, 3, 1, 3829000),
(8, 4, 1, 3829000),
(9, 2, 1, 3239000),
(9, 1, 1, 2929000),
(9, 3, 1, 3829000),
(10, 2, 1, 3239000),
(10, 1, 1, 2929000),
(10, 10, 1, 3300000),
(11, 2, 1, 3239000),
(11, 1, 1, 2929000),
(12, 2, 1, 3239000),
(12, 3, 1, 3829000),
(13, 1, 1, 2929000),
(13, 2, 1, 3239000),
(14, 13, 4, 36000000),
(15, 2, 1, 3239000),
(15, 1, 1, 2929000),
(16, 14, 4, 26360000),
(16, 16, 4, 22400000),
(16, 13, 4, 36000000),
(17, 2, 1, 3239000),
(17, 1, 1, 2929000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `cart_id` int NOT NULL,
  `user_name` varchar(50) COLLATE utf8mb3_bin NOT NULL,
  `total_price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`cart_id`, `user_name`, `total_price`) VALUES
(1, 'nhat123', 7068000),
(2, 'nhat123', 13826000),
(3, 'nhat123', 7658000),
(4, 'nhat123', 17826000),
(5, 'nhat123', 6168000),
(6, 'nhat123', 5300000),
(7, 'nhat123', 0),
(8, 'nhat123', 10897000),
(9, 'nhat123', 9997000),
(10, 'nhat123', 9468000),
(11, 'nhat123', 6168000),
(12, 'nhat123', 7068000),
(13, 'nhat123', 6168000),
(14, 'nhat123', 36000000),
(15, 'nhat123', 6168000),
(16, 'hieu123', 84760000),
(17, 'ngoc123', 6168000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int NOT NULL,
  `product_name` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `product_brand` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `product_gender` enum('male','female') COLLATE utf8mb4_general_ci NOT NULL,
  `product_price` double NOT NULL,
  `product_img` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `product_description` varchar(10000) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `product_brand`, `product_gender`, `product_price`, `product_img`, `product_description`) VALUES
(1, 'Nike Air Force 1 \'07', 'Nike', 'male', 2929000, '86109423-5d75-4770-8dd1-9208542468f0.png', 'The radiance lives on in the Nike Air Force 1 \'07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold accents and the perfect amount of flash to make you shine.'),
(2, 'Nike Air Force 1 PLT.AF.ORM', 'Nike', 'female', 3239000, '1aa807c2-eab8-4af5-b7f0-3dace5dae90a.png', 'Let classic, easy-to-wear AF-1 style rise to the occasion with the Nike Air Force 1 PLT.AF.ORM. Its elegantly shaped and lifted midsole delivers a proud, new voice to the hoops franchise. The leather on the upper breaks in easily and ages to soft perfection while the sculpted collar and pillowy heel keep it comfy. Captivate your audience.'),
(3, 'Air Jordan 1 Low FlyEase', 'Nike', 'male', 3829000, '2c1e8d46-b14f-44f7-bd1c-0ba4b817a9f3.webp', 'Lock in your style with this AJ1. We kept everything you love about the classic design—premium leather, Air cushioning, iconic Wings logo—while adding the Nike FlyEase closure system to make on and off a breeze. Getting out the door is now quicker than ever: just strap and zip.'),
(4, 'Nike Pegasus 40 SE', 'Nike', 'male', 3829000, 'pegasus-40-se-road-running-shoes-1jMJKm.jpeg', 'A springy ride for every run, the Peg\'s familiar, just-for-you feel returns to help you accomplish your goals. This version has the same responsiveness and neutral support you love but with improved comfort in those sensitive areas of your foot, like the arch and toes. Whether you\'re logging long marathon miles, squeezing in a speed session before the sun goes down or hopping into a spontaneous group jaunt, it\'s still the established road runner you can put your faith in, day after day, run after run. Sharp, bright hues complement dark-room-colour neutrals, speaking to an inclusive world where digital and physical coexist in harmony.'),
(5, 'Nike Pegasus 40 Premium', 'Nike', 'female', 4109000, '4714e8cb-f8e5-485b-969d-29f53a53bcd6.webp', 'A springy ride for every run, the Peg\'s familiar, just-for-you feel returns to help you accomplish your goals. This version has the same responsiveness and neutral support you love but with improved comfort in those sensitive areas of your foot, like the arch and toes. Whether you\'re logging long marathon miles, squeezing in a speed session before the sun goes down or hopping into a spontaneous group jaunt, it\'s still the established road runner you can put your faith in, day after day, run after run. This special watercolour-like print, with floral pastels and subtle pinks and greens, captures the vibe of the summer season.'),
(7, 'Adidas Air 111', 'adidas', 'male', 2000000, 'qwqfyddzikcgc4ozwigp.png', 'Adidas shoes are a popular brand of athletic footwear that have been designed with both style and performance in mind. They are known for their comfort, durability, and versatility, making them a favorite among athletes and casual wearers alike. Adidas shoes come in a wide range of designs, from classic to modern, and are made with high-quality materials such as leather, mesh, and synthetic fabrics. They are also available in a variety of colors and sizes to suit different preferences and needs. Whether you\'re running, playing sports, or just going for a walk, Adidas shoes provide the support and protection you need to perform at your best.\r\n\r\n'),
(8, 'SAMBA OG SHOES', 'adidas', 'male', 3300000, '8d02ec1f-4031-4935-989f-b16a2d06c4cc.png', 'The Adidas Samba OG shoes are a classic sneaker design that has been a favorite for over 60 years. Originally designed as a soccer shoe, the Samba has since become a popular casual shoe due to its stylish appearance and comfortable fit. The shoe features a durable leather upper with suede accents, a gum rubber outsole for excellent traction, and the iconic three stripes on the side. The Samba also has a soft lining and a cushioned insole for added comfort. Whether you\'re playing a game of soccer or just going out with friends, the Adidas Samba OG shoes are a reliable and stylish choice.'),
(11, 'Sneaker Air Force 1', 'sneaker', 'male', 4600000, '86109423-5d75-4770-8dd1-9208542468f0.png', 'The Nike Air Force 1 shoes are a classic and iconic sneaker design that has been a favorite for over 35 years. They feature a leather upper with perforations for breathability and a rubber outsole for excellent traction and durability. The shoe also has a cushioned midsole and a padded collar and tongue for added comfort. The Air Force 1\'s signature feature is the chunky sole with a large air unit in the heel, which provides excellent shock absorption and support. The shoe is available in a variety of colors and designs, making it a versatile choice that can be worn for both athletic and casual occasions.'),
(12, 'Sneaker Air Force 134', 'sneaker', 'male', 2500000, '2c1e8d46-b14f-44f7-bd1c-0ba4b817a9f3.webp', 'The Nike Air Force 1 shoes are a classic and iconic sneaker design that has been a favorite for over 35 years. They feature a leather upper with perforations for breathability and a rubber outsole for excellent traction and durability. The shoe also has a cushioned midsole and a padded collar and tongue for added comfort. The Air Force 1\'s signature feature is the chunky sole with a large air unit in the heel, which provides excellent shock absorption and support. The shoe is available in a variety of colors and designs, making it a versatile choice that can be worn for both athletic and casual occasions.'),
(13, 'Sneaker Attack Helicopter 404', 'sneaker', 'female', 9000000, '69b6b84f-df6c-4fdf-8cf5-f0eb591e68d8.png', 'The Nike Air Force 1 shoes are a classic and iconic sneaker design that has been a favorite for over 35 years. They feature a leather upper with perforations for breathability and a rubber outsole for excellent traction and durability. The shoe also has a cushioned midsole and a padded collar and tongue for added comfort. The Air Force 1\'s signature feature is the chunky sole with a large air unit in the heel, which provides excellent shock absorption and support. The shoe is available in a variety of colors and designs, making it a versatile choice that can be worn for both athletic and casual occasions.'),
(14, 'Sneaker make you mom love you', 'sneaker', 'female', 6590000, '8d02ec1f-4031-4935-989f-b16a2d06c4cc.png', 'The Nike Air Force 1 shoes are a classic and iconic sneaker design that has been a favorite for over 35 years. They feature a leather upper with perforations for breathability and a rubber outsole for excellent traction and durability. The shoe also has a cushioned midsole and a padded collar and tongue for added comfort. The Air Force 1\'s signature feature is the chunky sole with a large air unit in the heel, which provides excellent shock absorption and support. The shoe is available in a variety of colors and designs, making it a versatile choice that can be worn for both athletic and casual occasions.\r\n'),
(16, 'ADidas whatever', 'adidas', 'female', 5600000, '37fb3830-2020-470f-aa6e-bb50f92cbba3.webp', 'The Adidas Forum Low shoes are a retro-inspired sneaker that offers a blend of style and performance. They feature a leather and synthetic upper with perforations for breathability, as well as a padded collar and tongue for added comfort. The shoe also has a cushioned insole and a rubber outsole for excellent traction and durability. The Forum Low\'s signature feature is the adjustable ankle strap, which adds a touch of style and provides a secure fit. The Adidas Forum Low shoes are a versatile choice that can be worn for a variety of occasions, from casual outings to athletic activities.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_imgs`
--

CREATE TABLE `tbl_product_imgs` (
  `image_id` int NOT NULL,
  `product_id` int NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product_imgs`
--

INSERT INTO `tbl_product_imgs` (`image_id`, `product_id`, `product_image`) VALUES
(1, 1, '9a2aaa1d-994a-43a6-ad1d-621c1b40dc84.png'),
(2, 1, '5086cc98-f872-4f31-b11a-598b9dabd6c4.png'),
(3, 1, '47724b92-fa7c-421f-9119-dfcf5ede1121.png'),
(4, 1, '86109423-5d75-4770-8dd1-9208542468f0.png'),
(5, 1, 'abaf5155-13c7-493c-a264-40c2a99f40af.png'),
(6, 2, '1dfaeb28-aba1-421e-b5af-a1dbf64a6521.png'),
(7, 2, '2bbae909-1831-4e73-a71b-9ec4225173c6.png'),
(8, 2, '6a5c3b9f-1061-491b-b212-b0c81e0bc168.png'),
(9, 2, '672f0af5-f1e3-486d-8036-2a9927c2f70f.png'),
(10, 2, 'e4ecd9f7-a627-485f-a088-93fe5dbd2a3f.png'),
(11, 3, '8e2efb10-5768-467e-8d7a-598ef1e87b6e.webp'),
(12, 3, 'ee2bde83-4b5f-4f48-b229-94ee3caa817e.webp'),
(13, 3, '372a9c4b-2c82-4f68-83f4-3f64a251c342.webp'),
(14, 3, '767b2603-39f8-4e1c-992d-3909fa75b92e.webp'),
(15, 3, '9259e44d-8e6a-4253-aefa-7db9720ea2b4.webp'),
(16, 4, '49129db9-1db4-4ab7-94ce-76f6cbf0479a.webp'),
(17, 4, '628b753b-90e0-4a04-b05f-e4714f04e283 (1).webp'),
(18, 4, '41a4652a-8447-4d1d-8a58-8797769eb423.webp'),
(19, 4, 'a3f3674d-badd-4576-849f-5e8f5e92926d.webp'),
(20, 4, '628b753b-90e0-4a04-b05f-e4714f04e283.webp'),
(21, 5, '0945495e-b708-46e4-8d67-3d905fb6f3e2.webp'),
(22, 5, '37fb3830-2020-470f-aa6e-bb50f92cbba3.webp'),
(23, 5, 'pegasus-40-road-running-shoes-4ZGSBc.jpeg'),
(24, 5, '7eef84d8-a8fc-4c83-be8c-5929a443a35b.webp'),
(25, 5, '327fee86-8d94-41d5-afd8-77cd656b054c.webp'),
(30, 7, 'bwduxl2dwax0udwdmqob.png'),
(31, 7, 'dq9ivyxncfxo3gzkmlkl.png'),
(32, 7, 'qwqfyddzikcgc4ozwigp.png'),
(33, 7, 'u7khoqev6hy2xgsllrnb.png'),
(34, 8, '0afe3f6d-bbfd-48eb-a250-4feddf65ad40.png'),
(35, 8, '8d02ec1f-4031-4935-989f-b16a2d06c4cc.png'),
(36, 8, '32d10bc9-5b19-47af-adc5-c19aa88dd1c5.png'),
(37, 8, '69b6b84f-df6c-4fdf-8cf5-f0eb591e68d8.png'),
(46, 11, '86109423-5d75-4770-8dd1-9208542468f0.png'),
(47, 11, 'abaf5155-13c7-493c-a264-40c2a99f40af.png'),
(48, 11, 'e4ecd9f7-a627-485f-a088-93fe5dbd2a3f.png'),
(49, 11, 'fe5795f9-ad7b-4373-937f-3dd6bb75b7cd.png'),
(50, 12, '1aa807c2-eab8-4af5-b7f0-3dace5dae90a.png'),
(51, 12, '2c1e8d46-b14f-44f7-bd1c-0ba4b817a9f3.webp'),
(52, 12, '327fee86-8d94-41d5-afd8-77cd656b054c.webp'),
(53, 12, '372a9c4b-2c82-4f68-83f4-3f64a251c342.webp'),
(54, 13, 'b7beee7c32d4438aaba3acb6001c2e7b_9366.webp'),
(55, 13, 'b253db3c-8406-4ae5-b30d-64253d1da637.png'),
(56, 13, 'bwduxl2dwax0udwdmqob.png'),
(57, 13, 'c2acedba-60cb-435e-b29c-28a4ec503195.png'),
(58, 14, '41a4652a-8447-4d1d-8a58-8797769eb423.webp'),
(59, 14, '69b6b84f-df6c-4fdf-8cf5-f0eb591e68d8.png'),
(60, 14, '327fee86-8d94-41d5-afd8-77cd656b054c.webp'),
(61, 14, '372a9c4b-2c82-4f68-83f4-3f64a251c342.webp'),
(66, 16, '32d10bc9-5b19-47af-adc5-c19aa88dd1c5.png'),
(67, 16, '37fb3830-2020-470f-aa6e-bb50f92cbba3.webp'),
(68, 16, '41a4652a-8447-4d1d-8a58-8797769eb423.webp'),
(69, 16, '69b6b84f-df6c-4fdf-8cf5-f0eb591e68d8.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_size`
--

CREATE TABLE `tbl_product_size` (
  `product_id` int NOT NULL,
  `product_size` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `product_amount` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product_size`
--

INSERT INTO `tbl_product_size` (`product_id`, `product_size`, `product_amount`) VALUES
(1, '40', 0),
(1, '40.5', 0),
(1, '41', 0),
(1, '42', 0),
(1, '42.5', 0),
(1, '45', 0),
(1, '45.5', 0),
(1, '46', 0),
(1, '47', 0),
(2, '39', 0),
(2, '40', 0),
(2, '40.5', 0),
(2, '41', 0),
(2, '42', 0),
(2, '42.5', 0),
(2, '43', 0),
(2, '44', 0),
(2, '44.5', 0),
(2, '45', 0),
(3, '40', 0),
(3, '40.5', 0),
(3, '41', 0),
(3, '42', 0),
(3, '42.5', 0),
(3, '43', 0),
(3, '44', 0),
(3, '44.5', 0),
(3, '45', 0),
(3, '45.5', 0),
(3, '46', 0),
(3, '47', 0),
(3, '47.5', 0),
(4, '39', 0),
(4, '40', 0),
(4, '40.5', 0),
(4, '41', 0),
(4, '42', 0),
(4, '42.5', 0),
(4, '43', 0),
(4, '44', 0),
(4, '44.5', 0),
(4, '45', 0),
(4, '45.5', 0),
(4, '46', 0),
(4, '47', 0),
(4, '47.5', 0),
(5, '39', 0),
(5, '40', 0),
(5, '40.5', 0),
(5, '41', 0),
(5, '42', 0),
(5, '42.5', 0),
(5, '43', 0),
(5, '44', 0),
(5, '44.5', 0),
(5, '45', 0),
(5, '45.5', 0),
(5, '46', 0),
(7, '39', 0),
(8, '39', 0),
(11, '39', 0),
(12, '39', 0),
(13, '39', 0),
(14, '39', 0),
(16, '39', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb3_bin NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb3_bin NOT NULL,
  `user_name` varchar(50) COLLATE utf8mb3_bin NOT NULL,
  `user_password` varchar(50) COLLATE utf8mb3_bin NOT NULL,
  `user_birthday` date NOT NULL,
  `user_gender` enum('male','female') COLLATE utf8mb3_bin NOT NULL,
  `phone_number` varchar(20) COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `first_name`, `last_name`, `user_name`, `user_password`, `user_birthday`, `user_gender`, `phone_number`) VALUES
(1, 'Hieu', 'Nguyen', '231312313', '123456789', '2023-05-17', 'male', '1236576890');

-- --------------------------------------------------------

--
-- Table structure for table `user1`
--

CREATE TABLE `user1` (
  `userID` int NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user1`
--

INSERT INTO `user1` (`userID`, `username`, `password`, `firstname`, `lastname`) VALUES
(16, 'ngoc123', '$2y$10$MCt.PdpGRN91C3A0Aufzwe8cHHuXZWCCPZKo/OAfCwCRNYdtuPWSK', 'ngoc', 'tra'),
(17, 'nhat123', '$2y$10$7XfsOOTHvesAv6s9H1OUfO0S7aa6of4e3uPgErB5RrZpMd6nsifki', 'nhat', ' nguyen'),
(18, 'admin', '$2y$10$/NpTbh4FrnbpyOrnIAr99emYyHFXDctKHKqVA74C0WWX5uG.fUIcq', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_product_imgs`
--
ALTER TABLE `tbl_product_imgs`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `tbl_product_imgs_ibfk_1` (`product_id`);

--
-- Indexes for table `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  ADD PRIMARY KEY (`product_id`,`product_size`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user1`
--
ALTER TABLE `user1`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `cart_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_product_imgs`
--
ALTER TABLE `tbl_product_imgs`
  MODIFY `image_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user1`
--
ALTER TABLE `user1`
  MODIFY `userID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_product_imgs`
--
ALTER TABLE `tbl_product_imgs`
  ADD CONSTRAINT `tbl_product_imgs_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  ADD CONSTRAINT `FK_PRODUCT_ID` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
