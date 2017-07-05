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
      <h2 class="title"><?php echo $heading_title; ?></h2>
      <hr>
      <?php if ($products) { ?>
      <div class="row cat-border">
        <div class="col-md-2 col-sm-3">
          <div class="btn-group btn-group-sm">
            <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
            <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
          </div>
        </div>
        <!--<div class="col-md-3 col-sm-6">
          <div class="form-group">
            <a href="<?php echo $compare; ?>" id="compare-total" class="btn btn-link"><?php echo $text_compare; ?></a>
          </div>
        </div>-->
        <div class="col-md-6 col-sm-5 col-xs-6 category-sort">
          <div class="form-group input-group input-group-sm">
            <label class="input-group-addon" for="input-sort"><?php echo $text_sort; ?></label>
            <select id="input-sort" class="form-control" onchange="location = this.value;">
              <?php foreach ($sorts as $sorts) { ?>
              <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
              <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </div>
        </div>
        <div class="col-md-4 col-sm-4 col-xs-6 category-sort">
          <div class="form-group input-group input-group-sm">
            <label class="input-group-addon" for="input-limit"><?php echo $text_limit; ?></label>
            <select id="input-limit" class="form-control" onchange="location = this.value;">
              <?php foreach ($limits as $limits) { ?>
              <?php if ($limits['value'] == $limit) { ?>
              <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </div>
     </div>
      </div>
      <div class="row all-special">
        <?php foreach ($products as $product) { ?>
        <div class="product-layout product-list col-xs-12">
          <div class="product-thumb">
          <?php if ($product['price']) { ?>
                        <?php if ($product['special']) { ?>
                            <div class="sale-bestseller"><img src="image/catalog/sale.png" alt="sale"></div>
                        <?php } ?>
                    <?php } ?>
            <div class="image">
                <a href="<?php echo $product['href']; ?>">
                    <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" />
                    
                </a>
            </div>
              
            <div>
               <div class="caption">
                        <?php if ($product['rating']) { ?>
                      <div class="rating">
                        <?php for ($i = 1; $i <= 5; $i++) { ?>
                        <?php if ($product['rating'] < $i) { ?>
                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                        <?php } else { ?>
                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                        <?php } ?>
                        <?php } ?>
                      </div>
                      <?php } else { ?>
                      <div class="rating">
                        <?php for ($i = 1; $i <= 5; $i++) { ?>
                        <span class="fa fa-stack"><i class="fa fa-star off fa-stack-2x"></i><i class="fa fa-star-o off fa-stack-2x"></i></span>
                        <?php } ?>
                      </div>
                      <?php } ?>
                      <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                      <p class="desc"><?php echo $product['description']; ?></p>
                            
                            <?php if ($product['price']) { ?>
                            <p class="price">
                                <?php if (!$product['special']) { ?>
                                <?php echo $product['price']; ?>
                                <?php } else { ?>
                                <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                                <?php } ?>
                                <!--<?php if ($product['tax']) { ?>
                                <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                                <?php } ?>-->
                            </p>
                            <?php } ?>
                            <div class="button-group">
                            <button  class="add-cart" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></button>
                            <button class="wish" type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart-o"></i></button>
                            <button class="compare" type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-balance-scale"></i></button>
                            <button class="zoom" type="button" data-toggle="tooltip" title="link" onclick="location.href = '<?php echo $product['href']; ?>';"><i class="fa fa-link"></i></button>
                            
                        </div>
                        </div>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
      <div class="row result-pagination">
        <div class="col-sm-12 text-center"><?php echo $pagination; ?></div>
        <!--<div class="col-sm-6 text-right"><?php echo $results; ?></div>-->
      </div>
      <?php } else { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
 
  <!--content bottom full -->
 <?php if ($cbottom_full) { ?>
<div class="container-fluid">
    <div class="row">
            <?php echo $cbottom_full; ?>
   </div>
</div>
 <?php } ?>
 <!--over-->
 
<?php echo $footer; ?>