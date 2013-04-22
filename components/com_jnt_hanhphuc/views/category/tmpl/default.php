<?php

// No direct access
defined('_JEXEC') or die;

$category = $this->category;
?>

<h1><?php echo $category->title; ?></h1>

<div>
	<ul>
		<?php foreach ($category->users as $user): ?>
		<li>
			<div><?php echo $user->title; ?></div>
		</li>
		<?php endforeach; ?>
	</ul>
</div>