-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2021 at 08:30 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `naughty`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_settings`
--

CREATE TABLE `admin_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `update_length` int(10) UNSIGNED NOT NULL COMMENT 'The max length of updates',
  `status_page` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Offline, 1 Online',
  `email_verification` enum('0','1') NOT NULL COMMENT '0 Off, 1 On',
  `email_no_reply` varchar(200) NOT NULL,
  `email_admin` varchar(200) NOT NULL,
  `captcha` enum('on','off') NOT NULL DEFAULT 'off',
  `file_size_allowed` int(11) UNSIGNED NOT NULL COMMENT 'Size in Bytes',
  `google_analytics` text NOT NULL,
  `paypal_account` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `pinterest` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `google_adsense` text NOT NULL,
  `currency_symbol` char(10) NOT NULL,
  `currency_code` varchar(20) NOT NULL,
  `min_subscription_amount` int(11) UNSIGNED NOT NULL,
  `payment_gateway` enum('PayPal','Stripe') NOT NULL DEFAULT 'PayPal',
  `min_width_height_image` varchar(100) NOT NULL,
  `fee_commission` int(10) UNSIGNED NOT NULL,
  `max_subscription_amount` int(10) UNSIGNED NOT NULL,
  `date_format` varchar(200) NOT NULL,
  `link_privacy` varchar(200) NOT NULL,
  `link_terms` varchar(200) NOT NULL,
  `currency_position` enum('left','right') NOT NULL DEFAULT 'left',
  `facebook_login` enum('on','off') NOT NULL DEFAULT 'off',
  `amount_min_withdrawal` int(10) UNSIGNED NOT NULL,
  `youtube` varchar(200) NOT NULL,
  `github` varchar(200) NOT NULL,
  `comment_length` int(10) UNSIGNED NOT NULL,
  `days_process_withdrawals` int(10) UNSIGNED NOT NULL,
  `google_login` enum('on','off') NOT NULL DEFAULT 'off',
  `number_posts_show` tinyint(3) UNSIGNED NOT NULL,
  `number_comments_show` tinyint(3) UNSIGNED NOT NULL,
  `registration_active` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 No, 1 Yes',
  `account_verification` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 No, 1 Yes',
  `logo` varchar(100) NOT NULL,
  `logo_2` varchar(100) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `home_index` varchar(100) NOT NULL,
  `bg_gradient` varchar(100) NOT NULL,
  `img_1` varchar(100) NOT NULL,
  `img_2` varchar(100) NOT NULL,
  `img_3` varchar(100) NOT NULL,
  `img_4` varchar(100) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `show_counter` enum('on','off') NOT NULL DEFAULT 'on',
  `color_default` varchar(100) NOT NULL,
  `decimal_format` enum('comma','dot') NOT NULL DEFAULT 'dot',
  `version` varchar(5) NOT NULL,
  `link_cookies` varchar(200) NOT NULL,
  `story_length` int(10) UNSIGNED NOT NULL,
  `maintenance_mode` enum('on','off') NOT NULL DEFAULT 'off',
  `company` varchar(100) NOT NULL,
  `country` varchar(255) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `vat` varchar(100) NOT NULL,
  `widget_creators_featured` enum('on','off') NOT NULL DEFAULT 'on',
  `home_style` int(10) UNSIGNED NOT NULL,
  `file_size_allowed_verify_account` int(10) UNSIGNED NOT NULL,
  `payout_method_paypal` enum('on','off') NOT NULL DEFAULT 'on',
  `payout_method_bank` enum('on','off') NOT NULL DEFAULT 'on',
  `min_tip_amount` int(10) UNSIGNED NOT NULL,
  `max_tip_amount` int(10) UNSIGNED NOT NULL,
  `min_ppv_amount` int(10) UNSIGNED NOT NULL,
  `max_ppv_amount` int(10) UNSIGNED NOT NULL,
  `min_deposits_amount` int(10) UNSIGNED NOT NULL,
  `max_deposits_amount` int(10) UNSIGNED NOT NULL,
  `button_style` enum('rounded','normal') NOT NULL DEFAULT 'rounded',
  `twitter_login` enum('on','off') NOT NULL DEFAULT 'off',
  `hide_admin_profile` enum('on','off') NOT NULL DEFAULT 'off',
  `requests_verify_account` enum('on','off') NOT NULL DEFAULT 'on',
  `navbar_background_color` varchar(30) NOT NULL,
  `navbar_text_color` varchar(30) NOT NULL,
  `footer_background_color` varchar(30) NOT NULL,
  `footer_text_color` varchar(30) NOT NULL,
  `preloading` enum('on','off') NOT NULL DEFAULT 'off',
  `preloading_image` varchar(100) NOT NULL,
  `watermark` enum('on','off') NOT NULL DEFAULT 'on',
  `earnings_simulator` enum('on','off') NOT NULL DEFAULT 'on',
  `custom_css` text NOT NULL,
  `custom_js` text NOT NULL,
  `alert_adult` enum('on','off') NOT NULL DEFAULT 'off',
  `genders` varchar(250) NOT NULL,
  `cover_default` varchar(100) NOT NULL,
  `who_can_see_content` enum('all','users') NOT NULL DEFAULT 'all',
  `users_can_edit_post` enum('on','off') NOT NULL DEFAULT 'on',
  `disable_wallet` enum('on','off') NOT NULL DEFAULT 'on',
  `disable_banner_cookies` enum('on','off') NOT NULL DEFAULT 'off',
  `wallet_format` enum('real_money','credits','points','tokens') NOT NULL DEFAULT 'real_money',
  `maximum_files_post` int(10) UNSIGNED NOT NULL DEFAULT 5,
  `maximum_files_msg` int(10) UNSIGNED NOT NULL DEFAULT 5,
  `announcement` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `announcement_show` varchar(100) NOT NULL,
  `announcement_cookie` varchar(20) NOT NULL,
  `limit_categories` int(10) UNSIGNED NOT NULL DEFAULT 3,
  `captcha_contact` enum('on','off') NOT NULL DEFAULT 'off',
  `disable_tips` enum('on','off') NOT NULL DEFAULT 'off',
  `payout_method_payoneer` enum('on','off') NOT NULL DEFAULT 'off',
  `payout_method_zelle` enum('on','off') NOT NULL DEFAULT 'off'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_settings`
--

INSERT INTO `admin_settings` (`id`, `title`, `description`, `keywords`, `update_length`, `status_page`, `email_verification`, `email_no_reply`, `email_admin`, `captcha`, `file_size_allowed`, `google_analytics`, `paypal_account`, `twitter`, `facebook`, `pinterest`, `instagram`, `google_adsense`, `currency_symbol`, `currency_code`, `min_subscription_amount`, `payment_gateway`, `min_width_height_image`, `fee_commission`, `max_subscription_amount`, `date_format`, `link_privacy`, `link_terms`, `currency_position`, `facebook_login`, `amount_min_withdrawal`, `youtube`, `github`, `comment_length`, `days_process_withdrawals`, `google_login`, `number_posts_show`, `number_comments_show`, `registration_active`, `account_verification`, `logo`, `logo_2`, `favicon`, `home_index`, `bg_gradient`, `img_1`, `img_2`, `img_3`, `img_4`, `avatar`, `show_counter`, `color_default`, `decimal_format`, `version`, `link_cookies`, `story_length`, `maintenance_mode`, `company`, `country`, `address`, `city`, `zip`, `vat`, `widget_creators_featured`, `home_style`, `file_size_allowed_verify_account`, `payout_method_paypal`, `payout_method_bank`, `min_tip_amount`, `max_tip_amount`, `min_ppv_amount`, `max_ppv_amount`, `min_deposits_amount`, `max_deposits_amount`, `button_style`, `twitter_login`, `hide_admin_profile`, `requests_verify_account`, `navbar_background_color`, `navbar_text_color`, `footer_background_color`, `footer_text_color`, `preloading`, `preloading_image`, `watermark`, `earnings_simulator`, `custom_css`, `custom_js`, `alert_adult`, `genders`, `cover_default`, `who_can_see_content`, `users_can_edit_post`, `disable_wallet`, `disable_banner_cookies`, `wallet_format`, `maximum_files_post`, `maximum_files_msg`, `announcement`, `announcement_show`, `announcement_cookie`, `limit_categories`, `captcha_contact`, `disable_tips`, `payout_method_payoneer`, `payout_method_zelle`) VALUES
(1, 'The Naughty Space', 'Creators are capable of making as much money as they want, and we give you the tools to succeed. We give creators a larger % of your earnings compared to other websites, while maximizing your exposure and brand recognition.', 'donations,support,creators,Creaty,subscription', 3000, '1', '1', 'info@thenaughtyspace.com', 'info@thenaughtyspace.com', 'off', 2048000, '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-211618809-1\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-211618809-1\');\r\n</script>', '', 'https://twitter.com/TheNaughtySpace', 'https://www.facebook.com/adultcontentcreators', '', '', '', '$', 'USD', 5, 'PayPal', '300', 15, 100, 'M d, Y', 'https://thenaughtyspace.com/p/privacy-policy', 'https://thenaughtyspace.com/p/terms-and-conditions', 'left', 'on', 20, '', '', 200, 3, 'on', 30, 5, '1', '1', 'logo-1636104555.png', 'logo_2-1635662015.png', 'favicon-1635660181.png', 'home_index-1635668072.png', 'background-1636104499.jpg', 'image_index_1-1635668072.png', 'image_index_2-1635668072.png', 'image_index_3-1635668072.png', 'image_index_4-1635668072.png', 'default-1635660181.png', 'off', '#26b3fc', 'dot', '1.0', 'https://thenaughtyspace.com/p/cookie-notice', 1000, 'off', 'RTR Solutions LLC', 'United States', '8 The Green, Ste A', 'Dover', '19901', '87-3132379', 'off', 1, 30720, 'off', 'on', 5, 100, 5, 50, 5, 100, 'normal', 'on', 'off', 'on', '#1b1c21', '#26b3fc', '#191a1f', '#8898aa', 'on', 'image_index_4-1635668072.png', 'on', 'off', '.float{\r\n	position:fixed;\r\n	width:60px;\r\n	height:60px;\r\n	bottom:60px;\r\n	right:40px;\r\n	background-color:#26b3fc;\r\n	color:#FFF;\r\n	border-radius:10px;\r\n	text-align:center;\r\n}\r\n\r\n.my-float{\r\n	font-size:24px;\r\n	margin-top:18px;\r\n}', '', 'on', 'male,female,gay,lesbian,bisexual,transgender,metrosexual,no_binary', 'cover_default-1635692178.jpg', 'all', 'on', 'off', 'off', 'real_money', 20, 5, 'We give creators a larger 85% of your earnings compared to other websites, while maximizing your exposure and brand recognition.', 'all', 'YbA2MX7JmCV5tHiyav6o', 10, 'off', 'off', 'on', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `image` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `tags` varchar(255) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE `bookmarks` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `updates_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookmarks`
--

INSERT INTO `bookmarks` (`id`, `user_id`, `updates_id`, `created_at`, `updated_at`) VALUES
(14, 79, 53, '2021-11-16 10:05:14', '2021-11-16 10:05:14'),
(15, 1, 50, '2021-11-16 11:47:47', '2021-11-16 11:47:47');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `mode` enum('on','off') NOT NULL DEFAULT 'on',
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `keywords`, `mode`, `image`) VALUES
(5, '18-19 years', '18-19-yo', 'Enjoy watching tons of fresh 18-19 year old content creators, these barely legal nude creators love showing you what they\'ve got.', '18-19', 'on', '18-19-yo-lqz5xrBf8g2dV909ZdtZAEueDXP671ir.jpg'),
(10, 'Anal', 'Anal', 'Butt stuff from your favorite content creators. Who doesn\'t like a little butt stuff?', 'Anal', 'on', 'Anal-t2uB948LtKqej4XgD2uxqY7Tnv7kGo4J.jpg'),
(13, '3d cartoon', '3d-cartoon', 'If you love 3D-style cartoons, you are going to love this selection of fine 3d cartoon content creators. Hot creators going wild in 3d- cartoon where anything filthy and naughty is possible.', '3d cartoon', 'on', '3d-cartoon-tY4maqyAjDbgnvI279Bteoa7jMF9tbcL.jpg'),
(14, 'Creator', 'creator', 'Content creators of all creative types.', 'creator', 'on', 'creator-UdqYvYMy4VRPKGg1kJdjqsAvthiGrPu6.jpg'),
(15, 'Ahegao', 'Ahegao', 'Content creators crossing their eyes and sticking their tongue out like in the anime you love', 'Ahegao', 'on', 'Ahegao-QMc8XfrBZr78Cjo90wgmkzvBNfjWLF8r.jpg'),
(16, 'Anime', 'Anime', 'Hentai, Japanese cartoon XXX, Anime porn videos featuring cute drawn content by your favorite creators', 'Anime', 'on', 'Anime-FdAg7FoTtBYm63EhTNDT06ezjjXzqtmn.jpg'),
(17, 'Arab', 'Arab', 'Content specifically by the most beautiful Arab content creators in the world.', 'Arab', 'on', 'Arab-zipjrTYLrIVin2DxUZuLO0Vzi7gt3r50.jpg'),
(18, 'Asian', 'Asian', 'Modest and insanely hot Asian content creators are ready to show off their talents.', 'Asian', 'on', 'Asian-QAyASHGLoESnOE2tsR3BZArOkVAVFOHz.jpg'),
(19, 'BBC', 'BBC', 'BBC - No, not the TV station. Prepare for Big Black Cocks', 'BBC', 'on', 'BBC-QGvoXwH5pUyVG4okQYD0UhxKvcBCpXXf.jpg'),
(20, 'BBW', 'BBW', 'The biggest most beautiful women on the internet.', 'BBW', 'on', 'BBW-W7YaZtTd945sGdKuHmciE1IktIhnYer6.jpg'),
(21, 'BDSM', 'BDSM', 'Bondage, Domination, Sadism and Masochism', 'BDSM', 'on', 'BDSM-F1kRhqGqVGQiOxX7WItc3i5p0gr5xVs4.jpg'),
(22, 'Big Ass', 'Big-Ass', 'Booty booty booty booty rockin\' everywhere. Only the biggest most gigantic asses.', 'Big Ass', 'on', 'Big-Ass-CzWTdBOghtKXi3CxweXJXCh1fOimp1j0.jpg'),
(23, 'Big Boobs', 'Big-Boobs', 'Big fat knockers by the sexiest content creators directly in your face.', 'Big Boobs', 'on', 'Big-Boobs-YHKCTKHg36urd1ujZFaVhzHfFIAfDgXY.jpg'),
(24, 'Big Clit', 'Big-Clit', 'The biggest clits imaginable, so big that the next step up is a tiny dick.', 'Big Clit', 'on', 'Big-Clit-aq9SaTQj7b8fqML2lsbUeq57C4mliJUx.jpg'),
(25, 'Big Cock', 'Big-Cock', 'Check out all the most hogged out content creators with big huge cocks - and they know how to use them.', 'big cock', 'on', 'Big-Cock-V8Jj4k2aAIbRLgLIoVF4HbqZmzis2lwx.jpg'),
(26, 'Big Nipples', 'Big-Nipples', 'Ooh the nipples on her, mang. Big areolas, the bigger the better.', 'Big Nipples', 'on', 'Big-Nipples-aT4o2uua84KBlZ1bLOJecHsHj4ttrkR2.jpg'),
(27, 'Big Pussy Lips', 'Big-Pussy-Lips', 'Pussy lips so big they could eat you up. Or maybe you could eat them up.', 'Big Pussy Lips', 'on', 'Big-Pussy-Lips-YRkNNG6nNwxdPZJT0gaOzQKQkjABjNWT.jpg'),
(28, 'Big Tits', 'Big-Tits', 'Big \'ol titties. Tig ol\' bitties. You know what it is. The bigger the boobs, the better!', 'Big Tits', 'on', 'Big-Tits-6xJFSwJgG2L5AI37a8Yar8lNUIhDtL92.jpg'),
(29, 'Blonde', 'Blonde', 'Blondes have more fun, and this category is going to prove it. Check out the most bodacious blonde content creators.', 'Blonde', 'on', 'Blonde-kEigK9HVg9U8S5FJC4JlbqrVu6oNVQXW.jpg'),
(30, 'Braces', 'Braces', 'Braces on the absolute prettiest of faces. Come see what a metal mouth can really do.', 'Braces', 'on', 'Braces-IgxaVN2rUjyQHSa37MmF9RtoIS0GNK65.jpg'),
(31, 'British', 'British', 'Content creators showing you exactly what\'s Great about Britain', 'British', 'on', 'British-Th66Obx8AD7Mil9iAaKA2WebpdqJOM3h.jpg'),
(32, 'Bush', 'Bush', 'Hairy bush, the hairier the better. Look at all the beautiful pubic hair, manicured or au natural.', 'Bush', 'on', 'Bush-AUqCgJszkrSRpQ7rQsGPDTsn80fRhsLb.jpg'),
(33, 'C2C', 'C2C', '', 'C2C', 'on', 'C2C-1m2TgRQVODwtfImE6XPHubN26DpWksHr.jpg'),
(34, 'CEI', 'CEI', 'Cum Eating Instructions - need I say more? Now start watching and start eating. I hope you\'re hungry.', 'CEI', 'on', 'CEI-qQq4QDcsLLCcz9szaUaX3rlInXerie92.jpg'),
(35, 'Chubby', 'Chubby', 'Chubby babes, you love them and I gotta admit so do we. Watch these absolutely gorgeous big beautiful bodies in all their soft glory.', 'Chubby', 'on', 'Chubby-O239vE6RPNMgFtaExlMmlr7cv4JLI16f.jpg'),
(36, 'Cosplay', 'Cosplay', 'Cosplay - costumed play. See your favorites getting naughty and doing things you could only imagine in fan fiction.', 'Cosplay', 'on', 'Cosplay-H6RNDE5FjoYSQ8Q0ZwHtvpUpIu0BQNgT.jpg'),
(37, 'Cuckold', 'Cuckold', 'Cuckolding - lookin\' for someone to plow your wife while you watch? Well you\'ve come to the right place!', 'Cuckold', 'on', 'Cuckold-zEi3dR4JljfIs4cVP2Z93YMz48PceGKm.jpg'),
(38, 'Cum', 'Cum', 'Cum, oozing all over, exploding and squirting and splishing and splashing and being eaten. If you love cum, come check this out.', 'Cum', 'on', 'Cum-qycsz1DdCYBXefncHMzJDaERAt8NKdUT.jpg'),
(39, 'Curvy', 'Curvy', 'Warning: Dangerous Curves Ahead. Only the curviest, thickest bodies in the curvy category.', 'Curvy', 'on', 'Curvy-ayRrTVAklT3VhZ77HSH7PL9NeO7IJWPx.jpg'),
(40, 'Cute', 'Cute', 'Cute, girl next door type more your thing? Come check out all these cuties.', 'Cute', 'on', 'Cute-nYjB2S3Dc8e9cKXUlx9fJOmet9d7nVSG.jpg'),
(41, 'Daddy', 'Daddy', 'Yes, daddy. All the daddy and zaddy content you could dream of.', '', 'on', 'Daddy-2HGJxmTdcfYBcqfuUCvsn1D1oNwbzDlj.jpg'),
(42, 'Daddys Girl', 'Daddys-Girl', 'She\'s a daddy\'s girl - and she\'s going to show you exactly what Daddy likes.', 'Daddys Girl', 'on', 'Daddys-Girl-6HwFWRKhsrsmAn5asgedKpvrik5UA6lc.jpg'),
(43, 'Deepthroat', 'Deepthroat', 'Deepthroat, and we\'re not talking about watergate. See all the throat goat content creators giving the sloppiest, deepest blowjobs.', 'Deepthroat', 'on', 'Deepthroat-WgZale2XVYXafmX0xf6T61rxiFkm5WLH.jpg'),
(44, 'Dildo', 'Dildo', 'Dildos being used on and by the sexiest content creators ever. Watch them get teased and fucked with these synthetic cocks.', 'Dildo', 'on', 'Dildo-bnrt4PZOVJu1QhwbhDKNhq22M4V5M5Lv.jpg'),
(45, 'Dirty', 'Dirty', 'Dirty, filthy content creators that love being dirty for you.', 'Dirty', 'on', 'Dirty-PFGA1SKceqVj73e8vpGbWxId4lGzHkwS.jpg'),
(46, 'Dirty Talk', 'Dirty-Talk', 'Dirty talk - who doesn\'t love it? Especially you, you dirty little pervert and/or slut.', 'Dirty Talk', 'on', 'Dirty-Talk-gpiAJtlM04e9z6qYtQ8VDsfzSwmGHKPv.jpg'),
(47, 'Ebony', 'Ebony', 'The most beautiful Ebony content creators on the entire planet are featured here. Revel in their gorgeousness and divine radiance.', 'Ebony', 'on', 'Ebony-m2ozbDUX9xvldgXQzOIW2bZO1vBSCm2O.jpg'),
(48, 'Feet', 'Feet', 'All the best feet content for foot lovers. Step inside.', 'Feet', 'on', 'Feet-Wh6RnN9fa7q1F6bYFmVeDCvipZGUqbTi.jpg'),
(49, 'Femboy', 'Femboy', 'Feminine boys and those that love them.', 'Femboy', 'on', 'Femboy-nZ6ShsuyB2EyXL181r6fiIlQnStSB83U.jpg'),
(50, 'Femdom', 'Femdom', 'Dominant Feminine content creators - who wouldn\'t want to be trampled and do literally anything that these beauties ask of them?', 'Femdom', 'on', 'Femdom-RzhTQtkKH6weH1bHHH8vsiVkqbWBYaJy.jpg'),
(51, 'Fetish', 'Fetish', 'Fetishes - you\'ve got em and we\'ve got you covered. Check out all the best fetish content from our creators.', 'Fetish', 'on', 'Fetish-L6yGDrroLSDnU5p2zcyeDCqHBlhByRbx.jpg'),
(52, 'Findom', 'Findom', 'Financial domination, and the findoms you love to pay. Pay pigs, come serve those greater than you.', 'Findom', 'on', 'Findom-OakIFuEiqUOz5xMjlkWZkZb8mDWikOOC.jpg'),
(53, 'Fit', 'Fit', 'The absolute fittest content creators. If athleticism is your thing, you\'ll fit right in.', 'Fit', 'on', 'Fit-PTPeloDvaonnyOlRaii45xHyGHW7Dqb8.jpg'),
(54, 'French', 'French', 'French content creators, Je t\'aime de tout mon coeur. Come see why they call it the language of love with all these western European beauties.', 'French', 'on', 'French-rzmvfAQQtUv2ZLUQ85tS1luP3bPEiRmj.jpg'),
(55, 'FTM', 'FTM', '', 'FTM', 'on', 'FTM-N8IRB4K9cBWiWJI5M4bAstELnDD4IriE.jpg'),
(56, 'Fuck Machine', 'Fuck-Machine', 'Love watching beautiful content creators get fucked senselessly by a machine? So do we, and you\'re in the right place.', 'Fuck Machine', 'on', 'Fuck-Machine-ZhdFZelZV7UqLFPQuxfEL8UulXwhXMzT.jpg'),
(57, 'Gape', 'Gape', 'The biggest, widest gapes imaginable. If you like stretching come inside, these gapes will leave you agape.', 'Gape', 'on', 'Gape-Lw6fCNCd6uQy4Z9dzOtxbbKbueKnopgp.jpg'),
(58, 'Gay', 'Gay', 'Gay homosexual content from our beautiful creators. Cum see what all the hypes about with these sexy studs.', 'Gay', 'on', 'Gay-uFFRGanOxHhODnD5bzgoLPG1kvin7CGJ.jpg'),
(59, 'German', 'German', 'Come see the most schon content creators on the planet.', 'German', 'on', 'German-I3J3SYUZobvZVjsHeCmvBycCfiUPSDjM.jpg'),
(60, 'Goth', 'Goth', 'Who doesn\'t love a goth, whether they\'re big or small tittied, girlfriend or boyfriend or partner.', 'Goth', 'on', 'Goth-Y7E39HshQ4VvhwSME8WBgwkR2ceect4s.jpg'),
(61, 'Hair', 'Hair', 'Long hair, yes absolutely do care. Come see the content creators with the sexiest hair', 'Hair', 'on', 'Hair-KAd9ljvLpAiOr0oUo1ZjB7ncWdRFMDNi.jpg'),
(62, 'Hairy Armpits', 'Hairy-Armpits', 'Hot hairy creators who are into the au natural look.', 'Hairy Armpits', 'on', 'Hairy-Armpits-anTKRdX6ZMfPzcA3Wl0awKzbCEY0wQVc.jpg'),
(63, 'Hairy Pussy', 'Hairy-Pussy', 'Content creators with hairy pussies. You love bush, so do we.', 'Hairy Pussy', 'on', 'Hairy-Pussy-p2fxC4qwhg2vpWGWBeNscuZNhqmp0M99.jpg'),
(64, 'Heels', 'Heels', 'See the sexiest heels of your favorite content creators. High heels, flat heels, all types of heels.', 'Heels', 'on', 'Heels-QurCyhiryhyGMGb5StOKwRvCUqFREqC4.jpg'),
(65, 'Humiliation', 'Humiliation', 'Into watching someone being humiliated? Watch all the best degradation and humiliation content', 'Humiliation', 'on', 'Humiliation-OOZRe1PO6MiawQYxNSz2inB2xwwEFyrp.jpg'),
(66, 'Indian', 'Indian', 'All the hottest creators from everyone\'s favorite sub-continent, India. Enjoy all of this hot Indian content.', 'Indian', 'on', 'Indian-U9hhLKDoHeecAc6EXNHvNn9bzWR94guQ.jpg'),
(67, 'Italian', 'Italian', 'Italian\'s are known to be great lovers, come see why exactly with the content from our beautiful Italiana and Italiano creators.', 'Italian', 'on', 'Italian-reSuw8mrC2kFRfhCI0PEVjfsms4SdJro.jpg'),
(68, 'Joi', 'Joi', 'Jerk off Instructions - you better pay close attention and listen up.', 'Joi', 'on', 'Joi-HcwyImGLmLMzQriGoY3OVz41osZh0hWJ.jpg'),
(69, 'Latex', 'Latex', 'Latex, so shiny and pretty. See all the best content involving latex from our creators.', 'Latex', 'on', 'Latex-LI4o0H4DWZQm84GoSJyV7uSZiTGhcbf9.jpg'),
(70, 'Latina', 'Latina', 'Latina\'s are some of the absolute most beautiful people on the entire planet. This category shows you exactly why these mamacitas are so ridiculous.', 'Latina', 'on', 'Latina-1OGZo24vh39L1AtoWVyoyrGICaUE8gwT.jpg'),
(71, 'Lesbian', 'Lesbian', 'Girl/girl content by all of our most beautiful lesbian creators.', 'Lesbian', 'on', 'Lesbian-ahsdoexxrsPgKEOu0IzVDGXRZORYgmbY.jpg'),
(72, 'Lovense', 'Lovense', 'Lovense is a distance based vibrator company, allowing others to control the vibrations a content creator feels. Are you ready to take control and please your favorite person?', '', 'on', 'Lovense-489xSMatbMWvn9GypjOIPF5Ne5k5VEei.jpg'),
(73, 'Master', 'Master', 'Come serve your master - content for those into those in power in bdsm dynamics.', 'Master', 'on', 'Master-APlC9XGzzE8Ti6LJHVE3fBVlj8kn68Wo.jpg'),
(74, 'Mature', 'Mature', 'People mature like fine wines, and we love seeing it. View the hottest content from our creators in the prime of their sexual lives.', 'Mature', 'on', 'Mature-cxaszPHIu03WaflWATmmqpZmmbTXXWOJ.jpg'),
(75, 'Milf', 'Milf', 'MILF - Mom I\'d like to fuck. Come see all the most beautiful moms that you\'d like to... well, you know.', 'Milf', 'on', 'Milf-CGgd0RLoHJ69YkTp9a1wyMf4mDLvyInz.jpg'),
(76, 'Milk', 'Milk', 'Yo quiero leche. See all the hottest content creators either drinking, or maybe even producing milk', 'Milk', 'on', 'Milk-ZsroPUkyAxRmZNo4ra5yXTgwrEKn5wd7.jpg'),
(77, 'Mistress', 'Mistress', 'Mistresses - who doesn\'t love to serve them? Come see all the most beautiful women in charge in bdsm content.', 'Mistress', 'on', 'Mistress-WhWQBGEumItTRqG9Q91SSIJpD4NQjAog.jpg'),
(78, 'Mommy', 'Mommy', 'Who doesn\'t love a mommy? Come see all the hottest mommy content, including mommy domme, MDLB and MDLG', 'Mommy', 'on', 'Mommy-B1PSvNJgUkQpbsoV3tg3gRhGrjIovEDa.jpg'),
(79, 'Muscle', 'Muscle', 'See all the most muscular content creators. For those that like to see swole creators while also swelling up.', 'Muscle', 'on', 'Muscle-1gntLfVkLl5ktrpHD6gtIAkoYxGAWS7V.jpg'),
(80, 'Nasty', 'Nasty', 'You nasty, and we love it. See all the nasty stuff you love.', 'Nasty', 'on', 'Nasty-bwq2mdnpwuSYMkXiaIVCTr1lcDDjwh24.jpg'),
(81, 'Natural', 'Natural', 'Au Natural - see the natural beauty in all creators.', 'Natural', 'on', 'Natural-FazwwPXfGiXvXRFunYBhErlez35PhePB.jpg'),
(82, 'Office', 'Office', 'Into workplace fun? Watch our hottest creators getting naughty in the office.', 'Office', 'on', 'Office-HnKE7zhbsD2DWLsItDWDRspejGJBxs4v.jpg'),
(83, 'Pantyhose', 'Pantyhose', 'Pantyhose, nylon or any other material looks incredible on all of our content creators.', 'Pantyhose', 'on', 'Pantyhose-4NlKRmMliq00naDpXrazJenjEHS81AhQ.jpg'),
(84, 'Party', 'Party', 'Like to party? So do these creators, and so do we.', 'Party', 'on', 'Party-u9dTGPBrRxlpIITUotmqSFfATO5M5hfw.jpg'),
(85, 'Petite', 'Petite', 'Enjoy petite beauties? The sexiest, smallest content creators we have to offer', 'Petite', 'on', 'Petite-7cIirl9ZfevZ5lQmMnL4TXfSUF0yBe8s.jpg'),
(86, 'Pregnant', 'Pregnant', 'Into big pregnant bellies? We\'ve got you covered!', 'Pregnant', 'on', 'Pregnant-oBgQoUWjV26eRKWVDs1GHk28ZDbIq4if.jpg'),
(87, 'Redhead', 'Redhead', 'Redheads - kissed by fire. Is there anything more sultry and seductive?', 'Redhead', 'on', 'Redhead-CSwNunHkCt9LsVTcMIMH5bqFOEkAOO8T.jpg'),
(88, 'Russian', 'Russian', 'All the hottest Russian creators from the east side of the iron curtain are right here', 'Russian', 'on', 'Russian-5lbosU4foXg0vQM7dsenTd8seNFG3TpO.jpg'),
(89, 'School Girl', 'School-Girl', 'Schoolgirls, the main reason anyone ever goes into teaching. Are you ready for your lesson?', 'School Girl', 'on', 'School-Girl-NGrxwm249Sas3yisGMyKih5ddyxedT6j.jpg'),
(90, 'Self Suck', 'Self-Suck', 'Self sucking, some of us can do it, others wish we could. Come see why.', 'Self Suck', 'on', 'Self-Suck-U16uWUDPFkECjC4mD7u6Olpnx4aVv6ls.jpg'),
(91, 'Shy', 'Shy', 'Nothing is sexier than a shy babe. Come see them open up', 'Shy', 'on', 'Shy-Tf5gLMFAUhOqBbcGMHHOfeKn21yyxnEn.jpg'),
(92, 'Sissy', 'Sissy', 'Sissy content, including those who love to cross dress, gender play, and way more.', 'Sissy', 'on', 'Sissy-IsTQCheXo7e6zZBDh0hjv03W8amvdteO.jpg'),
(93, 'Skinny', 'Skinny', 'Here\'s the skinny, all the sexiest thinnest content creators are right here.', 'Skinny', 'on', 'Skinny-5AMfby2PH7SOb7rOGgN6I9yJ72gFTYIh.jpg'),
(94, 'Slave', 'Slave', 'Slave\'s will do anything required of them by their master or mistress. Don\'t you wish you could be in their place?', 'Slave', 'on', 'Slave-C6kUesCgV4fRCcrEyEqGCVGY2iJH93LC.jpg'),
(95, 'Slut', 'Slut', 'Sluts, we all love them, most of us are them. Come see the hottest sluttiest creators on the planet.', 'Slut', 'on', 'Slut-kUq0kEDqtCMznw6R9izKbRRUhKlW3WXD.jpg'),
(96, 'Small Cock', 'Small-Cock', 'Small cocks are all the rage. Remember: size matters, and all cocks are beautiful', 'Small Cock', 'on', 'Small-Cock-4X8GNdCPhPsvHkNsRem6fmrZ7Qtw5fVR.jpg'),
(97, 'Small Tits', 'Small-Tits', 'Small tits, for those who love a natural rack', 'Small Tits', 'on', 'Small-Tits-KzIeRWzSdAPnhQ6W4SedwOr7lOHZf3BD.jpg'),
(98, 'Smoking', 'Smoking', 'Is there anything sexier than an oral fixation and watching someone blow smoke out of their mouth? I think not.', 'Smoking', 'on', 'Smoking-ei0HuEO0yEN4zZ6M0qhWVjZRUwOLw0HR.jpg'),
(99, 'SPH', 'SPH', 'Small penis humiliation - because who would want such a pathetically small cock?', 'SPH', 'on', 'SPH-Z1XOA8Sp8jm89x5V1f1ozr5nxGYwaKhj.jpg'),
(100, 'Spit', 'Spit', 'Spit in my mouth please - all the hottest content involving saliva', '', 'on', 'Spit-dHln2QDyVvyGdlPgOYHGNGwO5fGYXJbp.jpg'),
(101, 'Squirt', 'Squirt', 'Squirting - the aspiration of many. See the sexiest content creators soaking everything. Warning: you may get wet', 'Squirt', 'on', 'Squirt-hoKLMu0gon2K7mFjGq2OzWEr0QwBTdwp.jpg'),
(102, 'Stockings', 'Stockings', 'Stockings add a sexy element to any content  - come see all the best nylons, thigh highs, fishnets, and other stockings.', 'Stockings', 'on', 'Stockings-VqJ0JtOFrmHxFcBPfghOa3DC4MEVPdDY.jpg'),
(103, 'Strapon', 'Strapon', 'Get pegged or cry tryin\' - see the hottest strapon action from the sexiest creators', 'Strapon', 'on', 'Strapon-QptvU6AgBboKuapJybURUHxUEFUill4F.jpg'),
(104, 'Submissive', 'Submissive', 'Submissives love to serve and do as they\'re told. Integral to bdsm content', 'Submissive', 'on', 'Submissive-HUIWKm9zvg7xJR7qMskr3MoL3Rrv4OX0.jpg'),
(105, 'Tattoo', 'Tattoo', 'Tattoos - body art - body modifications make the creator a living canvas.', 'Tattoo', 'on', 'Tattoo-dVEx1hOyijjnC3AK792yzrBqFHkBASZE.jpg'),
(106, 'Twink', 'Twink', 'Come see your favorite tiny twinks getting dominated by the gay men you love.', 'Twink', 'on', 'Twink-motVOQ1BtjrSgb5qKvmSdjyk7OXsQX3S.jpg'),
(107, 'Uncut', 'Uncut', 'Uncircumcised and natural cocks - come and get em', '', 'on', 'Uncut-rKOB0HvjhkapasfRsq3E8DzxCDJNZbUd.jpg'),
(108, 'BTS', 'BTS', 'All the exclusive behind the scenes action from your favorite content creators.', 'BTS,Behind The Scenes', 'on', 'BTS-rpXlFl9lI7eOJImWuBN7LVqKws6UgvlY.jpg'),
(109, 'MDLB', 'MDLB', 'MDLB content', 'MDLB', 'on', 'MDLB-ZTivHiiqOiFQmadJv8r946vr1ZSqT1Vc.jpg'),
(110, 'MDLG', 'MDLG', 'MDLG content', 'MDLG', 'on', 'MDLG-Xj9HT8VIrfZvIsbcV8N0kfCHtup0enpq.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `updates_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `reply` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Trash, 1 Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `comments_likes`
--

