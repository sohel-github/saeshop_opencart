<ul id="category-sidebar">
	<?php foreach ($categories as $category) { ?>
		<li>
			<?php if ($category['category_id'] == $category_id) { ?>
				<a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>

				<?php if ($category['children']) { ?>
				<ul>
					<?php foreach ($category['children'] as $child) { ?>
					<li>
						<?php if ($child['category_id'] == $child_id) { ?>	
							<a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
						<?php } else { ?>
							<a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
						<?php } ?>
					</li>
					<?php } ?>
				</ul>
				<?php } ?>
			<?php } else { ?>
				<a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
			<?php } ?>
		</li>
	<?php } ?>
</ul>