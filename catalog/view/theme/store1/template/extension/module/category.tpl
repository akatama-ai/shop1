<?php if ($categories) { ?>
<div class="container left-menu">
  <div class="row">
    <div class="">
      <nav id="menu" class="navbar">
        <h3>categories</h3>
        <div class="navbar-header"><span id="category" class="visible-sm visible-xs"><?php echo $text_category; ?></span>
          <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
        </div>
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="list-unstyled nav">
            <li><a href="<?php echo $home; ?>">home</a></li>
            <?php $temp = 0; ?>
            <?php foreach ($categories as $category) { ?>
            <?php $temp = $temp + 1; ?>
            <?php if ($temp <=5) { ?>
            <?php if ($category['children']) { ?>
            <li class="dropdown"> <a href="<?php echo $category['href']; ?>" class="dropdown-toggle main-menu"><?php echo $category['name']; ?><i class="fa fa-angle-right" aria-hidden="true"></i></a>
              <div class="dropdown-menu">
                <div class="dropdown-inner">
                  <div class="col-md-12">
                    <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                    <ul class="list-unstyled">
                      <?php foreach ($children as $child) { ?>
                      <!--3rd level-->
                      <li class="dropdown-submenu"> <a class="submenu-title" href="<?php echo $child['href']; ?>" >
                        <h4 class="dropdown-toggle"> <?php echo $child['name']; ?> </h4>
                        </a>
                        <?php if($child['grand_childs']) { ?>
                        <ul class="list-unstyled grand-child">
                          <?php foreach($child['grand_childs'] as $grand_child){ ?>
                          <li> <a href="<?php echo $grand_child['href']; ?>" > <?php echo $grand_child['name']; ?> </a> </li>
                          <?php } ?>
                        </ul>
                        <?php } ?>
                      </li>
                      <!--3rd level over-->
                      <?php } ?>
                    </ul>
                    <?php } ?>
                  </div>
                </div>
              </div>
            </li>
            <?php } else { ?>
            <li><a href="<?php echo $category['href']; ?>" class=""><?php echo $category['name']; ?></a></li>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            <?php if ($temp > 6) { ?>
            <li class="dropdown"> <a  class="dropdown-toggle more" data-toggle="collapse" data-target="#demo" style="cursor: pointer;"> MORE</a> </li>
            <li>
              <ul id="demo" class="collapse list-unstyled">
                <?php $temp=0; ?>
                <?php foreach ($categories as $category) { ?>
                <?php $temp = $temp + 1; ?>
                <?php if($temp > 5) { ?>
                <?php if ($category['children']) { ?>
                <li class="dropdown"> <a href="<?php echo $category['href']; ?>" class="dropdown-toggle main-menu "><?php echo $category['name']; ?><i class="fa fa-angle-right" aria-hidden="true"></i></a>
                  <div class="dropdown-menu">
                    <div class="dropdown-inner">
                      <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                      <ul class="list-unstyled nav ">
                        <?php foreach ($children as $child) { ?>
                        <!--3rd level-->
                        <li class="dropdown-submenu"> <a class="submenu-title" href="<?php echo $child['href']; ?>" >
                          <h4 class="dropdown-toggle"> <?php echo $child['name']; ?> </h4>
                          </a>
                          <?php if($child['grand_childs']) { ?>
                          <ul class="list-unstyled grand-child">
                            <?php foreach($child['grand_childs'] as $grand_child){ ?>
                            <li> <a href="<?php echo $grand_child['href']; ?>" > <?php echo $grand_child['name']; ?> </a> </li>
                            <?php } ?>
                          </ul>
                          <?php } ?>
                        </li>
                        <!--3rd level over-->
                        <?php } ?>
                      </ul>
                      <?php } ?>
                    </div>
                  </div>
                </li>
                <?php } else { ?>
                <li><a href="<?php echo $category['href']; ?>" class=""><?php echo $category['name']; ?></a></li>
                <?php } ?>
                <?php } ?>
                <?php } ?>
              </ul>
            </li>
            <?php } ?>
          </ul>
        </div>
      </nav>
    </div>
  </div>
</div>
<?php } ?>
<script type="text/javascript">
 function headermenu() {	
     if (jQuery(window).width() < 992)
     {
         jQuery('ul.nav li.dropdown a.main-menu').attr("data-toggle","dropdown");        
     }
     else
     {
         jQuery('ul.nav li.dropdown a.main-menu').attr("data-toggle",""); 
		 jQuery('#menu .nav > li').hover(function(){
    	jQuery(this).addClass("active");
		jQuery(this).find('.dropdown-menu').stop(true,true).fadeIn('slow');
    },function(){
        jQuery(this).removeClass("active");
		jQuery(this).find('.dropdown-menu').stop(true,true).fadeOut('slow');
    });

     }
}
$(document).ready(function(){headermenu();});
jQuery(window).resize(function() {headermenu();});
jQuery(window).scroll(function() {headermenu();});
</script> 
