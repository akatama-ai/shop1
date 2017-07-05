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
      <div class="row">
        <div class="col-sm-6 sitemap">
          <ul class=" main-ul">
            <?php foreach ($categories as $category_1) { ?>
            <li><b><a href="<?php echo $category_1['href']; ?>"><?php echo $category_1['name']; ?></a></b>
              <?php if ($category_1['children']) { ?>
              <ul class="sub-ul">
                <?php foreach ($category_1['children'] as $category_2) { ?>
                <li><a href="<?php echo $category_2['href']; ?>"><?php echo $category_2['name']; ?></a>
                  <?php if ($category_2['children']) { ?>
                  <ul class="sub2-ul">
                    <?php foreach ($category_2['children'] as $category_3) { ?>
                    <li><a href="<?php echo $category_3['href']; ?>"><?php echo $category_3['name']; ?></a></li>
                    <?php } ?>
                  </ul>
                  <?php } ?>
                </li>
                <?php } ?>
              </ul>
              <?php } ?>
            </li>
            <?php } ?>
          </ul>
        </div>
        <div class="col-sm-6 sitemap">
          <ul class=" main-ul">
            <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
              <ul class="sub-ul">
                <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
                <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
                <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
                <li><a href="<?php echo $history; ?>"><?php echo $text_history; ?></a></li>
                <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
              </ul>
            </li>
            <li><a href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a></li>
            <li>><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
            <li><a href="<?php echo $search; ?>"><?php echo $text_search; ?></a></li>
            <li><?php echo $text_information; ?>
              <ul class="sub2-ul">
                <?php foreach ($informations as $information) { ?>
                <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                <?php } ?>
                <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
              </ul>
            </li>
          </ul>
        </div>
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