<?php

// No direct access
defined('_JEXEC') or die;

$categories = $this->categories;
?>

<h1>Dịch vụ cưới</h1>

<div>
	<ul>
		<?php foreach ($categories as $cat): ?>
		<li>
			<div><?php echo $cat->title; ?></div>
			<ul>
				<?php foreach ($cat->users as $user): ?>
				<li>
					<?php echo $user->username; ?>
				</li>
				<?php endforeach; ?>
			</ul>
		</li>
		<?php endforeach; ?>
	</ul>
</div>