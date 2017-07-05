<?php echo $header; ?>
<div class="breadcrumb-bg">
 <div class="container">
<ul class="breadcrumb">
	
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
    
  </ul> 
  </div>
  </div>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-md-8 col-sm-12'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-md-10 col-sm-12'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1 class="title"><i  class="fa fa-bars"></i><?php echo $text_blogs; ?></h1>
        <hr>
      <?php if ($blogs) { ?>
      <?php foreach ($blogs as $blog) { ?>
      <div class="panel-default webi_blog_page">
        <?php /*?><h4><?php echo $blog['name']; ?></h4><?php */?>
        <?php if ($blog['blog_data']) { ?>
        <?php foreach ($blog['blog_data'] as $topic) { ?>
        <div class="panel panel-default">
          <div class="panel-body">
		   <?php if ($topic['image']) { ?>
		  <div class="webi-blog-image">
	  		<div class="blog-post-image-hover"> </div>
	  	  <img src="<?php echo $topic['image']; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" />
			
	  	  </div>
		  <?php } ?>
		  	<div class="webi_blog_data_left">
			  <div class="blog-date"><?php echo $topic['date_added']; ?></div>
			  <span class="icon"></span>
			  </div>
			
            <h5><a href="<?php echo $topic['href']; ?>"><?php echo $topic['title']; ?></a></h5>
			<div class="blog_links">
			<span class="blog_comment"> <?php echo $topic['total_comments']; ?> <?php echo $entry_comment; ?></span>
			<span class="write-comment"><a href="<?php echo $topic['href']; ?>"> <i class="fa fa-comment"></i><?php echo $text_comment; ?></a></span>
			</div>
		
			<div class="blog-desc"><?php echo $topic['description']; ?> </div>
			<div class="read-more"> <a href="<?php echo $topic['href']; ?>"><?php echo $text_read_more; ?></a> </div>
          </div>
        </div>
        <?php } ?>
        <?php } else { ?>
        <div class="panel-body text-center"><?php echo $text_no_blogs; ?></div>
        <?php } ?>
        </div>
        <?php } ?>
      <?php } else { ?>
      <div class="panel-body text-center"><?php echo $text_no_blogs; ?></div>
      <?php } ?>
    <?php echo $content_bottom; ?></div>
  <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>