CREATE TABLE `comments_likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comments_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments_likes`
--

INSERT INTO `comments_likes` (`id`, `user_id`, `comments_id`, `created_at`, `updated_at`) VALUES
(30, 74, 13, '2021-11-16 13:11:58', '2021-11-16 13:11:58');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_1` int(11) NOT NULL,
  `user_2` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `user_1`, `user_2`, `created_at`, `updated_at`) VALUES
(13, 25, 24, '2021-11-16 16:20:10', '2021-11-16 11:20:10'),
(14, 83, 1, '2021-11-16 17:42:28', '2021-11-19 11:19:14'),
(15, 84, 78, '2021-11-16 19:58:28', '2021-11-16 09:01:26'),
(16, 85, 78, '2021-11-18 14:47:37', '2021-11-24 08:25:04');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'US', 'United States'),
(2, 'CA', 'Canada'),
(3, 'AF', 'Afghanistan'),
(4, 'AL', 'Albania'),
(5, 'DZ', 'Algeria'),
(6, 'DS', 'American Samoa'),
(7, 'AD', 'Andorra'),
(8, 'AO', 'Angola'),
(9, 'AI', 'Anguilla'),
(10, 'AQ', 'Antarctica'),
(11, 'AG', 'Antigua and/or Barbuda'),
(12, 'AR', 'Argentina'),
(13, 'AM', 'Armenia'),
(14, 'AW', 'Aruba'),
(15, 'AU', 'Australia'),
(16, 'AT', 'Austria'),
(17, 'AZ', 'Azerbaijan'),
(18, 'BS', 'Bahamas'),
(19, 'BH', 'Bahrain'),
(20, 'BD', 'Bangladesh'),
(21, 'BB', 'Barbados'),
(22, 'BY', 'Belarus'),
(23, 'BE', 'Belgium'),
(24, 'BZ', 'Belize'),
(25, 'BJ', 'Benin'),
(26, 'BM', 'Bermuda'),
(27, 'BT', 'Bhutan'),
(28, 'BO', 'Bolivia'),
(29, 'BA', 'Bosnia and Herzegovina'),
(30, 'BW', 'Botswana'),
(31, 'BV', 'Bouvet Island'),
(32, 'BR', 'Brazil'),
(33, 'IO', 'British lndian Ocean Territory'),
(34, 'BN', 'Brunei Darussalam'),
(35, 'BG', 'Bulgaria'),
(36, 'BF', 'Burkina Faso'),
(37, 'BI', 'Burundi'),
(38, 'KH', 'Cambodia'),
(39, 'CM', 'Cameroon'),
(40, 'CV', 'Cape Verde'),
(41, 'KY', 'Cayman Islands'),
(42, 'CF', 'Central African Republic'),
(43, 'TD', 'Chad'),
(44, 'CL', 'Chile'),
(45, 'CN', 'China'),
(46, 'CX', 'Christmas Island'),
(47, 'CC', 'Cocos (Keeling) Islands'),
(48, 'CO', 'Colombia'),
(49, 'KM', 'Comoros'),
(50, 'CG', 'Congo'),
(51, 'CK', 'Cook Islands'),
(52, 'CR', 'Costa Rica'),
(53, 'HR', 'Croatia (Hrvatska)'),
(54, 'CU', 'Cuba'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czech Republic'),
(57, 'DK', 'Denmark'),
(58, 'DJ', 'Djibouti'),
(59, 'DM', 'Dominica'),
(60, 'DO', 'Dominican Republic'),
(61, 'TP', 'East Timor'),
(62, 'EC', 'Ecuador'),
(63, 'EG', 'Egypt'),
(64, 'SV', 'El Salvador'),
(65, 'GQ', 'Equatorial Guinea'),
(66, 'ER', 'Eritrea'),
(67, 'EE', 'Estonia'),
(68, 'ET', 'Ethiopia'),
(69, 'FK', 'Falkland Islands (Malvinas)'),
(70, 'FO', 'Faroe Islands'),
(71, 'FJ', 'Fiji'),
(72, 'FI', 'Finland'),
(73, 'FR', 'France'),
(74, 'FX', 'France, Metropolitan'),
(75, 'GF', 'French Guiana'),
(76, 'PF', 'French Polynesia'),
(77, 'TF', 'French Southern Territories'),
(78, 'GA', 'Gabon'),
(79, 'GM', 'Gambia'),
(80, 'GE', 'Georgia'),
(81, 'DE', 'Germany'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'ID', 'Indonesia'),
(101, 'IR', 'Iran (Islamic Republic of)'),
(102, 'IQ', 'Iraq'),
(103, 'IE', 'Ireland'),
(104, 'IL', 'Israel'),
(105, 'IT', 'Italy'),
(106, 'CI', 'Ivory Coast'),
(107, 'JM', 'Jamaica'),
(108, 'JP', 'Japan'),
(109, 'JO', 'Jordan'),
(110, 'KZ', 'Kazakhstan'),
(111, 'KE', 'Kenya'),
(112, 'KI', 'Kiribati'),
(113, 'KP', 'Korea, Democratic People\'s Republic of'),
(114, 'KR', 'Korea, Republic of'),
(115, 'XK', 'Kosovo'),
(116, 'KW', 'Kuwait'),
(117, 'KG', 'Kyrgyzstan'),
(118, 'LA', 'Lao People\'s Democratic Republic'),
(119, 'LV', 'Latvia'),
(120, 'LB', 'Lebanon'),
(121, 'LS', 'Lesotho'),
(122, 'LR', 'Liberia'),
(123, 'LY', 'Libyan Arab Jamahiriya'),
(124, 'LI', 'Liechtenstein'),
(125, 'LT', 'Lithuania'),
(126, 'LU', 'Luxembourg'),
(127, 'MO', 'Macau'),
(128, 'MK', 'Macedonia'),
(129, 'MG', 'Madagascar'),
(130, 'MW', 'Malawi'),
(131, 'MY', 'Malaysia'),
(132, 'MV', 'Maldives'),
(133, 'ML', 'Mali'),
(134, 'MT', 'Malta'),
(135, 'MH', 'Marshall Islands'),
(136, 'MQ', 'Martinique'),
(137, 'MR', 'Mauritania'),
(138, 'MU', 'Mauritius'),
(139, 'TY', 'Mayotte'),
(140, 'MX', 'Mexico'),
(141, 'FM', 'Micronesia, Federated States of'),
(142, 'MD', 'Moldova, Republic of'),
(143, 'MC', 'Monaco'),
(144, 'MN', 'Mongolia'),
(145, 'ME', 'Montenegro'),
(146, 'MS', 'Montserrat'),
(147, 'MA', 'Morocco'),
(148, 'MZ', 'Mozambique'),
(149, 'MM', 'Myanmar'),
(150, 'NA', 'Namibia'),
(151, 'NR', 'Nauru'),
(152, 'NP', 'Nepal'),
(153, 'NL', 'Netherlands'),
(154, 'AN', 'Netherlands Antilles'),
(155, 'NC', 'New Caledonia'),
(156, 'NZ', 'New Zealand'),
(157, 'NI', 'Nicaragua'),
(158, 'NE', 'Niger'),
(159, 'NG', 'Nigeria'),
(160, 'NU', 'Niue'),
(161, 'NF', 'Norfork Island'),
(162, 'MP', 'Northern Mariana Islands'),
(163, 'NO', 'Norway'),
(164, 'OM', 'Oman'),
(165, 'PK', 'Pakistan'),
(166, 'PW', 'Palau'),
(167, 'PA', 'Panama'),
(168, 'PG', 'Papua New Guinea'),
(169, 'PY', 'Paraguay'),
(170, 'PE', 'Peru'),
(171, 'PH', 'Philippines'),
(172, 'PN', 'Pitcairn'),
(173, 'PL', 'Poland'),
(174, 'PT', 'Portugal'),
(175, 'PR', 'Puerto Rico'),
(176, 'QA', 'Qatar'),
(177, 'RE', 'Reunion'),
(178, 'RO', 'Romania'),
(179, 'RU', 'Russian Federation'),
(180, 'RW', 'Rwanda'),
(181, 'KN', 'Saint Kitts and Nevis'),
(182, 'LC', 'Saint Lucia'),
(183, 'VC', 'Saint Vincent and the Grenadines'),
(184, 'WS', 'Samoa'),
(185, 'SM', 'San Marino'),
(186, 'ST', 'Sao Tome and Principe'),
(187, 'SA', 'Saudi Arabia'),
(188, 'SN', 'Senegal'),
(189, 'RS', 'Serbia'),
(190, 'SC', 'Seychelles'),
(191, 'SL', 'Sierra Leone'),
(192, 'SG', 'Singapore'),
(193, 'SK', 'Slovakia'),
(194, 'SI', 'Slovenia'),
(195, 'SB', 'Solomon Islands'),
(196, 'SO', 'Somalia'),
(197, 'ZA', 'South Africa'),
(198, 'GS', 'South Georgia South Sandwich Islands'),
(199, 'ES', 'Spain'),
(200, 'LK', 'Sri Lanka'),
(201, 'SH', 'St. Helena'),
(202, 'PM', 'St. Pierre and Miquelon'),
(203, 'SD', 'Sudan'),
(204, 'SR', 'Suriname'),
(205, 'SJ', 'Svalbarn and Jan Mayen Islands'),
(206, 'SZ', 'Swaziland'),
(207, 'SE', 'Sweden'),
(208, 'CH', 'Switzerland'),
(209, 'SY', 'Syrian Arab Republic'),
(210, 'TW', 'Taiwan'),
(211, 'TJ', 'Tajikistan'),
(212, 'TZ', 'Tanzania, United Republic of'),
(213, 'TH', 'Thailand'),
(214, 'TG', 'Togo'),
(215, 'TK', 'Tokelau'),
(216, 'TO', 'Tonga'),
(217, 'TT', 'Trinidad and Tobago'),
(218, 'TN', 'Tunisia'),
(219, 'TR', 'Turkey'),
(220, 'TM', 'Turkmenistan'),
(221, 'TC', 'Turks and Caicos Islands'),
(222, 'TV', 'Tuvalu'),
(223, 'UG', 'Uganda'),
(224, 'UA', 'Ukraine'),
(225, 'AE', 'United Arab Emirates'),
(226, 'GB', 'United Kingdom'),
(227, 'UM', 'United States minor outlying islands'),
(228, 'UY', 'Uruguay'),
(229, 'UZ', 'Uzbekistan'),
(230, 'VU', 'Vanuatu'),
(231, 'VA', 'Vatican City State'),
(232, 'VE', 'Venezuela'),
(233, 'VN', 'Vietnam'),
(234, 'VG', 'Virgin Islands (British)'),
(235, 'VI', 'Virgin Islands (U.S.)'),
(236, 'WF', 'Wallis and Futuna Islands'),
(237, 'EH', 'Western Sahara'),
(238, 'YE', 'Yemen'),
(239, 'YU', 'Yugoslavia'),
(240, 'ZR', 'Zaire'),
(241, 'ZM', 'Zambia'),
(242, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `txn_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `payment_gateway` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('active','pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `screenshot_transfer` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `txn_id`, `amount`, `payment_gateway`, `date`, `status`, `screenshot_transfer`) VALUES
(2, 83, '0121320202000000095', 50, 'CCBill', '2021-11-16 12:38:13', 'active', '');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(12711, 'default', '{\"uuid\":\"02f2478d-57ae-4f64-a7d1-cc40a362b31a\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":3:{s:4:\\\"user\\\";i:78;s:7:\\\"message\\\";s:2:\\\"kk\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637268270, 1637268270),
(12712, 'default', '{\"uuid\":\"b3b52492-55b0-437e-a3dd-e6788ce4da9c\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":3:{s:4:\\\"user\\\";i:85;s:7:\\\"message\\\";s:6:\\\"hhhhhh\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637268485, 1637268485),
(12713, 'default', '{\"uuid\":\"55a63884-f5e9-4dea-b631-4d1fa5a4dea6\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":3:{s:4:\\\"user\\\";s:11:\\\"its working\\\";s:7:\\\"message\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637348246, 1637348246),
(12714, 'default', '{\"uuid\":\"a78d0974-851f-433e-804f-36d93d2c2218\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":3:{s:8:\\\"userData\\\";s:11:\\\"its working\\\";s:11:\\\"messageData\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637348349, 1637348349),
(12715, 'default', '{\"uuid\":\"5edbb6fd-1f9b-43a1-8734-adb090a9911f\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":3:{s:8:\\\"userData\\\";s:11:\\\"its working\\\";s:11:\\\"messageData\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637348364, 1637348364),
(12716, 'default', '{\"uuid\":\"568ab35d-cd02-4bb0-9120-f2322e7ac543\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":3:{s:8:\\\"userData\\\";s:11:\\\"its working\\\";s:11:\\\"messageData\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637348554, 1637348554),
(12717, 'default', '{\"uuid\":\"fbc884e4-009b-4f1c-9dfd-63e89d795938\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":3:{s:8:\\\"userData\\\";s:11:\\\"its working\\\";s:11:\\\"messageData\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637348635, 1637348635),
(12718, 'default', '{\"uuid\":\"176df65f-7d97-4800-9d8a-5319a58af7b5\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":3:{s:8:\\\"userData\\\";s:11:\\\"its working\\\";s:11:\\\"messageData\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637348637, 1637348637),
(12719, 'default', '{\"uuid\":\"5c2ae83a-3780-40f9-a01a-6c0d481bbb3b\",\"displayName\":\"App\\\\Events\\\\NewPostEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637348874, 1637348874),
(12720, 'default', '{\"uuid\":\"0f65649e-0b52-4ac9-8a37-8864705b260b\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":8:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:10:\\\"retryAfter\\\";N;s:9:\\\"timeoutAt\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1637348875, 1637348875),
(12721, 'default', '{\"uuid\":\"3e63cba4-9cfc-4556-a8b9-31759bdb26ee\",\"displayName\":\"App\\\\Events\\\\NewPostEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637348910, 1637348910),
(12722, 'default', '{\"uuid\":\"f0ec1169-b4a7-4dc1-88ec-88282bbb2947\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":8:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:10:\\\"retryAfter\\\";N;s:9:\\\"timeoutAt\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1637348910, 1637348910),
(12723, 'default', '{\"uuid\":\"d272811a-a3ba-4752-96b1-bfe26603d32c\",\"displayName\":\"App\\\\Events\\\\NewPostEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637348949, 1637348949),
(12724, 'default', '{\"uuid\":\"72d8b2d6-799d-4949-9398-009e57e7a3c1\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":8:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:10:\\\"retryAfter\\\";N;s:9:\\\"timeoutAt\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1637348949, 1637348949),
(12725, 'default', '{\"uuid\":\"e4c16290-f781-49aa-8856-8b2ffd747e6f\",\"displayName\":\"App\\\\Events\\\\NewPostEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637349174, 1637349174),
(12726, 'default', '{\"uuid\":\"a8fc9b45-444b-44ab-a2ec-e9368de56e92\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":8:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:10:\\\"retryAfter\\\";N;s:9:\\\"timeoutAt\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1637349174, 1637349174),
(12727, 'default', '{\"uuid\":\"cb3fb677-e262-4442-bb02-9b8f71bdb93b\",\"displayName\":\"App\\\\Events\\\\NewPostEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637349420, 1637349420),
(12728, 'default', '{\"uuid\":\"78fc4eb7-f707-43fe-aa53-dadf4008f9b6\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":8:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:10:\\\"retryAfter\\\";N;s:9:\\\"timeoutAt\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1637349420, 1637349420),
(12729, 'default', '{\"uuid\":\"3310af62-e47a-453c-a5e7-cdfaa5bdda89\",\"displayName\":\"App\\\\Events\\\\NewPostEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637349534, 1637349534),
(12730, 'default', '{\"uuid\":\"cd01235f-01d9-4ea1-9629-c86157b7c41b\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":8:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:10:\\\"retryAfter\\\";N;s:9:\\\"timeoutAt\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1637349534, 1637349534),
(12731, 'default', '{\"uuid\":\"3a09aa27-2d1f-41db-bb08-f2aa433a1d19\",\"displayName\":\"App\\\\Events\\\\NewPostEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637349728, 1637349728),
(12732, 'default', '{\"uuid\":\"874ae241-9327-411d-ad13-b27ca279eda7\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":8:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:10:\\\"retryAfter\\\";N;s:9:\\\"timeoutAt\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1637349728, 1637349728),
(12733, 'default', '{\"uuid\":\"bc3dfed2-c31c-43a4-aab5-4fb4fbe608d1\",\"displayName\":\"App\\\\Events\\\\NewPostEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637349767, 1637349767),
(12734, 'default', '{\"uuid\":\"7d2c3dbf-8d69-491d-9c31-e2e460cc33c0\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":8:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:10:\\\"retryAfter\\\";N;s:9:\\\"timeoutAt\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1637349767, 1637349767),
(12735, 'default', '{\"uuid\":\"ec7fadf4-b84e-43e6-81f0-242df491dcce\",\"displayName\":\"App\\\\Events\\\\NewPostEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637349846, 1637349846),
(12736, 'default', '{\"uuid\":\"41362659-6253-483d-9719-9b09b00b3a67\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":8:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:10:\\\"retryAfter\\\";N;s:9:\\\"timeoutAt\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1637349846, 1637349846),
(12737, 'default', '{\"uuid\":\"cfed5d0d-4c76-4bf2-89b3-9e010fb28cc2\",\"displayName\":\"App\\\\Events\\\\NewPostEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637350010, 1637350010),
(12738, 'default', '{\"uuid\":\"b4056759-669b-4e8e-947e-e588c6e3263a\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":8:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:10:\\\"retryAfter\\\";N;s:9:\\\"timeoutAt\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1637350010, 1637350010),
(12739, 'default', '{\"uuid\":\"1b453076-c111-44b6-8824-b3054145a545\",\"displayName\":\"App\\\\Events\\\\NewPostEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637350032, 1637350032),
(12740, 'default', '{\"uuid\":\"48e225f2-2d77-4e94-8d47-6c9af2927ec5\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":8:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:10:\\\"retryAfter\\\";N;s:9:\\\"timeoutAt\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1637350032, 1637350032),
(12741, 'default', '{\"uuid\":\"845b099b-f37d-4575-b537-c76725517879\",\"displayName\":\"App\\\\Events\\\\NewPostEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637350034, 1637350034),
(12742, 'default', '{\"uuid\":\"c8f1c289-f7bf-435d-ae33-c3e8d9dcc23e\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":8:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:10:\\\"retryAfter\\\";N;s:9:\\\"timeoutAt\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1637350034, 1637350034),
(12743, 'default', '{\"uuid\":\"d07ce6a4-dcbe-414a-a95b-633fefa6067c\",\"displayName\":\"App\\\\Events\\\\NewPostEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637350110, 1637350110),
(12744, 'default', '{\"uuid\":\"48223c96-15bd-4b95-9c62-2cf4254e0f33\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":8:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:10:\\\"retryAfter\\\";N;s:9:\\\"timeoutAt\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1637350110, 1637350110),
(12745, 'default', '{\"uuid\":\"cadff623-14be-4fa2-9e41-23abd9dc833d\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":3:{s:8:\\\"userData\\\";i:1;s:11:\\\"messageData\\\";s:2:\\\"hi\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637350277, 1637350277),
(12746, 'default', '{\"uuid\":\"dd34f569-90c8-48ea-9809-bae12585032c\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":8:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:10:\\\"retryAfter\\\";N;s:9:\\\"timeoutAt\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1637350562, 1637350562),
(12747, 'default', '{\"uuid\":\"f7fc7714-f8ae-49af-ad57-d2d826568906\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":8:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":2:{s:4:\\\"post\\\";s:12:\\\"message body\\\";s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:10:\\\"retryAfter\\\";N;s:9:\\\"timeoutAt\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1637350785, 1637350785),
(12748, 'default', '{\"uuid\":\"1d76e299-38aa-46d3-8407-aac5272ad4ee\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":3:{s:8:\\\"userData\\\";s:12:\\\"message body\\\";s:11:\\\"messageData\\\";s:4:\\\"demo\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637350815, 1637350815),
(12749, 'default', '{\"uuid\":\"555d046e-1063-4310-b79c-f2a86b610a83\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":3:{s:8:\\\"userData\\\";s:12:\\\"message body\\\";s:11:\\\"messageData\\\";s:4:\\\"demo\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637350960, 1637350960),
(12750, 'default', '{\"uuid\":\"39244b54-6c1b-4d77-83a5-37fb2b89390f\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":3:{s:8:\\\"userData\\\";s:12:\\\"message body\\\";s:11:\\\"messageData\\\";s:4:\\\"demo\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637350975, 1637350975),
(12751, 'default', '{\"uuid\":\"a79fa0d2-b64e-4e92-886a-e9b92026c75c\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":3:{s:8:\\\"userData\\\";s:12:\\\"message body\\\";s:11:\\\"messageData\\\";s:4:\\\"demo\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637350997, 1637350997),
(12752, 'default', '{\"uuid\":\"f10e8940-6adf-4abf-ab21-369bd8293e93\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":3:{s:8:\\\"userData\\\";s:12:\\\"message body\\\";s:11:\\\"messageData\\\";s:4:\\\"demo\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637351014, 1637351014),
(12753, 'default', '{\"uuid\":\"fb51597f-5cf2-49fd-b7e3-ced4e9c46436\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":3:{s:8:\\\"userData\\\";s:12:\\\"message body\\\";s:11:\\\"messageData\\\";s:4:\\\"demo\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637351225, 1637351225),
(12754, 'default', '{\"uuid\":\"fe49ce08-1874-4dcc-a2bb-6a45242930bd\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":3:{s:8:\\\"userData\\\";s:12:\\\"message body\\\";s:11:\\\"messageData\\\";s:4:\\\"demo\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637351371, 1637351371),
(12755, 'default', '{\"uuid\":\"403a05c2-f16c-4093-a2ae-070226a7ef39\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";s:17:\\\"message body demo\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637351441, 1637351441),
(12756, 'default', '{\"uuid\":\"34aa0939-2d14-43aa-b816-88dc52eb9558\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";s:17:\\\"message body demo\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637351498, 1637351498),
(12757, 'default', '{\"uuid\":\"4e2f1aaa-a88e-4237-ac68-8c55fc43ff7b\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";s:17:\\\"message body demo\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637351515, 1637351515),
(12758, 'default', '{\"uuid\":\"e88a9604-0ecb-4e14-9978-2b66f91bef47\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";s:17:\\\"message body demo\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637351881, 1637351881),
(12759, 'default', '{\"uuid\":\"22b5b52f-d471-41ef-b0f0-bddbd350caa3\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";s:17:\\\"message body demo\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637351911, 1637351911),
(12760, 'default', '{\"uuid\":\"d59177d9-64ae-44c3-891f-9e638f32c3c9\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";s:17:\\\"message body demo\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637354113, 1637354113),
(12761, 'default', '{\"uuid\":\"5df6dc38-e993-4428-b044-fd7e38a99cd1\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";s:17:\\\"message body demo\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637354150, 1637354150),
(12762, 'default', '{\"uuid\":\"ea022413-507b-40fc-a702-f3d69066b6d8\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";s:17:\\\"message body demo\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637354405, 1637354405),
(12763, 'default', '{\"uuid\":\"3271f4f7-c188-4fd4-b394-84365b4fe613\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";s:17:\\\"message body demo\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637354411, 1637354411),
(12764, 'default', '{\"uuid\":\"35409b5c-643e-4fb0-a683-08fb321723db\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";s:17:\\\"message body demo\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637354594, 1637354594),
(12765, 'default', '{\"uuid\":\"8bde7550-3608-49b3-a398-bb60a5038254\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:85;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637354928, 1637354928),
(12766, 'default', '{\"uuid\":\"de8e2821-4fc2-4028-8d48-1521f251da35\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:78;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637355070, 1637355070),
(12767, 'default', '{\"uuid\":\"2b1aeeb7-be81-476d-845e-4c7be1cb2349\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:78;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637356718, 1637356718),
(12768, 'default', '{\"uuid\":\"5740e246-a903-4e21-86a0-dd6f7cbb8359\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:78;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637358795, 1637358795),
(12769, 'default', '{\"uuid\":\"646ec67a-33b2-4f45-8d6d-70349a0a92b7\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:85;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637358898, 1637358898),
(12770, 'default', '{\"uuid\":\"b211e0f3-960b-4f2b-bec5-5b127e3a5df7\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:1;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637359797, 1637359797);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(12771, 'default', '{\"uuid\":\"300e5c20-8c0c-4e99-854b-81f99169203c\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:83;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637360289, 1637360289),
(12772, 'default', '{\"uuid\":\"89578bc7-e0dc-4881-b717-d8c42ec51588\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:83;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637360354, 1637360354),
(12773, 'default', '{\"uuid\":\"5387c2c7-9126-497b-ac8e-adeb2d6707f4\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:78;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637421392, 1637421392),
(12774, 'default', '{\"uuid\":\"a1ac8d43-0446-48e5-a679-c7f08172198f\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:78;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637421660, 1637421660),
(12775, 'default', '{\"uuid\":\"7968afc8-4ec4-4624-97ea-369af53c4678\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:78;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637421918, 1637421918),
(12776, 'default', '{\"uuid\":\"2684fb0d-b19d-4f2d-91f7-fc72612baf8a\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:85;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637422039, 1637422039),
(12777, 'default', '{\"uuid\":\"afa91358-c4b4-44d3-aaa7-f807beda6afe\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:78;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637422057, 1637422057),
(12778, 'default', '{\"uuid\":\"6c9a4a38-65b7-43be-a6ce-86b6ad48e754\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:78;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637422159, 1637422159),
(12779, 'default', '{\"uuid\":\"44ff748a-ebb7-456e-970b-add77a9d0d11\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:78;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637423147, 1637423147),
(12780, 'default', '{\"uuid\":\"15fc1f59-af37-4422-b412-b1d0a548fb0a\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:78;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637423403, 1637423403),
(12781, 'default', '{\"uuid\":\"266208b7-a488-42b3-bae0-734af3b529c6\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:78;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637424378, 1637424378),
(12782, 'default', '{\"uuid\":\"fcde4eb3-69a0-49f7-a454-e26558fdf39a\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:78;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637424406, 1637424406),
(12783, 'default', '{\"uuid\":\"fa940c4d-55ec-4cf0-8383-33fe918123eb\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:78;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637424516, 1637424516),
(12784, 'default', '{\"uuid\":\"b1135485-08e8-4b28-be4d-5e2c9a2fd89f\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:78;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637424620, 1637424620),
(12785, 'default', '{\"uuid\":\"1f6d99b8-fd06-46d5-a896-8f1bd00bcbc5\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:78;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637425216, 1637425216),
(12786, 'default', '{\"uuid\":\"ca76e182-d7ca-46aa-a93c-e1d47b77ca58\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:78;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637425360, 1637425360),
(12787, 'default', '{\"uuid\":\"a7ee3808-f72a-4cce-a0b0-2cfd26036d97\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:78;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637425521, 1637425521),
(12788, 'default', '{\"uuid\":\"716b197f-43b7-4444-9e62-849ad31ea2c5\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:78;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637425722, 1637425722),
(12789, 'default', '{\"uuid\":\"f8ca19af-69a7-4a8f-9a67-85d70ad4c633\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:78;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637426099, 1637426099),
(12790, 'default', '{\"uuid\":\"77128b83-ceaf-450f-9281-a2cee5fa4cf3\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:78;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637432297, 1637432297),
(12791, 'default', '{\"uuid\":\"3e82dfe6-98cd-4d0a-a64e-5dd8b89264e7\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:78;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637432603, 1637432603),
(12792, 'default', '{\"uuid\":\"622e3e8e-859d-4c5a-9f0b-a3ee03e38097\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:78;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637432995, 1637432995),
(12793, 'default', '{\"uuid\":\"d0a13604-60fd-474c-a00a-8779b67d0b0a\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:85;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637573899, 1637573899),
(12794, 'default', '{\"uuid\":\"1b220ce3-fcef-4991-ae7c-5c023be6484a\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:85;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637574007, 1637574007),
(12795, 'default', '{\"uuid\":\"99d11dc9-305c-499b-890a-bb38806555a1\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:85;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637574212, 1637574212),
(12796, 'default', '{\"uuid\":\"50376623-690e-4b67-b6f9-86f05c83ea8f\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:85;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637574280, 1637574280),
(12797, 'default', '{\"uuid\":\"0e2650a8-93f0-4e9c-84b7-7c12f94373b7\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:85;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637574368, 1637574368),
(12798, 'default', '{\"uuid\":\"e60f893c-83a8-4c11-8ee3-5c8d4289289b\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:78;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637575722, 1637575722),
(12799, 'default', '{\"uuid\":\"7ca30b6b-a899-4bb2-9125-2b0cf949220d\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:85;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637599883, 1637599883),
(12800, 'default', '{\"uuid\":\"98a4cb74-bdd9-4168-a283-8ce27f6bf914\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:85;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637599905, 1637599905),
(12801, 'default', '{\"uuid\":\"0d2b6fbc-0a61-434f-b9bf-0e5eaaeb98de\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:85;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637599925, 1637599925),
(12802, 'default', '{\"uuid\":\"8fba0111-1a34-45f0-a57a-0ef34b7b9888\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:85;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637600061, 1637600061),
(12803, 'default', '{\"uuid\":\"39c4b7fc-7ba6-4197-a38d-98ca6c0c8515\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:78;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637608961, 1637608961),
(12804, 'default', '{\"uuid\":\"382b055b-9b3a-4179-94db-1a6c851612ff\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:78;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637608994, 1637608994),
(12805, 'default', '{\"uuid\":\"fea17676-d9d0-4af6-85be-5963085f355a\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:78;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637609019, 1637609019),
(12806, 'default', '{\"uuid\":\"a9386875-4aeb-4c30-9358-cd579980a99b\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:78;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637609059, 1637609059),
(12807, 'default', '{\"uuid\":\"c55583a8-d707-4c2e-8852-770d41ffa670\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:85;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637781225, 1637781225),
(12808, 'default', '{\"uuid\":\"43425454-d94a-4934-8197-8d20f9840158\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:85;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637781767, 1637781767),
(12809, 'default', '{\"uuid\":\"63ff646b-06b3-4dac-b565-9baf97e024aa\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:85;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637781815, 1637781815),
(12810, 'default', '{\"uuid\":\"e8b0ea63-98e0-4197-8dc0-61dfb47cb272\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:85;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637781871, 1637781871),
(12811, 'default', '{\"uuid\":\"34c29f6d-9a1a-46f7-92dc-311fe6a51e71\",\"displayName\":\"App\\\\Events\\\\MessageNotifyEvent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":10:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageNotifyEvent\\\":2:{s:8:\\\"userData\\\";i:85;s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1637781904, 1637781904);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `abbreviation`) VALUES
(1, 'English', 'en'),
(2, 'Español', 'es');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `updates_id` int(11) UNSIGNED NOT NULL,
  `status` enum('0','1') CHARACTER SET utf8 NOT NULL DEFAULT '1' COMMENT '0 trash, 1 active',
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `updates_id`, `status`, `date`) VALUES
(16, 79, 53, '1', '2021-11-16 15:05:06'),
(17, 1, 50, '1', '2021-11-16 16:47:44'),
(18, 83, 58, '1', '2021-11-16 17:39:41'),
(19, 74, 44, '0', '2021-11-16 17:58:19'),
(20, 78, 61, '1', '2021-11-18 15:09:49'),
(21, 1, 59, '1', '2021-11-19 19:32:02'),
(22, 85, 53, '1', '2021-11-20 15:59:01');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `updates_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_poster` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_embed` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `music` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `updates_id`, `user_id`, `type`, `image`, `width`, `height`, `img_type`, `video`, `video_poster`, `video_embed`, `music`, `file`, `file_name`, `file_size`, `token`, `status`, `created_at`, `updated_at`) VALUES
(10, 7, 1, 'image', '11635749934h3ohvjat4v4ncmbsosw0.jpeg', '1200', '627', '', '', NULL, '', '', '', '', '', 'LMO3HikWcfjrIf5YgYbgx3Gyzbgtz3cUmjAhXzX3Z73ImTP0PDtkwDwWtJRe9Yp4gT1np0fHodgBaD6ybhJtTcHRE7jNv8RVWwiMOLKFzuSR3niCtBRL7xMbhF9oYAs1VM4FVOt64ZdHxdxTR0b7gR617f902e05c291635749934', 'active', '2021-11-01 12:58:54', '2021-11-01 12:59:06'),
(48, 23, 24, 'image', '241635971238i3m48cgx0qehrxv5z0ku.jpg', '4240', '2384', '', '', NULL, '', '', '', '', '', 'FiuXav7Q4CFrzCsgEAsnDY9P0UDJPEQikPEsEGaZNWz5Iud53bJ3XwYCguCICOhIkNUfqr4PFMCVF6EAUc3c48O1Xb0gcxKn6S1lzPgMJFRskO3ucUrDKwz5ZOSMpvYVxx25uO818lkOR0sCCPG0MF6182f0a6753031635971238', 'active', '2021-11-03 16:27:20', '2021-11-03 16:30:09'),
(49, 23, 24, 'image', '241635971244vqbhhonfl6aw84yp33wt.jpg', '4240', '2384', '', '', NULL, '', '', '', '', '', 'LvehrqTvAcXAOcmZGsVQWVQKIrJPjfYeHPhkuDEBWETLycl1J5Jaqj7Cwjios7bCntfSrOlXM96p7D4aLNUp69p82MyXKMHJ0qCBNAX4BHiGLBymSOQOFFmSzotbAgUrAq6XrNi14wnDJgYtt0qp206182f0ace6b8e1635971244', 'active', '2021-11-03 16:27:26', '2021-11-03 16:30:09'),
(50, 23, 24, 'image', '2416359712506fdx9c3wyqxzepxvt0ma.jpg', '4240', '2384', '', '', NULL, '', '', '', '', '', 'd0WcStYfktIrtco5utYHDuW1MRJrO32blCBVdwKdaRvTfO4lih2Lk7KdwHv4l6l9VM2Z2o4YmymxPfrMRYDlHK8dQ2uRtwfdn31LjtZamPNefHGOIObbiPtGnZRAIqcE7e36wcfVyON0Gqq56SkvKN6182f0b2d14fb1635971250', 'active', '2021-11-03 16:27:34', '2021-11-03 16:30:09'),
(51, 23, 24, 'image', '241635971258iwc9xbyz8cjgjwgkyzxd.jpg', '4240', '2384', '', '', NULL, '', '', '', '', '', 'GAyOfIZykOZYGy3cybbfv5Sx5CJpgEXmZCe3HMmsgufQV055n9f8UKuYHI8mPOZx187mb7hBQSLZzdEujTp2tAIk2LqkaAQrrkdo83oiT5HBk9D3USZQAPzdE8XUETdYvZ6sT8cedFbJHtzpDO0QBQ6182f0ba5bf671635971258', 'active', '2021-11-03 16:27:40', '2021-11-03 16:30:09'),
(52, 23, 24, 'image', '241635971265agruhbftwurleivpyuai.jpg', '4240', '2384', '', '', NULL, '', '', '', '', '', '95zrzKj3jVMUmeVsx7arc9UnbU9odxzVeeYzzVw7vn6PnuqfqCExe8lcKJYo2kqJNBmM529HMYTtxvPB6WfPiyLyPSqNTFJGkvjiKSLwmkf4W3UmCgvsl0yrKSeBdaUCKoMPUUlSyBdVieC45jVUrS6182f0c11b16c1635971265', 'active', '2021-11-03 16:27:47', '2021-11-03 16:30:09'),
(53, 23, 24, 'image', '241635971271r3dszvxaw90kuyg1wrmq.jpg', '4240', '2384', '', '', NULL, '', '', '', '', '', 'H2pNdpasoIKL0hhocKDV0nwJKMoLKoleHSrJYTqIV1dRocW2XTEotoCup9FS8kwD8sQDJ22VsP7LtFj9B0krOhUDQj1KwdwiSUpy7OyVlcbfzghPdECmuIrlK4EbRQZhAGBO2y9wskSxmkPYZBE8mo6182f0c763a581635971271', 'active', '2021-11-03 16:27:55', '2021-11-03 16:30:09'),
(57, 27, 24, 'image', '241636145112kfcwckwn1gqp8h9e6jfq.jpg', '4240', '2384', '', '', NULL, '', '', '', '', '', '7bG2wRcXMp3TwJgebELGvNqAjENgz00st1GGBHGiWgRg4dZ14QSbimZD6EmrqPhb5ifDvo8Ns2BQT8ZKexBpwNIFPnqugIeGzgKM1E77kU9Hn9Qm0uyOxgB1ilq3B78iCNTgmtfYLV0tl0Xpaf4P7w618597d8197791636145112', 'active', '2021-11-05 16:45:13', '2021-11-05 16:45:42'),
(58, 27, 24, 'image', '241636145117klzonvs1bksxpeujwexf.jpg', '4240', '2384', '', '', NULL, '', '', '', '', '', 'xncOPebz1VhGZy1r9caDzmOjkuskktomyEk228plW485yaYkYEtS4txS04wUThJctX7NtCB5e5ctJ2bzDzF0kQYnXaNjPUTBhSPsYWHPkJUv5Yo9se44m6hg09aDZFRLP2zAicXXMd1pkGqCfHXDkx618597dd9088d1636145117', 'active', '2021-11-05 16:45:19', '2021-11-05 16:45:42'),
(59, 27, 24, 'image', '241636145123p5sq5rktmynzwka4avhg.jpg', '4240', '2384', '', '', NULL, '', '', '', '', '', 'nGGBb55F7XmR7JzghNf20KCCj4VRXc9fStNwOOmPdsKJNlgubdkqn48iXCXAZ98asKiTEW27zSZ9sgxrJgSA5GGv8hip1BJ6xjODkHWQrz1zeklMo5rNDTvkFfrLspFYiKagvKyqCiscPv0RAMbgnr618597e38469d1636145123', 'active', '2021-11-05 16:45:24', '2021-11-05 16:45:42'),
(60, 28, 24, 'image', '241636145200bwp2usnilbbhxhr3ewg0.jpg', '4240', '2384', '', '', NULL, '', '', '', '', '', 'Bl4U9HUn5V58NVR6xVAdAtI7KWjJBkHu1sHWBZVW4lr8WWLYvP99oYNojf7BFqNWVzEuEstnmxlRDPVz2WZDfA0YWuFr7ZNTBUGmjd7UTGrrAqHQdhDsPa0SRIEBfG7rocZ5Hay6VA6BKgPIlcvli86185983088c631636145200', 'active', '2021-11-05 16:46:42', '2021-11-05 16:46:56'),
(61, 28, 24, 'image', '2416361452078serabhzg7joypdegj1g.jpg', '4240', '2384', '', '', NULL, '', '', '', '', '', 'aFDq6SL0quguqdTih26iTba59bTXsXQviJ6fXcO5SffL7HvkZOuHYnbDnG8cspb6YqwQ3BS2N90brJOvkSmUuXllODD0gTqikBveQ4ZldLMQZbeFjXrE5TuQWOw3DbWl0tJfg7MCqcfvZEvdFM4aSz618598376ef1b1636145207', 'active', '2021-11-05 16:46:50', '2021-11-05 16:46:56'),
(68, 40, 24, 'image', '2416365658375scwcj0n1qbqzmywd5cd.jpeg', '2730', '1536', '', '', NULL, '', '', '', '', '', 'wgDS6RFzgs53jQoWtbV7kMJmK1VZNkMy1dU7GW8p2fyvpoaILfTTCLZRwFoj8jkTL31TszqvgO3dZVLZh9HZkgTyNCboCLhxCPZndfsyX23cie7QqmXdoyguNWCcVtDEuXb8VtpmGe22n5sEHpnyuJ618c034d403041636565837', 'active', '2021-11-10 12:37:18', '2021-11-10 12:37:24'),
(70, 44, 24, 'image', '241636565933rrvsfulj1ugopchtv4i3.jpeg', '2730', '1536', '', '', NULL, '', '', '', '', '', '3ld0j9I3lvSxs3M0oT7y3kk9HXmM9hLfPVJ5opAHMxC0jZkvC63F9WaFuznBiLLOUuiapGHdZ1ZDzN4GHpkUupVAAZJXnbRolTNGpVrv4Tni8c7aYc2sHkta6rIBoVES4Q8dYTdsaZNY6okliNqqkv618c03ad50e7c1636565933', 'active', '2021-11-10 12:38:54', '2021-11-10 12:38:56'),
(71, 45, 24, 'image', '241636565966kartgedug3zu81fhefxj.jpeg', '2730', '1536', '', '', NULL, '', '', '', '', '', 'BTwdW6Xe13fpE8zSJOWgRpbbLyWpOkdaJbpQ65o5uGymx6dzJc2n7rDqeQdcxWB7y6DK8X7Cpdzj1U0E3WOognIv0WIt50iyFErFRjv8M9OdtjPv9zqx47w8wXfDSHlbZKRqRHoEOrHiy9gpcbTnXB618c03ced73f01636565966', 'active', '2021-11-10 12:39:27', '2021-11-10 12:39:29'),
(72, 46, 24, 'image', '241636565992a9n1h7zquadnyglmok21.jpeg', '2730', '1536', '', '', NULL, '', '', '', '', '', '1ik6GxNAMfAGGEpafhUjoYjsJseiY1ifIhSoLRbxaJuNHnZ6feK3OBlr29FdWb1Qh3E36ZNhkqA8ZgC8El7nVFaS5cicWntv4hD8eCtiooMKCpUUmbIZw2bgHTveeSTXbD1HsJPKUCwmLTUu2zZdgH618c03e80bca61636565992', 'active', '2021-11-10 12:39:53', '2021-11-10 12:39:56'),
(75, 50, 29, 'image', '2916366379883ziajbsidiu0f2tccusv.jpg', '1365', '2048', '', '', NULL, '', '', '', '', '', 'gxVAeuruRnzO5tKAs2x89o1GZxWUq4TQNRiCWFc9A0xvAIJH95z2Yewsx1EVA6jdqKjdQv7g2Nk1dwVL1nREezTai0T5CaBG7IyyJBLX21hMB7gb3U8sE0yCu1BPgAPKy7F1KEP0L0NPMbDinVKhH9618d1d24205b01636637988', 'active', '2021-11-11 08:39:51', '2021-11-11 08:40:43'),
(76, 50, 29, 'image', '291636637991kgmyw27yrtj8ccai8975.jpg', '1365', '2048', '', '', NULL, '', '', '', '', '', 'hQZqsQH5Eqe9070VINNTsJULNhp95zhyF4qJovL7TeNtB8JgobEAm8akGoNtdd1dVU4HlRh9lh2FhNqIpBdAtDbqzC6aeMpk5beteDma8rVCyghkL5YiKiaRvCJfnvYkWcEAQSKOasFpfM3XjINwwE618d1d27e597b1636637991', 'active', '2021-11-11 08:39:52', '2021-11-11 08:40:43'),
(77, 50, 29, 'image', '291636637993un4zbivrbahhkhqsg6y1.jpg', '1365', '2048', '', '', NULL, '', '', '', '', '', 'VXQtKsudH1HumEEQwebRUGj70n8LlNbOVQx2CwGLkKUghkDkmScgKyeefy2lf1ILOeuGPi1BZ4SqQY2kQrcSo7meeqYIVoUQ87W94OTzbGhWvUpeZGGIjX3U6amUBqbZGjRVhAhxbxoDxiwPTiIouM618d1d2984a3a1636637993', 'active', '2021-11-11 08:39:54', '2021-11-11 08:40:43'),
(78, 50, 29, 'image', '291636637994b0a4kdrtcnylsae23ib6.jpg', '1365', '2048', '', '', NULL, '', '', '', '', '', 'aStdyEZPQoIywTb76ztjp2w6GoKGsEUegv2nUL5WcQvkkSXuh0LHjcpmR71hjcNnoRvJPxzrYKMhMSeZw1hF2dI5QEy8PxnnL94F54BW3yJ097TSKJEeVk5MvC5hyVFPwag0ds4scvLn3LZm6gre5f618d1d2ad00871636637994', 'active', '2021-11-11 08:39:55', '2021-11-11 08:40:43'),
(80, 53, 78, 'image', '781636916275cuwadi6cvdksvzqet0dn.jpg', '800', '500', '', '', NULL, '', '', '', '', '', 'vIc4wdoDD3blWFeTzh5B4cfQGP2S4T4NWVGZGTbmFhqy3rl2JYiXUNWBTTlVGTtN45Dkopx86EImLRElF9fG8OlG58MhVALpboZ5ZnMiL63H8qo5utvHNxtsG1dUxWBTLu7c3ahRvMUuaoNG5ldxi961915c33a37961636916275', 'active', '2021-11-14 13:57:56', '2021-11-14 13:58:08'),
(81, 54, 1, 'image', '11637019917lxpbvogssqdc89nxmo3h.jpg', '2000', '2576', '', '', NULL, '', '', '', '', '', 'qtGuDOed6mGIauj3lcAtYRbsIe3Wj0N3hXls87oW2kJ4dhXqdlOHoYPtShfuFf2laGWBdcaPNvkn4t7cRDMHGiIk56YtYIE1XwIYY8z2SPAA0SwOD4lkWqfc7Ur1FdbvnK4tiUQWH9yoaFQdVZZGYH6192f10d91b521637019917', 'active', '2021-11-15 18:45:20', '2021-11-15 18:45:21'),
(82, 55, 1, 'image', '116370200387mzgbewvlvkzm1gxiqpz.jpg', '2000', '2576', '', '', NULL, '', '', '', '', '', 'JaC0CdToeKRKiJJHjmXd6Xwj1EQVvjzWDsGVW5nsSkkMzfJkJhJjQ6K870SptzFR0poos8wE2g8AZ4pB3FiILSfUtkljCYBuhDFfvfUmlSfUdkz1AAu24apPL9So3QMW5rm1WKwaOKsGHWRIr00VXP6192f18688b811637020038', 'active', '2021-11-15 18:47:19', '2021-11-15 18:47:20'),
(83, 56, 1, 'image', '11637020229fftysklh2sbimex9htow.jpg', '2000', '2576', '', '', NULL, '', '', '', '', '', '4rON2mzYgxChQFvrdsKiqA3OZOEfg0qdGcFkY27EADxQHWpD74HAkjn1mIGRNJRr4E37qcD6upeeq2BZ53srwrLZMnjuqaLGXKEoNRvMracuogLI20wIFNTAyN0JpmicfVcqJ4Xav0MRUqQSsCs8VT6192f245c29071637020229', 'active', '2021-11-15 18:50:30', '2021-11-15 18:50:58'),
(85, 58, 1, 'image', '11637020345qyffqzyr40uwjbbwzkex.jpg', '2000', '2576', '', '', NULL, '', '', '', '', '', 'y9ramaG9UkN8SuuBE79FsIHFYLBrur7CYi6QCIzHeFqS8qcJX77cLf35FfeU3m0rFt4TwyFyLyDnt6OL0PHT9OZ4HbBZocfhRNMo6BXsbV5GR0sW6h7kWEAjzv7IMoVaTsKML26B58QoiJ7ueSKeYW6192f2b904be91637020345', 'active', '2021-11-15 18:52:26', '2021-11-15 18:52:29'),
(86, 59, 24, 'image', '241637033586nikvisiuwx0u6wjvhtwy.jpg', '4240', '2384', '', '', NULL, '', '', '', '', '', 'XyqLUueQvRTqzA5OSxH0CB40vKKtvUjCrHDAgYR7ZTYA9unn7cxigAfA5b32JyC9MwUzjc3W1O7AQ12x6f44NPhA7uWbh8QMWG5lIYkZ35FBqAkjwnzlhGSmZ7OtpGQ4hmul7kO9mTfkg4NKCtCuBx61932672c587f1637033586', 'active', '2021-11-15 22:33:08', '2021-11-15 22:33:30'),
(87, 60, 24, 'image', '241637033851ssl4omxo6gbbusncopvn.jpg', '4240', '2384', '', '', NULL, '', '', '', '', '', 'NnBvsMP9O5zn0lX9kx2MmvROhc9bixYFUYwA8QE8nEBFsWMEed2f5JsQ2pYO66O5AJLUL5PhlD5oLlhQiJyvvm1LHyPtzm0FOBrEZhWGgP6tw6Oa8gzpq2ZbrYj5Sn5iTe4CZmtHBFs4KCg2rA8LBO6193277bee7061637033851', 'active', '2021-11-15 22:37:33', '2021-11-15 22:37:40'),
(88, 61, 78, 'image', '781637076336knptvhf631loauzswp3g.jpg', '2000', '2576', '', '', NULL, '', '', '', '', '', '8hkqSOAj6GTbHn17LR7sLR5gRedW3Dr3QILeXdZxH1l28grxAkXHwYfEufYymQ8oTKSrm2buO3N4yb2P6YQE88DChmQNtF6KA65mNgalxK2n5CTLqUmlk3hiqSHsO25ujrcfa5QQ5vAoQeZ5UjtP9d6193cd706c0bd1637076336', 'active', '2021-11-16 10:25:37', '2021-11-16 10:25:42'),
(89, 0, 83, 'image', '831637086306kzswi0ruzov5pzizc7c6.jpg', '2000', '2576', '', '', NULL, '', '', '', '', '', 'C2I4KxzauM3eOgzDqkax9sihqcsu1nU4xXW8rpriEkdmuuURyn6oupR3ReNZHGfcyKQ57xAobRHXneCRMPb8LD7w0cQX60mg6LT04y3GsCTrcoKQiykDv1VLBd1U3nAYjpOpStnABQsyCv8DzT09ey6193f462e0e8f1637086306', 'pending', '2021-11-16 13:11:50', '2021-11-16 13:11:50');

-- --------------------------------------------------------

--
-- Table structure for table `media_messages`
--

CREATE TABLE `media_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `messages_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_poster` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_messages`
--

INSERT INTO `media_messages` (`id`, `messages_id`, `type`, `file`, `width`, `height`, `video_poster`, `file_name`, `file_size`, `token`, `status`, `created_at`, `updated_at`) VALUES
(27, 83, 'image', '831637084555jfnjahcjvfdehlerd958.jpg', '2000', '2576', NULL, '', '', 'PaNCziSk2GdkWFupTzXyNqyyQYhv1JKoxbPIucwXYmTAFwUAC3Gq2NRYy28r1kaPKIklavD9GcilnKU1Gj3dmMfa8wsMw4GGr9kqskmsit8JxfW54G4baXBbQ8vJIPT4oSgVntfOXYpZ5mvYdewY6o6193ed8b7c6031637084555', 'active', '2021-11-16 12:42:36', '2021-11-16 12:42:42');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `conversations_id` int(11) UNSIGNED NOT NULL,
  `from_user_id` int(10) UNSIGNED NOT NULL,
  `to_user_id` int(10) UNSIGNED NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attach_file` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` enum('new','readed') NOT NULL DEFAULT 'new',
  `remove_from` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Delete, 1 Active',
  `file` varchar(150) NOT NULL,
  `original_name` varchar(255) NOT NULL,
  `format` varchar(10) NOT NULL,
  `size` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `tip` enum('yes','no') NOT NULL DEFAULT 'no',
  `tip_amount` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversations_id`, `from_user_id`, `to_user_id`, `message`, `attach_file`, `created_at`, `updated_at`, `status`, `remove_from`, `file`, `original_name`, `format`, `size`, `price`, `tip`, `tip_amount`) VALUES
(81, 13, 25, 24, '', '', '2021-11-16 11:20:10', '2021-11-16 11:20:10', 'new', '1', '', '', '', '', '0.00', 'yes', 5),
(82, 14, 83, 1, 'hi are you', '', '2021-11-16 12:42:28', '2021-11-16 12:42:28', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(83, 14, 83, 1, 'test image', '', '2021-11-16 12:42:42', '2021-11-16 12:42:42', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(84, 14, 83, 1, '', '', '2021-11-16 12:42:48', '2021-11-16 12:42:48', 'readed', '1', '', '', '', '', '0.00', 'yes', 5),
(85, 15, 84, 78, 'hi', '', '2021-11-16 08:58:28', '2021-11-16 08:58:28', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(86, 15, 78, 84, 'hello', '', '2021-11-16 09:01:26', '2021-11-16 09:01:27', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(87, 16, 85, 78, 'hi', '', '2021-11-18 03:47:37', '2021-11-18 03:47:37', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(88, 16, 78, 85, 'hi', '', '2021-11-18 04:42:35', '2021-11-18 04:42:35', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(89, 16, 78, 85, 'hello', '', '2021-11-18 04:53:26', '2021-11-18 04:53:26', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(90, 16, 78, 85, 'hi im free now', '', '2021-11-18 07:49:50', '2021-11-18 07:49:50', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(91, 16, 78, 85, 'hey', '', '2021-11-18 07:51:28', '2021-11-18 07:51:28', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(92, 16, 78, 85, 'dear', '', '2021-11-18 07:52:37', '2021-11-18 07:52:37', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(93, 16, 78, 85, 'hello', '', '2021-11-18 09:20:12', '2021-11-18 09:20:12', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(94, 16, 78, 85, 'arfgharfgh', '', '2021-11-18 09:31:19', '2021-11-18 09:31:19', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(95, 16, 78, 85, 'aassasas', '', '2021-11-18 09:32:16', '2021-11-18 09:32:16', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(96, 16, 78, 85, 'okkkk', '', '2021-11-18 09:34:53', '2021-11-18 09:34:53', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(97, 16, 78, 85, 'kk', '', '2021-11-18 09:44:30', '2021-11-18 09:44:30', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(98, 16, 85, 78, 'hhhhhh', '', '2021-11-18 09:48:05', '2021-11-18 10:10:52', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(99, 14, 1, 83, 'hi', '', '2021-11-19 08:31:17', '2021-11-19 08:31:17', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(100, 16, 85, 78, 'hello', '', '2021-11-19 09:48:48', '2021-11-19 09:48:48', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(101, 16, 78, 85, 'hello', '', '2021-11-19 09:51:10', '2021-11-19 09:51:10', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(102, 16, 78, 85, 'hey there', '', '2021-11-19 10:18:38', '2021-11-19 10:18:38', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(103, 16, 78, 85, 'hello dear how are you doing', '', '2021-11-19 10:53:15', '2021-11-19 10:53:15', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(104, 16, 85, 78, 'hello', '', '2021-11-19 10:54:58', '2021-11-19 10:54:58', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(105, 14, 1, 83, 'hello', '', '2021-11-19 11:09:57', '2021-11-19 11:09:57', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(106, 14, 83, 1, 'hello', '', '2021-11-19 11:18:09', '2021-11-19 11:18:10', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(107, 14, 83, 1, 'hii', '', '2021-11-19 11:19:14', '2021-11-19 11:19:14', 'new', '1', '', '', '', '', '0.00', 'no', 0),
(108, 16, 78, 85, 'heelo', '', '2021-11-20 04:16:31', '2021-11-20 04:16:31', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(109, 16, 78, 85, 'hiii', '', '2021-11-20 04:21:00', '2021-11-20 04:21:02', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(110, 16, 78, 85, 'hello', '', '2021-11-20 04:25:18', '2021-11-20 04:26:14', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(111, 16, 85, 78, 'hiii', '', '2021-11-20 04:27:19', '2021-11-20 04:27:31', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(112, 16, 78, 85, 'hello', '', '2021-11-20 04:27:37', '2021-11-20 04:28:14', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(113, 16, 78, 85, 'hey', '', '2021-11-20 04:29:19', '2021-11-20 04:29:19', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(114, 16, 78, 85, 'hello dear', '', '2021-11-20 04:45:47', '2021-11-20 04:45:47', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(115, 16, 78, 85, 'hello its working like a boss', '', '2021-11-20 04:50:03', '2021-11-20 04:50:03', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(116, 16, 78, 85, 'hey', '', '2021-11-20 05:06:18', '2021-11-20 05:06:18', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(117, 16, 78, 85, 'im waiting for you', '', '2021-11-20 05:06:46', '2021-11-20 05:06:46', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(118, 16, 78, 85, 'hello younus', '', '2021-11-20 05:08:36', '2021-11-20 05:08:36', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(119, 16, 78, 85, 'hgi', '', '2021-11-20 05:10:20', '2021-11-20 05:10:20', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(120, 16, 78, 85, 'hii', '', '2021-11-20 05:20:16', '2021-11-20 05:20:16', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(121, 16, 78, 85, 'okkk', '', '2021-11-20 05:22:40', '2021-11-20 05:22:40', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(122, 16, 78, 85, 'hii', '', '2021-11-20 05:25:21', '2021-11-20 05:25:21', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(123, 16, 78, 85, 'gello', '', '2021-11-20 05:28:42', '2021-11-20 05:28:42', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(124, 16, 78, 85, 'eeeeee', '', '2021-11-20 05:34:59', '2021-11-20 05:34:59', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(125, 16, 78, 85, 'hii', '', '2021-11-20 07:18:17', '2021-11-20 07:18:17', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(126, 16, 78, 85, 'hello', '', '2021-11-20 07:23:23', '2021-11-20 07:23:23', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(127, 16, 78, 85, 'heey', '', '2021-11-20 07:29:55', '2021-11-20 07:29:55', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(128, 16, 85, 78, 'hello', '', '2021-11-21 22:38:19', '2021-11-21 22:38:19', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(129, 16, 85, 78, 'hey', '', '2021-11-21 22:40:07', '2021-11-21 22:40:07', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(130, 16, 85, 78, 'its work', '', '2021-11-21 22:43:32', '2021-11-21 22:43:32', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(131, 16, 85, 78, 'dsaaas', '', '2021-11-21 22:44:40', '2021-11-21 22:44:40', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(132, 16, 85, 78, 'hello', '', '2021-11-21 22:46:08', '2021-11-21 22:46:08', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(133, 16, 78, 85, 'hii', '', '2021-11-21 23:08:42', '2021-11-21 23:08:42', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(134, 16, 85, 78, 'hii', '', '2021-11-22 05:51:22', '2021-11-22 05:51:22', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(135, 16, 85, 78, 'ssssss', '', '2021-11-22 05:51:45', '2021-11-22 05:51:45', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(136, 16, 85, 78, 'fasedfsadfes', '', '2021-11-22 05:52:05', '2021-11-22 05:52:05', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(137, 16, 85, 78, 'yes', '', '2021-11-22 05:54:21', '2021-11-22 05:54:21', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(138, 16, 78, 85, 'hello', '', '2021-11-22 08:22:41', '2021-11-22 08:22:41', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(139, 16, 78, 85, 'heyyyyyy', '', '2021-11-22 08:23:14', '2021-11-22 08:23:14', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(140, 16, 78, 85, 'okkk???', '', '2021-11-22 08:23:39', '2021-11-22 08:23:39', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(141, 16, 78, 85, 'yes i am here', '', '2021-11-22 08:24:19', '2021-11-22 08:24:19', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(142, 16, 85, 78, 'hey', '', '2021-11-24 08:13:44', '2021-11-24 08:13:44', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(143, 16, 85, 78, 'hello', '', '2021-11-24 08:22:47', '2021-11-24 08:22:47', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(144, 16, 85, 78, 'hello', '', '2021-11-24 08:23:35', '2021-11-24 08:23:35', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(145, 16, 85, 78, 'hey it should work', '', '2021-11-24 08:24:31', '2021-11-24 08:24:31', 'readed', '1', '', '', '', '', '0.00', 'no', 0),
(146, 16, 85, 78, 'hello,, its work when browser is in minimized', '', '2021-11-24 08:25:04', '2021-11-24 08:25:04', 'readed', '1', '', '', '', '', '0.00', 'no', 0);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `destination` int(10) UNSIGNED NOT NULL,
  `author` int(10) UNSIGNED NOT NULL,
  `target` int(10) UNSIGNED NOT NULL,
  `type` enum('1','2','3','4','5','6','7') NOT NULL COMMENT '1 Subscribed, 2  Like, 3 reply, 4 Like Comment',
  `status` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0 unseen, 1 seen',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `destination`, `author`, `target`, `type`, `status`, `created_at`) VALUES
(90, 24, 25, 60, '7', '1', '2021-11-15 22:39:49'),
(91, 78, 79, 79, '5', '1', '2021-11-16 10:04:15'),
(92, 78, 79, 53, '2', '1', '2021-11-16 10:05:06'),
(93, 78, 79, 53, '3', '1', '2021-11-16 10:05:12'),
(94, 78, 77, 77, '5', '1', '2021-11-16 10:09:58'),
(95, 78, 25, 61, '7', '1', '2021-11-16 10:26:41'),
(96, 24, 25, 25, '5', '0', '2021-11-16 11:20:10'),
(97, 29, 25, 25, '5', '0', '2021-11-16 11:26:23'),
(98, 24, 1, 1, '5', '0', '2021-11-16 11:33:43'),
(99, 29, 1, 50, '2', '0', '2021-11-16 11:47:44'),
(100, 1, 83, 58, '7', '1', '2021-11-16 12:39:05'),
(101, 1, 83, 58, '2', '1', '2021-11-16 12:39:41'),
(102, 1, 83, 58, '3', '1', '2021-11-16 12:39:48'),
(103, 1, 83, 83, '5', '1', '2021-11-16 12:40:14'),
(104, 1, 83, 83, '5', '1', '2021-11-16 12:40:27'),
(105, 1, 83, 1, '1', '1', '2021-11-16 12:41:49'),
(106, 1, 83, 83, '5', '1', '2021-11-16 12:42:48'),
(107, 24, 74, 44, '2', '1', '2021-11-16 12:58:19'),
(108, 24, 78, 44, '3', '0', '2021-11-16 13:03:27'),
(118, 78, 74, 44, '4', '1', '2021-11-16 13:11:58'),
(119, 78, 84, 78, '1', '1', '2021-11-16 08:53:38'),
(120, 78, 84, 61, '7', '1', '2021-11-16 08:55:48'),
(121, 78, 85, 78, '1', '1', '2021-11-18 03:47:13'),
(122, 24, 1, 59, '2', '0', '2021-11-19 08:32:02'),
(123, 78, 85, 53, '2', '1', '2021-11-20 04:59:01');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(150) NOT NULL,
  `content` mediumtext DEFAULT NULL,
  `slug` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `keywords` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `slug`, `description`, `keywords`) VALUES
(2, 'Terms of service', '<div class=\"wrapper bCreatorBg\">\r\n<div class=\"i_not_found_page transition\">Effective Date: 10/27/2021<br />\r\nLast Modified: 10/27/2021<br />\r\n<br />\r\nThese Terms and Conditions are entered into by and between you (&quot;<strong>you</strong>,&quot; &quot;<strong>your</strong>,&quot; or &quot;<strong>User</strong>&quot;) and RTR Solutions LLC (&quot;<strong>Company</strong>,&quot; &ldquo;<strong>Naughty Space,</strong>&rdquo; &quot;<strong>we</strong>,&quot; &quot;<strong>us</strong>). The following Terms and Conditions, together with any documents (our Privacy Policy and our Creator Agreement &ndash; both incorporated herein by reference) (collectively, &quot;<strong>Terms and Conditions</strong>&quot; or &ldquo;<strong>Terms</strong>&rdquo;), govern your access to and use of <a href=\"https://www.thenaughtyspace.com\">https://www.thenaughtyspace.com</a> and its sub-domains, including any content, functionality, and services offered on or through <a href=\"https://www.thenaughtyspace.com\">https://www.thenaughtyspace.com</a>, our mobile optimized websites, mobile applications or blogs (together the &quot;<strong>Website</strong>&quot; or &ldquo;<strong>Site</strong>&rdquo;), whether as a guest, a registered User or a Creator.<br />\r\n<strong>Acceptance of the Terms and Conditions</strong><br />\r\n<br />\r\nPLEASE READ THE TERMS AND CONDITIONS CAREFULLY BEFORE YOU START TO USE THE WEBSITE &ndash; THEY ARE IMPORTANT AND AFFECT YOUR LEGAL RIGHTS.<br />\r\nBY ACCESSING OR USING ANY CONTENT, INFORMATION, SERVICES, FEATURES OR RESOURCES AVAILABLE OR ENABLED VIA THE WEBSITE AND OFFERED BY COMPANY THROUGH THE WEBSITE YOU REPRESENT THAT: (1) YOU HAVE READ, UNDERSTAND, AND AGREE TO BE BOUND BY THESE TERMS, (2) YOU ARE OF LEGAL AGE TO FORM A BINDING CONTRACT WITH COMPANY AND (3) YOU HAVE THE AUTHORITY TO ENTER INTO THE TERMS AND CONDITIONS PERSONALLY OR ON BEHALF OF COMPANY YOU HAVE NAMED AS THE USER, AND TO BIND THAT COMPANY TO THESE TERMS. <strong>WHEN YOU ACCESS THE WEBSITE, YOU UNDERSTAND THAT YOU MAY SEE GRAPHIC DEPICTIONS OF NUDITY, EXPOSED GENITALS AND PERSONS ENGAGED IN EXPLICIT SEXUAL ACTIVITY. BY ACCESSING AND/OR USING THE WEBSITE, YOU EXPRESSLY ACKNOWLEDGE THAT YOU WISH TO SEE SUCH MATERIALS. </strong>THE TERM &quot;YOU&quot; REFERS TO THE INDIVIDUAL OR LEGAL ENTITY AS APPLICABLE, IDENTIFIED AS THE USER OF THE WEBSITE, WHETHER AS A GUEST, REGISTERED USER OR AN OWNER OF A CREATOR PROFILE, AS APPLICABLE. YOU ACCEPT AND AGREE TO BE BOUND AND ABIDE BY THESE TERMS AND CONDITIONS, AND OUR PRIVACY POLICY, INCORPORATED HEREIN BY REFERENCE. IF YOU DO NOT WANT TO AGREE TO THESE TERMS AND CONDITIONS, OR THE PRIVACY POLICY YOU MUST NOT ACCESS OR USE THE WEBSITE.<br />\r\n<br />\r\n<strong>1. The Website</strong><br />\r\nThe Website is an online website providing social networking capabilities including both a text and video chat service whereby individuals accessing the Website through their registered Creator Accounts (&ldquo;<strong>Creators</strong>&rdquo;) may create and share with other Users online audio, video, interactive, and live content which may include, at the providing Creator&rsquo;s election, content of an adult nature (&ldquo;<strong>Creator Content</strong>&rdquo;). For the avoidance of doubt, Creators and Users do not refer to different types of users, rather, the terms refer to the activity engaged in by users. Creators are free to broadcast their live streaming video through the Website, subject to the restrictions set forth in these Terms and our Creator Agreement, which restrictions have been put in place to comply with applicable law, community standards, and for the safety of the Users. Subject to safety and legally required rules, Creators may produce and broadcast (or not broadcast) as and when they determine and set their own rules for other Users viewing their broadcasts.<br />\r\n<br />\r\n<strong>2. Adults Only</strong><br />\r\nIn order to access and use the Website, you must be at least 18 years old or the age of majority in your jurisdiction, whichever is older (the &quot;<strong>Age of Majority</strong>&quot;). <strong>IF YOU ARE NOT OF THE AGE OF MAJORITY, YOU MUST IMMEDIATELY LEAVE THE WEBSITE. </strong>By accessing and/or using the Website you agree that you have reached the Age of Majority and acknowledge that we have the sole and absolute right to terminate your Profile if we believe you are in violation of this requirement. If we believe you are in violation of this Age of Majority requirement, we will report you to law enforcement.<br />\r\nThe Website is only open to consenting adults looking to express themselves in the form of streaming video and messaging. We have zero tolerance for any minors on the Website, whether such individuals are actually minors or pretending to be minors perhaps in a misguided attempt at role-play. Moreover, we have zero tolerance for any image of any minor being uploaded to our platform for any reason. If you believe that a minor is using the site, we strongly request and encourage you to report each and every User he or she encounters which he or she believes or suspects to be under the age of 18 by emailing us at <a href=\"mailto:legal@thenaughtyspace.com?subject=Suspected%20Profile\">legal@thenaughtyspace.com</a>. All reports are reviewed as quickly as we can. If you are a minor, you must immediately leave this site now. You are not legally permitted on the Website for any reason, and if we find you on this Site, we will report you to law enforcement as noted above. We will not reactivate you for any reason ever. We also recommend that Users implement parental control protections, such as computer hardware, software, or filtering services, which reduce the opportunity for minors&#39; access to Site.<br />\r\n<br />\r\n<strong>3. User Accounts</strong><br />\r\nThe Website has some functionality that is available to the Website&rsquo;s guests &ndash; the guests can view the categories list and filer categories listed, can view limited free content (marked &ldquo;for everyone&rdquo; by Creator) available on the Creator Profile use the Sign-Up function on the Website. However, in order to utilize specific features on the Website, individuals will need to become a Registered User (&ldquo;<strong>User</strong>&rdquo; or &ldquo;<strong>Registered User</strong>&rdquo;) by registering a Profile on the Website (&ldquo;<strong>Account</strong>&rdquo;).<br />\r\nIn creating a Profile, you will be prompted to create a Username and password and, if you wish to become a Creator, you will be required to enter certain personally identifiable information. In order to take advantage of some of the paid features available through the Website, you will be prompted to input a payment method. As noted in our Privacy Policy, this information is received and held by a third-party payment processor who, subject to their terms, will store your payment information for future use through the Website. You may not choose a Username that may falsely represent you as someone else or a name that may otherwise be in violation of the rights of any other individual or entity. We reserve the right to disallow the use of Usernames or cancel, at any time, the membership of any User who uses their selected Username in violation of these Terms or in any other way we deem inappropriate in our sole discretion. You are solely responsible for any and all activities conducted and purchases made through your Profile.<br />\r\nWith respect to Accounts which have more than one age-verified User, the person in control of the Profile is deemed to be the person whose email address is associated with the Profile, unless there is payee information associated with the Profile, in which case the payee is deemed to be the person in control of the Profile. Material changes to Accounts may only be made at the request of the person deemed to be in control of the Profile. Material changes include changes to the email address associated with the Profile, changes to payee information, and changes to two-factor authentication settings. You understand and agree that the person deemed to be in control of any such Profile will have full access to and control over all information associated with the Profile, including all information collected on such Profile. For more information about information we collect, please see our Privacy Policy.<br />\r\nYou are solely responsible for maintaining the confidentiality of your Username and password and are fully responsible for all activities that occur under your Username and password, including without limitation any unauthorized access to the Website caused by you, including access which may violate applicable laws and/or subject you to criminal prosecution. This will result in your immediate ban from the Website and deactivation of your Profile. We will not release your password for security reasons. You agree to (i) immediately notify us of any unauthorized use of your Username or password or any other breach or suspected breach of security, and (ii) ensure that you log out of your Profile each time you stop interacting through the Website. We highly encourage all Users to turn on two-factor authentication to ensure the security of their Profile.<br />\r\nRegistered Users are able to post content in their Accounts, as well as by using the Messaging function of the Website, subject to the following limitations: (a) Company may limit the amount of bandwidth dedicated to any account; and (b) Company reserves the right to display advertising on Profile pages. Please consult the Naughty Space <a href=\"https://thenaughtyspace.com/p/privacy-policy\" target=\"_blank\">Privacy Policy</a> for special terms as they relate to Accounts. Accounts are governed by these Terms and Conditions, including, without limitation, sections on prohibited user conduct, and you are encouraged to review these terms carefully. Under no circumstances may Accounts be used to infringe the copyright or any other right of any person or entity. You are encouraged to maintain back-up copies of the content you post on your Profile. The Profile service may only be used by people who are at least 18 years old.<br />\r\nThese are the following Types of Accounts that you can create:<br />\r\n1) Registered User Profile &ndash; basic profile allowing Users to access limited free content (marked &ldquo;for everyone&rdquo; by Creator) available on the Creator Profile sections of the Website (subject to the terms established by the Creator that a particular item is associated with) as well as purchase Points to pay for premium Creator Content (marked &ldquo;premium&rdquo; by Creator), see their direct messages in the Chat section, and send messages to the Creators, edit their personal information in their My Profile section of the Website, access the Newsfeed, Explore, Premium Content and Categories pages on the Website, and Subscribe to Creator Profiles upon the payment of a subscription fee and subject to these Terms. User agrees and acknowledges that any transaction entered into with an individual Creator is subject to the individual Creator&rsquo;s Terms governing such transactions.<br />\r\n2) Creator Profile &ndash; a profile that allows a User to have additional functions in presenting their persona to other Users, such as post Creator Content that may (or may not) include adult-themed content, and limit the accessibility of their Creator Content (&ldquo;for everyone&rdquo; or &ldquo;premium&rdquo;) and see their direct messages in the Chat section, and send messages to the Users, purchase Points to pay for premium Creator Content (marked &ldquo;premium&rdquo; by Creator) of other Creators, edit their personal information in their My Profile section of the Website, access the Newsfeed, Explore, Premium Content and Categories pages on the Website, as well as access the Creator Dashboard section of the Website, and host free or paid live streams on the Website, subject to the provisions of these Terms and Conditions, including, without limitation, sections on prohibited user conduct. Creators can also receive points from other Users as Tips, and advertise their Profile on the Website using the internal advertising system of Naughty Space. The terms of Creator&rsquo;s relationship with the Company are further discussed in our Creator Agreement which is incorporated herein by this reference and must be executed by you, if you would like to register on the Website as a Creator.<br />\r\nPlease choose carefully the information you post on your Profile and that you provide to other members. The information provided by other Users in their Accounts may contain inaccurate, inappropriate or offensive material, products or services for which the Company assumes no responsibility or liability. Company reserves the right, at its sole discretion, to reject, refuse to post or remove any content posted by you, and to restrict, suspend, or terminate your access to all or any part of Naughty Space, at any time, for any or no reason, with or without prior notice, and without liability.<br />\r\n<br />\r\n<strong>4. Personal Enjoyment</strong><br />\r\nUsers of our Website in any manner certify that you are not a member of the media or any agency of law enforcement, or that if you are, you are using our Site solely for your personal enjoyment and not as part of any investigation or gathering of information, and that you will not use any such information in any manner without the express written permission of the Company. You agree that everything that you observe here will be kept in strict confidence, and that you will do nothing to jeopardize the privacy and identities of any other participant in the Site (including but not limited to Creators) without the expressed written permission of the Company. You may not, download, reproduce, sell, rent, perform, or link to any content made available through the Website, except as expressly permitted by the User and/or Creator, as appropriate, responsible for such content or otherwise as permitted by these Terms and applicable legislation.<br />\r\n<br />\r\n<strong>5. Your Privacy Rights</strong><br />\r\nWhen you use the Website, we collect and process certain personally identifiable and other data about you. Our use of this information is governed by our Naughty Space Privacy Policy, which is incorporated by reference herein. You are encouraged to read this policy as it contains important information on how we collect and use this information and your rights regarding the same. Additionally, the Website utilizes cookies and certain technology that tracks usage, performance and your geographic location which are more fully described in our Privacy Policy.<br />\r\n<br />\r\n<strong>6. No Prostitution or Sex Trafficking</strong><br />\r\nWe strictly prohibit our Website being used in any way whatsoever to engage in, participate in, assist, support, or facilitate any act of prostitution, sex traﬃcking of children, or sex traﬃcking of anyone by means of force, fraud, or coercion. This includes but is not limited to prohibiting you from using our Website:\r\n<ol>\r\n	<li>to exchange any personal contact information with one of our Creators or to have any communication with one of our Creators which would in any way reasonably result in any type of face-to-face offline meeting involving you and one of our Creators; or</li>\r\n	<li>to discuss in any way with one of our Creators any type of transaction whatsoever involving use of any other service or method of interfacing with one of our Creators, such as use of any other Internet-based service or product.</li>\r\n</ol>\r\nAny violation of these prohibitions will result in immediate cancellation of your Profile with us, and you will be blocked from ever using our Website in the future. We will cooperate fully with any criminal investigation by any police or other government criminal enforcement agency.<br />\r\n<br />\r\n<strong>7. No In-Person Interactions</strong><br />\r\nWe do not recommend or condone any form of interaction between Users outside of the Website and, as disclosed elsewhere in these Terms, your use of and interactions through the Website are done at your own risk. Use of the Website to arrange face-to-face meetings for the purpose of engaging in illegal activity is strictly prohibited and will subject your Profile to immediate termination. If you elect to legally interact with any User outside of the Website, you do so at your own risk, and you acknowledge and agree that we are not responsible for any consequences of your election to interact with anyone, whether in person or otherwise, outside of the Website. We cannot and will not intervene in any matters or disputes which take place outside of the Website including with respect to situations where we are provided third party screen captures or records as we cannot verify such screen captures or records. In the event that you determine to communicate with another User outside of the Website despite these cautions, you should, at a minimum, consider the following precautions:\r\n<ol>\r\n	<li>Anyone who can commit identity theft can also falsify a profile.</li>\r\n	<li>There is no substitute for acting with caution when communicating with any stranger who wants to meet you.</li>\r\n	<li>Never include your last name, email address, home address, phone number, place of work, or any other identifying information in your profile or initial email messages. Immediately stop communicating with anyone who pressures you for personal or financial information or attempts in any way to trick you into revealing it.</li>\r\n	<li>If you choose to have a face-to-face meeting with another User, always tell someone in your family or a friend where you are going and when you will return. Never agree to be picked up at your home. Always provide your own transportation to and from the meeting, and meet in a public place with many people around.</li>\r\n	<li>All the money and gifts you send to other Users or Creators, whether directly or indirectly, through the Website or outside of the Website, is done at your own risk. We will not intervene or become involved in any dispute between Users.</li>\r\n</ol>\r\n<br />\r\n<strong>8. No Child Pornography</strong><br />\r\nFor the purpose of these Terms, &quot;<strong>Child Pornography</strong>&quot; includes, but is not limited to (i) any materials showing a person under the Age of Majority in a state of undress, or engaged in any suggestive or sexual acts of any kind; (ii) any materials that simulate the foregoing, such as dolls, animated films or shorts, adults made to look like children or suggest that they are below the Age of Majority; and, (iii) discussion of child pornography or child exploitation. Child Pornography and the exploitation of children is a serious crime. All Users are strictly prohibited from using the Website to distribute, access, or solicit Child Pornography or engage in any conduct or discussion exploitative of a person below the Age of Majority, including by way of role play. If you see anything on the Website that violates this provision or seems questionable, report it immediately to us at <a href=\"mailto:legal@thenaughtyspace.com?subject=Possible%20Privacy%20Policy%20violation%20Section%208&amp;body=This%20email%20is%20in%20regards%20to%20Section%208.%20No%20Child%20Pornography%20of%20your%20Privacy%20Policy.%0A%0AWe%20would%20like%20to%20inform%20you%20...\">legal@thenaughtyspace.com</a>. We will immediately investigate any claim and take the appropriate action. <strong>IF YOU ARE SEEKING OR HAVE AN INTEREST IN ANY TYPE OF PEDOPHILIC CONTENT, YOU MUST IMMEDIATELY LEAVE THIS SITE. YOU WILL BE BANNED FOR EVEN DISCUSSING SUCH ACTIVITY OR ENGAGING IN INAPPROPRIATE ROLE PLAY. SIMPLY PUT, PEOPLE WITH INTERESTS IN CHILDREN, INCLUDING EVEN JUST ROLE PLAY, ARE NOT WELCOME TO USE THE WEBSITE AND WILL BE DEALT WITH IN THE HARSHEST MANNER POSSIBLE.</strong><br />\r\n<strong>9. Other Prohibited Conduct</strong><br />\r\nYou agree to use our site only for lawful purposes. You shall not use the Website, either directly or indirectly, to:\r\n<ul>\r\n	<li>For the purpose of exploiting, harming, or attempting to exploit or harm minors in any way by exposing them to inappropriate content, asking for personally identifiable information, or otherwise.</li>\r\n	<li>Post or submit any unlawful, harmful, threatening, abusive, harassing, defamatory, obscene, hateful, or racially or ethnically objectionable Content.</li>\r\n	<li>Post or submit any Content or take any other action which might reasonably be expected to harass, threaten, embarrass, or cause distress, unwanted attention or discomfort for another User or other user of our Website or any other person or entity.</li>\r\n	<li>Post, transmit, promote, link, or facilitate the distribution of Content that may reasonably be considered to be obscene, including but not limited to bestiality, urination/defecation, fisting, incest, extreme sadomasochism or bondage presented in a sexual context, or any presentation of minors engaged in intimate physical contact, lascivious display of the genitals, or sexual situations, acted or depicted.</li>\r\n	<li>Harass, stalk, abuse, or threaten any of the Creators or Users on or associated with our Website.</li>\r\n	<li>Provide any of your personal contact information to any User on or associated with our Website (and in the event that you do so, you agree that we have no liability for any results or events which occur because you did so).</li>\r\n	<li>In any way that violates any applicable federal, state, local, or international law or regulation (including, without limitation, any laws regarding the export of data or software to and from the US or other countries).</li>\r\n	<li>Disrupt the normal flow of dialogue in a Messaging Chat or otherwise act in a manner that negatively aﬀects other Users, Creators, individuals or entities.</li>\r\n	<li>Transmit, or procure the sending of, any advertising or promotional, including any &quot;junk mail,&quot; &quot;chain letter,&quot; &quot;spam,&quot; or any other similar solicitation.</li>\r\n	<li>Impersonate or attempt to impersonate the Company, a Company employee, another user, or any other person or entity (including, without limitation, by using email addresses or screen names associated with any of the foregoing).</li>\r\n	<li>Engage in any other conduct that restricts or inhibits anyone&#39;s use or enjoyment of the Website, or which, as determined by us, may harm the Company or Users of the Website, or expose them to liability.</li>\r\n	<li>Post or submit (or cause to be posted or submitted) a chain letter or pyramid scheme.</li>\r\n	<li>Post or submit (or cause to be posted or submitted) any unsolicited advertising, promotional materials, or other forms of solicitation to other Users, individuals or entities, or collect or harvest screen names of other Users, without permission.</li>\r\n	<li>Post or submit (or cause to be posted or submitted) any communication or solicitation designed or intended to obtain a password of a Profile or private or financial information from any User or other person.</li>\r\n	<li>Spread or distribute any viruses, bugs of any type whatsoever.</li>\r\n	<li>Create a new Profile in order to access the Website after your Profile or access has been terminated by the Company.</li>\r\n	<li>Purchase any goods or services that you are prohibited from purchasing or possessing by any law applicable to you in your jurisdiction. The responsibility for ensuring compliance with all such laws shall be the User&rsquo;s alone. By submitting an order to purchase goods or services, you represent and warrant that you have the legal right to purchase such goods or services.</li>\r\n	<li>Take anything any other person has uploaded, posted, or emailed to you on Company and re-post such Content anywhere outside of Company without the expressed written permission of the person who uploaded, posted or emailed the Content to you.</li>\r\n	<li>Upload, post, email, or otherwise transmit private conversations between two people in any public forum on Website without the expressed written consent of the people who are involved in said private conversation.</li>\r\n	<li>Post, directly or indirectly, any personally identifying information about another member without their consent. Personally identifying information can include, but is not limited to, a person&#39;s full name, first name, last name, email address, profession, phone number, address and place of work.</li>\r\n	<li>Use Website to do any academic or corporate research without the expressed written consent of the Company.</li>\r\n	<li>Cross-post the same message, be it by one person or multiple people, more than 3 times in a day.</li>\r\n	<li>Use Websites for any fraudulent purposes.</li>\r\n	<li>Collect or store personally identifying information about any other User(s) for commercial purposes without the expressed consent of those User(s) or for any unlawful purposes.</li>\r\n	<li>Impersonate any person or entity, including, but not limited to, a Company or Company official, employee, consultant, or otherwise, or falsely state or otherwise misrepresent Your affiliation with a person or entity.</li>\r\n</ul>\r\nAdditionally, you agree not to:\r\n\r\n<ul>\r\n	<li>Use the Website in any manner that could disable, overburden, damage, or impair the site or interfere with any other party&#39;s use of the Website, including their ability to engage in real time activities through the Website.</li>\r\n	<li>Attempt to circumvent any content-filtering techniques we employ or attempt to access any feature or area of the Website that you are not authorized to access.</li>\r\n	<li>Develop any third party applications that interact with User Contributions or the Website without our prior written consent.</li>\r\n	<li>Use any robot, spider, or other automatic device, process, or means to access the Website for any purpose, including monitoring or copying any of the material on the Website.</li>\r\n	<li>Use any manual process to monitor or copy any of the material on the Website, or for any other purpose not expressly authorized in these Terms and Conditions, without our prior written consent.</li>\r\n	<li>Use or attempt to use another User&rsquo;s Profile without authorization from such User and Company.</li>\r\n	<li>Reverse engineer any aspect of the Website or do anything that might discover source code or bypass or circumvent measures employed to prevent or limit access to any Company Content, area or code of the Website.</li>\r\n	<li>Use any device, software, or routine that interferes with the proper working of the Website.</li>\r\n	<li>Introduce any viruses, Trojan horses, worms, logic bombs, or other material that is malicious or technologically harmful.</li>\r\n	<li>Engage in any harassing, threatening, intimidating, predatory or stalking conduct.</li>\r\n	<li>Attempt to gain unauthorized access to, interfere with, damage, or disrupt any parts of the Website, the server on which the Website is stored, or any server, computer, or database connected to the Website.</li>\r\n	<li>Attack the Website via a denial-of-service attack or a distributed denial-of-service attack.</li>\r\n	<li>Otherwise attempt to interfere with the proper working of the Website.</li>\r\n</ul>\r\nWe have and enforce a repeat infringer policy. We will terminate the Accounts of any User and/or Creator who is determined to be a repeat infringer.<br />\r\n<br />\r\n<strong>10. Section 230 of the Communications Decency Act</strong><br />\r\nThe Website is a User-driven interactive website with content provided by its Users and Creators, and pursuant to Section 230 of the Communications Decency Act, we are immune from suit for materials published through the Website by Users or Creators. As such, we are not liable for content published by Users or Creators. As we operate an online platform and we are not in the business of producing or presenting cam broadcasts, we have endeavored to keep our rules to a minimum imposing only those we feel are necessary for the safety of Users, to comply with applicable law, and the continued operation of the Website.<br />\r\n<br />\r\n<strong>11. Trademarks</strong><br />\r\n&ldquo;Naughty Space,&rdquo; the Naughty Space logo and any other Naughty Space product or service names, logos, designs or slogans that may appear on the Website are trademarks of Naughty Space and may not be copied, imitated or used, in whole or in part, without our prior written permission. You may not use any metatags or other &ldquo;hidden text&rdquo; utilizing &ldquo;Naughty Space&rdquo; or any other name, trademark or service name of Naughty Space without our prior written permission. In addition, the look and feel of the Website and Company Content, including, without limitation, all page headers, custom graphics, button icons and scripts, constitute the service mark, trademark or trade dress of Naughty Space and may not be copied, imitated or used, in whole or in part, without our prior written permission. All other trademarks, registered trademarks, product names and company names or logos mentioned on the Website or Service are the property of their respective owners and may not be copied, imitated or used, in whole or in part, without the permission of the applicable trademark holder. Reference to any services, processes or other information by name, trademark, manufacturer, supplier or otherwise does not constitute or imply endorsement, sponsorship or recommendation by Naughty Space.<br />\r\n<br />\r\n<strong>12. Linking to the Website</strong><br />\r\nYou are granted a limited, nonexclusive, nontransferable right to create a text hyperlink to the Website for noncommercial purposes, provided that such link does not portray Company or any of our services in a false, misleading, derogatory or otherwise defamatory manner, and provided further that the linking site does not contain any adult or illegal material or any material that is offensive, harassing or otherwise objectionable. This limited right may be revoked at any time.<br />\r\nYou may link to our Website, provided you do so in a way that is fair and legal and does not damage our reputation or take advantage of it, but you must not establish a link in such a way as to suggest any form of association, approval, or endorsement on our part.<br />\r\n<br />\r\n<strong>13. Advertisers and Content Linked to the Website</strong><br />\r\nCompany may provide, or third parties may provide, links to other sites or resources located on the World Wide Web by allowing a user to leave Company to access third-party material or by bringing the third party material into this Website via &quot;inverse&quot; hyperlinks and framing technology. Company has no control over such sites and resources. You acknowledge and agree that Company is not responsible for the availability of such external sites or resources, and does not endorse and is not responsible or liable for any Content, advertising, products, or other materials on or available from such sites or resources. You further acknowledge and agree that Company shall not be responsible or liable, directly or indirectly, for any damage or loss caused or alleged to be caused by or in connection with use of or reliance on any such Content, goods or services available on or through any such site or resource.<br />\r\nYour correspondence or business dealings with, or participation in promotions of, advertisers found on or through the Company Content, products and/or services, including payment and delivery of related goods or services, and any other terms, conditions, warranties or representations associated with such dealings, are solely between you and such advertiser. You agree that Company shall not be responsible or liable for any loss or damage of any sort incurred as the result of any such dealings or as the result of the presence of such advertisers in the Content, products and/or services.<br />\r\n<br />\r\n<strong>14. Prohibited Solicitations</strong><br />\r\nAlthough we do not control Creators and other Users&#39; use of the Website, you may not use the Website to promote or advertise any third-party products, sites, or services that deliver subscription-based or live-streaming content. Although, of course, Creators and other Users are free to broadcast on other sites, you may not use the Website to solicit any User to utilize another product, site, or service that delivers live-streaming content.<br />\r\n<br />\r\n<strong>15. Intellectual Property of The Company</strong><br />\r\nNothing within these Terms shall be construed as conferring any license under any of the Company&#39;s or under any third party&#39;s intellectual property rights, whether by estoppel, implication, waiver, or otherwise. Without limiting the generality of the foregoing, you acknowledge and agree that certain content available through and used to operate the Website is protected by copyright, trademark, patent, or other proprietary rights of the Company and its affiliates, licensors and service providers (&ldquo;<strong>Company Content</strong>&rdquo;). Except as expressly permitted to the contrary, you agree not to modify, alter, or deface any of the trademarks, service marks, or other intellectual property made available by the Company in connection with the products (if any) and services. You agree not to hold yourself out as in any way sponsored by, affiliated with, or endorsed by the Company, any of the Company&rsquo;s affiliates, or any of the Company&rsquo;s service providers. You agree not to use any of the trademarks or service marks or other Company Content accessible through Company for any purpose other than the purpose for which such Company Content is made available to users by the Company. You agree not to defame or disparage the Company, the trademarks or service marks of Company, or any aspect of the products (if any) and services. You agree not to adapt, translate, modify, decompile, disassemble, or reverse engineer the products and services or any software or programs used in connection with the products and services or the Company. All marks that appear throughout the products and services belong to Company or the respective owners of such marks, and are protected by U.S. and international copyright and trademark laws. Any use of any of the marks appearing throughout the products and services without the express written consent of Company or the owner of the mark, as appropriate, is strictly prohibited. Company may provide, or third parties may provide, links to other sites or resources located on the World Wide Web by allowing a user to leave the Website in order to access third-party material or by bringing third-party material into this Website via &quot;inverse&quot; hyperlinks and framing technology. The Company has no control over such third-party sites and resources. You acknowledge and agree that the Company is not responsible for the availability of such external sites or resources, and does not endorse and is not responsible or liable for any Company Content, advertising, products, or other materials on or available from such third-party sites or resources. You further acknowledge and agree that the Company shall not be responsible or liable, directly or indirectly, for any damage or loss caused or alleged to be caused by or in connection with use of or reliance on any such Company Content, goods or services available on or through any such site or resource.<br />\r\nIn order to maintain the privacy and security of your user profile, you hereby grant Company a limited, non-exclusive, worldwide, royalty-free license to any and all copyrightable content posted by you on or through Naughty Space. You also grant and assign Company or its affiliates the right and authority to enforce your Digital Millennium Copyright Act (&ldquo;DMCA&rdquo;) and any and all intellectual property rights against alleged infringers at your request. This provision does not constitute or represent in any way a partnership, joint venture or any other fiduciary relationship between you and Company. Further, Company does not warrant or guarantee that it can or will enforce your intellectual property rights against alleged infringers. Company reserves the right through this limited license to enforce your rights at your request; however, it remains the sole and primary responsibility of each member, the Content creator and owner, to police and enforce your rights against alleged infringers.<br />\r\n<br />\r\n<strong>16. User Contributions</strong><br />\r\nThe Website may contain feeds, chat rooms, personal web pages or profiles, and other interactive features that allow users to post, submit, publish, display, or transmit to other users or other persons (hereinafter, &quot;<strong>post</strong>&quot;) content or materials (collectively, &quot;<strong>User Contributions</strong>&quot;) on or through the Website. All User Contributions must comply with the standards set out in these Terms and Conditions.<br />\r\nIf you submit content you own, you retain your ownership of your intellectual property rights. We do not claim any ownership interest in your User Contributions. However, by uploading, posting or submitting User Contributions to the Website you hereby grant the Company a nonexclusive, royalty-free, worldwide, perpetual, irrevocable and fully sublicensable right and license to use, reproduce, modify, adapt, publish, translate, create derivative works from, distribute, perform and publicly display your User Contributions, in any manner or media and for any purpose whatsoever at our sole discretion, including, without limitation, for publicity, promotional, advertising, trade, business, illustration, artistic and other commercial and noncommercial purposes. In connection with the exercise of these rights, you grant Company, and anyone authorized by Company, the right to identify you as the author of your User Contributions by your screen name on the Website, as we deem appropriate. Users will not receive any compensation of any kind for the use of their User Contributions.<br />\r\nBy uploading, posting or submitting User Contributions to the Website you represent and warrant that (a) such User Contributions are nonconfidential, (b) you own and control all of the rights to the User Contributions or you otherwise have all necessary rights to post such User Contributions, (c) you authorize Company to use such User Contributions for the purposes described in these Terms, (d) the User Contributions are accurate and not misleading or harmful in any manner, and (e) the User Contributions, and your use and posting thereof, d0 not and will not violate these Terms or any applicable law, rule, regulation or third party right.<br />\r\nYou understand and acknowledge that you are responsible for any User Contributions you submit or contribute, and you, not the Company, have full responsibility for such content, including its legality, reliability, accuracy, and appropriateness. We are not responsible or liable to any third party for the content or accuracy of any User Contributions posted by you or any other user of the Website. Naughty Space has no obligation to pre-screen any content. You use all User Contributions and interact with other users at your own risk. Without limiting the foregoing, Naughty Space reserves the right, but not obligation, in its sole discretion to pre-screen, refuse, or remove any content. Naughty Space shall have the right to remove any content that violates these Terms or is otherwise objectionable.<br />\r\n<br />\r\n<strong>17. Creator Content</strong><br />\r\nCreators may create or otherwise make available live video, photo, or other content containing materials and intellectual property that they own or have a license to use (&quot;<strong>Creator Content</strong>&quot;). In making available Creator Content, Creators agree to grant and represent that Creators have the right to grant Users (who subscribed to the Creator&rsquo;s Profile, purchased Creator Content or otherwise became privy to Creator Content via the Website in accordance with these Terms) a perpetual, irrevocable license to access and view such content through the Website. Please read our Creator Agreement for more information on the particularities of our legal relationship as it regards Creator Content.<br />\r\nWe do not endorse or recommend, nor do we have or assume any obligation to monitor any Creator Content streamed or otherwise shared through the Website by any User or Creator; and, we hereby disclaim any and all liability with respect to Creator Content. We do not permit any copyright infringing activities or any Creator Content that infringes on our intellectual property rights or those of any party or third party. We will remove any Creator Content where we are properly notified of such infringement as set forth below. We may remove any such Creator Content without any notice. Our means of identifying Creator Content that may infringe upon a third party&#39;s rights or which is illegal or violates our code of conduct, is dependent on properly presented notifications from third parties claiming that their rights have been violated. For Creator Content which is offensive or which you believe is illegal, notify us at <a href=\"mailto:legal@thenaughtyspace.com?subject=Offensive%20Content\">legal@thenaughtyspace.com</a>. For infringing content, please follow the procedures set out in Copyright Violations Section of these Terms.<br />\r\n<br />\r\n<strong>18. Creator Compensation and Status</strong><br />\r\nCreator Compensation is governed by the terms of the Creator Agreement between the Creator and Naughty Space. Creator understands and agrees that, in registering a Creator Profile, and in performing as a Creator on the Website, Creator has, and shall have, the status of an independent contractor and nothing herein contained shall constitute Creator to be as Company&rsquo;s employee or agent. Accordingly, Company shall have no obligation to (a) withhold any monies payable to Creator hereunder in respect of any taxes, insurance, social security payments or other contributions or payments to or in respect of Creator, or (b) provide Creator with any workmen&rsquo;s compensation, disability or other similar insurance coverage.<br />\r\n<br />\r\n<strong>19. Information on the Website</strong><br />\r\nAs noted in our <a href=\"https://thenaughtyspace.com/p/privacy-policy\" target=\"_blank\">Privacy Policy</a> , we cannot ensure the security or privacy of information (including, without limitation, text, images, and videos) you provide or share through the Website. We are not responsible for, and cannot control, the use of any information, by anyone, that you provide or make available to other parties through the Website. Use caution in deciding what personal information you share with others through the Website. We cannot assume any responsibility for the content of any message sent by any User on the Website. You release us from any and all liability in connection with the content(s) of any communication(s) you may receive from other Users.<br />\r\nAs noted in our <a href=\"https://thenaughtyspace.com/p/privacy-policy\" target=\"_blank\">Privacy Policy</a>, all information and/or content you choose to post and/or share through your profile on the Website, through chat (including private chat or &quot;direct message&quot;), and all content you stream or otherwise share through the Website is considered public information. You agree to limit the information you share through the Website keeping in mind we cannot control the use of such information by those with whom you share your information.<br />\r\n<br />\r\n<strong>20. Payment and Billing Information</strong><br />\r\nIn order to complete a Subscription to a Creator&rsquo;s Profile (&ldquo;<strong>Subscription</strong>&rdquo;), access any Content marked &ldquo;premium&rdquo; on the Content Creator profile or to make a tip (&ldquo;<strong>Tip</strong>&rdquo;) to a Creator, or to use the Messaging function on the Creator&rsquo;s Profile, you must first refill your Profile with Naughty Space Points (&ldquo;<strong>Points</strong>&rdquo;) in accordance with Points section of these Terms and by providing our Payment Processor with accurate and complete billing information in accordance with the Payment Processor&rsquo;s Terms and Conditions.<br />\r\nTHE COMPANY DOES NOT RETAIN ANY OF THE PAYMENT INFORMATION PROVIDED BY YOU TO THE PAYMENT PROCESSOR, AND YOU HEREBY WAIVE ALL AND ANY CLAIMS OF LIABILITY AGAINST COMPANY ARISING FROM THE MISUSE OF SUCH INFORMATION BY SUCH THIRD-PARTY PAYMENT PROCESSOR. Notwithstanding the foregoing, only the last 4 digits of your credit/debit card may be stored on the Website to let you know which card you are using. The Company shall not be liable for any payment or similar issues that arise due to the third-party service. The Company may change the third-party service from time to time.<br />\r\nBy providing a Point card or other payment method that our Payment Processer accepts, you represent and warrant that you are authorized to use the designated payment method and that you authorize our third-party payment processor to charge your payment method for the total amount of your Creator Subscription, cost of &ldquo;premium&rdquo; Creator Content or to Message a Creator, or use any other paid function of the Website (collectively &ldquo;<strong>Transactions</strong>&rdquo;) and purchase an associated amount of Points needed for that function (including any applicable taxes and other charges) (collectively, as applicable, an &ldquo;<strong>Order</strong>&rdquo;). If the payment method cannot be verified, is invalid or is otherwise not acceptable, your Order may be suspended or cancelled. You must resolve any payment method problems before we proceed with your Order. If you want to change or update your payment method information, you can do so at any time by logging into your Profile. You agree to immediately update your Profile information in the event of any change in your payment information. The Company reserves the right at any time to change its billing methods.<br />\r\nIf a payment is not successfully settled and you do not edit your payment method information or cancel any transaction, your Subscription or terminate your Profile, as applicable, you remain responsible for any uncollected amounts and, with respect to your unpaid Subscription period, authorize us to continue billing the payment method, as it may be updated. You acknowledge that the amount billed may vary due to promotional offers, preferences you select, changes you make to your Subscription or changes in applicable taxes or other charges, and you authorize us (and our third party-payment processor) to charge your payment method for the corresponding amount.<br />\r\nIf you are paying dollar-based fees in a currency other than U.S. dollars, your bank or financial institution may impose fees for currency exchange and for international transactions. For example, Visa and MasterCard typically charge a processing fee on international transactions, and most card-issuing banks add their own small additional fees, generally a percentage of your overall purchase price. Similar considerations apply when there is a diﬀerence between the currency in which fees are quoted on the Website and the dollar exchange rate of the currency in which you make your actual payment. You are responsible for all charges associated with connecting to or using our Website and all amounts owed to your internet service provider. You agree that all such charges incurred by you are entirely your responsibility. For example, depending on your particular location and chosen internet service provider, you may be responsible for long-distance charges and/or other communication surcharges. Funds transferred to your Profile, as well as discounts and promotional pricing associated with your Profile, will expire as applicable, except where prohibited by applicable laws. We reserve the right to set the expiration date of these items in our sole discretion.<br />\r\nIf you believe that you have been erroneously billed, please notify us immediately of such error by sending an email to <a href=\"mailto:billing@thenaughtyspace.com?subject=Billing%20Issue\">billing@thenaughtyspace.com</a>. If we do not hear from you within 30 days after such billing error first appears on any Profile statement, such fee will be deemed accepted by you for all purposes, including resolution of inquiries made by your Point card issuer. You release us from all liabilities and claims of loss resulting from any error or discrepancy that is not reported to us within 30 days of its publication. We reserve the right to impose transaction limits on Users based upon a variety of factors including, without limitation, length of membership to the Website, location, change in access information, and amount of refund requests. Please note that abuse of special offers, including creating multiple accounts to take advantage of such offers, is a violation of these Terms.<br />\r\n<br />\r\n<strong>21. Points</strong><br />\r\nIn order to complete a Subscription to a Creator&rsquo;s Profile (&ldquo;<strong>Subscription</strong>&rdquo;) or to make a Tip to a Creator, or to use the Messaging function on the Creator&rsquo;s Profile, you must first refill your Profile with Naughty Space Points (&ldquo;<strong>Points</strong>). You can purchase Points on Your Wallet tab, by clicking the &ldquo;Purchase&rdquo; button and inputting Your Payment Information that will be processed by our Payment Processor in accordance with the Payment Processor&rsquo;s Terms and Conditions.<br />\r\nOnce you purchase the requisite amount of Points, you can complete a Subscription to a Creator&rsquo;s Profile or make a Tip to a Creator, or use the Messaging function on the Creator&rsquo;s Profile for the purpose of having access to their respective profiles and the Content posted by them therein.<br />\r\nPoints or a Subscription purchased for a specific Profile are strictly non-transferable. You agree that any remaining or unused Subscription or Points associated with an active or deactivated Profile will not be transferred to any other Profile belonging to you or any other User.<br />\r\n<br />\r\n<strong>22. Subscription Plans and Recurring Charges</strong><br />\r\nWe charge NO fees for unlimited and unrestricted access of our Website&rsquo;s Users to our free User-only services.<br />\r\nHowever, certain functions of our Website, such as access to our Creator Profiles, or Content marked &ldquo;premium&rdquo; by Content Creator, requires a Subscription fee payment (subject to the Points section of these Terms) to be performed prior to accessing the Creator&rsquo;s Profile in accordance with various subscription plans offered on the Website (&ldquo;<strong>Subscription Plans</strong>&rdquo;). Subscription Plans and fees relating thereto will be fully disclosed to you before you enter any Creator Profile. No charge or transfer will be made to your debit/credit card, or related to your alternative payment method, without your authorization for payment by your accessing of the pay areas on your Registered User Profile.<br />\r\nAll Creator Subscription fees are prominently disclosed to you prior to your authorization of the Creator Subscription charge and its recurrence. An authorization of a Creator Subscription provides you with the specified timeframe of access to a Creator&rsquo;s Profile. An example of a specified timeframe is a 30-day recurring Creator Subscription. Upon signing up for a Creator Subscription, you are provided 30 days of access to the Creator Profile. If you choose to cancel the recurrence of the Creator Subscription renewal, your Creator Subscription will expire at the end of the initial 30-day period. Creator Subscriptions are listed in your Profile on the Website, and cancellation can be facilitated from that page, as well as in accordance with the Cancellation Section of these Terms.<br />\r\nWHEN YOU SIGN UP FOR A CREATOR&rsquo;S SUBSCRIPTION, YOU EXPRESSLY ACKNOWLEDGE AND AGREE THAT (A) OUR THIRD-PARTY PAYMENT PROCESSOR IS AUTHORIZED TO CHARGE YOU ON A RECURRING WEEKLY, MONTHLY, OR ANNUAL BASIS FOR THE PURCHASE OF POINTS EQUAL TO YOUR MONTHLY CREATOR SUBSCRIPTION PLAN (IN ADDITION TO ANY APPLICABLE TAXES AND OTHER CHARGES) FOR AS LONG AS YOUR SUBSCRIPTION CONTINUES, AND (B) YOUR SUBSCRIPTION IS CONTINUOUS UNTIL YOU CANCEL IT OR WE SUSPEND OR STOP PROVIDING ACCESS TO THE WEBSITE IN ACCORDANCE WITH THESE TERMS.<br />\r\n<br />\r\n<strong>23. Prices on the Website</strong><br />\r\nAll prices for the Transactions and different Subscription plans on our Website are shown in Naughty Space Points, that can be purchased at a conversion rate of &ldquo;One (1) U.S. dollar = 1 Naughty Space Point.&rdquo; Applicable taxes and other charges, if any, are additional. We reserve the right to adjust prices and conversion rates as we may determine in our sole discretion, at any time and without notice, including without limitation, as based on any criteria as we may establish from time to time; provided, however, that if we change the amounts or other charges associated with our various Subscription plans, we will provide advance notice of such changes by sending an email to the email address associated with your Profile, or by any other means deemed reasonable by us in our sole and absolute discretion.<br />\r\nIf any such change is unacceptable to you, you may terminate your Profile as provided below. Your continued use of our Website following the eﬀective date of any such change shall constitute your acceptance of any such change.<br />\r\n<br />\r\n<strong>24. Refunds</strong><br />\r\nIf you place an Order and the Creator&rsquo;s Profile or Content (for the purposes of this section &ndash; &ldquo;Service&rdquo;) is discontinued or otherwise becomes unavailable for any reason, Company reserves the right to (i) cancel your order and provide you a refund for the amount paid for the Service (if the Service is a one-time product order or Transaction), (ii) substitute the Service with a similar Service (if the Service is subject to a subscription, like, by means of illustration and not limitation, a Creator Subscription) or (iii) issue you a pro rata refund &ndash; a choice of said options (or none of the options at all) being at the sole and absolute discretion of Naughty Space handled on a case-by-case basis. If the Company elects, at its sole discretion to provide you with a refund, you hereby agree and acknowledge that Company does not refund any interest or transaction fees that might have been charged to you by your financial institution or the Payment Processor, and you agree that Company is not liable to you for such interest or fees.<br />\r\n<br />\r\n<strong>25. Cancellations of Subscriptions</strong><br />\r\nYou may cancel any of your creator subscriptions online by visiting the &quot;<a href=\"https://thenaughtyspace.com/my/subscriptions\" target=\"_blank\">MY SUBSCRIPTIONS</a>&quot; tab in your profile dashboard. You can also click this link <a href=\"https://thenaughtyspace.com/my/subscriptions\" target=\"_blank\">https://thenaughtyspace.com/my/subscriptions</a>.<br />\r\nCancellations must be set in your Profile or communicated to the Company by the last day of your then-current Subscription period. You will not receive a refund for the fees you already paid for your current subscription period, unless the Company decides to provide you with such a refund in accordance with the Refunds Section of these Terms, but you will be able to access the Creator Profiles that you subscribed to until the end of your current Subscription period.<br />\r\n<br />\r\n<strong>26. Creator Tips (Tips)</strong><br />\r\nBy tipping Creators through the Website, you agree that all Tips are intended as a gratuity and all Tips are final when sent. In the event that we receive a complaint about a Tip after it has been sent, we may, at our election and with no obligation to do so, send the complaint to the other party for the other party&#39;s response regarding the complaint. You are prohibited from providing Tips for the performance of specific acts. Requesting or demanding specific acts for Tips may result in a ban from the Website for all parties involved. Creators are prohibited from requesting any type of off-Website payments; provided, however, the Website may, from time to time, permit Creators to post links to wish lists.<br />\r\n<br />\r\n<strong>27. Account Termination</strong><br />\r\nNotwithstanding anything contained in these Terms, we reserve the right, without notice and in our sole discretion, to terminate or suspend your right to access or use the Website and the Profile, at any time and for any or no reason, including, without limitation, any violation of these Terms.<br />\r\nIf you have materially breached any provision of these Terms, or if the Company is required to do so by law, the Company has the right to, immediately and without notice, suspend or terminate any services provided to you. You agree that all terminations for cause shall be made in Company&rsquo;s sole discretion and that Company shall not be liable to you or any third party for any termination of your Profile. We reserve the right to suspend or stop providing access to the Website (or any features or functionality of the Website) at any time without notice and without obligation or liability to you.<br />\r\nIf your registration, Profile with or ability to access the Website is discontinued by Company due to your violation of any portion of these Terms, then you agree that you shall not attempt to re-register with or access the Website through use of a different member name or otherwise, without written consent from Company, and you acknowledge that you will not be entitled to receive a refund for fees related to those Services to which your access has been terminated. In the event that you violate the immediately preceding sentence, Company reserves the right, in its sole discretion, to immediately take any or all of the actions set forth herein without any notice or warning to you.<br />\r\nActive Users may not allow former Users or other agents whose Accounts have been terminated to use their Accounts. Any delinquent or unpaid accounts with unresolved issues with us must be fully paid or otherwise resolved before you may re-register with our Website. Users using multiple accounts without prior express written permission from us shall have their Accounts terminated. Even after your right to use the Website is terminated, these Terms will remain enforceable against you.<br />\r\nYou may terminate your Profile any time by selecting &ldquo;Terminate Account&rdquo; in your Profile Settings or contacting our customer support at <a href=\"mailto:support@thenaughtyspace.com?subject=Account%20Terminate%20Request\">support@thenaughtyspace.com</a>. You agree to be personally liable for any and all charges incurred by your Profile, Username, and password until terminated as provided herein. If you are a Creator and determine to terminate your profile, any Points remaining in your Profile at the time of termination will be disbursed to the payment information on file for your Profile on our next payout date. Upon our processing of your request to terminate your Profile, you will no longer have access to the non-public areas of the Website nor will you have access to any Creator Content in your Profile.<br />\r\nYou accept that when you cancel your Profile you will be automatically locked out of the Website, and will no longer be able to access your Profile, including any and all Creator Content. You also agree and accept that upon termination of your Profile, we have no obligation to maintain or store any content, mail or other materials connected to or in your Profile and that such information may be irretrievable.<br />\r\nWhen you terminate your Profile or if your Profile is suspended for violating any of the provisions of these Terms or other policies, you agree that any remaining or unused Subscription and Points will be forfeited and no refunds will be issued for any remaining or unused Subscription and Points. Further, if your deactivated Profile is reinstated at a later date, you agree that any remaining or unused Subscription and Points you have remaining at the time of your Profile deactivation will not be reinstated with your Profile.<br />\r\n<br />\r\n<strong>28. User Representations and Warranties</strong><br />\r\nYou represent and warrant the following:\r\n<ul>\r\n	<li>You are familiar with the laws in your area that may affect your legal right to access or transmit erotica or adult-oriented material and, by your accessing the site, you are representing and warranting that you are not prohibited by law from accessing or using the Website or transmitting in any way any adult-oriented material.</li>\r\n	<li>You are not a registered sex offender in any jurisdiction and have never been convicted of any type of sexual crime against any person or animal.</li>\r\n	<li>You are voluntarily choosing to proceed with your use of the Website because you want to view, read, or hear various content, including, without limitation, content of an explicit adult nature for your own personal enjoyment, information, and/or education.</li>\r\n	<li>You are familiar with the standards in your community regarding acceptance of sexually-oriented materials, and the materials you expect to encounter through use of the Website are within your community standards. Should the content you encounter through the Website not meet your community standards, you will immediately cease use of the Website.</li>\r\n	<li>You have not notified any governmental agency, including the U.S. Postal Service, that you do not wish to receive sexually oriented material.</li>\r\n	<li>You will not violate any civil or other rights of any other User or any third party.</li>\r\n	<li>Any content that you upload or stream will be your original work and not infringe the intellectual property rights of any third-party.</li>\r\n	<li>You will follow all applicable laws governing your use of the Website; and</li>\r\n	<li>You will not violate any provision of these Terms.</li>\r\n</ul>\r\n<br />\r\n<br />\r\n<strong>29. Disclaimers</strong><br />\r\nYOUR USE OF THE WEBSITE OR OUR SUBSCRIPTION OBTAINED THROUGH THE WEBSITE IS AT YOUR OWN RISK. THE WEBSITE, ITS CONTENT, AND ANY SERVICES OBTAINED THROUGH THE WEBSITE ARE PROVIDED ON AN &quot;AS IS&quot; AND &quot;AS AVAILABLE&quot; BASIS, WITHOUT ANY WARRANTIES OF ANY KIND, EITHER EXPRESS OR IMPLIED. NEITHER THE COMPANY NOR ANY PERSON ASSOCIATED WITH THE COMPANY MAKES ANY WARRANTY OR REPRESENTATION WITH RESPECT TO THE COMPLETENESS, SECURITY, RELIABILITY, QUALITY, ACCURACY, OR AVAILABILITY OF THE WEBSITE. WITHOUT LIMITING THE FOREGOING, NEITHER THE COMPANY NOR ANYONE ASSOCIATED WITH THE COMPANY REPRESENTS OR WARRANTS THAT THE WEBSITE, ITS CONTENT, OR ANY SERVICES OR PRODUCTS OBTAINED THROUGH THE WEBSITE WILL BE ACCURATE, RELIABLE, ERROR-FREE, OR UNINTERRUPTED, THAT DEFECTS WILL BE CORRECTED, THAT OUR SITE OR THE SERVER THAT MAKES IT AVAILABLE ARE FREE OF VIRUSES OR OTHER HARMFUL COMPONENTS, OR THAT THE WEBSITE OR ANY SERVICES OR PRODUCTS OBTAINED THROUGH THE WEBSITE WILL OTHERWISE MEET YOUR NEEDS OR EXPECTATIONS.<br />\r\n<strong>IF YOU RELY ON ANY DATA OR INFORMATION OBTAINED THROUGH OUR WEBSITE OR SERVICE YOU DO SO AT YOUR OWN RISK. YOU ARE SOLELY RESPONSIBLE FOR ANY DAMAGE OR LOSS THAT RESULTS FROM YOUR USE OF SUCH DATA OR INFORMATION.</strong><br />\r\n<br />\r\n<strong>30. Limitation on Liability</strong><br />\r\nTO THE FULLEST EXTENT PERMITTED BY APPLICABLE LAW, IN NO EVENT SHALL NAUGHTY SPACE, ITS PAST, PRESENT AND FUTURE LICENSORS, EMPLOYEES, OFFICERS, DIRECTORS, CONTRACTORS, CONSULTANTS, EQUITY HOLDERS, SUPPLIERS, VENDORS, SERVICE PROVIDERS, PARENT COMPANIES, SUBSIDIARIES, AFFILIATES, AGENTS, REPRESENTATIVES, PREDECESSORS, SUCCESSORS AND ASSIGNS (COLLECTIVELY &ldquo;<strong>NAUGHTY SPACE PARTIES</strong>&rdquo;) BE LIABLE FOR ANY DIRECT, INDIRECT, SPECIAL, INCIDENTAL, PUNITIVE OR CONSEQUENTIAL DAMAGES OF ANY KIND (INCLUDING, BUT NOT LIMITED TO, LOSS OF REVENUE, INCOME OR PROFITS, LOSS OF USE OR DATA, LOSS OR DIMINUTION IN VALUE OF ASSETS OR SECURITIES, OR DAMAGES FOR BUSINESS INTERRUPTION, PERSONAL INJURY, PAIN AND SUFFERING, EMOTIONAL DISTRESS, LOSS OF BUSINESS OR ANTICIPATED SAVINGS, LOSS OF GOODWILL, AND WHETHER CAUSED BY TORT (INCLUDING NEGLIGENCE), BREACH OF CONTRACT, OR OTHERWISE, EVEN IF FORESEEABLE) ARISING OUT OF OR IN ANY WAY RELATED TO THE ACCESS TO OR USE OF THE WEBSITE OR CONTENT (INCLUDING, BUT NOT LIMITED TO, USER CONTENT, THIRD PARTY CONTENT AND LINKS TO THIRD PARTY WEBSITE), OR THE ORDER, RECEIPT OR USE OF ANY SERVICE, OR OTHERWISE RELATED TO THESE TERMS (INCLUDING, BUT NOT LIMITED TO, ANY DAMAGES CAUSED BY OR RESULTING FROM RELIANCE ON ANY INFORMATION OBTAINED FROM ANY NAUGHTY SPACE PARTY, OR FROM EVENTS BEYOND THE NAUGHTY SPACE PARTIES&rsquo; REASONABLE CONTROL, SUCH AS SITE INTERRUPTIONS, DELETIONS OF FILES OR EMAILS, ERRORS OR OMISSIONS, DEFECTS, BUGS, VIRUSES, TROJAN HORSES, DELAYS IN OPERATION OR TRANSMISSION OR ANY FAILURE OF PERFORMANCE, WHETHER OR NOT RESULTING FROM ACTS OF GOD, COMMUNICATIONS FAILURE, THEFT, DESTRUCTION OR UNAUTHORIZED ACCESS TO THE NAUGHTY SPACE PARTIES&rsquo; RECORDS, PROGRAMS OR SYSTEMS), REGARDLESS OF THE FORM OF ACTION, WHETHER BASED IN CONTRACT, TORT (INCLUDING, BUT NOT LIMITED TO, SIMPLE NEGLIGENCE, WHETHER ACTIVE, PASSIVE OR IMPUTED) OR ANY OTHER LEGAL OR EQUITABLE THEORY (EVEN IF THE PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES AND REGARDLESS OF WHETHER SUCH DAMAGES WERE FORESEEABLE).<br />\r\nTO THE FULLEST EXTENT PERMITTED BY APPLICABLE LAW, YOU, ON BEHALF OF YOUR HEIRS, EXECUTORS, ADMINISTRATORS, LEGAL AND PERSONAL REPRESENTATIVES, HEREBY RELEASE, WAIVE, ACQUIT AND FOREVER DISCHARGE THE NAUGHTY SPACE PARTIES FROM AND AGAINST, AND COVENANT NOT TO SUE ANY SUCH NAUGHTY SPACE PARTY FOR, ALL CLAIMS YOU HAVE OR MAY HAVE ARISING OUT OF OR IN ANY WAY RELATED TO THESE TERMS. IF YOU ARE A CALIFORNIA RESIDENT, YOU HEREBY WAIVE YOUR RIGHTS UNDER CALIFORNIA CIVIL CODE 1542, WHICH STATES &ldquo;A GENERAL RELEASE DOES NOT EXTEND TO CLAIMS WHICH THE CREDITOR DOES NOT KNOW OR SUSPECT TO EXIST IN HIS OR HER FAVOR AT THE TIME OF EXECUTING THE RELEASE, WHICH IF KNOWN BY HIM OR HER MUST HAVE MATERIALLY AFFECTED HIS OR HER SETTLEMENT WITH THE DEBTOR.&rdquo;<br />\r\nUNDER NO CIRCUMSTANCES WILL THE TOTAL AGGREGATE AMOUNT THAT THE NAUGHTY SPACE PARTIES ARE LIABLE TO YOU EXCEED THE LESSER OF (A) THE TOTAL AMOUNT ACTUALLY PAID TO NAUGHTY SPACE BY YOU DURING THE SIX-MONTH PERIOD PRIOR TO THE ACT, OMISSION OR OCCURRENCE GIVING RISE TO SUCH LIABILITY, (B) THE REMEDY OR PENALTY IMPOSED BY THE STATUTE OR REGULATION UNDER WHICH SUCH CLAIM ARISES, OR (C) ONE HUNDRED DOLLARS ($100).<br />\r\nTHE LIMITATIONS OF DAMAGES SET FORTH ABOVE ARE FUNDAMENTAL ELEMENTS OF THE BASIS OF THE BARGAIN BETWEEN NAUGHTY SPACE AND YOU. THE NAUGHTY SPACE PARTIES ASSUME NO RESPONSIBILITY FOR THE TIMELINESS, DELETION, MIS-DELIVERY OR FAILURE TO STORE ANY CREATOR CONTENT, USER CONTRIBUTIONS OR PERSONALIZATION SETTINGS.<br />\r\nTHE LIMITATIONS SET FORTH IN THIS SECTION SHALL NOT AFFECT LIABILITY THAT CANNOT BE EXCLUDED OR LIMITED UNDER THE APPLICABLE LAW/JURISDICTION.<br />\r\n<br />\r\n<strong>31. Limitation on Time to File Claims</strong><br />\r\nANY CAUSE OF ACTION OR CLAIM YOU MAY HAVE ARISING OUT OF OR RELATING TO THESE TERMS OR THE WEBSITE MUST BE COMMENCED WITHIN ONE (1) YEAR AFTER THE CAUSE OF ACTION ACCRUES; OTHERWISE, SUCH CAUSE OF ACTION OR CLAIM IS PERMANENTLY BARRED.<br />\r\n<br />\r\n<strong>32. Indemnification</strong><br />\r\nTo the fullest extent permitted by applicable law, you agree to indemnify, defend and hold harmless Naughty Space, and our Naughty Space Parties from and against all actual or alleged Naughty Space Party or third party claims, damages, awards, judgments, losses, liabilities, obligations, penalties, interest, fees, expenses and costs of every kind and nature whatsoever, whether known or unknown, foreseen or unforeseen, matured or unmatured, or suspected or unsuspected, in law or equity, whether in tort, contract or otherwise (collectively, &ldquo;<strong>Claims</strong>&rdquo;), including, but not limited to, damages to property or personal injury, that are caused by, arise out of or are related to (a) any use or misuse of the Website, Company Content or Creator Content by you or any third party you authorize to access or use the Website, Company Content or Creator Content, (b) any User Contributions you create, post, share or store on or through the Website (c) your violation of these Terms, and (d) your violation of the rights of another. You agree to promptly notify Naughty Space of any third party Claims, cooperate with the Naughty Space Parties in defending such Claims and pay all fees, costs and expenses associated with defending such Claims (including, but not limited to, attorneys&rsquo; fees and expenses, court costs, costs of settlement and costs of pursuing indemnification and insurance). You further agree that the Naughty Space Parties shall have control of the defense or settlement of any third party Claims. This indemnity is in addition to, and not in lieu of, any other indemnities set forth in a written agreement between you and Naughty Space.<br />\r\n<br />\r\n<strong>33. Obligations Under 18 U.S.C. &sect;2257</strong><br />\r\nYou should be aware that, pursuant to United States federal law, any visual depictions that you post, share or perform on or through the Website which portray &quot;actual sexually explicit conduct&quot;, &quot;depictions of the genitals or pubic area&quot;, or &quot;simulated sexually explicit activity&quot;, as those terms are defined in <em>18 U.S.C. &sect;2256(2)(A)(i)-(iv) and &sect;2257A</em>, require that you maintain the records listed under <em>18 U.S.C. &sect;2257</em>, and any such postings must contain a &quot;18 U.S.C. &sect;2257 Record-Keeping Requirements Compliance Statement.&quot; Your failure to comply with the provisions of 18 U.S.C. &sect;2257 may make you subject to criminal and civil prosecution for the violation of federal law.<br />\r\n<br />\r\n<strong>34. Copyright Violations</strong><br />\r\nCompany respects the intellectual property of others. It is Company&#39;s policy to respond expeditiously to claims of copyright and other intellectual property infringement. Company will promptly process and investigate notices of alleged infringement and will take appropriate actions under the Digital Millennium Copyright Act and other applicable intellectual property laws. Upon receipt of notices complying or substantially complying with the DMCA, Company may act expeditiously to remove or disable access to any material claimed to be infringing or claimed to be the subject of infringing activity and may act expeditiously to remove or disable access to any reference or link to material or activity that is claimed to be infringing. Company will terminate access for users who are repeat infringers.<br />\r\nNotifying Company of Copyright Infringement:<br />\r\nTo provide Company notice of an infringement, you must provide a written communication to the attention of &quot;DMCA Infringement Notification Dept.&quot; to <a href=\"mailto:copyright@thenaughtyspace.com?subject=DMCA%20Infringement%20Notification\">copyright@thenaughtyspace.com</a> that sets forth the information specified by the DMCA (<a href=\"http://www.copyright.gov/title17/92chap5.html#512\" target=\"_blank\">http://www.copyright.gov/title17/92chap5.html#512</a>). Please note that you may be liable for damages (including costs and attorneys&#39; fees) if you materially misrepresent that an activity is infringing your copyright.<br />\r\nProviding Company with Counter-Notification:<br />\r\nIf you feel that your material does not constitute infringement, you may provide the Company with a counter-notification by written communication to the attention of &quot;DMCA Counter-Notification Dept.&quot; at <a href=\"mailto:copyright@thenaughtyspace.com?subject=DMCA%20Counter-Notification\">copyright@thenaughtyspace.com</a> that sets forth all of the necessary information required by the DMCA (<a href=\"http://www.copyright.gov/title17/92chap5.html#512\" target=\"_blank\">http://www.copyright.gov/title17/92chap5.html#512</a>). Please note that you may be liable for damages (including costs and attorneys&#39; fees) if you materially misrepresent that an activity is not infringing the copyrights of others. If you are uncertain whether an activity constitutes infringement, we recommend seeking advice of legal counsel.<br />\r\n&nbsp;For full information and details on how the Company handles claims of copyright infringement, visit our&nbsp;<a href=\"https://thenaughtyspace.com/p/dmca\" target=\"_blank\">DMCA Policy</a>.<br />\r\n<br />\r\n<strong>35. Promotional Communications from Us</strong><br />\r\nWe may from time to time send promotional or marketing communications to you if you have registered with us. If you receive any such communication, you will be given the opportunity to unsubscribe from future communications by following the instructions you receive from us. If you otherwise have any issues concerning any communication you receive from us, please contact us by using the email address indicated in the Contact Us section of these Terms.<br />\r\nSome of our trusted partners may communicate with a registered user to present special oﬀers. However, we do not allow spam, illegal or misleading communications relating to our Website. Please contact us by using the email address indicated in the Contact Us section of these Terms. If you receive any such spam or misleading communication in any way related to our Website. If we become aware of any such communication, we will take appropriate disciplinary or corrective action. our disciplinary or corrective action may include termination of services, expulsion from our Website, forfeiture of payments, and others.<br />\r\n<br />\r\n<strong>36. Monitoring and Enforcement</strong><br />\r\nThe Company has the right to:\r\n<ul>\r\n	<li>Remove or refuse to post any User Contributions for any or no reason in our sole discretion.</li>\r\n	<li>Take any action with respect to any User Contribution that we deem necessary or appropriate in our sole discretion, including if we believe that such User Contribution violates the Terms and Conditions,&nbsp; infringes any intellectual property right or other right of any person or entity, threatens the personal safety of users of the Website or the public, or could create liability for the Company.</li>\r\n	<li>Disclose your identity or other information about you to any third party who claims that material posted by you violates their rights, including their intellectual property rights or their right to privacy.</li>\r\n	<li>Take appropriate legal action, including without limitation, referral to law enforcement, for any illegal or unauthorized use of the Website.</li>\r\n	<li>Terminate or suspend your access to all or part of the Website for any or no reason, including without limitation, any violation of these Terms and Conditions.</li>\r\n</ul>\r\nWithout limiting the foregoing, we have the right to cooperate fully with any law enforcement authorities or court order requesting or directing us to disclose the identity or other information of anyone posting any materials on or through the Website. YOU WAIVE AND HOLD HARMLESS THE COMPANY AND ITS AFFILIATES, LICENSEES, AND SERVICE PROVIDERS FROM ANY CLAIMS RESULTING FROM ANY ACTION TAKEN BY ANY OF THE FOREGOING PARTIES DURING, OR TAKEN AS A CONSEQUENCE OF, INVESTIGATIONS BY EITHER SUCH PARTIES OR LAW ENFORCEMENT AUTHORITIES.<br />\r\nYou understand that by using the Website you may be exposed to User Contributions that you may find offensive, indecent, incorrect or objectionable, and you agree that under no circumstances will the Company be liable in any way for any User Contributions, including any errors or omissions in any User Contributions, or any loss or damage of any kind incurred as a result of your use of any User Contributions.<br />\r\nWe do not undertake to review material before it is posted on the Website, and cannot ensure prompt removal of objectionable material after it has been posted. Accordingly, we assume no liability for any action or inaction regarding transmissions, communications, or content provided by any user or third party. We have no liability or responsibility to anyone for performance or nonperformance of the activities described in this section.<br />\r\n<br />\r\n<strong>37. Changes to the Website</strong><br />\r\nWe may update the content on this Website from time to time, but its content is not necessarily complete or up-to-date. Any of the material on the Website may be out of date at any given time, and we are under no obligation to update such material. We reserve the right in our sole discretion to modify, suspend or discontinue, temporarily or permanently, the Website (or any features or parts thereof) at any time. Reference to any products, services, processes or other information by trade name, trademark, manufacturer, supplier, vendor or otherwise does not constitute or imply endorsement, sponsorship or recommendation thereof, or any affiliation therewith, by us.<br />\r\n<br />\r\n<strong>38. Geographic Restrictions</strong><br />\r\nCompany is based in the United States. We make no claims that the Website or any of its content is accessible or appropriate outside of the United States. If you access the Website from outside the United States, you do so on your own initiative and are responsible for compliance with local laws.<br />\r\n<br />\r\n<strong>39. Governing Law and Jurisdiction</strong><br />\r\nAll matters relating to the Website and these Terms, and any dispute or claim arising therefrom or related thereto (in each case, including non-contractual disputes or claims), shall be construed, interpreted and enforced in accordance with, and shall be governed by, the laws of the State of Delaware applicable to agreements entered into and to be wholly performed therein. In the event of any conflict between any provisions hereof and any applicable laws to the contrary, the latter shall prevail, but these Terms shall be deemed modified only to the extent necessary to remove such conflicts, and the remaining clauses shall be interpreted so as to effect as nearly as possible the original intentions of the Parties.<br />\r\n<br />\r\n<strong>40. Dispute Resolution</strong><br />\r\nOnly the courts (state and federal) sitting in Kent County, Delaware will have jurisdiction of any controversies regarding these Terms. Any action or other proceeding which involves such a controversy will be brought in those courts and not elsewhere, and the Parties hereby waive any objection they may have to the appropriateness, jurisdiction and venue of such courts (including without limitation any objections based on the doctrine of <em>forum non</em> <em>conveniens</em>). Any process in any such action or proceeding may, among other methods, be served by delivering it or mailing it, by certified mail, or by US Mail Priority Mail, directed to the address first above written or such other address as the addressee has designated from time to time. Any such delivery or mail service shall be deemed to have the same force and effect as personal service within the State of Delaware.<br />\r\n<br />\r\n<strong>41. Electronic Communications</strong><br />\r\nThe communications between you and Naughty Space use electronic means, whether you visit the Website or send Naughty Space e-mails, or whether Naughty Space posts notices on the Website or communicates with you via e-mail. For contractual purposes, you (1) consent to receive communications from Naughty Space in an electronic form; and (2) agree that all terms, agreements, notices, disclosures, and other communications and documents that Naughty Space provides to you electronically will have the same legal effect that such communications or documents would have if they were set forth in &quot;writing.&quot; The foregoing sentence does not affect your statutory rights.<br />\r\n<br />\r\n<strong>42. Assignment</strong><br />\r\nThese Terms, and your rights and obligations hereunder, may not be assigned, subcontracted, delegated or otherwise transferred by you without Naughty Space&#39; prior written consent, and any attempted assignment, subcontract, delegation, or transfer in violation of the foregoing will be null and void.<br />\r\n<br />\r\n<strong>43. Force Majeure</strong><br />\r\nNaughty Space shall not be liable for any delay or failure to perform resulting from causes outside its reasonable control, including, but not limited to, acts of God, war, terrorism, epidemic, pandemic, riots, protests, embargos, acts of civil or military authorities, fire, floods, accidents, strikes or shortages of transportation facilities, fuel, energy, labor or materials.<br />\r\n<br />\r\n<strong>44. Notice</strong><br />\r\nWhere Naughty Space requires that you provide an e-mail address, you are responsible for providing Naughty Space with your most current e-mail address. In the event that the last e-mail address you provided to Naughty Space is not valid, or for any reason is not capable of delivering to you any notices required/permitted by these Terms, Naughty Space dispatch of the e-mail containing such notice will nonetheless constitute effective notice. You may give notice to Naughty Space at the address of: RTR Solutions LLC, 8 The Green, Suite A, Dover, DE, 19901. Such notice shall be deemed given when received by Naughty Space by letter delivered by nationally recognized overnight delivery service or first-class postage prepaid mail at the above address.<br />\r\n<br />\r\n<strong>45. Complaints</strong><br />\r\nTo resolve or report a complaint regarding the Website or other Users, send an email detailing your complaint to <a href=\"mailto:support@thenaughtyspace.com?subject=Website%20or%20User%20Complaint\">support@thenaughtyspace.com</a>. In appropriate circumstances, we will take immediate action in order to help resolve the problem. You agree that in attempting to resolve any complaint you send to us we may, in our sole and exclusive determination, share your complaint in part or in whole with other individuals involved and/or otherwise implicated in the complaint.<br />\r\n<br />\r\n<strong>46. Miscellaneous</strong><br />\r\nNo waiver by the Company of any term or condition set out in these Terms shall be deemed a further or continuing waiver of such term or condition or a waiver of any other term or condition, and any failure of the Company to assert a right or provision under these Terms shall not constitute a waiver of such right or provision. If any provision of these Terms is held by a court or other tribunal of competent jurisdiction to be invalid, illegal, or unenforceable for any reason, such provision shall be eliminated or limited to the minimum extent such that the remaining provisions of the Terms will continue in full force and effect. These Terms and all the documents incorporated herein (such as our Privacy Policy and Creator Agreement) constitute the sole and entire agreement between you and the Company regarding the Subscription to and use of Website and supersede all prior and contemporaneous understandings, agreements, representations, and warranties, both written and oral, regarding the Website. Except as otherwise provided herein, these Terms are intended solely for the benefit of the parties and are not intended to confer third party beneficiary rights upon any other person or entity.<br />\r\n<br />\r\n<strong>47. Changes to these Terms</strong><br />\r\nWe may update our Terms from time to time. If we make material changes to these Terms we will notify you by posting the new Terms on this page. We will let you know via email and/or a prominent notice on our Website, prior to the change becoming effective and update the &quot;Last Modified&quot; date at the top of these Terms. You are responsible for ensuring we have an up-to-date active and deliverable email address for you, and for periodically visiting our Website and these Terms to check for any changes. You are advised to review these Terms frequently for any changes. Changes to these Terms are effective when they are posted on this page.<br />\r\n<br />\r\n<strong>48. Contact Us</strong><br />\r\nAll other feedback, comments, requests for technical support, and other communications relating to the Website or these Terms should be directed to:<br />\r\n<br />\r\n<strong>RTR Solutions LLC<br />\r\n8 The Green, Ste A, Dover, DE, 19901<br />\r\n<a href=\"mailto:info@thenaughtyspace.com?subject=Terms%20of%20Service%20Inquiry\">info@thenaughtyspace.com</a><br />\r\n(800) 953-1594</strong></div>\r\n</div>', 'terms-and-conditions', 'Terms and Conditions', 'terms,Terms of Service,Terms and Conditions');
INSERT INTO `pages` (`id`, `title`, `content`, `slug`, `description`, `keywords`) VALUES
(3, 'Privacy Policy', '<div class=\"wrapper bCreatorBg\">\r\n<div class=\"i_not_found_page transition\">Effective Date: 10/27/2021<br />\r\nLast Modified: 10/27/2021<br />\r\n<br />\r\nRTR Solutions LLC (<strong>&quot;Company&quot;, &ldquo;Naughty Space&rdquo;</strong> or<strong> &quot;We&quot;</strong>) respect your privacy and are committed to protecting it through our compliance with this policy.<br />\r\nThis policy (&ldquo;<strong>Privacy Policy</strong>&rdquo; or &ldquo;<strong>Policy</strong>&rdquo;) describes the types of information we may collect from you or that you may provide when you visit the website <a href=\"https://www.thenaughtyspace.com\">https://www.thenaughtyspace.com</a> and its sub-domains, including any content, functionality, and Websites offered on or through <a href=\"https://www.thenaughtyspace.com\">https://www.thenaughtyspace.com</a>, our mobile optimized websites, mobile applications or blogs (together the &quot;<strong>Website</strong>&quot; or &ldquo;<strong>Site</strong>&rdquo;), whether as a guest, a registered User or a Content Creator.<br />\r\nThis Policy applies to information we collect:\r\n<ul>\r\n	<li>On this Website and its sub-domains.</li>\r\n	<li>In email, text, and other electronic messages between you and this Website.</li>\r\n</ul>\r\nIt does not apply to information collected by:\r\n\r\n<ul>\r\n	<li>us offline or through any other means, including on any other website operated by Company or any third-party; or</li>\r\n	<li>Any third-party, including through any application or content (including advertising) that may link to or be accessible from or on the Website.</li>\r\n</ul>\r\nPlease read this policy carefully to understand our policies and practices regarding your information and how we will treat it. If you do not agree with our policies and practices, your choice is not to use our Website. By accessing or using this Website, you agree to this Privacy Policy. This policy may change from time to time. Your continued use of this Website after we make changes is deemed to be acceptance of those changes, so please check the policy periodically for updates.<br />\r\nIf you do not accept the Privacy Policy, you must not access or use the Website or any of our Websites.<br />\r\n<br />\r\n<strong>1. Personal Data</strong><br />\r\nWhile using our Website, or registering your Registered User or Content Creator Profile on the Website (&ldquo;<strong>Profile</strong>&rdquo;), you may be asked to provide us with certain personally identifiable information that can be used to contact or identify you (&ldquo;<strong>Personal Data</strong>&rdquo;). Personally identifiable information may include, but is not limited to:\r\n\r\n<ul>\r\n	<li>Email address</li>\r\n	<li>First name and Last name</li>\r\n	<li>Your username or screen name.</li>\r\n	<li>Date of birth</li>\r\n	<li>Tax Information</li>\r\n	<li>Limited Payment Information - your payment information goes directly to a payment processing company who is responsible for keeping your info safe. We will not store or collect your payment card details.</li>\r\n</ul>\r\n<br />\r\n<strong>2. Other Information</strong><br />\r\nThroughout the process of using our Website, you may provide us with other information that individually does not identify you (&ldquo;<strong>Other Information</strong>&rdquo;), that allows us to deliver, personalize and develop relevant features, content, advertising and Website - such as:\r\n\r\n<ul>\r\n	<li>Information about Content Creators you spend Naughty Space Points (&ldquo;<strong>Points</strong>&rdquo;) on.</li>\r\n	<li>Information about your Subscriptions and Purchases on the Website.</li>\r\n	<li>Information that you provide when you enter a contest or promotion sponsored by us, and when you report a problem with our Website.</li>\r\n	<li>Information about your preferences for receiving communications about our products, activities, events, and publications.</li>\r\n	<li>Other information you upload, provide, or create while using our Website. &nbsp;</li>\r\n</ul>\r\n<br />\r\n<strong>3. Content Creator Profile Information</strong><br />\r\nShould you determine to create a Content Creator Profile (which is an Profile that is permitted to create and share with other Users online audio, video, interactive, and live content which may include, at the providing Content Creator&rsquo;s election, content of an adult nature), you will be required to provide certain personally identifiable information, such as a color copy of your current government issued photo identification (driver&rsquo;s license, passport, etc.) in accordance with the requirements stipulated in our Content Creator Agreement.<br />\r\nThis information is stored by us (or our Third-Party Record Keeper, in accordance with our &ldquo;2257 Compliance Notice&rdquo;) in compliance with United States Federal law. You will also be required to provide &quot;pay to&quot; information such as a bank Profile or home address. You may be required to provide certain taxpayer information. We report to the United States Internal Revenue Service all money paid by us to Content Creators as required by law.<br />\r\n<br />\r\n<strong>4. User Contributions</strong><br />\r\nYou also may provide information to be published or displayed (hereinafter, &quot;<strong>posted</strong>&quot;) in the message and chat rooms, comments sections and other public areas of the Website or transmitted to other users of the Website or third parties (collectively, &quot;<strong>User Contributions</strong>&quot;). Your User Contributions are posted on and transmitted to others at your own risk. Please be aware that no security measures are perfect or impenetrable and we cannot control the actions of other users of the Website with whom you may choose to share your User Contributions. Therefore, we cannot and do not guarantee that your User Contributions will not be viewed by unauthorized persons.<br />\r\n<br />\r\n<strong>5. Usage Data</strong><br />\r\nUsage Data is collected automatically when using the Website. Usage Data may include information such as your Device&#39;s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Website or Website that you visit, the time and date of your visit, the time spent on those pages, unique device identifiers and other diagnostic data. When you access the Website or Website by or through a mobile device, we may collect certain information automatically, including, but not limited to, the type of mobile device you use, your mobile device unique ID, the IP address of your mobile device, your mobile operating system, the type of mobile Internet browser you use, unique device identifiers and other diagnostic and location data. We may also collect information that your browser sends whenever you visit our Website or use our Website or when you access the Website or Website by or through a mobile device.<br />\r\n<br />\r\n<strong>6. Tracking Technologies and Cookies</strong><br />\r\nThe information we collect automatically is only statistical data and does not include personal information. It helps us to improve our Website and to deliver a better and more personalized Website, including by enabling us to:\r\n<ul>\r\n	<li>Estimate our audience size and usage patterns.</li>\r\n	<li>Store information about your preferences, allowing us to customize our Website according to your individual interests.</li>\r\n	<li>Speed up your searches.</li>\r\n	<li>Recognize you when you return to our Website.</li>\r\n</ul>\r\nThe technologies we use for this automatic data collection may include:\r\n\r\n<ul>\r\n	<li><strong>General Cookies.</strong> A cookie is a small file placed on the hard drive of your computer. These cookies are essential in order to enable you to move around the website and use its features, such as accessing secure areas of our websites.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Performance Cookies</strong>:&nbsp;These cookies, including Google Analytics cookies, collect anonymous information on the pages visited. Google Analytics stores information about what pages you visit, how long you are on the site, how you got there, and what you clicked on. This data is collected via a JavaScript tag in the pages of our websites and is not tied to personally identifiable information. By using our websites, you agree that we can place these types of cookies on your device. These cookies collect information about how visitors use a website, for instance, which pages visitors go to most often. These cookies do not collect information that identifies a visitor. All information these cookies collect is aggregated and therefore anonymous. It is only used to improve how a website works.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Functionality Cookies</strong>:&nbsp;These cookies remember choices you made to improve your experience. By using our websites, you agree that we can place these types of cookies on your device. These cookies allow the websites to remember choices you make and provide enhanced, more personal features. The information these cookies collect may be anonymized and they cannot track your browsing activity on other websites.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Advertising Cookies</strong>:&nbsp;These cookies are used to deliver advertisements more relevant to you and your interests. They are also used to limit the number of times you see an advertisement as well as help measure the effectiveness of the advertising campaign. They are usually placed by advertising networks with the website operator&rsquo;s permission. They remember that you have visited a website and this information is shared with other organizations such as advertisers. Quite often targeting or advertising cookies will be linked to site functionality provided by the other organization.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Your Choice with respect to Cookies</strong>. By modifying your browser preferences, you have the choice to accept all cookies, to be notified when a cookie is set, or to reject all cookies. However, note that if you reject some or all cookies, your experience at our websites and on other sites throughout the World Wide Web may not be complete. Some sites require cookies to function, such as those with e-commerce features. In addition, if you do not allow cookies, you will not be able to take advantage of personalized content delivery offered by us or other Internet sites.</li>\r\n</ul>\r\n<strong>7. Third-Party use of Cookies and Other Tracking Technologies</strong><br />\r\nSome content or applications, including advertisements, on the Website are served by third parties, including advertisers, ad networks and servers, content providers (Content Creators), and application providers. These third parties may use cookies alone or in conjunction with web beacons or other tracking technologies to collect information about you when you use our website. The information they collect may be associated with your personal information or they may collect information, including personal information, about your online activities over time and across different websites and other online Websites. They may use this information to provide you with interest-based (behavioral) advertising or other targeted content.<br />\r\nWe do not control these third parties&#39; tracking technologies or how they may be used. If you have any questions about an advertisement or other targeted content, you should contact the responsible provider directly.<br />\r\n<br />\r\n<strong>8. Use of your Personal Data</strong><br />\r\nThe Company may use Personal Data for the following purposes:\r\n<ul>\r\n	<li>To provide and maintain our Website, including to monitor the usage of our Website.</li>\r\n	<li>To manage your Profile:&nbsp;to manage your registration as a user of the Website.</li>\r\n	<li>For the performance of a contract:&nbsp;the development, compliance and undertaking of the purchase contract for the services you purchased on the Website.</li>\r\n	<li>To contact you:&nbsp;to contact you by email, or other equivalent forms of electronic communication, such as notifications regarding updates or informative communications related to the functionalities, products or other features of the Website, including the security updates, when necessary or reasonable for their implementation.</li>\r\n	<li>To provide you&nbsp;with news, special offers and general information about merchandise, live streams of particular Content Creators that you&rsquo;re subscribed to, and events which we offer that are similar to those that you have already purchased or enquired about unless you have opted not to receive such information.</li>\r\n	<li>To notify you about changes to our Website or any services we offer or provide through it.</li>\r\n	<li>To manage your requests:&nbsp;to attend and manage your requests to us.</li>\r\n	<li>In any other way we may describe when you provide the information.</li>\r\n	<li>For any other purpose with your consent.</li>\r\n</ul>\r\nWe may share your personal information in the following situations:\r\n\r\n<ul>\r\n	<li>With Website Providers: we may share your personal information with Website Providers to monitor and analyze the use of our Website, or for payment processing. Website Providers have access to your Personal Data only to perform their tasks on our behalf and are obligated not to disclose or use it for any other purpose.</li>\r\n	<li>For Business transfers: we may share or transfer your personal information in connection with, or during negotiations of, any merger, sale of Company assets, financing, or acquisition of all or a portion of our business to another company, whether as a going concern or as part of bankruptcy, liquidation, or similar proceeding, in which personal information held by the Company about our Website users is among the assets transferred. If the Company is involved in any such transaction, we will provide notice before your Personal Data is transferred and becomes subject to a different Privacy Policy.</li>\r\n	<li>With Affiliates: we may share your information with our affiliates, in which case we will require those affiliates to honor this Privacy Policy.</li>\r\n	<li>Advertising, Analytics and Business Partners (Limited to Non-Personally Identifiable Information).&nbsp;We may share aggregated or&nbsp;pseudonymous&nbsp;information (including demographic information) with partners, such as publishers, advertisers, measurement analytics, or&nbsp;other companies.&nbsp; For example, we may tell an advertiser how its ads performed or report how many people spent money after seeing a promotion.&nbsp;When you use third-party apps, websites or other products integrated with our Services, they may collect information about your activities subject to their own terms and privacy policies.&nbsp;We allow&nbsp;other companies&nbsp;that show advertisements on our website or apps to collect information from your browsers or devices.&nbsp; Other companies&#39; use of cookies and other data collection technologies are subject to their own privacy policies, not this one.&nbsp; Like many companies, we may allow cookie matching with select partners.&nbsp; But, these parties are not authorized to access Naughty Space cookies.</li>\r\n	<li>With other users:&nbsp;when you share personal information or otherwise interact in the public areas with other users, such information may be viewed by all users and may be publicly distributed outside. If you interact with other users those users may see your screen name, Profile, pictures and description of your activity.</li>\r\n</ul>\r\n<strong>9. Other Disclosures of your Personal Data</strong>We may also disclose your personal information:\r\n\r\n<ul>\r\n	<li>To comply with any court order, law, or legal process, including to respond to any government or regulatory request.</li>\r\n	<li>To enforce or apply our Terms and Conditions or Content Creator Agreement and other agreements, including for billing and collection purposes.</li>\r\n	<li>If we believe disclosure is necessary or appropriate to protect the rights, property, or safety of the Company, our customers, or others. This includes exchanging information with other companies and organizations for the purposes of fraud protection and Point risk reduction.</li>\r\n	<li>In good faith belief that such disclosure is necessary to prevent or investigate possible wrongdoing in connection with the Website.</li>\r\n</ul>\r\n<strong>10. Choices About How We Use and Disclose Your Information</strong><br />\r\nThe Company currently does not sell, rent or share its customer lists or any Personal Data of its customers to third parties for marketing or commercial purposes.<br />\r\nHowever, if we were to undertake any such activity, we want to make sure we provide you with choices regarding the personal information you provide to us. We have created mechanisms to provide you with the following control over your information:\r\n<ul>\r\n	<li><strong>Tracking Technologies and Advertising.</strong> You can set your browser to refuse all or some browser cookies, or to alert you when cookies are being sent. To learn how you can manage your Flash cookie settings, visit the Flash player settings page on Adobe&#39;s website. If you disable or refuse cookies, please note that some parts of this site may then be inaccessible or not function properly.</li>\r\n	<li><strong>Disclosure of Your Information for Third-Party Advertising.</strong> If you do not want us to share your personal information with unaffiliated or non-agent third parties for promotional purposes, you can opt-out by contacting us using the information in the &ldquo;Contact Us&rdquo; section of this Policy.</li>\r\n	<li><strong>Promotional Offers from the Company. </strong>If you do not wish to have your email address used by the Company to promote our own or third parties&#39; services, you can opt-out by&nbsp; contacting us using the information in the &ldquo;Contact Us&rdquo; section of this Policy. If we have sent you a promotional email, you may send us a return email asking to be omitted from future email distributions<strong>. </strong></li>\r\n	<li><strong>Targeted Advertising.</strong> If you do not want us to use information that we collect or that you provide to us to deliver advertisements according to our advertisers&#39; target-audience preferences, you can opt-out by contacting us using the information in the &ldquo;Contact Us&rdquo; section of this Policy.</li>\r\n</ul>\r\nWe do not currently sell data triggering Nevada Revised Statutes Chapter 603A opt-out requirements.<br />\r\nHowever, if that were to change, effective October 1, 2019, Nevada residents may submit a request asking us to not sell your information to <a href=\"mailto:legal@thenaughtyspace.com?subject=Tracking%20info\">legal@thenaughtyspace.com</a>.<br />\r\nThe Company hasn&rsquo;t &ldquo;disclosed&rdquo; any &ldquo;personal information&rdquo; of &ldquo;customers&rdquo; to a &ldquo;third-party&rdquo; that the Company knows or has reason to know used that information for &ldquo;direct marketing purposes within the meaning of California&#39;s &quot;Shine the Light&quot; law (Civil Code Section &sect; 1798.83). However, you are free to contact us using the information in the &ldquo;Contact Us&rdquo; section of this Policy, to find out more.<br />\r\n<br />\r\n<strong>11. Retention of your Information</strong><br />\r\nWe will retain your Personal Data only for as long as is necessary for the purposes set out in this Privacy Policy. We will retain and use your Personal Data to the extent necessary to comply with our legal obligations (for example, if we are required to retain your data to comply with applicable laws), resolve disputes and enforce our legal agreements and policies.<br />\r\nWe will retain your Personal Data for as long as we consider it necessary to:\r\n<ul>\r\n	<li>Enable you to use our Websites and provide our Websites to you, including maintaining your Profile.</li>\r\n	<li>Comply with our legal obligations. For example, we may keep some of your information for tax, legal reporting and auditing obligations.</li>\r\n	<li>Conduct our business and for our legitimate business interests, such as establishing, exercising or defending legal claims, chargeback prevention, fraud detection and prevention, hindering any other illegal activity on our site, and enhancing safety. For example, if we close or suspend your Profile for fraud or illegal activities, we may retain certain information about you to prevent you from opening a new Profile in the future. Such information shall also be kept available in case of ongoing judicial proceedings/and or investigations. As part of our fraud detection and prevention process, we also blacklist all former usernames for a certain time. Therefore, a former username cannot be used for a new registration.</li>\r\n	<li>Protect our site and your personal information from accidental or malicious loss and destruction. Residual copies of your personal information may not be removed from our backup systems for a very limited time (usually 30 days). Some copies of your information (e.g., log records) may also remain in our database, but are disassociated from personal identifiers.</li>\r\n</ul>\r\nWe will also retain Usage Data and Other Information you provide to us for internal analysis purposes. Usage Data and Other Information that personally doesn&rsquo;t identify you is generally retained to strengthen the security or to improve the functionality of our Website. We may also be legally obligated to retain this data for longer periods. Take note that neither Usage Data nor Other Information is in any way associated with any personal identifiers and is retained by us to improve the quality of our Website.<br />\r\n<br />\r\n<strong>12. Transfer of your Personal Data</strong><br />\r\nYour information, including Personal Data, may be transferred to - and maintained on - computers located outside of your state, province, country or other governmental jurisdiction where the data protection laws may differ from those of your jurisdiction. If you are an individual accessing information on our website from within the European Union, please be advised that we might transfer your personal data outside of the EEA, since Company is an American-based company, aimed at providing Websites to its US-based customers, however, we endeavor to ensure that your rights and freedoms in respect of the processing of your personal data are adequately and appropriately protected.<br />\r\nYour consent to this Privacy Policy followed by your submission of such information represents your agreement to that transfer. We will take all the steps reasonably necessary to ensure that your data is treated securely and in accordance with this Privacy Policy; and we will make no transfer of your Personal Data to an organization or a country unless there are adequate controls in place, including the security of your data and other personal information.<br />\r\n<br />\r\n<strong>13. Security of your Personal Data</strong><br />\r\nWe have implemented measures designed to secure your personal information from accidental loss and from unauthorized access, use, alteration, and disclosure. All information you provide to us is stored on our secure servers behind firewalls. Any payment transactions will be encrypted using SSL technology.<br />\r\nThe safety and security of your information also depends on you. Where we have given you (or where you have chosen) a password for access to certain parts of our Website, you are responsible for keeping this password confidential. We ask you not to share your password with anyone. We urge you to be careful about giving out information in public areas of the Website like message boards or comment sections. The information you share in public areas may be viewed by any user of the Website.<br />\r\nUnfortunately, the transmission of information via the internet is not completely secure. Although we do our best to protect your personal information, we cannot guarantee the security of your personal information transmitted to our Website. Any transmission of personal information is at your own risk. We are not responsible for circumvention of any privacy settings or security measures contained on the Website.<br />\r\n<br />\r\n<strong>14. Payment Processors</strong><br />\r\nWe provide paid products within the Website. We use third-party Websites for payment processing (e.g. payment processors). We do not store or collect your payment card details. That information is provided directly to our third-party payment processors whose use of your personal information is governed by their Privacy Policy. These payment processors adhere to the standards set by PCI-DSS as managed by the PCI Security Standards Council, which is a joint effort of brands like Visa, Mastercard, American Express and Discover. PCI-DSS requirements help ensure the secure handling of payment information.<br />\r\n<br />\r\n<strong>15. Sale of Personal Information</strong><br />\r\nThe Company currently does not sell, rent or otherwise communicate its customers&rsquo; Personal Information to third parties for monetary or other valuable consideration.<br />\r\n<br />\r\n<strong>16. &quot;Do Not Track&quot; Policy </strong><br />\r\nOur Website does not respond to Do Not Track signals. Instead, we adhere to the standards set out in this Privacy Policy and offer the opt-out choices described above.<br />\r\nSome third-party websites do keep track of your browsing activities. If you are visiting such websites, you can set your preferences in your web browser to inform websites that you do not want to be tracked. You can enable or disable DNT by visiting the preferences or settings page of your web browser.<br />\r\n<br />\r\n<strong>17. Communications Preferences</strong><br />\r\nWe may send you communications (including emails, phone calls, text messages, push notifications, and snail mail) to your Profile and transactions initiated by you (such as order status updates and billing receipts). &nbsp;We need the ability to send you these communications to offer our Websites, so we do not allow you to turn them off entirely. &nbsp;But you can let us know if you have a preferred method for receiving these communications by changing the Notification Settings in your Profile, disabling push notifications as described below, or contacting us. &nbsp;We try our best to honor your reasonable preferences about communications. &nbsp; &nbsp; &nbsp;<br />\r\nWe may also send additional communications about the Websites, such as newsletters and additional options that may be of interest to you. &nbsp;We do our best to only send this type of communication to people who want to receive it. &nbsp;If you would like to discontinue receiving these communications, you can update your preferences by using the &ldquo;Unsubscribe&rdquo; link found in such emails or by contacting us using the information in the &ldquo;Contact Us&rdquo; section of this Policy. &nbsp; &nbsp; &nbsp;<br />\r\n<br />\r\n<strong>18. Geographic Restrictions</strong><br />\r\nNaughty Space is based in the United States. We make no claims that the Website or any of its content is accessible or appropriate outside of the United States. If you access the Website from outside the United States, you do so on your own initiative and are responsible for compliance with local laws.<br />\r\n<br />\r\n<strong>19. Your Data Protection Rights under the General Data Protection Regulation (GDPR)</strong><br />\r\nIf you are a resident of the European Economic Area (EEA), you have certain data protection rights. We take reasonable steps to allow you to correct, amend, delete or limit the use of your Personal Data. If you wish to be informed about what Personal Data we hold about you that you want to be removed from our systems, you can contact our Data Protection Officer using the Contact Us section of this Policy.<br />\r\nIn certain circumstances, you have the following data protection rights:\r\n<ul>\r\n	<li><strong>The right to access, update or delete your information.</strong> You can access, update or request deletion of your Personal Data directly within your Profile settings. If you are unable to perform these actions yourself, please contact us to assist you.</li>\r\n	<li><strong>The right of rectification.</strong> You have the right to have your information rectified if that information is inaccurate or incomplete.</li>\r\n	<li><strong>The right to object.</strong> You have the right to object to our processing of your Personal Data.</li>\r\n	<li><strong>The right of restriction.</strong> You have the right to request that we restrict the processing of your personal information.</li>\r\n	<li><strong>The right to data portability.</strong> You have the right to be provided with a copy of the information we have on you in a structured, machine-readable and commonly used format.</li>\r\n	<li><strong>The right to withdraw consent.</strong> You also have the right to withdraw your consent at any time where we previously relied on your consent to process your personal information.</li>\r\n</ul>\r\nPlease note that we may ask you to verify your identity before responding to such requests.<br />\r\n<br />\r\n<strong>20. Children&#39;s Privacy</strong><br />\r\nOur Website does not address anyone under the age of 18. No one under the age of 18 may provide any personal information to or on the Website. We do not knowingly collect personally identifiable information from anyone under the age of 18. If you are a parent or guardian and you are aware that your child has provided us with Personal Data, please contact us using the information in the &ldquo;Contact Us&rdquo; section of this Policy. If you are under 18, you must immediately leave this site now and do not use or provide any information on this Website or through any of its features, do not register on the Website, do not make any purchases through the Website, do not use any of the interactive or public comment features of this Website, or provide any information about yourself to us.<br />\r\nWe use age verification services, where required, and Point card to prove age, as well as require Content Creators to provide a copy of their current government issued photo identification in order to ensure our users and Content Creators&rsquo; compliance with applicable legislation. Anyone under the age of 18 is not legally permitted on the Website for any reason, and if we find you on this Site, we will report you to law enforcement as noted above. We will not reactivate you for any reason ever. We also recommend that Users implement parental control protections, such as computer hardware, software, or filtering services, which reduce the opportunity for minors&#39; access to Site.<br />\r\nIf we become aware that we have collected Personal Data from anyone under the age of 18 without verification of parental consent, we take steps to remove that information from our servers.<br />\r\n<br />\r\n<strong>21. Links to Other Websites</strong><br />\r\nOur Website may contain links to other websites that are not operated by us. If you click on a third-party link, you will be directed to that third-party&#39;s site. We strongly advise you to review the Privacy Policy of every site you visit. We have no control over and assume no responsibility for the content, privacy policies or practices of any third-party sites or Websites.<br />\r\n<br />\r\n<strong>22. Changes to this Privacy Policy</strong><br />\r\nWe may update our Privacy Policy from time to time. If we make material changes to how we treat our users&#39; personal information we will notify you by posting the new Privacy Policy on this page. We will let you know via email and/or a prominent notice on our Website, prior to the change becoming effective and update the &quot;Last Modified&quot; date at the top of this Privacy Policy.<br />\r\nYou are responsible for ensuring we have an up-to-date active and deliverable email address for you, and for periodically visiting our Website and this Privacy Policy to check for any changes. You are advised to review this Privacy Policy frequently for any changes. Changes to this Privacy Policy are effective when they are posted on this page.<br />\r\n<br />\r\n<strong>23. Contact Us</strong><br />\r\nIf you have any questions about this Privacy Policy, you can contact us at the following addresses:<br />\r\n<br />\r\n<strong>RTR Solutions LLC<br />\r\n8 The Green, Ste A, Dover, DE, 19901<br />\r\n<a href=\"mailto:info@thenaughtyspace.com?subject=Privacy%20Policy%20Issue\">info@thenaughtyspace.com</a><br />\r\n(800) 953-1594</strong></div>\r\n</div>', 'privacy-policy', '', 'Privacy Policy'),
(5, '18 U.S.C. 2257', '<div class=\"wrapper bCreatorBg\">\r\n<div class=\"i_not_found_page transition\"><strong>18 U.S.C. 2257 Record Keeping Exemption Statement</strong><br />\r\nAll persons that appear in any visual depiction appearing or otherwise contained within or available from www.thenaughtyspace.com (the &ldquo;Website&rdquo;) were over the age of eighteen (18) years at the time of the creation of such depictions.<br />\r\n<br />\r\n<strong>Exemption: Content Produced by Third Parties</strong><br />\r\nThe Website&rsquo;s operator is not the &ldquo;producer&rdquo; of any depictions of actual or simulated sexually explicit conduct that may appear on the Website. The Website&rsquo;s operator limits its handling of this content and only performs the activities of transmission, storage, retrieval, hosting, or formatting of material that may depict sexually explicit conduct, all which material appears on the Website as the result of actions taken by third-party users of the Website. All parts of the Website that contain user-generated material are under the control of the relevant user, for whom the Website is provided as an online service by the operator. Under 18 U.S.C. &sect; 2257(h)(2)(B)(v) and 47 U.S.C. &sect; 230(c), the Website&rsquo;s operator may delete materials appearing on the Website as the result of actions taken by the Website&rsquo;s users, which materials are considered, in the operator&rsquo;s sole discretion, to be indecent, obscene, defamatory, or inconsistent with the Website&rsquo;s policies and terms of service.<br />\r\n<br />\r\n<strong>Exemption: Content Produced by Website Operator</strong><br />\r\nTo the extent that any images or videos appear on the Website, for which the Website&rsquo;s operator may be considered the &ldquo;producer,&rdquo; those images and videos are exempt from the requirements of 18 U.S.C. &sect;&nbsp;2257 and 28 C.F.R. Part 75 for one or more of the following reasons: (1) the produced images or videos do not portray any sexually explicit conduct defined in 18 U.S.C. &sect; 2256(2)(A); (2) the produced images or videos do not portray depictions of the genitals or pubic area created after July 27, 2006; (3) the produced images or videos do not portray simulated sexually explicit activity occurring after the effective date of 18 U.S.C. &sect; 2257A; or (4) the produced images or videos were created before July 3, 1995.<br />\r\n<br />\r\n<strong>Designated Records Custodian</strong><br />\r\nWithout limiting the applicability of the above-stated exemptions, the Website&rsquo;s operator has designated the custodian, whose address appears below, to be the keeper of original records described in 18 U.S.C. &sect; 2257 and 28 C.F.R. Part 75 for all materials appearing on the Website that fall in the following categories: (1) marketing and advertising materials that contain visual depictions of actual or simulated sexually explicit conduct, which materials have been acquired or created by the Website&rsquo;s operator to promote the Website; or (2) materials that are not exempt, as described above.<br />\r\nThe named earlier records and their custodian can be found at the following location:<br />\r\n<br />\r\n<strong><u>Contact Us</u></strong><br />\r\nAll other feedback, comments, requests for technical support, and other communications relating to the Website or these Terms should be directed to:<br />\r\n<br />\r\n<strong>RTR Solutions LLC<br />\r\n8 The Green, Ste A, Dover, DE, 19901<br />\r\n<a href=\"mailto:info@thenaughtyspace.com?subject=USC%202257%20Inquiry\">info@thenaughtyspace.com</a><br />\r\n(800) 953-1594</strong></div>\r\n</div>', 'usc2257', '', '18 U.S.C. 2257,usc2257'),
(6, 'DMCA', '<div class=\"wrapper bCreatorBg\">\r\n<div class=\"i_not_found_page transition\">Company respects the intellectual property of others. It is Company&#39;s policy to respond expeditiously to claims of copyright and other intellectual property infringement. Company will promptly process and investigate notices of alleged infringement and will take appropriate actions under the Digital Millennium Copyright Act and other applicable intellectual property laws. Upon receipt of notices complying or substantially complying with the DMCA, Company may act expeditiously to remove or disable access to any material claimed to be infringing or claimed to be the subject of infringing activity and may act expeditiously to remove or disable access to any reference or link to material or activity that is claimed to be infringing. Company will terminate access for users who are repeat infringers.<br />\r\n<br />\r\n<strong>Notifying Company of Copyright Infringement:</strong><br />\r\nTo provide Company notice of an infringement, you must provide a written communication to the attention of &quot;DMCA Infringement Notification Dept.&quot; to <a href=\"mailto:copyright@thenaughtyspace.com?subject=DMCA%20Infringement%20Notification\">copyright@thenaughtyspace.com</a> that sets forth the information specified by the DMCA (<a href=\"http://www.copyright.gov/title17/92chap5.html#512\" target=\"_blank\">http://www.copyright.gov/title17/92chap5.html#512</a>). Please note that you may be liable for damages (including costs and attorneys&#39; fees) if you materially misrepresent that an activity is infringing your copyright.<br />\r\n<br />\r\n<strong>Providing Company with Counter-Notification: </strong><br />\r\nIf you feel that your material does not constitute infringement, you may provide the Company with a counter-notification by written communication to the attention of &quot;DMCA Counter-Notification Dept.&quot; at <a href=\"mailto:copyright@thenaughtyspace.com?subject=DMCA%20Counter-Notification%20Dept.\">copyright@thenaughtyspace.com</a> that sets forth all of the necessary information required by the DMCA (<a href=\"http://www.copyright.gov/title17/92chap5.html#512\" target=\"_blank\">http://www.copyright.gov/title17/92chap5.html#512</a>). Please note that you may be liable for damages (including costs and attorneys&#39; fees) if you materially misrepresent that an activity is not infringing the copyrights of others. If you are uncertain whether an activity constitutes infringement, we recommend seeking advice of legal counsel.<br />\r\n<br />\r\n<strong>English Language</strong><br />\r\nAll DMCA notices of an infringement and DMCA counter-notifications must be written in the English language. Any attempted notifications written in any other foreign language(s) or using foreign characters will be deemed as non-compliant and will be disregarded.<br />\r\n<br />\r\n<strong>Modifications</strong><br />\r\nRTR Solutions LLC (&quot;<strong>Company</strong>,&quot; &ldquo;<strong>Naughty Space,</strong>&rdquo; &quot;<strong>we</strong>,&quot; &quot;<strong>us</strong>) reserves the right to modify, alter, or add to this policy. If are an effected person we suggest that you check back offten to stay current on any such changes we make make to this document at our discretion.</div>\r\n</div>', 'dmca', '', 'DMCA'),
(7, 'Cookie Policy', '<div class=\"wrapper bCreatorBg\">\r\n<div class=\"i_not_found_page transition\">RTR Solutions LLC (<strong>&quot;Company&quot;, &ldquo;Naughty Space&rdquo;</strong> or<strong> &quot;We&quot;</strong>) respect your privacy and are committed to protecting it through our compliance with this policy. By using our website located at <a href=\"https://thenaughtyspace.com\">https://thenaughtyspace.com</a> (the &ldquo;services&rdquo;) with your browser set to accept cookies, you consent to our use of cookies and other technologies to provide the services to you as described in this notice and in our <a href=\"https://thenaughtyspace.com/p/privacy-policy\" target=\"_blank\">Privacy Policy</a>. For more information about what cookies and pixel tags are, what they do, and how you can opt out of, manage, or delete them, please review this cookie notice.<br />\r\n<br />\r\n<strong>1. What are cookies?</strong><br />\r\n&ldquo;cookies&rdquo; are small strings of text or computer code stored locally on your device that allow us, ad networks, and our third-party service providers, to identify your browser and/or device as you browse the internet. Cookies can be placed, read, and/or written to by our services, or other websites or services that recognize a particular cookie, which allows the website to &ldquo;remember&rdquo; or &ldquo;recognize&rdquo; a particular browser or device and, in some cases, store information about that browser or device.<br />\r\nCertain types of cookies or cookie-like functionality may be placed or activated through browser add-ons, including, but not limited to, adobe flash. While these cookies are stored differently, their functionality and purpose is generally similar to other cookies.<br />\r\nFor more information about cookies, please see <a href=\"http://www.allaboutcookies.org./\" target=\"_blank\">www.allaboutcookies.org.</a><br />\r\n<br />\r\n<strong>2. How long are cookies stored on my system?</strong>\r\n<ul>\r\n	<li><strong>Session cookies</strong>. &ldquo;session cookies&rdquo; are stored for the duration of a browser session; when you close the browser, the cookie is deleted.</li>\r\n	<li><strong>Persistent cookies</strong>. &ldquo;persistent cookies&rdquo; are stored for a preset amount of time (often between 90 days and two years, depending on the application) and are typically not deleted when a browser session is closed.</li>\r\n</ul>\r\nYour choices may affect whether we use session or persistent cookies for a particular application. For example, if you select &ldquo;remember me,&rdquo; your two-step verification status is stored on a persistent cookie for 30 days to remember the device that you signed in from.<br />\r\n<br />\r\n<strong>3. What cookies do we use, and why?</strong><br />\r\n<strong>Necessary cookies</strong>. Some cookies are necessary to allow you to browse the services and access certain pages. Necessary cookies are required for the services (or certain functionality on the services) to work properly, and we do not use these cookies to collect personal data about you.<br />\r\n<strong>Cookie name</strong>\r\n\r\n<ol>\r\n	<li>PHPSESSID - Preserves user session state across page requests.</li>\r\n</ol>\r\nDisabling or removing these cookies may prevent the services, or certain functionality on the services, from working correctly or at all.<br />\r\nPerformance cookies. We use performance cookies to collect information about how our users use and interact with the services, such as what pages are visited most often, how the services are used and function, or how users navigate the services. We use this information to improve the services and their content. These cookies only collect aggregate information about the use of the services, and thus do not collect information that can be used to identify you personally. Examples include:<br />\r\n<br />\r\n<strong>Functionality cookies</strong>.<br />\r\nWe use functionality cookies to remember information that you have provided or choices you have made on the services, such as saving your logged-in status or site preferences. This allows us to provide a more personalized and convenient browsing experience.<br />\r\nDisabling or removing these cookies may make browsing the services less convenient or may prevent certain functionality from working correctly.<br />\r\n<br />\r\n<strong>Third-party functionality</strong>.<br />\r\nWe do not have access to or control over cookies or other features that third party sites may use, and the information practices of those third party websites are not covered by our <a href=\"https://thenaughtyspace.com/p/privacy-policy\" target=\"_blank\">Privacy Policy</a> or this cookie notice. For more information about how stripe and securion collect and use information about your activities, please review their applicable terms of service and privacy policies.<br />\r\n<br />\r\n<strong>How do i control or make choices about cookies and tracking technologies?</strong><br />\r\n<strong>Managing cookies</strong>. Most browsers automatically accept cookies by default, but you can adjust your device and/or browser settings to delete and/or block some or all cookies, or provide notifications when you receive a new cookie. Consult the &ldquo;help,&rdquo; &ldquo;tools,&rdquo; or &ldquo;preferences&rdquo; menus on your browser, or the documentation for your device, for more information about how to do this. Please note, however, that blocking or deleting certain cookies may negatively affect your user experience.<br />\r\nAdditionally, you can generally disable or delete cookies placed and used by browser add-ons, such as adobe flash cookies, by changing the add-on settings or visiting the website of its provider. Information and controls that allow you to manage adobe flash cookies may be found on this page:<br />\r\n<a href=\"https://www.macromedia.com/support/documentation/en/flashplayer/help/settings_manager.html\" target=\"_blank\">https://www.macromedia.com/support/documentation/en/flashplayer/help/settings_manager.html</a><br />\r\nNote that if you disable adobe flash cookies or similar technologies, you may not have access to certain features and services (such as consistent volume settings for videos) that make your online experience more efficient and/or enjoyable.<br />\r\n<br />\r\n<strong><u>Contact Us</u></strong><br />\r\nAll other feedback, comments, requests for technical support, and other communications relating to the Website or these Terms should be directed to:<br />\r\n<br />\r\n<strong>RTR Solutions LLC<br />\r\n8 The Green, Ste A, Dover, DE, 19901<br />\r\n<a href=\"mailto:info@thenaughtyspace.com?subject=USC%202257%20Inquiry\">info@thenaughtyspace.com</a><br />\r\n(800) 953-1594</strong></div>\r\n</div>', 'cookie-notice', 'Page Cookies Policy', 'Cookies Policy');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(10) UNSIGNED NOT NULL,
  `token` varchar(150) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `sandbox` enum('true','false') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'true',
  `fee` decimal(3,1) NOT NULL,
  `fee_cents` decimal(3,2) NOT NULL,
  `email` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_secret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `recurrent` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `webhook_secret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscription` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `ccbill_accnum` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ccbill_subacc` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ccbill_flexid` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ccbill_salt` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `name`, `type`, `enabled`, `sandbox`, `fee`, `fee_cents`, `email`, `token`, `key`, `key_secret`, `bank_info`, `recurrent`, `logo`, `webhook_secret`, `subscription`, `ccbill_accnum`, `ccbill_subacc`, `ccbill_flexid`, `ccbill_salt`) VALUES
(1, 'PayPal', 'normal', '0', 'false', '0.0', '0.00', '', '02bGGfD9bHevK3eJN06CdDvFSTXsTrTG44yGdAONeN1R37jqnLY1PuNF0mJRoFnsEygyf28yePSCA1eR0alQk4BX89kGG9Rlha2D2KX55TpDFNR5o774OshrkHSZLOFo2fAhHzcWKnwsYDFKgwuaRg', '', '', '', 'yes', 'paypal.png', '', 'no', '', '', '', ''),
(2, 'Stripe', 'card', '0', 'true', '0.0', '0.00', '', 'asfQSGRvYzS1P0X745krAAyHeU7ZbTpHbYKnxI2abQsBUi48EpeAu5lFAU2iBmsUWO5tpgAn9zzussI4Cce5ZcANIAmfBz0bNR9g3UfR4cserhkJwZwPsETiXiZuCixXVDHhCItuXTPXXSA6KITEoT', '', '', '', 'yes', 'stripe.png', '', 'no', '', '', '', ''),
(3, 'Bank Transfer', 'bank', '0', 'true', '0.0', '0.00', '', 'MUXRUWEuhBulbgDGUS4PbTCCjlUGr4VcGb59RU2rRWtgCHstntxq2eOeeDvIHKUwxj5z2njJ6DUGfmt0PzFnEWuspasmCserf705dJeQcVttZtHugTlBMlzt0Uf6K4DjVmGVtyZuPzXakjrFGVLYRd', '', '', '', 'no', '', '', 'no', '', '', '', ''),
(4, 'CCBill', 'card', '1', 'true', '9.0', '0.25', '', 'zYYFZRjTfypGTPg0TCgWK8SKdLjGEMuNGMYedjl1D0hgmSPDS0UUduCNqkYL609NWH6ru6qdaBGFIzxeL85HwEtIOBfEQRC16qIQZ1zkTM1wbcC4fe2Wxpom6g8zmoOR1ppFN6MbPFHUJQur434Nzg', '', '', '', 'yes', '', '', 'yes', '953225', '0000', '6575ca2a-78f0-4848-ae58-728f522db075', 's6MGsadvpv2bbpnsVAxrMbuj'),
(5, 'Paystack', 'card', '0', 'true', '0.0', '0.00', '', '4w2JnfBSvoZKLiVRzHRWu3pzkgsFslVZBn8Z4mmwzVJ5KVfiFZN9kTgfFEVu90E1wPN8TnaXhtmYKwkzZ0p6HGUo1S5yVXisVxlD2PIOcm6v096akLbMAgjxiXCdFlCALkZXqi4pfrwxpYd7BGFk8c', '', '', '', 'yes', '', '', 'no', '', '', '', ''),
(6, 'Coinpayments', 'normal', '1', 'true', '0.0', '0.00', '', 'nzfADI4PgRHRn8m3r7UrR0arnfT9u1rDOQL5SKGbqPjDOZGDZA35NX3y0lQBAdmIyGVS58Rr9OtebfpGNpiXROq1G1DJNqq6xoD04fLKWTaAS2Xh3CZvECa1OfH5cchJ2P6kEl167Caax2XyAwwjGl', '800c09c612bc68767c668399cef190fd', 'y!k@X$1%DV3yAm', '', 'no', 'coinpayments.png', '', 'no', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pay_per_views`
--

CREATE TABLE `pay_per_views` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `updates_id` int(10) UNSIGNED NOT NULL,
  `messages_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pay_per_views`
--

INSERT INTO `pay_per_views` (`id`, `user_id`, `updates_id`, `messages_id`, `created_at`, `updated_at`) VALUES
(28, 25, 61, 0, '2021-11-16 10:26:41', '2021-11-16 10:26:41'),
(29, 83, 58, 0, '2021-11-16 12:39:05', '2021-11-16 12:39:05'),
(30, 84, 61, 0, '2021-11-16 08:55:41', '2021-11-16 08:55:41');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `report_id` int(10) UNSIGNED NOT NULL,
  `type` enum('user','update') NOT NULL,
  `reason` enum('copyright','privacy_issue','violent_sexual','spoofing','spam','fraud','under_age') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reserved`
--

CREATE TABLE `reserved` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reserved`
--

INSERT INTO `reserved` (`id`, `name`) VALUES
(14, 'account'),
(31, 'api'),
(2, 'app'),
(49, 'artisan'),
(47, 'blog'),
(30, 'bootstrap'),
(34, 'categories'),
(36, 'collections'),
(29, 'comment'),
(42, 'config'),
(25, 'contact'),
(45, 'core'),
(46, 'cpanel'),
(32, 'creators'),
(37, 'dashboard'),
(41, 'database'),
(50, 'explore'),
(35, 'featured'),
(1, 'fuck'),
(9, 'goods'),
(11, 'jobs'),
(21, 'join'),
(16, 'latest'),
(20, 'login'),
(33, 'logout'),
(27, 'members'),
(13, 'messages'),
(19, 'notifications'),
(48, 'offline'),
(15, 'popular'),
(6, 'porn'),
(12, 'projects'),
(3, 'public'),
(23, 'register'),
(40, 'resources'),
(39, 'routes'),
(17, 'search'),
(7, 'sex'),
(26, 'signup'),
(44, 'storage'),
(8, 'tags'),
(38, 'tests'),
(24, 'upgrade'),
(28, 'upload'),
(4, 'vendor'),
(5, 'xxx');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0nW0wyeYcc2G2DAePsSGhXFjALP7AGNn40eviK1r', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTUdmT05Gd2ozNFJ0TFRqRlJtQU1IeUFaOE9PdzBjZnMzVDRQR3BqWiI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637780940),
('1N1ZrpwPjWx3yvjJIAWehITEw3FEK76LqFPypXzr', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36 Edg/96.0.1054.29', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOER4NVZVbXQ0SG1kNERUSjJCQWNuOEdLMmZmd21HUHFTZnE5dmVPMiI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781938),
('3Bqq2HpWrL5EwFOPBBc20QMRPwlzk3MJ0W7KZHKv', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36 Edg/96.0.1054.29', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUE52RENueFZGNDNpbmZDU21HNUdLU1VqWmptaXluc2RRRW05T09SaCI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781915),
('3EryxHrzEJPF4kqy8R3VDQIvOX5MEywuxO55YEJ7', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidk9SWkZBSUE0cW1SWHR0UUo3RUVmaW5mNGdnWnBld3JxdTBKUEw1MCI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM5OiJodHRwczovL2xvY2FsaG9zdC9uYXVnaHR5L21hbmlmZXN0Lmpzb24iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1637780891),
('46skWiEF0SaWRNp8Qh6j9mrr6AJ832GFAZY98TvC', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36 Edg/96.0.1054.29', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN1g5bEU3QTk5OWpVd1p2cmZHNEFQdXlKeG5aM2RlczJobFg0aFpPaiI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781242),
('7MDWuoG8SHgplgABzpCUogJlTBdy7pxomglir0fc', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36 Edg/96.0.1054.29', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiODY0a2JHRVVYTHpUZDZVaGQ0dExlMFFDcTZGQXh1UEowOFluOW9wViI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781239),
('ADj3AwrLJ7kqG91XWCarH05MmavkQJNvbRIkbAg8', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSGVjTWU2U2hZdWM3cGo3TGtvbHN0M3FvNUFmaUNxRjhENFZYQ3puMyI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781047),
('agUHPhvsh43t7hdHcP68B5Ta5Wut9UzkCX8Tbj57', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYTQyVzljNHV6bzJCa3FYVlBHNVdRZnc3TGw1NUtlOVhLTUFlZFU5aCI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637780887),
('BImDDWHAxi5XXj5uWc1PmKTbDgdFOdM0mU3xJgIF', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZlJHaG40R1A3eDJmbVpWdjNzMTBWZjI5bjlwUkR3R0sxT0k5Q1IybCI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781602),
('caHV91qUQaJB848naYYfwRJhvPKbg7ckBg3zujMi', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36 Edg/96.0.1054.29', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN3VQS0VxMmNtYlpCemJoUTY4U0tlMHhjVmx5RldCTkpiNDladlJkTiI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781220),
('CpaaZ7flUHNNIWZs25ZvBSKgJiS0H9qz1AxjWakU', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36 Edg/96.0.1054.29', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYjc2S25oOFpMRjN0WlE0S0hxWTE3cmJtOGlnaFcydFllclFvRnoxTyI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781950),
('dCwjDkgVmd36SA4GRmUmjrttvNxxgtZjwJ7KIrmH', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUHJSeXkweFQ5OHlXMTJjSkdXc251ekhmNUZPWW1KTDlnTmRjdHI4MCI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781652),
('e5eYZ0eIGgRDxtZPwZ7XW9wHoTvHji1mBsqQSq9V', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36 Edg/96.0.1054.29', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidVNPUUVqdGFmMElNVEs1UlJqOFkwS2RneGU1N2dQa0RDSk9LdUFKTSI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781924),
('EBJBMGYtvkdrKz83SUd1gjJCB073jX7SeSRKQcLW', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoia0RVTURQSXlmbGN5SU1vS2JUekNGYUVGcktwdGs4RUJ2WHVHUU5ZZiI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781667),
('f8kFWIu47KFCN24qadaj0STR5lwc0Yws8bETyxjq', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTlBGM2J0a1c2czRydExJUzZoOW9SS0hWNXFkWFN3NjJrUmxGZGx6WSI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637780923),
('FCEndHsSGmJi5WfGqiXmMUZHsPcCq8TJodcG7qZH', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36 Edg/96.0.1054.29', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiamdaRFZydVlZSEFnZE1qZlZHc3hGS1dGZjRCRXRzdkFWQWN4UHB0NyI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781942),
('fcNkEkjRPXTVLebhjuFRIeDkcNCAhVlC8EGWZjf5', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36 Edg/96.0.1054.29', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNGFLV0VmNG5lbzVUWFJSVE8zNlU0eGU3d3J0SzNMMDV3WDNLM21KTCI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781740),
('fXEJ5SlkdfaKULEZgDKWAslN9NFkC6wCAkHxEmG4', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36 Edg/96.0.1054.29', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUGxFN0FlMjc3cGxoTTdhQ1l0ZFdZRkFpTGxzQzZtenJFTE9WU1B5dyI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781946),
('H7dQ7xjjQLRa7gbpovAl4krzkyh9ddXMDmDUP6hQ', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36 Edg/96.0.1054.29', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSEVUNVZpWDlBZkhMN0VUUWFtSERYYkRUclZ5NW9UYlUzUjBJdERyOSI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781872),
('hvSpneaQ6pbDgRJv49X4ahpUOjVeO5nqEA0R4Cjo', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36 Edg/96.0.1054.29', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicjVweHdTT25ZcURMa2sybXFZdUh4VUFYSGFuQllKSG9vOUczNkFITiI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781203),
('Hzclofoadn72UwTA4f9ZiBL7rcbbLTNPpr83apuT', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSml5ZjV2RFV4WTZkdEhjTExORUtVZ3Y3RjRubmVibk5qd2V5OGJVdSI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781224),
('IePnvJ5cLNcx5aSczB38SBU10YlPIr7TY6nAuYka', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36 Edg/96.0.1054.29', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWkpjeDBtRmc0ZllRWG9Ganc4WEJqaHF3dk5hV0xOeXFuY1NrSnhjRyI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781720),
('iYxQPcDKhymhvUc3JyMsKVwVjdHVPfpAjhf9sCws', 78, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36 Edg/96.0.1054.29', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiM1lmbHBwOXcza2ZrMTlSOGp2UlN5Q3UxZGU0UlVNRHZ4bHNQcWx0cCI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ3OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvc2V0dGluZ3Mvbm90aWZpY2F0aW9ucyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjc4O30=', 1637782228),
('jQDMGDSixB7qEIItlhfmy1twNuLXATO83xYrP5WF', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicnlWejJlNVZEZUM3cE15Z09ESm02MXdHdDRvcWE0cnhkQmJnZmQxTyI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781683),
('JUChudFy7KnhJTzvh2lcfuN1rPX1GrC6VsVV3Yil', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUHZVV2hkZHpXWmlPc0xzdDl2ZXF0eUZzRE1HWFVjME1tZmJMcjFWMiI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637780920),
('JwUlhU42EozDnOuto4SZIesaGPjJNJbJn2WPZxxi', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMUlOMVBqSG8wbHk1Z0M2QU5mOGxxejhEU05FNTR2RUROdVU4S2JGdSI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781029),
('MqRTEJtYtPjO2HACSnbZRhNBl20kEOKn4QfnFJBm', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoialVORDhPRVFLenhmYUN4c2MzWUpqT2hjMXo5TWIwSFZUamtKRHo1biI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781677),
('mSYC9jx5494bv5V0fZWK0wvRA1T9N1xdrtOnWPQa', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibzR1dW1NVzhud3JnaTZvYzJuRlJCOXluY2N2UTZ5MGRzdkQzOUxkciI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781593),
('nGE2L8IBZO74DAo0vm13zob24mHdGUCGhgNdwsnn', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36 Edg/96.0.1054.29', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRlN3S1owTEkwSGNMb3poSGlVdmtJU3g4NzF5MWd2SGRxcXVCMDVsTyI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781882),
('Np7wIutLnTjNvVKcO3kyf1XyOPA8FebYiILjH6ep', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36 Edg/96.0.1054.29', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRXZrUUx3amdXYjJES1F6TVo2Q0FNWFhzUFlNUHhIckJtYlZGUG9HSiI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781798),
('nqMlQ1UcfkGozmapvyhm1D5vH8wPVJXJxpmBIaTP', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36 Edg/96.0.1054.29', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUDNGVFZQVmhHSEU2aXRuRktWenE2WHlkR01HNU5qNVVIMlRqaEVTbCI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781172),
('O1OiU9FWV99iBz0BkA1zfMyFNbznOPqcsXpVfJbw', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYmFGSFdSUnZOeTFFZ3RmWG1WOE5KbUVLUnh0SDAxclYzaG44NncxUiI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781660),
('pcDKMsHeWWkWCcaeIVGkn9VwKlhEiWaLkBqTfEjL', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36 Edg/96.0.1054.29', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaXNFR0l1d2w3ZTRpMWc1ZnJYc3R1ckVvQmlaekhkdUVkOWdaUEdoQiI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781853),
('piNfaRvuO0KWWoWekAw9XMqIsgXu2D8S515SKT6O', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36 Edg/96.0.1054.29', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZ2t1d0FkOUZTSU1wd2VFSzFiOGFNQXM2dnF5ZzM1R3hvNHNDTDZMayI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781878),
('rugabRI0bG7SbIWvQgZP0T2izTYA3WiJXbj54dvO', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36 Edg/96.0.1054.29', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibG44R1pJSnRsWDE5aTZFenZ6eEo5ZjU5Tld6V0MxUWNnTUR5VHB5UCI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781731),
('RzWwtvGTNrNtKUhoDGXEB3pE3eSUiEh4Ul1c5QvH', 78, '192.168.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36 Edg/96.0.1054.29', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoic3RlVTRUbEllUFh4aU9zTmowMWNLMFRmU3o2dkpIUFNJb004ZTBEWCI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjkzOiJodHRwczovLzE5Mi4xNjguMS40L25hdWdodHkvZmlsZXMvc3RvcmFnZS81My83ODE2MzY5MTYyNzVjdXdhZGk2Y3Zka3N2enFldDBkbi5qcGc/aD0xMDAmdz0xMzAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo3ODt9', 1637781161),
('sk2iD6NRra6Lo2qpC0DTgZLh5qu6Gm5YwYlVayIf', 85, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidDA5cTFKQzV2SmZMcVpQQmhpNTRIUDRmc2FrNlVlRmNWcUxnTjF1MCI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ1OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWVzc2FnZXMvNzgvZDc3YTE2NDMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo4NTt9', 1637782040),
('ua4Az0BC1vRBxjg9iVhrR2FD2UsCaKNHO3jkr95B', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36 Edg/96.0.1054.29', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMVdlaGxVM2oyVExQYWNxNW9YNjJqR2llY25sQjJQaXFuME04YVMySiI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781708),
('w9bSpHqBjHQpZV1P6Su65GAZvTuxhbKxsFUmczJs', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTHhwSXUzMEI4T1ZiSWRmUURtMGNUbHU1RHZueW45N2ZLWmlBWThXUyI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781638),
('wi6GDtkxhbozbXKVUwcNtFGaFnvGc4ANZ59m3O2R', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36 Edg/96.0.1054.29', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQXFGQnRHdmpobGdMOG53SUpHd0RhTlBoTnpVSHE0YUVOSWN0NGp2ZSI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781806),
('x34CY8HtM6zWrjjyrfsSRJBH5TojTqgTbGSFekpC', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiakg3WHJ5dXRoMjl1YnFLaTNrejRxazhxb1MxcHhrb0tCYnJkYkpNZiI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637780901),
('ZC45oCWpbQ9Ca4hoRdfss2a1dIQCECXM2kBiaUVi', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36 Edg/96.0.1054.29', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidXp3ZE1oMTBLNGNha0FsYXVoUUx6aGFRRml1blRGWnZYMWFha1dueCI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781195),
('Zp5LTV25MHuNlUxKGNkYjuRQbT39FK5RvhDbxvbk', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36 Edg/96.0.1054.29', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieWFJUEdkZlo1SExFUEhBMmpGMDdzMDBFeWlTR1ZGa3I5VWpiZXByaSI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L25hdWdodHkvbWFuaWZlc3QuanNvbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637781697);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_payment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `free` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `subscription_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancelled` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `rebill_wallet` enum('on','off') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `user_id`, `name`, `stripe_id`, `stripe_status`, `stripe_plan`, `quantity`, `trial_ends_at`, `ends_at`, `created_at`, `updated_at`, `last_payment`, `free`, `subscription_id`, `cancelled`, `rebill_wallet`) VALUES
(39, 25, '', '', '', 'user_24', NULL, NULL, '2021-12-16 03:33:10', '2021-11-16 03:33:10', '2021-11-16 03:33:10', NULL, 'no', '0121320202000000011', 'no', 'off'),
(40, 79, '', '', '', 'user_78', NULL, NULL, '2021-12-16 10:05:01', '2021-11-16 10:05:01', '2021-11-16 10:05:01', NULL, 'no', '0121320202000000068', 'no', 'off'),
(41, 25, '', '', '', 'user_78', NULL, NULL, '2021-12-16 10:24:37', '2021-11-16 10:24:37', '2021-11-16 10:24:37', NULL, 'no', '0121320202000000074', 'no', 'off'),
(42, 1, '', '', '', 'user_24', NULL, NULL, '2021-12-16 11:31:57', '2021-11-16 11:31:57', '2021-11-16 11:31:57', NULL, 'no', '0121320202000000090', 'no', 'off'),
(43, 83, '', '', '', 'user_1', NULL, NULL, '2021-12-16 12:41:48', '2021-11-16 12:41:48', '2021-11-16 12:41:48', NULL, 'no', '', 'no', 'on'),
(44, 66, '', '', '', 'user_1', NULL, NULL, '2021-12-16 13:08:59', '2021-11-16 13:08:59', '2021-11-16 13:08:59', NULL, 'no', '0121320202000000098', 'no', 'off'),
(45, 84, '', '', '', 'user_78', NULL, NULL, '2021-12-16 08:53:36', '2021-11-16 08:53:36', '2021-11-16 08:53:36', NULL, 'no', '', 'no', 'on'),
(46, 85, '', '', '', 'user_78', NULL, NULL, '2021-12-18 03:47:09', '2021-11-18 03:47:09', '2021-11-18 03:47:09', NULL, 'no', '', 'no', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `txn_id` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `subscriptions_id` int(10) UNSIGNED NOT NULL,
  `subscribed` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `earning_net_user` decimal(10,2) NOT NULL,
  `earning_net_admin` decimal(10,2) NOT NULL,
  `payment_gateway` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '0 Pending, 1 Success, 2 Canceled',
  `amount` float NOT NULL,
  `type` enum('subscription','tip','ppv') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscription',
  `percentage_applied` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `txn_id`, `user_id`, `subscriptions_id`, `subscribed`, `created_at`, `earning_net_user`, `earning_net_admin`, `payment_gateway`, `approved`, `amount`, `type`, `percentage_applied`) VALUES
(77, '0121320202000000011', 25, 4294967295, 24, '2021-11-16 03:33:11', '7.52', '1.33', 'CCBill', '1', 10, 'subscription', '9.0% + 0.25 + 15%'),
(78, '0121320202000000067', 79, 0, 78, '2021-11-16 10:04:15', '3.66', '0.65', 'CCBill', '1', 5, 'tip', '9.0% + 0.25 + 15%'),
(79, '0121320202000000068', 79, 4294967295, 78, '2021-11-16 10:05:01', '3.66', '0.65', 'CCBill', '1', 5, 'subscription', '9.0% + 0.25 + 15%'),
(80, '0121320202000000071', 77, 0, 78, '2021-11-16 10:09:58', '3.66', '0.65', 'CCBill', '1', 5, 'tip', '9.0% + 0.25 + 15%'),
(81, '0121320202000000074', 25, 4294967295, 78, '2021-11-16 10:24:37', '3.66', '0.65', 'CCBill', '1', 5, 'subscription', '9.0% + 0.25 + 15%'),
(82, '0121320202000000075', 25, 0, 78, '2021-11-16 10:26:41', '3.66', '0.65', 'CCBill', '1', 5, 'ppv', '9.0% + 0.25 + 15%'),
(83, '0121320202000000084', 25, 0, 24, '2021-11-16 11:20:10', '3.66', '0.65', 'CCBill', '1', 5, 'tip', '9.0% + 0.25 + 15%'),
(84, '0121320202000000087', 25, 0, 29, '2021-11-16 11:26:23', '3.66', '0.65', 'CCBill', '1', 5, 'tip', '9.0% + 0.25 + 15%'),
(85, '0121320202000000090', 1, 4294967295, 24, '2021-11-16 11:31:57', '7.52', '1.33', 'CCBill', '1', 10, 'subscription', '9.0% + 0.25 + 15%'),
(86, '0121320202000000091', 1, 0, 24, '2021-11-16 11:33:43', '3.66', '0.65', 'CCBill', '1', 5, 'tip', '9.0% + 0.25 + 15%'),
(87, 'ppv_hKksqGldZU4FMF15VyHmjO8QP', 83, 0, 1, '2021-11-16 12:39:05', '8.50', '1.50', 'Wallet', '1', 10, 'ppv', '15%'),
(88, 'w_zFVaTjyV7KcpZXnqREZ5jHuce', 83, 0, 1, '2021-11-16 12:40:13', '4.25', '0.75', 'Wallet', '1', 5, 'tip', '15%'),
(89, 'w_CgMpk9y0v2BuHU6j1PIfBvpkY', 83, 0, 1, '2021-11-16 12:40:26', '8.50', '1.50', 'Wallet', '1', 10, 'tip', '15%'),
(90, 'subw_iVZajz9wPZZ2jgWxoSA4TRaf4', 83, 43, 1, '2021-11-16 12:41:48', '4.25', '0.75', 'Wallet', '1', 5, 'subscription', '15%'),
(91, 'w_TCeaIb5MUYI5Kqwjnmt7Ud35n', 83, 0, 1, '2021-11-16 12:42:48', '4.25', '0.75', 'Wallet', '1', 5, 'tip', '15%'),
(92, '0121320202000000098', 66, 4294967295, 1, '2021-11-16 13:08:59', '3.66', '0.65', 'CCBill', '1', 5, 'subscription', '9.0% + 0.25 + 15%'),
(93, 'subw_wkihIhN7ZxNuEpQEtJvvmqpy8', 84, 45, 78, '2021-11-16 08:53:36', '4.25', '0.75', 'Wallet', '1', 5, 'subscription', '15%'),
(94, 'ppv_JbYd0L8C7L4awwmirx7E3hIfY', 84, 0, 78, '2021-11-16 08:55:41', '4.25', '0.75', 'Wallet', '1', 5, 'ppv', '15%'),
(95, 'subw_CVVgwa1TppJZvmKSBnPvH7hic', 85, 46, 78, '2021-11-18 03:47:09', '4.25', '0.75', 'Wallet', '1', 5, 'subscription', '15%');

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE `updates` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `video` varchar(100) NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `token_id` varchar(255) NOT NULL,
  `locked` enum('yes','no') NOT NULL DEFAULT 'no',
  `music` varchar(200) NOT NULL,
  `file` varchar(200) NOT NULL,
  `img_type` varchar(5) NOT NULL,
  `fixed_post` enum('0','1') NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL,
  `video_embed` varchar(200) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_size` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `updates`
--

INSERT INTO `updates` (`id`, `image`, `video`, `description`, `user_id`, `date`, `token_id`, `locked`, `music`, `file`, `img_type`, `fixed_post`, `price`, `video_embed`, `file_name`, `file_size`) VALUES
(23, '', '', 'A few of the picture set from my shoot with Alex Blake.', 24, '2021-11-03 16:30:09', '1eJpksdCdmArgMTk2AiTXggmzZBlpdc6cW4i7TWutLlki0adSNwFWsyibgyU7WcvrZVkRUlOgovAyoUwkEeHueJFZYVg8tSbWUCKBSNNLNnMVyzSJddAWOpRoEbXDB8PI8pjiu4Sa4f3dkO6H97BCY', 'yes', '', '', '', '0', '0.00', '', '', ''),
(27, '', '', 'A little something special for my subscribers', 24, '2021-11-05 16:45:42', 'oJQZgnxELeNagsfJ3Oz6amZQLQHyuixMU43qEIekWpUP4O2ZtJno3oXStdJkO4BA2HfSL22Mvud0HQrFqlEiA7MbtFWpS1RRlNt3HAm4CDkgZX2vVB9BRhHyvuVsLc1JTnyw0XA3a4iWi2p2W0REJH', 'yes', '', '', '', '0', '0.00', '', '', ''),
(28, '', '', 'A little something for everyone', 24, '2021-11-05 16:46:56', 'Us43EHgKJBNuMDd9A4IqnNwss7hAzmg0WGKpT6HMEDOE0hA4bCkC7iqwfIfDzQ3xTGzXwEs5z5kmb4H7WYprtC1Akd0yAUSHf5k0ByCYGl1JEWXo5KFyy7CtrpYM6GF5j7Pgw5CgSzGS56f5sOj6WA', 'no', '', '', '', '0', '0.00', '', '', ''),
(40, '', '', 'Paid test', 24, '2021-11-10 12:37:24', 'JhtCm5AnFU6V79wmbxJpE3j0bdnd86EDUnGmpteW7Ud80ER1dwOtbAes6Yzw5VQLneWYlmHaHqAXCqqGYxmeu187K7zhsLNcHTFYrN4YEHPKBSWqL34b3p7kTzOirZkYgaIqfAPeyGDlhmsckfFsHa', 'yes', '', '', '', '0', '5.00', '', '', ''),
(44, '', '', 'Unlocked icon test', 24, '2021-11-10 12:38:56', 'iPwv5sQVwFzF39UqDfm6GAkRkTGohomyjAp1xct1Q8WhKOw8ufATwhRb5NQ5RXdZcoWbmBiWPVaKALnv977JMkF9jZJLIC1YfClNcrJuIafPyzPaaVovSaM6Cd6hzvnQKhP4mrnhAJInCPm6szhKol', 'no', '', '', '', '0', '0.00', '', '', ''),
(45, '', '', 'Locked icon test', 24, '2021-11-10 12:39:29', 'bl3Dzz6dEt1VQlRqqOsbm5OHZrQUdDBpcZM9RRXpfJebsKyVphFmmH6hMVlO31aqgsMcvoexu6PTuxOxfpgRWclDHQ0M1qmQpKnSb1zyCfjDhI5q9tqsUUWHFKiCr901p1sgQkPf2v0lGJJLIBqGiJ', 'yes', '', '', '', '0', '0.00', '', '', ''),
(46, '', '', 'Locked paid item', 24, '2021-11-10 12:39:56', '9bKNxA1mPa2Lh9eUzoCUprxSK4UeOLkeQZoa0sDmyHTFVNPKaeeAfbkC3hCXaPpDKOhHl9XnxZyixSKCKCxcTL5P8Y38ETp5opQ5zzRtwJIeC8qrSytou7R5vhTfaxFaRMA0gETntGDV9G4HCOkYXU', 'yes', '', '', '', '0', '5.00', '', '', ''),
(50, '', '', 'Somethings Cooking can you smell it', 29, '2021-11-11 08:40:43', 'ecexrwYSITQH8cJxfiZ9d1fVin7voQkghtjGzlqQngVn3msrIkQGK6YHpejKE674TKaAPB30aVt5i9LiYrU83bExIxsrwdGBcAYbgyEG8hZByCy1IYt0sEOcLaLvFtWJUt3nBXRE7MBbJq8HvVbDTF', 'yes', '', '', '', '0', '0.00', '', '', ''),
(53, '', '', 'Do you like me', 78, '2021-11-14 13:58:08', 'aFfBJgde4vfRTMdIu0lWdWC3CWOPiC5RfD2NUgVni5bZQVyGsp3W1qqv7eAw8EpdW3h0r90uRt6vCw2KKljMExVYDKd3f3B9lObL1GCeXexJELJPLKMkj3QpDsYRJC6xCJ8KnaLG42ITEU6xXKPdWf', 'yes', '', '', '', '0', '0.00', '', '', ''),
(54, '', '', 'Free Image', 1, '2021-11-15 18:45:21', 'VCFX9DRBElanG51hDFQErur4ZXeYJsGxq7F7nUVn3NBCCiTAFGk6PV9c13anvXs6Lxq2YuoJTPc0S35zmuvxBO19CL1Zc9aW1v1kGpIJrruI0ShXqgv32vZ8vEwb9YF9UtnShslscE0hfiG9KJ3CQL', 'yes', '', '', '', '0', '0.00', '', '', ''),
(55, '', '', 'Free Image - Padlock Clicked - Unlocked', 1, '2021-11-15 18:47:20', 'AcOWrZ7tHABdopcQpOhdpCzkEgIY0e1USS95XcJSa7yuEtIKBiOBpmhlcnulTzBNJnUwKnMf06JBkGXoIKRidNrh5cbDmRoW58RKCPHVGq1FAgAulX60lpEDrrV3UkdZmW9BreyynAcIzAK0UIIO6G', 'no', '', '', '', '0', '0.00', '', '', ''),
(56, '', '', 'Free Image - Price', 1, '2021-11-15 18:50:58', '6HSYrhNJa0nvXfHCa25CspRBe64iheBrDavKCM9tGr1loa9b3eNNWHmph9cCnkcwozQFTBVVLZD02vAslfmU37h32MxwTbRgLFo23xFv3dzuKfIiJeuxy4IXYuoqh7GHTVWv110BrSsHv0LQQ7KZxk', 'yes', '', '', '', '0', '5.00', '', '', ''),
(58, '', '', 'Image - Price - Padlocked Unlocked', 1, '2021-11-15 18:52:29', 'h4FKkrtScoXySqlE6JtKr7gfsSMRRjn1YSkCYg4YH8iWvmqReNdwfc1tBZa1GKVPnwOcV6D4VAy8VImVc6hGSrtWERqbq0IMvgauWaVz9YM1NT2vMnalPsyNr31sDmaVzdfc0shn2tjBZHhunaqqx5', 'yes', '', '', '', '0', '10.00', '', '', ''),
(59, '', '', '$50 pictures', 24, '2021-11-15 22:33:30', 'CtUFwkPhkyLlcSInpidSnov5QxilPLoSbotePgbsLHpkP6FbkDikmD4xQbe1wFekTEJL0Zzb4psaBcCTHjj7wHdvRaeRWf1mf9OxyIRO5DNrWe9Wz0XNgOUdnV5dUMeEXMIKqGtN6IIYyFBQyIlbvO', 'yes', '', '', '', '0', '50.00', '', '', ''),
(60, '', '', 'new $10', 24, '2021-11-15 22:37:40', 'iJfAKq1dgxdPTjNSAqeMc5uD6woVpXTHs1msT4qcOQSVib5KKvb4H8zz7uy1drBYnE5LPqCVB7EeFwEw2PNrPMfCIn3tiMGU2lQNqTPYrqxXT1mEpZAPviEM4bS0Mdf3J6IlGNzsfMhwIjJAQYrArF', 'yes', '', '', '', '0', '10.00', '', '', ''),
(61, '', '', 'Paid - Locked - Public', 78, '2021-11-16 10:25:42', 'whtNievEABISKJtsU8B0g5pJZsFfNHeQQBiQnbNVrushuhubslEeAnUvVXffqKdnfKenaFIlCPcvwEzLeiK60TgSSCFB7yBtoEXaoDsswoo1aghXzCI6fvjoD3pTEaadQXnHiEmpT4AJ7ghCJVt8lK', 'yes', '', '', '', '0', '5.00', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) NOT NULL,
  `countries_id` char(25) NOT NULL,
  `password` char(60) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `avatar` varchar(70) NOT NULL,
  `cover` varchar(70) NOT NULL,
  `status` enum('pending','active','suspended','delete') NOT NULL DEFAULT 'active',
  `role` enum('normal','admin') NOT NULL DEFAULT 'normal',
  `permission` enum('all','none') NOT NULL DEFAULT 'none',
  `remember_token` varchar(100) NOT NULL,
  `token` varchar(80) NOT NULL,
  `confirmation_code` varchar(125) NOT NULL,
  `paypal_account` varchar(200) NOT NULL,
  `payment_gateway` varchar(50) NOT NULL,
  `bank` text NOT NULL,
  `featured` enum('yes','no') NOT NULL DEFAULT 'no',
  `featured_date` timestamp NULL DEFAULT NULL,
  `about` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `story` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `oauth_uid` varchar(255) NOT NULL,
  `oauth_provider` varchar(255) NOT NULL,
  `categories_id` varchar(255) NOT NULL,
  `website` varchar(200) NOT NULL,
  `stripe_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `card_brand` varchar(255) DEFAULT NULL,
  `card_last_four` varchar(4) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `verified_id` enum('yes','no','reject') DEFAULT 'no',
  `address` varchar(200) NOT NULL,
  `city` varchar(150) NOT NULL,
  `zip` varchar(50) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `youtube` varchar(200) NOT NULL,
  `pinterest` varchar(200) NOT NULL,
  `github` varchar(200) NOT NULL,
  `last_seen` timestamp NULL DEFAULT NULL,
  `email_new_subscriber` enum('yes','no') NOT NULL DEFAULT 'yes',
  `plan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notify_new_subscriber` enum('yes','no') NOT NULL DEFAULT 'yes',
  `notify_liked_post` enum('yes','no') NOT NULL DEFAULT 'yes',
  `notify_commented_post` enum('yes','no') NOT NULL DEFAULT 'yes',
  `company` varchar(50) NOT NULL,
  `post_locked` enum('yes','no') NOT NULL DEFAULT 'yes',
  `ip` varchar(40) NOT NULL,
  `dark_mode` enum('on','off') NOT NULL DEFAULT 'off',
  `gender` varchar(50) NOT NULL,
  `birthdate` varchar(30) NOT NULL,
  `allow_download_files` enum('no','yes') NOT NULL DEFAULT 'no',
  `language` varchar(10) NOT NULL,
  `free_subscription` enum('yes','no') NOT NULL DEFAULT 'no',
  `wallet` decimal(10,2) NOT NULL,
  `tiktok` varchar(200) NOT NULL,
  `snapchat` varchar(200) NOT NULL,
  `paystack_plan` varchar(100) NOT NULL,
  `paystack_authorization_code` varchar(100) NOT NULL,
  `paystack_last4` int(10) UNSIGNED NOT NULL,
  `paystack_exp` varchar(50) NOT NULL,
  `paystack_card_brand` varchar(25) NOT NULL,
  `notify_new_tip` enum('yes','no') NOT NULL DEFAULT 'yes',
  `hide_profile` enum('yes','no') NOT NULL DEFAULT 'no',
  `hide_last_seen` enum('yes','no') NOT NULL DEFAULT 'no',
  `last_login` varchar(250) NOT NULL,
  `hide_count_subscribers` enum('yes','no') NOT NULL DEFAULT 'no',
  `hide_my_country` enum('yes','no') NOT NULL DEFAULT 'no',
  `show_my_birthdate` enum('yes','no') NOT NULL DEFAULT 'no',
  `notify_new_post` enum('yes','no') NOT NULL DEFAULT 'yes',
  `notify_email_new_post` enum('yes','no') NOT NULL DEFAULT 'yes',
  `custom_fee` int(10) UNSIGNED NOT NULL,
  `hide_name` enum('yes','no') NOT NULL DEFAULT 'no',
  `birthdate_changed` enum('yes','no') NOT NULL DEFAULT 'no',
  `email_new_tip` enum('yes','no') NOT NULL DEFAULT 'yes',
  `email_new_ppv` enum('yes','no') NOT NULL DEFAULT 'yes',
  `notify_new_ppv` enum('yes','no') NOT NULL DEFAULT 'yes',
  `active_status_online` enum('yes','no') NOT NULL DEFAULT 'yes',
  `payoneer_account` varchar(200) NOT NULL,
  `zelle_account` varchar(200) NOT NULL,
  `notify_liked_comment` enum('yes','no') NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `countries_id`, `password`, `email`, `date`, `avatar`, `cover`, `status`, `role`, `permission`, `remember_token`, `token`, `confirmation_code`, `paypal_account`, `payment_gateway`, `bank`, `featured`, `featured_date`, `about`, `story`, `profession`, `oauth_uid`, `oauth_provider`, `categories_id`, `website`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`, `price`, `balance`, `verified_id`, `address`, `city`, `zip`, `facebook`, `twitter`, `instagram`, `youtube`, `pinterest`, `github`, `last_seen`, `email_new_subscriber`, `plan`, `notify_new_subscriber`, `notify_liked_post`, `notify_commented_post`, `company`, `post_locked`, `ip`, `dark_mode`, `gender`, `birthdate`, `allow_download_files`, `language`, `free_subscription`, `wallet`, `tiktok`, `snapchat`, `paystack_plan`, `paystack_authorization_code`, `paystack_last4`, `paystack_exp`, `paystack_card_brand`, `notify_new_tip`, `hide_profile`, `hide_last_seen`, `last_login`, `hide_count_subscribers`, `hide_my_country`, `show_my_birthdate`, `notify_new_post`, `notify_email_new_post`, `custom_fee`, `hide_name`, `birthdate_changed`, `email_new_tip`, `email_new_ppv`, `notify_new_ppv`, `active_status_online`, `payoneer_account`, `zelle_account`, `notify_liked_comment`) VALUES
(1, 'NaughtyGirl', 'naughtygurl', '1', '$2a$12$pl6ZJFnf6tNsK0Jgji2xQ.P6AtQcqUiVK6PFcFzLT3vWXOeOHHXTi', 'info@thenaughtyspace.com', '2021-03-13 08:01:01', 'naughtygurl-11636638806v4w0oknd2a.png', 'naughtygirl-116358871553i6kerqfqt.jpg', 'active', 'admin', 'all', 'TRb7AGhj8XNmVzXYfLMkriBRX39TzT7m7oU0GSS2lG1DqD8BoMBVIb1smY68', 'Wy4VkAl2dxHb9WHoXjTowSGPXFPnEQHca6RBe2yeqqmRafs0hSbCEobhNkZZAbCDIru60ceLzAAOI3fj', '', '', 'Bank', 'All other \r\nSwift Code\r\nAccount Number\r\n\r\nUS\r\nRouting Number\r\n Account Number', 'yes', '2019-02-21 03:25:00', '', '❤️❤️FAN CLUB NS❤️❤️\r\nI am announcing my new private club! This club is exclusively for the fans with whom I am deeply involved. If you agree, you will have access for life. I am creating an exclusive club for my favorite fans. Access will include never-before-seen naked photos, photos of pussy, ass, selfies, my feet and voice notes, and . 💋🎁🎈', 'Model', '', '', '20,22,24,31,33,35,36,14,37,105', 'https://allmylinks.com/thenaughtyspace', NULL, NULL, NULL, NULL, '5.00', '3.66', 'yes', 'Hollywood', 'Tester', 'CA', 'https://www.facebook.com/adultcontentcreators', 'https://twitter.com/TheNaughtySpace', '', '', '', '', '2021-11-24 08:23:14', 'yes', 'user_1', 'yes', 'yes', 'yes', 'Testing', 'yes', '', 'on', 'female', '05/03/1985', 'no', 'en', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', '', 'bob@bob.com', 'yes'),
(18, 'karthikeyan murugan', '7fc21b01', '', '', 'karisdft456@gmail.com', '2021-11-01 18:28:47', '7fc21b01-181635769766axrn7imzlx.jpg', '7fc21b01-181635769771steuzyo1oc.jpg', 'active', 'normal', 'none', '', 'T9p2tHhEUWe0wouh1DrPf3Dkr2KHQUsGJFa0jJ42j2SreD4pe95k8zOLPpP2F8sjPi6HhN6v2Xq', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '113864160634739193042', 'google', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '', '', '', '', '', '', '', '', '', '2021-11-01 21:05:36', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '', 'off', '', '', 'no', '', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(19, 'Nino', 'cebc430c', '', '$2y$10$8I7v.mfGPod82ekm24uJZ.5VF/bZMRy5QXAgbmZ8Z5BN.ovZhtJe6', 'lajanan209@cocyo.com', '2021-11-01 19:25:43', 'default-1635660181.png', 'cover_default-1635692178.jpg', 'active', 'normal', 'none', '', 'z7QfWmwPMv1BQMXUlJ7qwX2N303fGuyynN0q39iU9KMPC7IvttcT6J3Z2ujlB1Glod792r0vOY1', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '91.132.174.206', 'off', '', '', 'no', 'en', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(20, 'CC Bill', 'ccbill', '1', '$2y$10$FtGwPsTIe4eskfrmOpUB5.AGSrB7IUjTlOvJRpHt5kNNpvz8OEvBK', 'charliek@ccbill.com', '2021-11-01 21:28:27', 'ccbill-201635899940xpzreewr4l.png', 'ccbill-201635900436musrlmujhz.jpeg', 'active', 'normal', 'none', '', '2oVapSNIfJTxylx8U37SsM9aLuFdmCrzNHusLOGFWyDqyhuiiczTiNnbVc0oXOcvoli5XrXRpDq', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', 'Merchant Processor', '', '', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '2353 W. University Dr.', 'Tempe', '85281', '', '', '', '', '', '', '2021-11-15 15:17:38', 'yes', 'user_20', 'yes', 'yes', 'yes', 'CCBill, LLC.', 'yes', '47.196.34.232', 'off', '', '05/05/1985', 'no', 'en', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(23, 'Azilome Inc', '1678ee0d', '', '', 'azilome.inc@gmail.com', '2021-11-01 13:18:32', '1635787111105285089562173939086.jpg', 'cover_default-1635692178.jpg', 'active', 'normal', 'none', '', 'RBwsQj65ds2KLg8plIwLZfWTWsrCCHRVK6QHbPFAeMLkg0cjPMsbUw1CuEvO0hOEAnIfY1ipEyV', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '105285089562173939086', 'google', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '', '', '', '', '', '', '', '', '', '2021-11-01 15:05:05', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '', 'off', '', '', 'no', '', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(24, 'Tybones', 'Tybones', '1', '$2y$10$3kfaG4rpyw8DtbDBDPmSPumBdElP/ioDbOMfxU17Bf/ye9ZqNifXG', 'tybonesofficial@gmail.com', '2021-11-01 14:33:44', '4765a9a5-241635791840lr5qeittci.jpeg', '4765a9a5-241635791852wczlps9xoj.jpeg', 'active', 'normal', 'none', '3oKtHafSvYaeUoEGcefLrQiCI1DRSAEVNJOoZ0adtUJu1HICSGneqJGGz8YQ', 'YIshkLlVs1GWPWim58k9x1PO7cc4FdpPKXbsd8fwVbDH67Crco5setWIV9XlOASd4lYE8uMTqip', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, '10.00', '22.36', 'yes', '', '', '', '', '', '', '', '', '', '2021-11-16 03:37:21', 'yes', 'user_24', 'yes', 'yes', 'yes', '', 'yes', '24.120.54.60', 'on', '', '09/30/1988', 'no', 'en', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(25, 'Creator_1', '947832cb', '1', '$2y$10$7ERYTWm0NKwciuyzBdQhBumUEG9d4ebJWqXarjignSIlgO3qI5rjS', 'roberto@thenaughtyspace.com', '2021-11-01 14:48:06', '947832cb-251635792923fall1eb21n.jpg', '947832cb-251635792914ghz36aohwh.jpg', 'active', 'normal', 'none', '476SR7k8TOosArU6h0oAm5TZCKRUNgSgrPbqh4DkGjl6GWuF4dQROIgtBhUU', 'yZcocUH8108kZNrHNm78PXnqXyHKGOywBc3Ckmoa6BmVnmBJM29o8Huyvj6i49yMv7b0SU3eqfi', 'qf3OuJAGWmY0GKSwHkT7geRfD8BdooG1oHkqkiKZQeip0GL72UfZFECDsHoiwVvrglfXLneBlTL1ppaysV8vHNM9DUYcxNn1eoKO', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', 'creator', '', '', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '123 billiing street', 'billing city', '12345', '', '', '', '', '', '', '2021-11-16 12:31:11', 'yes', 'user_25', 'yes', 'yes', 'yes', 'my billing info', 'yes', '172.89.154.100', 'on', 'female', '01/01/1989', 'no', 'en', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(27, 'Elyy', '6c02b690', '', '', 'elysaa93@hotmail.com', '2021-11-02 11:26:07', '16358667672404417111.jpg', 'cover_default-1635692178.jpg', 'active', 'normal', 'none', '', 'LdjLSgVjDKeLwIvZ8QDEmvDFXBPBGBeqqK5kS8uJplgZoxtpJvJKM3D8zD0IcnRuCPs7jEUN6zh', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '2404417111', 'twitter', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '', '', '', '', '', '', '', '', '', '2021-11-02 16:57:02', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '', 'off', '', '', 'no', '', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(29, 'Lupe and Micha', 'Lupeandmicha', '1', '$2y$10$DxSDo/pHn5kGIbptdr/YRupsUFBShjiI4Z2ec9aues5.J28a1mbfS', 'lupeandmicha@gmail.com', '2021-11-02 12:29:32', '1635870572106398442120513165288.jpg', '821ec8cd-2916358706074ldykddetb.jpg', 'active', 'normal', 'none', 'HZKGaDHJsE4ChBNzbXQ11Fa7zYi77bQtTOHcK5Nvd3dXUcWM5Vst4HdHI4LE', 'BCAgoiRzUrEieJFxOZZG35CEXvBIlAA0VMRJwJHGwe2egxiHKoyjKFWTWUZUgy9olDHtD3WtQs0', '', '', 'Bank', '12345567891011121314123132345655767', 'yes', '2021-11-15 09:23:09', '', 'Welcome to Lupe and Micha\'s Page \nWhat you can expect to see\nG/G\nB/G \nGangbangs\nOrgy\nFull Swap with other real Swingers', '', '106398442120513165288', 'google', '19,Hotwife,Interracial,Swingers', 'https://Lupeandmicha.com', NULL, NULL, NULL, NULL, '9.99', '12.45', 'yes', '', 'Sarasota', '33534', '', 'https://twitter.com/lupemicha', 'https://instagram.com/lupeandmicha', 'https://youtube.com/c/lupeandmicha', '', '', '2021-11-15 18:22:31', 'yes', 'user_29', 'yes', 'yes', 'yes', '', 'yes', '', 'off', '', '12/28/1987', 'no', '', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(35, 'Jorge Luiz gomes da silva', '171aef67', '', '', 'jj.luiz.gomes@gmail.com', '2021-11-02 21:27:58', '1635902877111348622934004395540.jpg', 'cover_default-1635692178.jpg', 'active', 'normal', 'none', '', 'X5O0eG0gGJLHaxPL2RkHBDG0KYlrsEFa7GxpFB9eMTB6XbbpiPMRF3WBwqMlLUS1qoz0kIsURKU', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '111348622934004395540', 'google', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '', '', '', '', '', '', '', '', '', '2021-11-02 21:30:32', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '', 'off', '', '', 'no', '', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(45, 'Niko Nikolic', 'd66c53ab', '189', '$2y$10$8/KgAn7oU3/flPmhftkBbufMCgEaE0oWlWhU5LGEMrV7yp0M/bDPu', 'nemanjan@ccbill.com', '2021-11-08 08:32:15', 'default-1635660181.png', 'cover_default-1635692178.jpg', 'active', 'normal', 'none', '', 'jebZKLviQunPN4p3YrYfZKiALPaOGCh3ddVGjVfzP5xIgUkMzQdeAO4ILJPSOzpVDCNbqpfLbDv', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '', '', '', '', '', '', '', '', '', '2021-11-08 08:32:26', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '131.153.40.106', 'off', '', '', 'no', 'en', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(46, 'Yuliia', 'mona25', '224', '$2y$10$Jm41YTGdjXwpBuK29WmhOumu6oODZe67zOTTg3Dkohr1HFMY/NhCm', 'trepanoid@outlook.com', '2021-11-08 08:39:21', '265cb552-461636378849pqjww9jxhb.jpg', '265cb552-461636378855h6tgmwh8kn.jpg', 'active', 'normal', 'none', '', 'Y8iGgN53CdQqdKXpFMqjLMaekNl4wwkQOKNfHoiIPR5VlDpPXJtp9FmvvIYmBSfFXgaueVvV7Ep', '', '', '', '', 'yes', '2021-11-08 09:26:07', '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', 'Akademika Pavlova 162a', '', '61144', '', '', '', '', '', '', '2021-11-08 08:42:15', 'yes', 'user_46', 'yes', 'yes', 'yes', '', 'yes', '178.165.63.112', 'off', '', '05/22/1990', 'no', 'en', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(49, 'soft', '8fda87a0', '', '$2y$10$Jd0sC.Zdc5kLcxV3R8liie7Rz14PZNoUJYP4oMwSeyWYZv/QlP9gC', 'chohansoft6307@gmail.com', '2021-11-08 13:18:18', 'default-1635660181.png', 'cover_default-1635692178.jpg', 'active', 'normal', 'none', '', 'PBlRUaHa4w3cyaPMAcfM8pz7AX7UdeIONv0gFYo5Yz3juGLInQbWnVnxn6NdmmHdMDKxQVJ3ynQ', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '', '', '', '', '', '', '', '', '', '2021-11-08 16:01:27', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '103.134.3.248', 'off', '', '', 'no', 'en', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(50, 'Senior', '230e53d4', '15', '$2y$10$rPafkvb3/UVg.03Ok6Ejp.cnk0aQ/I0XSS/5oQTeKCFxYTkxRHiQu', 'mjr.sarem@gmail.com', '2021-11-08 13:30:24', 'default-1635660181.png', 'cover_default-1635692178.jpg', 'active', 'normal', 'none', 'QCLc5K0MiNlEJyzCP3IP61JFOypxsRHZRmR2VWghhMDXhH6xkdk6FtWAju4Q', '2ZkZ6tDZ4Wm7F1OtHPBp0wtz8MCQ2kdCxzgkQRRWrnZvogpmPiKAAO5PLAHZRVNLfmMvsKWs2I3', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '', '', '', '', '', '', '', '', '', '2021-11-08 13:46:47', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '203.171.112.34', 'off', '', '', 'no', 'en', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(55, 'Brooklyn Rose', 'd8afdc28', '1', '$2y$10$YPbW2WZQfj9T8157w8FKpeMmNd/YlnMjLdEDet7PS/yDR3FUV/YD.', 'huizarjessica570@gmail.com', '2021-11-09 05:18:19', 'd8afdc28-551636536224nqqojih2ja.jpg', 'cover_default-1635692178.jpg', 'active', 'normal', 'none', 'j4L8xrv03jGpRjqCegDzfVtDBkw47UNZjgIGHXndlmOZA9POw0E42u0e4l54', 'hLYrRTL1falSKi5J983NldSsxhEikoNgmBbw4omzvxfi8vjcek80tgAyb1patKFZfgHcVUVK041', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '', '', '', '', '', '', '', '', '', '2021-11-10 04:30:40', 'yes', 'user_55', 'yes', 'yes', 'yes', '', 'yes', '172.58.107.224', 'off', 'female', '10/19/1987', 'no', 'en', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(56, 'Ajaydev', 'cc250375', '5', '$2y$10$Rv79hFHM1AZft3o9yA4XceE0iwycE9x4PVAY8zrmlaMzrcTecNgX.', 'ajaydev4342@gmail.com', '2021-11-09 06:27:32', 'default-1635660181.png', 'cover_default-1635692178.jpg', 'active', 'normal', 'none', '', 'OQsxWB33te3RWKwXLcekAFyxwqZ0FmVIGhLkV4vVO9HD4aFLQk5POG93wFJn9FAJZrRVdWsdkkw', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '', '', '', '', '', '', '', '', '', '2021-11-09 09:53:55', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '117.222.251.64', 'off', '', '', 'no', 'en', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(57, 'NGUESSOP TEMFACK Christel', '67a1ae14', '39', '$2y$10$z/UoYP3R16YVWGt3.W9nyuRp/iscMzDZ4B96HBSjifo4ACTycLZgm', 'christel.nguessop@perfitcom.com', '2021-11-09 10:14:50', 'default-1635660181.png', 'cover_default-1635692178.jpg', 'active', 'normal', 'none', '', 'I86jlywuQoTTrd7MZquLYxpgeYM3mq4NJxqpGF2l54Lothdx1EZAer3VGn7Fk6guiqkilUb9v0F', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '', '', '', '', '', '', '', '', '', '2021-11-09 11:08:01', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '154.72.169.107', 'off', '', '', 'no', 'en', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(61, 'firstname lastname', 'thisIsTheUserName', '1', '$2y$10$a7oFiauDzjwPoAuPTJSQIOCtmG3.dlOqa1zzQ2jj5oEeADOrnw./6', 'fosak78681@ingfix.com', '2021-11-09 13:11:49', 'default-1635660181.png', 'cover_default-1635692178.jpg', 'active', 'normal', 'none', 'KLyYzGfdfxSer0tzFodARl8YzI30StRJG4NlTT9krzJXZHKrFJZpolnq48cU', 'GbCxdOJMFxKBLTxwCMFfawRZnYwov0SUXzT97Q8Yd3l0HiYUZRLXd0MRXuFgdm9xkjwytnZJMy8', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '', '', '', '', '', '', '', '', '', '2021-11-09 13:25:56', 'yes', 'user_61', 'yes', 'yes', 'yes', '', 'yes', '172.89.154.100', 'off', '', '01/31/2000', 'no', 'en', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(63, 'Nemo Mino', '1b4c0e5c', '', '$2y$10$eR0cYLmxZbn/BxHvZUlNRukPRjRPsVlPCSUlKVdAIJ2k8/26eMaCy', 'lidecaw144@cyadp.com', '2021-11-09 16:17:20', 'default-1635660181.png', 'cover_default-1635692178.jpg', 'active', 'normal', 'none', '', 'InW32s59ym0RTKibKepTREfTFLxttpz6JY24H35k7Mr139LbSjuxom3cK2VRDjzz8eEJAHdFXJa', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '', '', '', '', '', '', '', '', '', '2021-11-09 16:27:59', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '91.132.174.206', 'on', '', '', 'no', 'en', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(64, 'Darrell Taylor', 'bafded4f', '1', '$2y$10$rDcAsHFyCm0N.Jq9.U2zjORlqf3SCiDds9/nWqO4jLqjImNkXatLS', 'darrelltaylor41576@gmail.com', '2021-11-09 19:40:32', 'default-1635660181.png', 'cover_default-1635692178.jpg', 'active', 'normal', 'none', '', 'zIWhjpcZlZ95vrkgrd3sNKAadLxAb5AUdADtgaQrWrMZ7YC9MO1F7DXAbH5R4h3XT6KpPBGBguc', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '', '', '', '', '', '', '', '', '', '2021-11-10 00:19:29', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '174.209.229.56', 'off', '', '', 'no', 'en', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(65, 'Abubakar', '14494ea0', '', '$2y$10$iXh2hPLswpCXQhtDiV6Od.Wfiq1OCfii51aQhvcuvnKP/1y3yJM/a', 'abubakar.butt89@live.com', '2021-11-10 11:25:16', 'default-1635660181.png', 'cover_default-1635692178.jpg', 'active', 'normal', 'none', 'BqJjjNTeXv0GKCcKAnxE16svABMTndeZEPLMErhxAX553HxLsZYMW5pXZJpj', 'LwZnqE7JXgPqAWAycTDeJqFvSCoWCR4u30JjUDDFozIwGJw8siAIWeyHPq8q22SFWyau587j71j', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '', '', '', '', '', '', '', '', '', '2021-11-10 11:56:36', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '203.175.74.81', 'off', '', '', 'no', 'en', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(66, 'Tester', 'TESTER', '1', '$2y$10$Zcm0n5Q9is5kkBEfFgxkyevLzJHdu1py.taAQXHubTXOKUFSqAHGe', 'newaccounts@ccbill.com', '2021-11-10 12:42:07', 'tester-661636566374bcsqhyoqym.jpg', 'cover_default-1635692178.jpg', 'active', 'normal', 'none', '', 'DlQVkg66gIGwG7fb1PTY8gAT7wcRrfxXmeKjXtxqKy52dfHr1jxwhTlH5mSBcpY7t6ErhhgoRTa', 'P8qcz13u3ESGomnq16sopOAzNp6tJ9uiyQDzOn9ZsgDBBFxzXOIT0s86jXPN9u2bEcdtxT5SHN6F2Ml6xOIaXxxcsjdLOSdJRSfK', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '', '', '', '', '', '', '', '', '', '2021-11-16 13:09:01', 'yes', 'user_66', 'yes', 'yes', 'yes', '', 'yes', '47.196.33.214', 'on', 'no_binary', '05/03/1985', 'no', 'en', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(69, 'publicsearch', '12cc9be9', '20', '$2y$10$c9IS2uY9.Rj0C7KaQzm5qO1FTerigImEw1iWRAbfHxdQIyWIiQray', 'bd.psearch@gmail.com', '2021-11-11 13:41:15', 'default-1635660181.png', 'cover_default-1635692178.jpg', 'pending', 'normal', 'none', '', 'POiWmHKUpJHzKtCfOyyRfS7hvQGHQnRTXJGormum5wkWbWEjGnFhir2qvpCdPw6RuqA8hSGrYNS', 'TxEdqp7INvegeqkGixZBb5aPfWeuklM3kdJSev2IUcbYtgZSoSxNWGaghpq4QnkRW590F1eJToX2piBsxUJN1sUk1BX1aOWRVKot', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '43.245.123.240', 'off', '', '', 'no', 'en', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(70, 'Don O.', '17044251', '', '', 'osasu009@gmail.com', '2021-11-11 15:06:24', '1636661183105225865652165667257.jpg', 'cover_default-1635692178.jpg', 'active', 'normal', 'none', '', 'IU6JnngKbLoj6ELliZe409pHXq8wMcbOfbyAKUBiXNUFotZH7Wd3bjiuBpDmus9DdU1jI62pBIp', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '105225865652165667257', 'google', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '', '', '', '', '', '', '', '', '', '2021-11-14 07:10:00', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '', 'off', '', '', 'no', '', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(71, 'Daniel Sullivan', '3c720b29', '1', '$2y$10$p5moQIMZADLX0dIrswGIseV1dNrN6jTA75UTISoynHfhINqrQuIyi', 'dsullivan@hillpointe.com', '2021-11-12 11:00:47', 'default-1635660181.png', 'cover_default-1635692178.jpg', 'pending', 'normal', 'none', '', 'CK14aBJf825qeiXfIGkGzvpWUrG3lWePM0VkAz4mTv3P4ecTdYvC64X2v0Gfc4oDmWtB31LPLtc', 'qPv8gDWoeyX7nvjjPoGrl3eDq2DSzYpo0Dck3HcYHJtnC1xrQmdcLov3g645MhRKZa8jcFcAjRWuOjyVZPccTYqcKj6hMDU1FeCo', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '174.211.230.229', 'off', '', '', 'no', 'en', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(72, 'Daniel Sullivan', '9a8e76e3', '1', '$2y$10$jCD4QF2FtRXTxDkEFt2LmOyFbwZMc/UH39Gp2Upaf8djkYWCzh6gq', 'dslhfa2020@gmail.com', '2021-11-12 11:02:12', 'default-1635660181.png', 'cover_default-1635692178.jpg', 'active', 'normal', 'none', '', 'CFs5WX182kAavVnlZWKhjonhJnb1mrteBlfhv2kg0osZ8nnp2KcPMr2Blgfb8jO56eAdjQjsLhD', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '', '', '', '', '', '', '', '', '', '2021-11-12 11:02:49', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '174.211.230.229', 'off', '', '', 'no', 'en', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(73, 'aima rao', '3c04a229', '', '', 'raoaima64@gmail.com', '2021-11-12 13:51:00', '1636743059106377126803663082062.jpg', 'cover_default-1635692178.jpg', 'active', 'normal', 'none', '', 'c0kXzzuXwKBYKBOtyoPToCL2Qi3ChZxw7HILIAodmh6QRGABNxw15TspHwqtrQw95aIwdmUxDZ1', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '106377126803663082062', 'google', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '', '', '', '', '', '', '', '', '', '2021-11-12 14:08:10', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '', 'off', '', '', 'no', '', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(74, 'Zubair Sheikh', '7d4b97ce', '', '', 'sheikhzubair1319@gmail.com', '2021-11-12 13:59:24', '1636743564100403800998496386033.jpg', 'cover_default-1635692178.jpg', 'active', 'normal', 'none', '', 'w1qEwj2CKuN9HJOepnchEmj55HGjrRt74U7boQksmx8HK8vhDnI2qa7qHsdkyYlUIObpjgOztQt', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '100403800998496386033', 'google', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '', '', '', '', '', '', '', '', '', '2021-11-16 13:11:58', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '', 'off', '', '', 'no', '', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(75, 'eric fletcher', '488ed671', '', '', 'fletchereric300@gmail.com', '2021-11-13 01:06:54', '1636783614110502820653349946019.jpg', 'cover_default-1635692178.jpg', 'active', 'normal', 'none', '', 'z0TN72uCkiStNW0ZJdesU0RwzmPhNnV1ElQg9N3X3TgkIwRSMj62cjzHPxuqupOAFg5B59cBDzk', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '110502820653349946019', 'google', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '', '', '', '', '', '', '', '', '', '2021-11-13 01:07:28', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '', 'off', '', '', 'no', '', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(76, 'abdulqayyum', 'c6603f7f', '165', '$2y$10$oH3WvDYcil3IwQx7Snjz3ehHvXfX9du6cL5J84B1zDmWKsiczJ7LS', 'abdulqayyumm78@gmail.com', '2021-11-13 16:22:03', 'default-1635660181.png', 'cover_default-1635692178.jpg', 'active', 'normal', 'none', '1bk6lT0ANPwkSnbZ4QuFmhGnhTHAvs5zl9R1XWAZkArZBoyinSYxrIint7CC', 'rkLkP6LUR4ax9mrHU1J6dndOmh3ELKFdA1yGKhahnnRrI4ipA4B6jH8CtXcLBQqPEIxis6gW6Eb', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '', '', '', '', '', '', '', '', '', '2021-11-14 08:34:44', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '39.36.31.85', 'off', '', '', 'no', 'en', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(77, 'azuredragon71', '540b3719', '', '', 'actualizer71@gmail.com', '2021-11-14 00:55:19', '1636869319103457841864227234015.jpg', 'cover_default-1635692178.jpg', 'active', 'normal', 'none', '', 'QuI8wju9jyQb79fYWwZITaG8PsZWvQTrLLiD6fbGxDc8IJgoWfSmry2Wc7IkUhk21XutQwT7WSm', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '103457841864227234015', 'google', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '', '', '', '', '', '', '', '', '', '2021-11-16 10:10:04', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '', 'off', '', '', 'no', '', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(78, 'match Dog', 'd77a1643', '', '$2y$10$UK.ITGpMCd7O2yR4ArMgUe0jG7wjvuF2iMTZeD/DXkDRdHPvNPw26', 'matchdog2021@gmail.com', '2021-11-14 12:55:35', 'd77a1643-781637081784qznyxnvs3q.jpg', 'd77a1643-781637081617gardr3toyi.jpg', 'active', 'normal', 'none', 'UJjcZTJr3qLDttlZmDGFxqh8bi8c9X2u2ADDVwRUWVGBpS79Hi04TMFF9BjX', '7FW76KDxvUdDDlFwqdsDU6c8Pkba9VBOUEBuEINWZFW0cvWU2NyTEDpAP2k1DSqQIVsOankIQbU', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '117923132864771992449', 'google', '', '', NULL, NULL, NULL, NULL, '5.00', '35.45', 'yes', '', '', '', '', '', '', '', '', '', '2021-11-24 08:30:28', 'yes', 'user_78', 'yes', 'yes', 'yes', '', '', '', 'on', '', '', 'no', '', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(81, 'James Raynor', 'b14d89e4', '226', '$2y$10$.j1XyuDUOi6lgwyHHQf7k.d.GNl9X8/ZLTwawB1ydm4y4ckarHVJe', 'ivanpet@ccbill.com', '2021-11-16 11:05:42', 'default-1635660181.png', 'cover_default-1635692178.jpg', 'pending', 'normal', 'none', '', 'pNfeyW6mt1dB4PkyFJBX1Bsc0NsLlANNYtYGiJOEpG08nBFuIoc3JX3gpk5EjzNkVRHrGOlAyVH', '2CsIuTsTgZqCEztCXcSGQFUgQRhti4CFXq5xh1Qv6KpUv8m1jq5wmE3R0aZc836yrOkjG49t6U9ABo2P41wAW4ToStnb1w9UzaEV', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '131.153.40.106', 'off', '', '', 'no', 'en', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(82, 'Hamza Waseem', '7e97b384', '', '', 'hamxawasim123@gmail.com', '2021-11-16 12:13:35', '1637082815113799765551327291374.jpg', 'cover_default-1635692178.jpg', 'active', 'normal', 'none', '', 'iluqqwYiONQ1s4R8RSDoZ3RPvRhnysvZYtxQzYTTdOk2iBd71nfIAlRQYB7cAv0vnXBza2bu7Nj', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '113799765551327291374', 'google', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '', '', '', '', '', '', '', '', '', '2021-11-16 12:20:12', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '', 'off', '', '', 'no', '', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(83, 'Rick Gravine', 'faafaa33', '1', '', 'r.gravine@gmail.com', '2021-11-16 12:35:23', '16370841234944486762252849.jpg', 'faafaa33-831637085064ocf234anzm.jpg', 'active', 'normal', 'none', '', 'rzcIZwu7Mpi8ceaotwzGLw4q3l49CB98NKFQb4PpuPWZ2HbejfcyUrJeVoQ9sm5uMsxCEqhxJid', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '4944486762252849', 'facebook', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'yes', '', '', '', '', '', '', '', '', '', '2021-11-19 12:46:27', 'yes', 'user_83', 'yes', 'yes', 'yes', '', 'yes', '', 'on', '', '05/03/1985', 'no', '', 'yes', '15.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(84, 'Mehedi Hasan', '42d44c97', '20', '$2y$10$mHgX9IsLctkQJL8Co3YG8uqbByO7bBK3TeRC4htUbworX/xUQ0XZK', 'mehidy.gb@gmail.com', '2021-11-16 08:27:29', 'default-1635660181.png', 'cover_default-1635692178.jpg', 'active', 'normal', 'none', '', 'qkGtfwGCeVqA5NjC4RI2Be8mfkgypwjBBD4p04T4Z7OljIBogvbpNMpyOydcYJVopygDmP3hsnP', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'yes', '', '', '', '', '', '', '', '', '', '2021-11-16 10:26:57', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '::1', 'off', '', '', 'no', 'en', 'no', '9990.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(85, 'MD YOUNUS BHUIYAN', '80eeaa1f', '20', '$2y$10$ETNtLS1u/nhKavz6wmzh/Ozj1f1WL28LKp2MIPYOBmdgTHsn29pOu', 'prog.mehedi398@gmail.com', '2021-11-16 08:46:35', 'default-1635660181.png', 'cover_default-1635692178.jpg', 'active', 'normal', 'none', 'PXXi5YbWYmnkuEwKxom6vzb8wqHD8F53KljhC1tylEMtmzFq6tOCl357zI6q', 'yWVQnwExx99uj8IMEvqPbHbDabQhbjPDVK1IFi25ctY5nqGoC89NFmyC6ZBD8eXcio2cdl8A4aT', 'vlBkQapuDhYE9V8Rq2oca6CXZ8ObenItNxoelf4GMxY7nfW9Jiy28aOYit3RFrejDM4yeVgwJz1UzuS72GP38dcxXhYRmsgtZZ9e', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', 'sex working', '', '', '5', '', NULL, NULL, NULL, NULL, '5.00', '0.00', 'yes', '', '', '', '', '', '', '', '', '', '2021-11-24 08:27:20', 'yes', 'user_85', 'yes', 'yes', 'yes', '', 'yes', '192.168.1.4', 'off', 'male', '02/01/2000', 'no', 'en', 'no', '49995.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes'),
(86, 'md mehedi', '2011ac02', '20', '$2y$10$Zpf/i.CA/XDDWSGdQJIEjOe2G1OQjOZxPlHG7jyVCDG8rWl337VG2', 'bdsafa144@gmail.com', '2021-11-22 08:25:20', 'default-1635660181.png', 'cover_default-1635692178.jpg', 'active', 'normal', 'none', '', 'bQmpBv6Mv7h73wXMp9VVVA7KGukpNzRVh96rJqVuF5oVPDtzU7KDgHPvLCZ50QKyfH49mt7qTmZ', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'no', '', '', '', '', '', '', '', '', '', '2021-11-22 09:26:11', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '::1', 'off', '', '', 'no', 'en', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `verification_requests`
--

CREATE TABLE `verification_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(150) NOT NULL,
  `zip` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` enum('pending','approved') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `form_w9` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `verification_requests`
--

INSERT INTO `verification_requests` (`id`, `user_id`, `address`, `city`, `zip`, `image`, `status`, `created_at`, `form_w9`) VALUES
(2, 24, '123 test st.', 'Huntington beach', '92647', '241635791964tbdpsywhus7uripmxvjwp7vq5frpizv9rqt291m0.jpeg', 'approved', '2021-11-01 14:39:29', '241635791969odfh9x6witwnr8cm52wodyiuk7lapnoophlsu8gn.pdf'),
(3, 46, 'Akademika Pavlova 162a', 'Kharkiv', '61144', '4616363789297vlpnd9imlunfo6u6sv2aldrmgq6zqwwhrwismqf.jpg', 'pending', '2021-11-08 08:42:15', ''),
(4, 83, '123 Main St', 'Denver', '33578', '831637085303pg5mrukxcxeidlovpbmidp5dlxehyrjywwi3m4fi.jpg', 'approved', '2021-11-16 12:55:04', '831637085304d0a70iwtjsgarakjhxlv9ge33kgtxrwdfqsxgt3b.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` enum('pending','paid') NOT NULL DEFAULT 'pending',
  `amount` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `gateway` varchar(100) NOT NULL,
  `account` text NOT NULL,
  `date_paid` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `txn_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `withdrawals`
--

INSERT INTO `withdrawals` (`id`, `user_id`, `status`, `amount`, `date`, `gateway`, `account`, `date_paid`, `txn_id`) VALUES
(11, 1, 'paid', '29.75', '2021-11-16 12:46:14', 'Bank', 'All other \r\nSwift Code\r\nAccount Number\r\n\r\nUS\r\nRouting Number\r\n Account Number', '2021-11-16 12:47:27', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_settings`
--
ALTER TABLE `admin_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags` (`tags`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookmarks_user_id_index` (`user_id`),
  ADD KEY `bookmarks_updates_id_index` (`updates_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post` (`updates_id`,`user_id`,`status`);

--
-- Indexes for table `comments_likes`
--
ALTER TABLE `comments_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_likes_user_id_index` (`user_id`),
  ADD KEY `comments_likes_comments_id_index` (`comments_id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_1` (`user_1`,`user_2`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usr` (`user_id`,`updates_id`,`status`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_updates_id_index` (`updates_id`),
  ADD KEY `media_user_id_index` (`user_id`),
  ADD KEY `media_type_index` (`type`),
  ADD KEY `media_token_index` (`token`);

--
-- Indexes for table `media_messages`
--
ALTER TABLE `media_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_messages_messages_id_index` (`messages_id`),
  ADD KEY `media_messages_type_index` (`type`),
  ADD KEY `media_messages_token_index` (`token`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `from` (`from_user_id`,`to_user_id`,`status`),
  ADD KEY `remove_from` (`remove_from`),
  ADD KEY `conversation_id` (`conversations_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination` (`destination`,`author`,`target`,`status`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_hash` (`token`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_per_views`
--
ALTER TABLE `pay_per_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_per_views_user_id_index` (`user_id`),
  ADD KEY `pay_per_views_updates_id_index` (`updates_id`),
  ADD KEY `pay_per_views_messages_id_index` (`messages_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user_id`,`report_id`);

--
-- Indexes for table `reserved`
--
ALTER TABLE `reserved`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`) USING BTREE;

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`(191)),
  ADD KEY `last_payment` (`last_payment`(191));

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_id` (`subscription_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `subscriber` (`subscriptions_id`),
  ADD KEY `subscribed` (`subscribed`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token_id` (`token_id`),
  ADD KEY `author_id` (`token_id`),
  ADD KEY `image` (`image`),
  ADD KEY `category_id` (`user_id`),
  ADD KEY `video` (`video`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `username` (`status`),
  ADD KEY `role` (`role`),
  ADD KEY `username_2` (`username`),
  ADD KEY `permission` (`permission`),
  ADD KEY `categories_id` (`categories_id`),
  ADD KEY `stripe_id` (`stripe_id`(191));

--
-- Indexes for table `verification_requests`
--
ALTER TABLE `verification_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaings_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_settings`
--
ALTER TABLE `admin_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `comments_likes`
--
ALTER TABLE `comments_likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12812;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `media_messages`
--
ALTER TABLE `media_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pay_per_views`
--
ALTER TABLE `pay_per_views`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reserved`
--
ALTER TABLE `reserved`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `verification_requests`
--
ALTER TABLE `verification_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
