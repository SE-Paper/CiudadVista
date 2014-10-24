<!DOCTYPE html>
<head>
<meta charset="UTF-8" />
<title>Ciudad Vista</title>

<!-- CSS Part Start-->
<asset:stylesheet src="stylesheet.css" />
<asset:stylesheet src="slideshow.css" media="screen" />
<asset:stylesheet src="flexslider.css" media="screen" />
<asset:stylesheet src="colorbox.css" media="screen" />
<asset:stylesheet src="carousel.css" media="screen" />
<!-- CSS Part End-->
<!-- JS Part Start-->
<asset:javascript src="jquery-1.7.1.min.js"/>
<asset:javascript src="jquery.nivo.slider.pack.js"/>
<asset:javascript src="jquery.flexslider.js"/>
<asset:javascript src="jquery.easing-1.3.min.js"/>
<asset:javascript src="jquery.jcarousel.min.js"/>
<asset:javascript src="jquery.colorbox-min.js"/>
<asset:javascript src="tabs.js"/>
<asset:javascript src="cloud_zoom.js"/>
<asset:javascript src="jquery.dcjqaccordion.js"/>
<asset:javascript src="custom.js"/>
<asset:javascript src="html5.js"/>

<!-- JS Part End-->

</head>
<body>
<div class="wrapper-box">
  <div class="main-wrapper">
  
  <g:render template="/common/top" />
  
    <div id="container">
      <div id="content">
        <!-- Nivo Slider Start -->
        <section class="slider-wrapper">
        					
        
          <div id="slideshow" class="nivoSlider"> <a class="nivo-imageLink" href="#">  <img src="${resource(dir: 'image/slider/', file: 'slide-1.jpg')}"/>  </a> <a class="nivo-imageLink" href="#"><img src="image/slider/slide-2.jpg" alt="slide-2" /></a> <a class="nivo-imageLink" href="#"><img src="image/slider/slide-3.jpg" alt="slide-3" /></a> </div>
        </section>
        <script type="text/javascript"><!--
$(document).ready(function() {
	$('#slideshow').nivoSlider();
});
--></script>
        <!-- Nivo Slider End-->
        <!-- Welcom Text Start-->
        <div class="welcome">Bienvenido a Ciudad Vista</div>
        <p><strong>Ciudad Vista</strong> Una aplicación sencila que te ayudará a planear las actividades y los servicios </p>
        <!-- Welcom Text End-->
        <!-- Featured Product Start-->
        <section class="box">
          <div class="box-heading">Destacado</div>
          <div class="box-content">
            <div class="box-product">
              <div class="flexslider featured_carousel">
                <ul class="slides">
                  <li>
                    <div class="slide-inner">
                      <div class="image"><a href="product.html"><img src="image/product/iphone_1-210x210.jpg" alt="iPhone 4s" /></a></div>
                      <div class="name"><a href="product.html">iPhone 4s</a></div>
                      <div class="price"> $120.68 </div>
                      <div class="cart">
                        <input type="button" value="Add to Cart" class="button" />
                      </div>
                      <div class="rating"><img src="${resource(dir: 'image', file: 'stars-4.png')}"/></div>
                      <div class="clear"></div>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </section>
        <script type="text/javascript">
