<?php 
  # Explicitly declare the type of content
  header("Content-type: text/css");

  # Grab module id from the request
  # $border = $params->get('misctext');
  $menuBorderSize = "#" . $_GET['mbordersize'];
  $bgColor = "#" . $_GET['bgcolor'];
  $borderColor = "#" . $_GET['bordercolor'];
  $mainNavHoverColor = "#" . $_GET['mainnavhovercolor'];
  $mainNavActiveColor = "#" . $_GET['mainnavactivecolor'];
  $subNavHoverColor = "#" . $_GET['subnavhovercolor'];
  $modid = $_GET['id'];
?>

/**
 * Horizontal CSS Drop-Down Menu Module
 *
 * @file		jb_free_dropdown_<?php print $modid;?>.css
 * @package		jb_free_dropdown_<?php print $modid;?>
 * @version		0.8
 * @type		Transitional
 * @stacks		597-599
 * @browsers	Windows: IE6+, Opera7+, Firefox3+
 *				Mac OS: Safari2+, Firefox3+
 *
 * @link		http://www.lwis.net/free-css-drop-down-menu
 * @copyright	2012 Joombuilder.net
 *
 */
 

 
ul.jb_free_dropdown_<?php print $modid;?>,
ul.jb_free_dropdown_<?php print $modid;?> li,
ul.jb_free_dropdown_<?php print $modid;?> ul {
  list-style: none;
  margin: 0;
  padding: 0;
  font-family: Arial, Helvetica, sans-serif;
}

ul.jb_free_dropdown_<?php print $modid;?> {
  border: 3px solid <?php print $borderColor;?>;
}

ul.jb_free_dropdown_<?php print $modid;?> {
  position: relative;
  z-index: 597;
  float: left;
}

ul.jb_free_dropdown_<?php print $modid;?> li {
  float: left;
  min-height: 1px;
  line-height: 1.3em;
  vertical-align: middle;

}

ul.jb_free_dropdown_<?php print $modid;?> li.hover,
ul.jb_free_dropdown_<?php print $modid;?> li:hover {
  position: relative;
  z-index: 599;
  cursor: default;
}

ul.jb_free_dropdown_<?php print $modid;?> ul {
  visibility: hidden;
  position: absolute;
  top: 100%;
  left: 0;
  z-index: 598;
  width: 100%;
}

ul.jb_free_dropdown_<?php print $modid;?> ul li {
  float: none;
}

ul.jb_free_dropdown_<?php print $modid;?> ul ul {
  top: 0px;
  left: 100%;
}

ul.jb_free_dropdown_<?php print $modid;?> li:hover > ul {
  visibility: visible;
}


/* -- Base drop-down styling -- */

ul.jb_free_dropdown_<?php print $modid;?> {
  font-weight: bold;
}

	ul.jb_free_dropdown_<?php print $modid;?> li {
	 padding: 7px 10px;
	 border-style: solid;
	 border-width: 1px 1px 1px 0;
	 border-color: #fff #d9d9d9 #d9d9d9;
	 background-color: <?php print $modid;?>;
	 color: #000;
}

	ul.jb_free_dropdown_<?php print $modid;?> li.hover,
	ul.jb_free_dropdown_<?php print $modid;?> li:hover,
	ul.jb_free_dropdown_<?php print $modid;?> li.on {
     background-color: #eee;
     color: #000;
	}

	ul.jb_free_dropdown_<?php print $modid;?> a:link,
	ul.jb_free_dropdown_<?php print $modid;?> a:visited	{ color: #000; text-decoration: none; }
	ul.jb_free_dropdown_<?php print $modid;?> a:hover		{ color: #000; background-color: <?php print $mainNavHoverColor;?>;}
	ul.jb_free_dropdown_<?php print $modid;?> a:active	{ color: #000000; }

	/* -- level mark -- */

	ul.jb_free_dropdown_<?php print $modid;?> ul {
	 width: 200px;
	 margin-top: 1px;
	}

		ul.jb_free_dropdown_<?php print $modid;?> ul li {
		 font-weight: normal;
		}






ul.jb_free_dropdown_<?php print $modid;?> a,
ul.jb_free_dropdown_<?php print $modid;?> span {
 display: block;
 padding: 7px 10px;
 background: <?php print $bgColor;?>;
}


/* -- Base style override -- */

ul.jb_free_dropdown_<?php print $modid;?> li {
 padding: 0;
 border: none;
}

/*
JB
*/
ul.jb_free_dropdown_<?php print $modid;?> li li.parent a {
  background: #f4f4f4 url('../../media/images/arrow.png') right 10px no-repeat;
}

ul.jb_free_dropdown_<?php print $modid;?> li li.parent li a {
  background: #f4f4f4;
}

ul.jb_free_dropdown_<?php print $modid;?> li.parent a:hover {
  background-color: <?php print $mainNavHoverColor;?>;
}

ul.jb_free_dropdown_<?php print $modid;?> li.parent ul li a:hover {
  background-color: <?php print $subNavHoverColor;?>;
}



ul.jb_free_dropdown_<?php print $modid;?> li.active a {
  background-color: <?php print $mainNavActiveColor;?>;
  
}
ul.jb_free_dropdown_<?php print $modid;?> li.active li a {
  background-color: #f4f4f4;
}

ul.jb_free_dropdown_<?php print $modid;?> li.active li a:hover {
  background-color: #000;
}

ul.jb_free_dropdown_<?php print $modid;?> li ul li a:hover {
  background-color: #000;
}



/*
JB
*/

ul.jb_free_dropdown_<?php print $modid;?> ul a,
ul.jb_free_dropdown_<?php print $modid;?> ul span {
 padding: 8px;
}


/* -- Base style reinitiate: post-override activities -- */




/* -- Custom styles -- */

ul.jb_free_dropdown_<?php print $modid;?> li.hover,
ul.jb_free_dropdown_<?php print $modid;?> li:hover {
 background: url(../../../../images/default/grad2.png) 0 100% repeat-x;
 color: #000;
 background-color: #fff;
}

ul.jb_free_dropdown_<?php print $modid;?> li:hover {
  color: #fff;
}

ul.jb_free_dropdown_<?php print $modid;?> li a:active {
  background: url(../../../../images/default/grad1.png) repeat-x;
}

	ul.jb_free_dropdown_<?php print $modid;?> ul {
	 margin-top: 0;
   
	}


/* -- Mixed -- */

ul.jb_free_dropdown_<?php print $modid;?> li a,
ul.jb_free_dropdown_<?php print $modid;?> *.dir {
 border-style: solid;
 border-width: 1px 1px 1px 0;
 border-color: #fff #d9d9d9 #d9d9d9;
}


/* -- Drop-down open -- */




