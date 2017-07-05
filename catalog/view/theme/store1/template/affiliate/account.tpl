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
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-md-8 col-sm-12'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-md-10 col-sm-12'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h2 class="title"><?php echo $text_my_account; ?></h2>
      <hr>
      <div class="aff-account-box">
      <ul class="list-unstyled">
        <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
        <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
        <li><a href="<?php echo $payment; ?>"><?php echo $text_payment; ?></a></li>
      </ul>
      </div>
      <div class="account-box">
      <h4><?php echo $text_my_tracking; ?></h4>
      <ul class="list-unstyled">
        <li><a href="<?php echo $tracking; ?>"><?php echo $text_tracking; ?></a></li>
      </ul>
      </div>
      <div class="account-box">
      <h4><?php echo $text_my_transactions; ?></h4>
      <ul class="list-unstyled">
        <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
      </ul>
      </div>
      <?php echo $content_bottom; ?></div>
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