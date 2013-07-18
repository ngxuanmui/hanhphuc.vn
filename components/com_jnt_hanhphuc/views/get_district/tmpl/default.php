<?php

?>

<select name="district">
	<option value="">Chọn Quận / Huyện</option>
	<?php foreach ($this->items as $item): ?>
	<option value="<?php echo $item->id; ?>"><?php echo $item->title; ?></option>
	<?php endforeach; ?>
</select>