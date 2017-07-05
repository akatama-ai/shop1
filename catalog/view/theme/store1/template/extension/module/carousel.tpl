<h3 class="title"><i class="fa fa-bars"></i>our brand</h3>
    <hr>
<div id="carousel<?php echo $module; ?>" class="owl-carousel logo-slider p-slider">
  <?php foreach ($banners as $banner) { ?>
  <div class="item text-center">
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
    <?php } ?>
  </div>
  <?php } ?>
</div>
<script type="text/javascript"><!--
$('#carousel<?php echo $module; ?>').owlCarousel({
	itemsCustom : [
    [1, 1],
    [600, 2],
	[641, 3],
    [981, 4],
	[1281, 6]
    ],
	autoPlay: 3000,
	navigation: true,
	navigationText: ['<span class="top-des"><i class="fa fa-arrow-left"></i></span>', '<span class="top-des"><i class="fa fa-arrow-right"></i></span>'],
	pagination: false
});
--></script>