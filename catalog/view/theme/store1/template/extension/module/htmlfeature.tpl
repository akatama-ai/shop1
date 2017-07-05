
<div class="html-discount">
    <div class="row">
    <div class="col-lg-2 col-md-2 col-sm-4 hidden-xs ih-sec em-effect07">
        <?php echo $html; ?>
    </div>
    <div class="col-lg-10 col-md-10 col-sm-8 col-xs-12 ">
    <div id="html-product" class="owl-carousel ">
         <?php foreach ($products as $product) { ?>
                    <div class="product-layout ie-layout col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
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
                                <span class="price-new"><?php echo $product['special']; ?></span><span class="price-old"><?php echo $product['price']; ?></span>
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
                    <?php } ?>
    </div>
    </div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function() {
    $("#html-product").owlCarousel({
    itemsCustom : [
    [0, 1],
    [600, 2],
    [991, 2],
    [1200, 3],
	[1500, 4],
    ],
           // autoPlay: 1000,
            navigationText: ['<i class="fa fa-caret-left"></i>', '<i class="fa fa-caret-right"></i>'],
            navigation : true,
            pagination:false
    });
    });
</script>