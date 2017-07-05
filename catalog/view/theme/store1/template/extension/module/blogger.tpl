<div class="box blog_webi">
  <h3 class="title"><i class="fa fa-bars"></i><?php echo $heading_title; ?></h3>
    <hr>
  <div class="box-content">
    <div id="blog-carousel" class="box-product owl-carousel blogcarousel p-slider">
     <?php foreach ($blogs as $blog) { ?>
	  <div class="product-block">
     <?php if ($blog['image']) { ?>
	  <div class="blog-left">
	  <div class="webi-blog-image">
	  <img src="<?php echo $blog['image']; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" />
	  <div class="blog-post-image-hover"> </div>
	  <p class="webi_post_hover"><a class="icon zoom" title="Click to view Full Image " href="<?php echo $blog['image']; ?>" data-lightbox="example-set"></a><a class="icon readmore_link" title="Click to view Read More " href="<?php echo $blog['href']; ?>"></a></p>
	  </div>
	  </div>
	 <?php } ?>	
	  <div class="blog-right">  
	  <h4><a href="<?php echo $blog['href']; ?>"><?php echo $blog['title']; ?></a> </h4>
      <div class="blog-desc"> <?php echo $blog['description']; ?> </div> 
      <div class="read_link"> <a href="<?php echo $blog['href']; ?>"><?php echo $text_read_more; ?></a> </div>	
	  <?php /*?><div class="view-blog">
		<div class="read-more"> <a href="<?php echo $blog['href']; ?>"> <i class="fa fa-link"></i> <?php echo $text_read_more; ?></a> </div>
	  </div><?php */?>
	 </div> 
    </div>
     <?php } ?>
    </div>   
  </div>
  </div>
<script type="text/javascript"><!--
$(document).ready(function(){
$('#blog-carousel').owlCarousel({
		items: 4,
		/*autoPlay: 1000,*/
		singleItem: false,
		navigation: true,
		navigationText: ['<span class="top-des"><i class="fa fa-arrow-left"></i></span>', '<span class="top-des"><i class="fa fa-arrow-right"></i></span>'],
		pagination: false,
		itemsDesktop : [1000,3],
		itemsDesktopSmall :	[979,1]
	});
});	
--></script>