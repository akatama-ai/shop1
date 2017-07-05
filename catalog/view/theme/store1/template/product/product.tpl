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
<div class="container product-inner">
    <div class="row"><?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-md-8 col-sm-12'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-md-10 col-sm-12'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
            <div class="row firdtpart">
                <?php if ($column_left || $column_right) { ?>
                <?php $class = 'col-lg-5 col-md-5 col-sm-6 col-xs-12'; ?>
                <?php } else { ?>
                <?php $class = 'col-lg-5 col-md-5 col-sm-6 full-width col-xs-12'; ?>
                <?php } ?>
                <div class="<?php echo $class; ?> ">
                    <?php if ($thumb || $images) { ?>

                    <!--zoom start-->
                        <ul class="thumbnails col-sm-12">
                            <?php if ($thumb) { ?>
                            <li><a class="thumbnail img-responsive" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>">
                                    <img data-zoom-image="<?php echo $popup; ?>" src="<?php echo $thumb; ?>" id="zoom_03" class="img-responsive" alt="thumb-img">
                                </a>
                            </li>
                            
                            <?php } ?>
                            <?php if ($images) { ?>
                            <li class="col-lg-6 col-md-5 owl-carousel"  id="gallery_01">
                                <?php foreach ($images as $image) { ?>
                                <a data-zoom-image="<?php echo $image['popup']; ?>" data-image="<?php echo $image['popup']; ?>"  href="<?php echo $image['popup']; ?>">
                                    <img src="<?php echo $image['thumb']; ?>" class="img-responsive" alt="gallery">
                                </a>
                                <?php } ?>
                            </li>
                            <?php } ?>
                        </ul>
                       <div class="button-group product-two-button">
                                <button type="button" class="wishlist" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product_id; ?>');"><i class="fa fa-heart" aria-hidden="true"></i></button>
                                <button type="button" class="compare" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product_id; ?>');"><i class="fa fa-exchange" aria-hidden="true"></i></button>
                </div>
                        <!--zoom end-->
                    <?php } ?>
                </div>
                <?php if ($column_left || $column_right) { ?>
                <?php $class = 'col-lg-7 col-md-7 col-sm-6 col-xs-12'; ?>
                <?php } else { ?>
                <?php $class = 'col-lg-7 col-md-7 col-sm-6 col-xs-12 product-inner-content full-width top-space'; ?>
                <?php } ?>
                <div class="<?php echo $class; ?>">
                    <h1><?php echo $heading_title; ?></h1>
                    <hr class="black-hr">
                    <ul class="list-unstyled">
                        <?php if ($manufacturer) { ?>
                        <li><div class="manufacture-part"><span class="text-decor"><?php echo $text_manufacturer; ?></span></div> <a href="<?php echo $manufacturers; ?>" class="text-brand"><?php echo $manufacturer; ?></a></li>
                        <?php } ?>
                        <li><div  class="manufacture-part"><span class="text-decor"><?php echo $text_model; ?></span></div><span class="text-decor"> <?php echo $model; ?></span></li>
                        <?php if ($reward) { ?>
                        <li><div  class="manufacture-part"><span class="text-decor"><?php echo $text_reward; ?></span ></div><span class="text-decor"> <?php echo $reward; ?></span></li>
                        <?php } ?>
                          <!--Avilability for stock-->
                         <li>
                             <div class="manufacture-part"><span class="text-decor">avability:</span></div>
                            <span class="text-decor">
                                <?php echo $stock; ?>
                            </span>
                        </li>
                         
                         <!--Avilability for stock over-->
                        <!--<li><?php //echo $text_stock; ?> <?php //echo $stock; ?></li>-->
                    </ul>
                    <hr class="black-hr">
                    <?php if ($price) { ?>
                   
                     
                    <ul class="list-unstyled list-inline">
                        <?php if (!$special) { ?>
                        
                        <li>
                            <h2 class="price"><?php echo $price; ?></h2>
                        </li>
                        <?php } else { ?>
                        <li>
                            <h2 class="price"><?php echo $special; ?></h2>
                        </li>
                        <li><span style="text-decoration: line-through;" class="line-price"><?php echo $price; ?></span></li>
                        <?php } ?>
                        <?php if ($tax) { ?>
                        <li class="tax"><?php echo $text_tax; ?> <?php echo $tax; ?></li>
                        <?php } ?>
                        <?php if ($points) { ?>
                       <li class="points"><?php echo $text_points; ?><span class="point-num"> <?php echo $points; ?></span></li>
                        <?php } ?>
                        
                         <!-- <?php if ($description) { ?>
                        <li><hr></li>
                      <li><?php echo $description ?></li> 
                        <li><hr></li>
                        <?php } ?>  -->
                        <?php if ($discounts) { ?>
                        <?php foreach ($discounts as $discount) { ?>
                        <li class="discount"><?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?></li>
                       
                        <?php } ?>
                         
                        <?php } ?>
                         
                    </ul>
                    <hr class="black-hr">
                    <?php } ?>
                    <div id="product">
                    <?php if ($options) { ?>
                        <!-- <h3><?php //echo $text_option; ?></h3>-->
                        <?php foreach ($options as $option) { ?>
                        <?php if ($option['type'] == 'select') { ?>
                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                            <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                                <option value=""><?php echo $text_select; ?></option>
                                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                    <?php if ($option_value['price']) { ?>
                                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                    <?php } ?>
                                </option>
                                <?php } ?>
                            </select>
                        </div>
                        <?php } ?>

                       <!--Radio option-->
                        <!-- Radio OR color Button start-->
                        <?php if ($option['type'] == 'radio') { ?>
                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                            <div class="row">
                                <div class="col-sm-12 op-box color">
                                    <label class="control-label"><?php echo $option['name']; ?></label>
                                    <div id="input-option<?php echo $option['product_option_id']; ?>" class="custom-radio">
                                         <div data-toggle="buttons">
                                            <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                                <label class="btn btn-default">
                                                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                                                    <?php  if ($option_value['image']) { ?>
                                                        <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail img-check" /> 
                                                    <?php } else { ?>
                                                    <span class="radio-name"><?php echo $option_value['name']; ?></span>
                                                    <?php } ?>
                                                </label>
                                                <?php if ($option_value['price']) { ?>
                                                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                                <?php }  ?>
                                                <?php } ?>
                                           </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php } ?>
                       <!-- Radio OR color Button End--> 
                        <!--Color option over-->

                        <!--Checkbox option-->
                        <?php if ($option['type'] == 'checkbox') { ?>
                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                            <div class="row">  
                                <div class="col-md-12 op-box check-box color">
                                    <label class="control-label"><?php echo $option['name']; ?></label>
                                    <div id="input-option<?php echo $option['product_option_id']; ?>" class="custom-radio">
                                         <div data-toggle="buttons">
                                                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                                <label class="btn btn-default">
                                                    <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" /> 
                                                    <?php if ($option_value['image']) { ?>
                                                    <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" />                                            
                                                    <?php } else { ?>
                                                        <?php echo $option_value['name']; ?>
                                                    <?php } ?>
                                                </label>
                                                <?php if ($option_value['price']) { ?>
                                                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                                <?php } ?>
                                                <?php } ?>
                                         </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php } ?>
                        <!--Size option over-->

                        <?php if ($option['type'] == 'text') { ?>
                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                        </div>
                        <?php } ?>
                        <?php if ($option['type'] == 'textarea') { ?>
                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                            <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
                        </div>
                        <?php } ?>


                        <?php if ($option['type'] == 'file') { ?>
                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?> file">
                            <label class="control-label"><?php echo $option['name']; ?></label>
                            <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block input-btn"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
                            <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
                        </div>
                        <?php } ?>
                        <?php if ($option['type'] == 'date') { ?>
                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                            <div class="input-group date">
                                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                                <span class="input-group-btn">
                                    <button class="btn btn-default input-btn" type="button"><i class="fa fa-calendar"></i></button>
                                </span></div>
                        </div>
                        <?php } ?>
                        <?php if ($option['type'] == 'datetime') { ?>
                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                            <div class="input-group datetime">
                                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                                <span class="input-group-btn">
                                    <button type="button" class="btn btn-default input-btn"><i class="fa fa-calendar"></i></button>
                                </span></div>
                        </div>
                        <?php } ?>
                        <?php if ($option['type'] == 'time') { ?>
                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                            <div class="input-group time">
                                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                                <span class="input-group-btn">
                                    <button type="button" class="btn btn-default input-btn"><i class="fa fa-calendar"></i></button>
                                </span></div>
                        </div>
                        <?php } ?>
                        <?php } ?>
                        <?php } ?>
                        <?php if ($recurrings) { ?>
                        
                        <h3><?php echo $text_payment_recurring; ?></h3>
                        <div class="form-group required">
                            <select name="recurring_id" class="form-control">
                                <option value=""><?php echo $text_select; ?></option>
                                <?php foreach ($recurrings as $recurring) { ?>
                                <option value="<?php echo $recurring['recurring_id']; ?>"><?php echo $recurring['name']; ?></option>
                                <?php } ?>
                            </select>
                            <div class="help-block" id="recurring-description"></div>
                        </div>
                        <?php } ?>
                        <?php if ($minimum > 1) { ?>
                        <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
                        <?php } ?>
                        
                    
                        <!--Quantity option-->
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-1 col-sm-1 col-xs-1 op-box ">
                                    <label class="control-label" for="input-quantity"><?php echo $entry_qty; ?></label>
                                </div>
                                <div class=" col-md-5 col-sm-11 col-xs-11 op-box qty-plus-minus">
                                     <button type="button" id="minusbutton" class="form-control pull-left btn-number" disabled="disabled" data-type="minus" data-field="quantity">
                                        <span class="glyphicon glyphicon-minus"></span>
                                    </button>
                                    <input id="input-quantity" type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" class="form-control pull-left input-number"/>
                                    <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                                    <button type="button" id="plusbutton"  class="form-control pull-left btn-number" data-type="plus" data-field="quantity">
                                        <span class="glyphicon glyphicon-plus"></span>
                                    </button>
                                   
                                </div>
                                
                            </div>
                             <hr class="black-hr">
                        </div>
                        <!--Quantity option over-->
                     
                                    
                                         <button type="button" id="button-cart" class=" add-to-cart" data-loading-text="<?php echo $text_loading; ?>"><span  class="addtocart-text"><?php echo $button_cart; ?></span></button>
                                     <hr class="black-hr">
                               

                    </div>
                  

                    <?php if ($review_status) { ?>
                
                    <div class="rating">
                        <p>
                            <?php for ($i = 1; $i <= 5; $i++) { ?>
                            <?php if ($rating < $i) { ?>
                            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                            <?php } else { ?>
                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                            <?php } ?>
                            <?php } ?>
                           <span class="pipe1"></span>
                           <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;">
                           		<span class="review"><?php echo $reviews; ?></span>
                           </a> 
                           <span class="pipe1"></span>
                           <i class="fa fa-pencil-square-o pencil" aria-hidden="true"></i>
                           <span class="comment"> 
                           		<a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;">
                           			<?php echo $text_write; ?>
                                </a>
                           </span>
                           <hr class="black-hr">
                       
                            
                        <!-- AddThis Button BEGIN -->

                 	  <div class="a2a_kit a2a_kit_size_32 a2a_default_style">
                            <a class="a2a_button_facebook"></a>
                            <a class="a2a_button_twitter"></a>
                            <a class="a2a_button_google_plus"></a>
                            <a class="a2a_button_pinterest"></a>
                            <a class="a2a_button_linkedin"></a>
                            <a class="a2a_dd" href="https://www.addtoany.com/share"></a>
                        </div> 
						<script async src="https://static.addtoany.com/menu/page.js"></script>
                        <!-- AddToAny END -->

                        <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script>
                        <!-- AddThis Button END -->

                    </div>
                    
                    <?php } ?>
                </div>
            </div>

            <hr>
            <div class="row">
                <div class="col-sm-12 product-tab">
                    <ul class="nav nav-tabs specification">
                        <li class="active"><a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li>
                        <?php if ($attribute_groups) { ?>
                        <li><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
                        <?php } ?>
                        <?php if ($review_status) { ?>
                        <li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
                        <?php } ?>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab-description"><?php echo $description; ?></div>
                        <?php if ($attribute_groups) { ?>
                        <div class="tab-pane" id="tab-specification">
                            <table class="table table-bordered">
                                <?php foreach ($attribute_groups as $attribute_group) { ?>
                                <thead>
                                    <tr>
                                        <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                                    <tr>
                                        <td><?php echo $attribute['name']; ?></td>
                                        <td><?php echo $attribute['text']; ?></td>
                                    </tr>
                                    <?php } ?>
                                </tbody>
                                <?php } ?>
                            </table>
                        </div>
                        <?php } ?>
                        <?php if ($review_status) { ?>
                        <div class="tab-pane" id="tab-review">
                            <form class="form-horizontal" id="form-review">
                                <div id="review"></div>
                                <h2><?php echo $text_write; ?></h2>
                                <?php if ($review_guest) { ?>
                                <div class="form-group required">
                                    <div class="col-sm-12">
                                        <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                                        <input type="text" name="name" value="<?php echo $customer_name; ?>" id="input-name" class="form-control" />
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <div class="col-sm-12">
                                        <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                                        <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                                        <div class="help-block"><?php echo $text_note; ?></div>
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <div class="col-sm-12">
                                        <label class="control-label"><?php echo $entry_rating; ?></label>
                                        &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                                        <input type="radio" name="rating" value="1" />
                                        &nbsp;
                                        <input type="radio" name="rating" value="2" />
                                        &nbsp;
                                        <input type="radio" name="rating" value="3" />
                                        &nbsp;
                                        <input type="radio" name="rating" value="4" />
                                        &nbsp;
                                        <input type="radio" name="rating" value="5" />
                                        &nbsp;<?php echo $entry_good; ?></div>
                                </div>
                                <?php echo $captcha; ?>
                                <div class="buttons clearfix">
                                    <div class="pull-right">
                                        <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
                                    </div>
                                </div>
                                <?php } else { ?>
                                <?php echo $text_login; ?>
                                <?php } ?>
                            </form>
                        </div>
                        <?php } ?>
                    </div>
                </div>
            </div>


