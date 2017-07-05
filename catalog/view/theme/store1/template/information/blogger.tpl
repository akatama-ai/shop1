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
    <div id="content" class="<?php echo $class; ?> webi-single-blog"><?php echo $content_top; ?>
      <h1 class="title"><i class="fa fa-bars"></i><?php echo $heading_title; ?></h1>
      <hr>
      <?php if ($blogs['image']) { ?>
	  		<div class="webi-blog-image">
	  			<img src="<?php echo $blogs['image']; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" />
	  		</div>
	  <?php } ?>
	  
	  <div class="blog-desc"> <?php echo $description; ?> </div>
      <?php if ($success) { ?>
      <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?><button type="button" class="close" data-dismiss="alert">&times;</button></div>
      <?php } ?>
      <?php if ($blog_comments) { ?>
      <h4><?php echo $text_your_comments; ?></h4>
      <?php foreach ($blog_comments as $blog_comment) { ?>
      <div class="view-comment">
	  <div class="panel panel-default" style="margin-bottom: 10px;">
        <div class="row">
          <div class="col-sm-3">
		  <div class="user_icon"><i class="fa fa-user"></i></div>
            <div class="name"><?php echo $blog_comment['author']; ?></div>
            <div class="date"><?php echo $blog_comment['date_added']; ?></div>
          </div>
        </div>
        <div class="row">
          <div class="form-group">
            <?php /*?><label class="col-sm-3 control-label text-right"><b><?php echo $entry_comment; ?></b></label><?php */?>
            <div class="col-sm-8"><?php echo $blog_comment['comment']; ?></div>
          </div>
        </div>
      </div>
	  </div>
      <?php } ?>
      <?php } ?>
      <?php if ($allow_comments) { ?>
	  <div class="block-title"><h3><?php echo $button_comment_add; ?></h3></div>
      <div class="panel panel-default" id="add-comment-blog" style="margin-bottom: 10px;">
        <?php if ($login_required && !$is_logged) { ?>
        <h4 class="text-center"><?php echo $text_login_required; ?></h4>
        <?php } else { ?>
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
          <div class="form-group required" style="margin-top: 10px;">
            <div class="col-sm-8">
              <input type="text" name="author" value="<?php echo $author; ?>" id="input-author" placeholder="<?php echo $entry_author; ?>" class="form-control" />
              <?php if ($error_author) { ?>
              <div class="text-danger"><?php echo $error_author; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group required" style="margin-top: 10px;">
            <div class="col-sm-8">
              <input type="text" name="email" value="<?php echo $email; ?>" id="input-email" placeholder="<?php echo $entry_email; ?>" class="form-control" />
              <?php if ($error_email) { ?>
              <div class="text-danger"><?php echo $error_email; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group" style="margin-top: 10px;">
            <div class="col-sm-8">
              <textarea name="comment" rows="10" id="input-comment" class="form-control"  value="<?php echo $entry_comment; ?>" placeholder="<?php echo $entry_comment; ?>"/></textarea>
              <?php if ($error_comment) { ?>
              <div class="text-danger"><?php echo $error_comment; ?></div>
              <?php } ?>
            </div>
          </div>
          <?php echo $captcha; ?>	
          <input type="hidden" name="auto_approve" value="<?php echo $auto_approve; ?>" />
          <div class="buttons text-left"><input class="btn btn-primary" type="submit" value="<?php echo $button_submit; ?>" data-toggle="tooltip" title="<?php echo $button_submit; ?>" /></div>
        </form>
        <?php } ?>
      </div>
      <?php /*?><div class="buttons text-right"><button type="button" onclick="$('#add-comment').slideToggle();" class="btn btn-primary"><?php echo $button_comment_add; ?></button></div><?php */?>
      <?php } ?>
    <?php echo $content_bottom; ?></div>
  <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>