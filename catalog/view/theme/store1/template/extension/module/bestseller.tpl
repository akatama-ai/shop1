
<div id="tab-bestseller-0" class="tab-pane">
    <h3><?php echo $heading_title; ?></h3>
    <div class="row">
        <div id="bestseller-product" class="owl-carousel p-slider">
        <?php $temp=0; foreach ($products as $product) { ?>
        <div>
            <?php if($temp==0) { ?>
            
                <div class="product-layout  col-sm-12 col-xs-12">
                    <div class="item">
                        <div class="product-thumb">
                            <div class="image">
                                <a href="<?php echo $product['href']; ?>">
                                    <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" />
                                    <?php if ($product['price']) { ?>
                                        <?php if ($product['special']) { ?>
                                            <div class="sale-bestseller"><img src="image/catalog/sale.png"></div>
                                        <?php } ?>
                                    <?php } ?>
                                </a>
                            </div>
                            <div class="caption">
                                <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                                <p><?php echo $product['description']; ?></p>
                                <div class="rating">
                                    <?php for ($i = 1; $i <= 5; $i++) { ?>
                                    <?php if ($product['rating'] < $i) { ?>
                                    <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                    <?php } else { ?>
                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                    <?php } ?>
                                    <?php } ?>
                                </div>
                                <?php if ($product['price']) { ?>
                                <p class="price">
                                    <?php if (!$product['special']) { ?>
                                    <?php echo $product['price']; ?>
                                    <?php } else { ?>
                                    <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                                    <?php } ?>
                                    <?php if ($product['tax']) { ?>
                                    <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                                    <?php } ?>
                                </p>
                                <?php } ?>
                            </div>
                            <div class="button-group">
                                <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
                                <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
                                <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
                            </div>

                        </div>
                    </div>
                </div>
                <?php $temp=1; } else if($temp==1) { ?>
                <div class="product-layout  col-sm-12 col-xs-12">
                    <div class="item">
                        <div class="product-thumb">
                            <div class="image">
                                <a href="<?php echo $product['href']; ?>">
                                    <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" />
                                    <?php if ($product['price']) { ?>
                                        <?php if ($product['special']) { ?>
                                            <div class="sale-bestseller"><img src="image/catalog/sale.png"></div>
                                        <?php } ?>
                                    <?php } ?>
                                </a>
                            </div>
                            <div class="caption">
                                <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                                <p><?php echo $product['description']; ?></p>
                                <div class="rating">
                                    <?php for ($i = 1; $i <= 5; $i++) { ?>
                                    <?php if ($product['rating'] < $i) { ?>
                                    <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                    <?php } else { ?>
                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                    <?php } ?>
                                    <?php } ?>
                                </div>
                                <?php if ($product['price']) { ?>
                                <p class="price">
                                    <?php if (!$product['special']) { ?>
                                    <?php echo $product['price']; ?>
                                    <?php } else { ?>
                                    <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                                    <?php } ?>
                                    <?php if ($product['tax']) { ?>
                                    <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                                    <?php } ?>
                                </p>
                                <?php } ?>
                            </div>
                            <div class="button-group">
                                <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
                                <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
                                <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
                            </div>

                        </div>
                    </div>
                </div>
            
            <?php $temp=0; } ?>
            </div>
        <?php } ?>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function() {
    $("#bestseller-product").owlCarousel({
    itemsCustom : [
    [0, 1],
    [600, 2],
    [991, 3],
    [1000, 4],
    ],
            // autoPlay: 1000,
            navigationText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
            navigation : true,
            pagination:false
    });
    });
</script>