<!--RELATED PRODUCTS-->            
            <?php if ($products) { ?>
             <h3 class="title"><i class="fa fa-bars"></i><?php echo $text_related; ?></h3>
    		<hr>
            <div class="row">
            <div class="relatedproduct">
                <div id="related-product" class="owl-carousel p-slider">
                <?php $i = 0; ?>
                <?php foreach ($products as $product) { ?>
                <?php if ($column_left && $column_right) { ?>
                <?php $class = 'col-xs-8 col-sm-6'; ?>
                <?php } elseif ($column_left || $column_right) { ?>
                <?php $class = 'col-xs-6 col-md-4'; ?>
                <?php } else { ?>
                <?php $class = 'col-xs-6 col-sm-3'; ?>
                <?php } ?>                      
          <div>
            <div class="product-layout  col-sm-12 col-xs-12">
                <div class="item">
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
                           <!-- <p><?php echo $product['description']; ?></p>-->
                            
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
                            <button class="zoom" type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-link"></i></button>
                            
                        </div>
                        </div>
                    </div>
                </div>
            </div>    
          </div>
    
                <?php /* if (($column_left && $column_right) && (($i+1) % 2 == 0)) { ?>
                <div class="clearfix visible-md visible-sm"></div>
                <?php } elseif (($column_left || $column_right) && (($i+1) % 3 == 0)) { ?>
                <div class="clearfix visible-md"></div>
                <?php } elseif (($i+1) % 4 == 0) { ?>
                <div class="clearfix visible-md"></div>
                <?php } */ ?>
                
                <?php $i++; ?>
                <?php } ?>            
            </div>
            </div>
                        </div>
                   
            <?php } ?>
            
            
            
            
            <?php if ($tags) { ?>
            <p><?php echo $text_tags; ?>
                <?php for ($i = 0; $i < count($tags); $i++) { ?>
                <?php if ($i < (count($tags) - 1)) { ?>
                <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
                <?php } else { ?>
                <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
                <?php } ?>
                <?php } ?>
            </p>
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



<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();

			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}
			if (json['success']) {
				$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

                                //Custom
                                var temp="cart-digit1";
                                if ((json['total'].length) > 1) {
                                    temp="cart-digit2";
                                    //document.write(json['total'].length);
                                }   
				$('#cart > button').html('<img src="image/catalog/cart.png" alt="cart"> <span>cart</span><span id="cart-total" class="cart-items ' + temp + ' img" >' + json['total'] + '</span>');

				$('html, body').animate({ scrollTop: 0 }, 'slow');

				$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').val(json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});

$(document).ready(function() {
	$('.thumbnails').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});
});
//--></script>


