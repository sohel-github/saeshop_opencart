<?php echo $header; ?>

<div class="container">
  
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>

  <div class="row">
  	<?php //echo $column_left; ?>
  	<!--
    <?php if ($categories) { ?>
  	<?php if (count($categories) <= 5) { ?>
  	<div class="col-sm-3 hidden-xs">
  		<ul>
        <?php foreach ($categories as $category) { ?>
          <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
      </ul>
  	</div>
  	<?php } else { ?>
  	<div class="row">
        <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
        <div class="col-sm-3 hidden-xs">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
        <?php } ?>
    </div>
  	<?php } ?>
  	<?php } ?> -->

    <?php if ($products) { ?>
  		<div class="products">
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
                  <p><?php echo $product['description']; ?></p>
                </div>
                <div><button onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <?php echo $button_cart; ?></button></div>
              </div>
            </div>
          </div>
          <?php } ?>
      </div>
    <?php } ?>
  </div>
</div>  

<?php echo $footer; ?>