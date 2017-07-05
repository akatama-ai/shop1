<?php echo $header; ?>

<!--content top full -->
 <?php if ($ctop_full) { ?>
<div class="container-fluid">
    <div class="row">
            <?php echo $ctop_full; ?>
   </div>
</div>
 <?php } ?>
 <!--over-->
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
      <h1 class="title"><?php echo $heading_title; ?></h1>
      <hr>
      <?php echo $description; ?><?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>

 <!--content bottom full -->
 <?php if ($cbottom_full) { ?>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-12 col-xs-12">
            <?php echo $cbottom_full; ?>
        </div>
   </div>
</div>
 <?php } ?>
 <!--over-->

<?php echo $footer; ?>