<!--for product quantity plus minus-->
<script type="text/javascript">
    //plugin bootstrap minus and plus
    $(document).ready(function() {
    $('.btn-number').click(function(e){
    e.preventDefault();
    var fieldName = $(this).attr('data-field');
    var type = $(this).attr('data-type');
    var input = $("input[name='" + fieldName + "']");
    var currentVal = parseInt(input.val());
    if (!isNaN(currentVal)) {
    if (type == 'minus') {
    var minValue = parseInt(input.attr('min'));
    if (!minValue) minValue = 1;
    if (currentVal > minValue) {
    input.val(currentVal - 1).change();
    }
    if (parseInt(input.val()) == minValue) {
    $(this).attr('disabled', true);
    }

    } else if (type == 'plus') {
    var maxValue = parseInt(input.attr('max'));
    if (!maxValue) maxValue = 999;
    if (currentVal < maxValue) {
    input.val(currentVal + 1).change();
    }
    if (parseInt(input.val()) == maxValue) {
    $(this).attr('disabled', true);
    }

    }
    } else {
    input.val(0);
    }
    });
    $('.input-number').focusin(function(){
    $(this).data('oldValue', $(this).val());
    });
    $('.input-number').change(function() {

    var minValue = parseInt($(this).attr('min'));
    var maxValue = parseInt($(this).attr('max'));
    if (!minValue) minValue = 1;
    if (!maxValue) maxValue = 999;
    var valueCurrent = parseInt($(this).val());
    var name = $(this).attr('name');
    if (valueCurrent >= minValue) {
    $(".btn-number[data-type='minus'][data-field='" + name + "']").removeAttr('disabled')
    } else {
    alert('Sorry, the minimum value was reached');
    $(this).val($(this).data('oldValue'));
    }
    if (valueCurrent <= maxValue) {
    $(".btn-number[data-type='plus'][data-field='" + name + "']").removeAttr('disabled')
    } else {
    alert('Sorry, the maximum value was reached');
    $(this).val($(this).data('oldValue'));
    }
    });
    $(".input-number").keydown(function (e) {
    // Allow: backspace, delete, tab, escape, enter and .
    if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 190]) !== - 1 ||
            // Allow: Ctrl+A
                    (e.keyCode == 65 && e.ctrlKey === true) ||
                    // Allow: home, end, left, right
                            (e.keyCode >= 35 && e.keyCode <= 39)) {
            // let it happen, don't do anything
            return;
            }
            // Ensure that it is a number and stop the keypress
            if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
            e.preventDefault();
            }
            });
    });
