<?php
defined('_JEXEC') or die;

/**
 * Template for Joomla! CMS, created with Artisteer.
 * See readme.txt for more details on how to use the template.
 */

require_once dirname(__FILE__) . DIRECTORY_SEPARATOR . 'functions.php';

// Create alias for $this object reference:
$document = $this;

// Shortcut for template base url:
$templateUrl = $document->baseurl . '/templates/' . $document->template;

Artx::load("Artx_Page");

// Initialize $view:
$view = $this->artx = new ArtxPage($this);

// Decorate component with Artisteer style:
$view->componentWrapper();

JHtml::_('behavior.framework', true);

?>
<!DOCTYPE html>
<html dir="ltr" lang="<?php echo $document->language; ?>">
<head>
    <jdoc:include type="head" />
    <link rel="stylesheet" href="<?php echo $document->baseurl; ?>/templates/system/css/system.css" />
    <link rel="stylesheet" href="<?php echo $document->baseurl; ?>/templates/system/css/general.css" />

    <!-- Created by Artisteer v4.2.0.60623 -->
    
    
    <meta name="viewport" content="initial-scale = 1.0, maximum-scale = 1.0, user-scalable = no, width = device-width" />

    <!--[if lt IE 9]><script src="https://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    <link rel="stylesheet" href="<?php echo $templateUrl; ?>/css/template.css" media="screen" type="text/css" />
    <!--[if lte IE 7]><link rel="stylesheet" href="<?php echo $templateUrl; ?>/css/template.ie7.css" media="screen" /><![endif]-->
    <link rel="stylesheet" href="<?php echo $templateUrl; ?>/css/template.responsive.css" media="all" type="text/css" />

<link rel="shortcut icon" href="<?php echo $templateUrl; ?>/favicon.ico" type="image/x-icon" />
    <script>if ('undefined' != typeof jQuery) document._artxJQueryBackup = jQuery;</script>
    <script src="<?php echo $templateUrl; ?>/jquery.js"></script>
    <script>jQuery.noConflict();</script>

    <script src="<?php echo $templateUrl; ?>/script.js"></script>
    <script src="<?php echo $templateUrl; ?>/script.responsive.js"></script>
    <script src="<?php echo $templateUrl; ?>/modules.js"></script>
    <?php $view->includeInlineScripts() ?>
    <script>if (document._artxJQueryBackup) jQuery = document._artxJQueryBackup;</script>
</head>
<body>

<div id="za-main">
    <div class="za-sheet clearfix">
<header class="za-header"><?php echo $view->position('header', 'za-nostyle'); ?>

    <div class="za-shapes">
        
            </div>

<h1 class="za-headline">
    <a href="<?php echo $document->baseurl; ?>/"><?php echo $this->params->get('siteTitle'); ?></a>
</h1>
<h2 class="za-slogan"><?php echo $this->params->get('siteSlogan'); ?></h2>

                <div id="za-flash-area">
                    <div id="za-flash-container">
                    <object width="400" height="200" id="za-flash-object" data="<?php echo $templateUrl; ?>/images/flash.swf" type="application/x-shockwave-flash">
                        <param name="quality" value="high" />
                    	<param name="scale" value="exactfit" />
                    	<param name="wmode" value="transparent" />
                    	<param name="flashvars" value="color1=0xFFFFFF&amp;alpha1=.0&amp;framerate1=30&amp;loop=true&amp;wmode=transparent" />
                        <param name="swfliveconnect" value="true" />
                        <!--[if !IE]>-->
                        <object type="application/x-shockwave-flash" data="<?php echo $templateUrl; ?>/images/flash.swf" width="400" height="200">
                            <param name="quality" value="high" />
                    	    <param name="scale" value="exactfit" />
                            <param name="wmode" value="transparent" />
                                                    	    <param name="flashvars" value="color1=0xFFFFFF&amp;alpha1=.0&amp;framerate1=30&amp;loop=true&amp;wmode=transparent" />
                            <param name="swfliveconnect" value="true" />
                        <!--<![endif]-->
                          	<div class="za-flash-alt"><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" /></a></div>
                        <!--[if !IE]>-->
                        </object>
                        <!--<![endif]-->
                    </object>
                    </div>
                    </div>
					
<?php if ($view->containsModules('user3', 'extra1', 'extra2')) : ?>
<nav class="za-nav">
    
<?php if ($view->containsModules('extra1')) : ?>
<div class="za-hmenu-extra1"><?php echo $view->position('extra1'); ?></div>
<?php endif; ?>
<?php if ($view->containsModules('extra2')) : ?>
<div class="za-hmenu-extra2"><?php echo $view->position('extra2'); ?></div>
<?php endif; ?>
<?php echo $view->position('user3'); ?>
 
    </nav>
<?php endif; ?>

                    
</header>
<?php echo $view->position('banner1', 'za-nostyle'); ?>
<?php echo $view->positions(array('top1' => 33, 'top2' => 33, 'top3' => 34), 'za-block'); ?>
<div class="za-layout-wrapper">
                <div class="za-content-layout">
                    <div class="za-content-layout-row">
                        <?php if ($view->containsModules('left')) : ?>
<div class="za-layout-cell za-sidebar1">
<?php echo $view->position('left', 'za-block'); ?>




                        </div>
<?php endif; ?>
                        <div class="za-layout-cell za-content">
<?php
  echo $view->position('banner2', 'za-nostyle');
  if ($view->containsModules('breadcrumb'))
    echo artxPost($view->position('breadcrumb'));
  echo $view->positions(array('user1' => 50, 'user2' => 50), 'za-article');
  echo $view->position('banner3', 'za-nostyle');
  echo artxPost(array('content' => '<jdoc:include type="message" />', 'classes' => ' za-messages'));
  echo '<jdoc:include type="component" />';
  echo $view->position('banner4', 'za-nostyle');
  echo $view->positions(array('user4' => 50, 'user5' => 50), 'za-article');
  echo $view->position('banner5', 'za-nostyle');
?>



                        </div>
                        <?php if ($view->containsModules('right')) : ?>
<div class="za-layout-cell za-sidebar2">
<?php echo $view->position('right', 'za-block'); ?>


                        </div>
<?php endif; ?>
                    </div>
                </div>
            </div>
<?php echo $view->positions(array('bottom1' => 33, 'bottom2' => 33, 'bottom3' => 34), 'za-block'); ?>
<?php echo $view->position('banner6', 'za-nostyle'); ?>



    </div>
    
</div>


<?php echo $view->position('debug'); ?>
</body>
</html>