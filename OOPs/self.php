<?php

class GFG {
	private static $static_member = "Self Keyword example";

	function __construct() {
		echo self::$static_member;
	}
}

new GFG();
?>