</script>
<!--related products slider-->
<script type="text/javascript">
    $(document).ready(function() {
    $("#related-product").owlCarousel({
    itemsCustom : [
    [1, 1],
    [600, 2],
    [981, 4],
    ],
            //autoPlay: 1000,

            navigationText: ['<span class="top-des"><i class="fa fa-arrow-left"></i></span>', '<span class="top-des"><i class="fa fa-arrow-right"></i></span>'],
            navigation : true,
            pagination:false
    });
    });
</script>
<!--over related products slider-->

<!--zoom product start-->
<script>
     if (jQuery(window).width() > 980){
        //initiate the plugin and pass the id of the div containing gallery images
            $("#zoom_03").elevateZoom({gallery:'gallery_01', cursor: 'pointer', galleryActiveClass: 'active', imageCrossfade: true, loadingIcon: ''});
        //pass the images to Fancybox
            $("#zoom_03").bind("click", function (e) {
            var ez = $('#zoom_03').data('elevateZoom');
            $.fancybox(ez.getGalleryList());
            return false;
            });
    }
</script>
<!--ZOOM END-->
<!--zoom  product end-->
<!--slider for product-->
<script type="text/javascript"><!--
$('#gallery_01').owlCarousel({
	itemsCustom : [
        [1, 2],  
        [360, 2],
        [380, 3],
		[600, 4],
        [768, 2],
        [981, 3],
		[1600, 4]
        ],
	autoPlay: false,
	navigation: true,
	navigationText: ['<i class="fa fa-chevron-left" aria-hidden="true"></i>', '<i class="fa fa-chevron-right" aria-hidden="true"></i>'],
	pagination: false
});
--></script>
<!--over slider for product-->

<?php echo $footer; ?>