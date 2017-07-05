<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/webiarch/product-slider-zoom/jquery.elevatezoom.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/webiarch/parallex/parallex.js" type="text/javascript"></script>
<script src="catalog/view/javascript/webiarch/custom.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="catalog/view/javascript/font-awesome/css/font-awesome-animation.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/store1/stylesheet/stylesheet.css" rel="stylesheet">

<link href="catalog/view/javascript/webiarch/search/auto-search.css" rel="stylesheet">
<!-- blog image zoom -->
<script src="catalog/view/javascript/webiarch/blog/lightbox-2.6.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/webiarch/blog/lightbox.css" rel="stylesheet" type="text/css" />
<!-- blog image zoom -->
<script src="catalog/view/javascript/webiarch/instafeed.min.js" type="text/javascript"></script>
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>

<!--right to left (RTL)-->
<?php if($direction=='rtl'){ ?>
<link href="catalog/view/theme/store1/stylesheet/rtl.css" rel="stylesheet">
<?php } ?>
<!--over RTL-->
<script type="text/javascript">
            var feed = new Instafeed({
            target: 'instafeed',
            get: 'user',
           userId: 4039440012,
            //tagName: 'love',
            accessToken: '4039440012.1677ed0.c052245eceaa43cba43fae5837e245ff',
            clientId: '5ec8dab7ddc14b9698eadfcf57c554c8',
            limit: '6',
            sortBy: 'most-recent',
            link: 'true',
            template: '<a href="{{link}}" target="_blank"><img src="{{image}}" /></a>',
            resolution: 'standard_resolution',
            // after : function() {  console.log('a'); },
            // filter: function(image) {
            //  return image.tags && image.tags.indexOf('mrancho') >= 0;
            // } // filters the user's medias and get the ones with the specified #hashtag = mrancho
          });

          // call feed.next() on button click
          $('#mybutton').on('click', function(e) {
          e.preventDefault();
         //console.log(feed);
         feed.next();
         });

        feed.run();
        </script>
</head>

<body class="<?php echo $class; ?>">
<nav id="top">
  <div class="container">
    <ul class="list-unstyled list-inline pull-left top-left hidden-xs">
      <li><img src="image/catalog/support.png" alt="support"><a href="<?php echo $contact; ?>"> <span class="hidden-xs  hidden-md"> Support: + <?php echo $telephone; ?></span></a></li>
      <li><img src="image/catalog/time.png" alt="time"><a href="#"><span class="hidden-xs ">7 DAYS A WEEK FROM<?php  echo $open; ?></span></a></li>
    </ul>
    <div class="lang-cur"> <?php echo $currency; ?> <?php echo $language; ?> </div>
  </div>
</nav>
<header id="navbar" class="navbar-static-top">
  <div  class="container">
    <div class="row">
      <div class="col-md-2 col-sm-12">
        <div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive center-block" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
      <div class="col-md-4 col-sm-6"><?php echo $search; ?> </div>
      <div class="col-md-6 col-sm-6">
        <div id="top-links" class="nav pull-right">
          <ul class="list-inline">
            <li class="dropdown account-link"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell-o"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="fa fa-angle-down"></span></a>
              <ul class="dropdown-menu dropdown-menu-left account-link-toggle">
                <?php if ($logged) { ?>
                <li><a href="<?php echo $account; ?>"><i class="fa fa-user"></i><?php echo $text_account; ?></a></li>
                <li><a href="<?php echo $order; ?>"><i class="fa fa-history" aria-hidden="true"></i><?php echo $text_order; ?></a></li>
                <li><a href="<?php echo $transaction; ?>"><i class="fa fa-exchange" aria-hidden="true"></i><?php echo $text_transaction; ?></a></li>
                <li><a href="<?php echo $download; ?>"><i class="fa fa-download" aria-hidden="true"></i><?php echo $text_download; ?></a></li>
                <li><a href="<?php echo $logout; ?>"><i class="fa fa-sign-out" aria-hidden="true"></i><?php echo $text_logout; ?></a></li>
                <?php } else { ?>
                <li><a href="<?php echo $login; ?>"><i class="fa fa-sign-in" aria-hidden="true"></i> <?php echo $text_login; ?></a></li>
                <?php } ?>
              </ul>
            </li>
            <li><a href="<?php echo $register; ?>"><i class="fa fa-share-square-o"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_register; ?></span></a></li>
            <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart-o"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
            <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-credit-card-alt"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>
            <li><?php echo $cart; ?></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</header>
<?php if ($categories) { ?>
<div class="container top-menu">
  <div class="row">
    <div class="col-md-2">
      <nav id="menu-toggle" class="navbar">
        <div class="navbar-header"><span id="category-toggle" class="visible-sm visible-xs"><?php echo $text_category; ?></span>
          <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
        </div>
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="list-unstyled nav navbar-nav">
            <li><a href="<?php echo $home; ?>">home</a></li>
            <?php foreach ($categories as $category) { ?>
            <?php if ($category['children']) { ?>
            <li class="dropdown"> <a href="<?php echo $category['href']; ?>" class="dropdown-toggle main-menu"><?php echo $category['name']; ?><i class="fa fa-angle-down" aria-hidden="true"></i></a>
              <div class="dropdown-menu ">
                <div class="dropdown-inner">
                  <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                  <ul class="list-unstyled">
                    <?php foreach ($children as $child) { ?>
                    <!--3rd level-->
                    <li class="dropdown-submenu"> <a href="<?php echo $child['href']; ?>" > <?php echo $child['name']; ?> </a>
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
          </ul>
        </div>
      </nav>
    </div>
  </div>
</div>
<?php } ?>
<script type="text/javascript">
$(document).ready(function() {
    if (jQuery(window).width() > 1200){
    $('#navbar').affix({
        offset: {
	       top: $('header').height()
		}
	});
    }
});
</script>

