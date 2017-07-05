<footer>
    <!--footer top full -->
    <div class="container-fluid">
    <div class="container">
        <div class="row subscribe">
            <?php echo $ftop_full; ?>
        </div>
        </div>
    </div>
    <!--over-->
    <div class="footer-up">
        <div class="container">
        <hr>
            <div class="row"> <?php echo $footer_left; ?>
                <?php if ($footer_left && $footer_right) { ?>
                <?php $class = 'col-md-8 col-sm-12'; ?>
                <?php } elseif ($footer_left || $footer_right) { ?>
                <?php $class = 'col-md-10 col-sm-12'; ?>
                <?php } else { ?>
                <?php $class = 'col-sm-12'; ?>
                <?php } ?>
                <div id="content-footer" class="<?php echo $class; ?>">
                   <div class="col-sm-3">
                        <h5>
                            <?php echo $text_account; ?>
                            <button type="button" class="btn btn-primary toggle collapsed" data-toggle="collapse" data-target="#extra" >                       
                            </button>
                        </h5> <hr class="foothr hidden-xs">
                        <div id="extra" class="collapse footer-collapse" >
                            <ul class="list-unstyled">
                                <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                                <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                                <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
                                <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
                                <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
                            </ul>
                        </div>
                    </div>
                    <?php if ($informations) { ?>
                    <div class="col-sm-3">
                        <h5>
                            <?php echo $text_information; ?>
                            <button type="button" class="btn btn-primary toggle collapsed" data-toggle="collapse" data-target="#information">          
                            </button>
                        </h5><hr class="foothr hidden-xs">
                        <div id="information" class="collapse footer-collapse">
                            <ul class="list-unstyled">
                                <?php foreach ($informations as $information) { ?>
                                <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>

                                <?php } ?>
                                <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
                            </ul>
                        </div>
                    </div>
                    <?php } ?>
                    <div class="col-sm-3">
                        <h5>
                            <?php echo $text_service; ?>
                            <button type="button" class="btn btn-primary toggle collapsed" data-toggle="collapse" data-target="#service">          
                            </button>
                        </h5>  <hr class="foothr hidden-xs">
                        <div id="service" class="collapse footer-collapse">
                            <ul class="list-unstyled">
                                <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                                <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
                                <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
                                <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
                                <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>

                            </ul>
                        </div>
                    </div>
                     <div class="col-sm-3">
                        <h5>
                            <?php echo $text_contact; ?>
                            <button type="button" class="btn btn-primary toggle collapsed" data-toggle="collapse" data-target="#contact" >                       
                            </button>
                        </h5>  <hr class="foothr hidden-xs">
                        <div id="contact" class="collapse footer-collapse">
                            <ul class="list-unstyled">
                                <li><a><i class="fa fa-map-marker"></i><?php echo $text_name; ?></a></li>
                                <li><a><i class="fa fa-envelope"></i><?php echo $text_email; ?></a></li>
                                <li><a><i class="fa fa-phone"></i><?php echo $text_telephone; ?></a></li>
                                <li><a><i class="fa fa-paper-plane"></i><?php echo $text_address; ?></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- <?php echo $footer_right; ?>-->
            </div>
        </div>
    </div>
    <!--footer bottom full -->
    <div class="container-fluid">
        <div class="row">
            <?php echo $fbottom_full; ?>
        </div>
    </div>
    <!--over-->
</footer>
<a href="" id="scroll" title="Scroll to Top" style="display: block;"><i class="fa fa-angle-double-up"></i></a>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
</body></html>