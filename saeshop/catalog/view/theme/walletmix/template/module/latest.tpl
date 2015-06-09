<div class="products">
  <div class="row">
    <?php foreach ($products as $product) { ?>
    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
      <div class="latest-list-item">
        <div class="latest-list">
          <h3><?php echo $product['name']; ?></h3>
          <a href="<?php echo $product['href']; ?>"><img class="img-responsive" src="<?php echo $product['thumb']; ?>" alt="" title=""></a>

          <div class="latest-list-detail">
            <?php if ($product['price']) { ?>
            <p><b>Price : </b><?php echo $product['price']; ?></p>
            <?php } ?>
          </div>
          <div><button onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <?php echo $button_cart; ?></button></div>
        </div>
      </div>
    </div>
    <?php } ?>
  </div>
</div>
