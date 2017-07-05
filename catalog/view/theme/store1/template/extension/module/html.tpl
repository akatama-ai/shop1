<div>
  <?php if($heading_title) { ?>
    <h2><?php echo $heading_title; ?></h2>
  <?php } ?>
  <?php echo $html; ?>
</div>
<script>
$("#owl-testimonial").owlCarousel({
         items : 3,
	 lazyLoad : true,
         navigation : true,
	navigationText: ['<span class="top-des"><i class="fa fa-arrow-left"></i></span>', '<span class="top-des"><i class="fa fa-arrow-right"></i></span>'],
	 autoPlay: 2000,
	 singleItem:true,
	 pagination: false
});
</script>