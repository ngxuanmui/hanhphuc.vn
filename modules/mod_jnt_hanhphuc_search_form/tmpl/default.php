<?php

// no direct access
defined('_JEXEC') or die;

$categories = $list['categories'];
$provinces = $list['provinces'];

?>

<p class="search-text">TÌM KIẾM DỊCH VỤ CƯỚI</p>

<div class="line-break-search">
	<span></span>
</div>

<form id="frm-search-service">
	<p>
		Chú ý: <span>Chọn một trong các lựa chọn bên dưới rồi nhấn vào Tìm
			kiếm để tìm kiếm dịch vụ.</span>
	</p>
	<div>
		<select>
			<option value="">Chọn dịch vụ</option>
			<?php foreach ($categories as $cat): ?>
			<option value="<?php echo $cat->id; ?>"><?php echo $cat->title; ?></option>
				<?php foreach ($cat->subCategories as $subCat): ?>
				<option value="<?php echo $subCat->id; ?>">&nbsp; &nbsp; <?php echo $subCat->title; ?></option>
				<?php endforeach; ?>
			<?php endforeach; ?>
		</select> 
		<select>
			<option value="">Lựa chọn Tỉnh / Thành</option>
			<?php foreach ($provinces as $key => $val): ?>
			<option value="<?php echo $key; ?>"><?php echo $val->title; ?></option>
			<?php endforeach; ?>
		</select> 
		<select>
			<option>Quận / Huyện</option>
		</select>
	</div>

	<div>
		<input type="text" placeholder="Gõ tên nhà cung cấp dịch vụ">
		<button type="button">Tìm kiếm dịch vụ</button>
	</div>

</form>