(function() {
  // store the slider in a local variable
  var $window = $(window),
      flexslider;
 
  // tiny helper function to add breakpoints
  function getGridSize() {
    return (window.innerWidth < 320) ? 1 :
		   (window.innerWidth < 600) ? 2 :
		   (window.innerWidth < 800) ? 3 :
           (window.innerWidth < 900) ? 4 : 5;
  }
  $window.load(function() {
    $('#content .featured_carousel').flexslider({
      animation: "slide",
      animationLoop: false,
	  slideshow: false,
      itemWidth: 210,
      minItems: getGridSize(), // use function to pull in initial value
      maxItems: getGridSize() // use function to pull in initial value
    });
  });
}());
</script>
        <!-- Featured Product End-->
        <!-- Product Tab Start-->
        <section id="product-tab" class="product-tab">
          <ul id="tabs" class="tabs">
            <li><a href="#tab-latest">Servicios</a></li>
            <li><a href="#tab-bestseller">Actividades</a></li>
            <li><a href="#tab-special">Sitios</a></li>
          </ul>
		<!-- Servicios-->  
          <div id="tab-latest" class="tab_content">
            <div class="box-product">
              <div class="flexslider latest_carousel_tab">
                <ul class="slides">
                  <li>
                    <div class="slide-inner">
                      <div class="image"><a href="product.html"><img src="image/product/lotto-sports-shoes-white-210x210.jpg" alt="Lotto Sports Shoes" /></a></div>
                      <div class="name"><a href="http://localhost/polishop/index.php?route=product/product&amp;product_id=43">Lotto Sports Shoes</a></div>
                      <div class="price"> $589.50 </div>
                      <div class="cart">
                        <input type="button" value="Add to Cart" class="button" />
                      </div>
                      <div class="clear"></div>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
		  <!-- Actividades-->  
          <div id="tab-bestseller" class="tab_content">
            <div class="box-product">
              <div class="flexslider bestseller_carousel_tab">
                <ul class="slides">
                  <li>
                    <div class="slide-inner">
                      <div class="image"><a href="product.html"><img src="image/product/ipod_touch_1-210x210.jpg" alt="Sunglass" /></a></div>
                      <div class="name"><a href="product.html">Sunglass</a></div>
                      <div class="price"> $1,177.00 </div>
                      <div class="cart">
                        <input type="button" value="Add to Cart" class="button" />
                      </div>
                      <div class="clear"></div>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
		  <!-- Sitios-->
          <div id="tab-special" class="tab_content">
            <div class="box-product">
              <div class="flexslider special_carousel_tab">
                <ul class="slides">
                  <li>
                    <div class="slide-inner">
                      <div class="image"><a href="product.html"><img src="image/product/ipod_touch_1-210x210.jpg" alt="Sunglass" /></a></div>
                      <div class="name"><a href="product.html">Sunglass</a></div>
                      <div class="price"> $1,177.00 </div>
                      <div class="cart">
                        <input type="button" value="Add to Cart" class="button" />
                      </div>
                      <div class="clear"></div>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </section>
        <script type="text/javascript">
(function() {
  // store the slider in a local variable
  var $window = $(window),
      flexslider;
  // tiny helper function to add breakpoints
  function getGridSize() {
    return (window.innerWidth < 320) ? 1 :
		   (window.innerWidth < 600) ? 2 :
		   (window.innerWidth < 800) ? 3 :
           (window.innerWidth < 900) ? 4 : 5;
  }
  $window.load(function() {
    $('#product-tab .featured_carousel_tab, #product-tab .latest_carousel_tab, #product-tab .bestseller_carousel_tab, #product-tab .special_carousel_tab').flexslider({
      animation: "slide",
      animationLoop: false,
	  slideshow: false,
      itemWidth: 210,
      minItems: getGridSize(), // use function to pull in initial value
      maxItems: getGridSize(), // use function to pull in initial value
	  start: function(){
		  $("#product-tab .tab_content").addClass("deactive");
		  $("#product-tab .tab_content:first").removeClass("deactive"); //Show first tab content
		  } });
  });

$(document).ready(function() {
    //Default Action
    $("ul#tabs li:first").addClass("active").show(); //Activate first tab
    //On Click Event
    $("ul#tabs li").click(function() {
        $("ul#tabs li").removeClass("active"); //Remove any "active" class
        $(this).addClass("active"); //Add "active" class to selected tab
		$("#product-tab .tab_content").hide(); 
        var activeTab = $(this).find("a").attr("href"); //Find the rel attribute value to identify the active tab + content
        $(activeTab).fadeIn(); //Fade in the active content
        return false;
    });
});}());
</script>
        <!-- Product Tab End-->
      </div>
      <div class="clear"></div>
    </div>
  </div>
  
  <!--Footer Mapa-->
  <footer id="footer">
	    <div class="fpart-inner">
	<!--Ver plan del día-->
      <div class="social-part">
          <h3>Plan del d&iacute;a</h3>
		  <div class="column">
		  
		  </div>
      </div>
	</div>
  </footer>
  <!--Footer Part End-->
  
  <g:render template="/common/footer" />
  
  
</div>
</body>
</html>