<script src="assets/1f536bbd/js/jquery-1.9.1.min.js"></script>
<script src="assets/1f536bbd/js/jssor.slider.mini.js"></script>
<script>
    jQuery(document).ready(function ($) {    

        var options = {
            $AutoPlay: true,
            $SlideDuration: 500,
            $ArrowKeyNavigation: true,
            $BulletNavigatorOptions: {
                    $Class: $JssorBulletNavigator$,
                    $ChanceToShow: 2,
                    $AutoCenter: 1,
                    $Steps: 1,
                    $Lanes: 1,
                    $SpacingX: 1,
                    $SpacingY: 1,
                    $Orientation: 1
                }        
        };
        var slideMain = new $JssorSlider$('slideMain', options);

    });
</script>


<?php
/* @var $this yii\web\View */
$this->title = 'The Lightswitch';
?>
<div class="site-index">

    <div class="jumbotron">
            
        <center>
            <div id="slideMain">           
                <div class="slideDiv" u="slides">
                    <div><img class="slideImg" u="image" src="images/Slide/L_1.png" /></div>
                    <div><img class="slideImg" u="image" src="images/Slide/L2.jpg" /></div>
                    <div><img class="slideImg" u="image" src="images/Slide/L_3.jpg" /></div>
                    <div><img class="slideImg" u="image" src="images/Slide/L_4.jpg" /></div>
                  
                </div>

                <!-- BULLET NAVIGATOR -->
                <style>                   
                    .slideBullet div, .slideBullet div:hover, .slideBullet .av
                    {
                        background: url(images/Navigator/b06.png) no-repeat;
                        overflow:hidden;
                        cursor: pointer;
                    }
                    .slideBullet div { background-position: -6px -6px; 
                            margin-top: 640px;
                    }
                    .slideBullet div:hover, .slideBullet .av:hover { background-position: -36px -6px; }
                    .slideBullet .av { background-position: -66px -6px; }
                    .slideBullet .dn, .slideBullet .dn:hover { background-position: -96px -6px; }
                </style>
                <div u="navigator" class="slideBullet">
                    <div u="prototype" style="position: absolute; width: 18px; height: 18px; left: 0px; top: 0px;" class=""></div>
                    <div u="prototype" style="position: absolute; width: 18px; height: 18px; left: 19px; top: 0px;" class=""></div>
                    <div u="prototype" style="position: absolute; width: 18px; height: 18px; left: 38px; top: 0px;" class=""></div>
                    <div u="prototype" style="position: absolute; width: 18px; height: 18px; left: 57px; top: 0px;" class=""></div>
                </div>

            </div>
        </center>

        <br><br>

       

    </div>
	

	
	
	
	
	

    <div class="body-content">

        <div class="row">
            
            <div class="col-lg-9">
                <h3>Lightswitch </h3>

                <p>
                   
                </p>
                
            </div>
            <div class="col-lg-3">
               
               
            </div>
        </div>

    </div>
</div>
