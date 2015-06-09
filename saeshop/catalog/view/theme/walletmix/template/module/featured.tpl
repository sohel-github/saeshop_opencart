<div id="featured">
	<div class="row">
		<?php foreach ($products as $product) { ?>
		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
			<div id="featured-list">
				<h3><?php echo $product['name']; ?></h3>
				<a href="<?php echo $product['href']; ?>"><img class="img-responsive" src="<?php echo $product['thumb']; ?>" alt="" title=""></a>
				<p><b>Price</b></p>
				<?php if ($product['price']) { ?>
				<p><?php echo $product['price']; ?></p>
				<?php } ?>
				<button onclick="cart.add('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></button>
			</div>
		</div>
		<?php } ?>
	</div>
</div>