<?php
/**
 * @version		$Id: default.php 21097 2011-04-07 15:38:03Z dextercowley $
 * @package		Joomla.Site
 * @subpackage	com_contact
 * @copyright	Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;

$user = $this->user_info;
$profile = $user->profile;

?>

<div class="container">
    <div class="float-left left-side">
		<div class="sub-container list-services relative">
			<h1><?php echo $user->name; ?></h1>
			
			<div class="business-intro-desc">
			
				<?php if ($profile->business_logo != ''): ?>
				<div class="business-logo">
					<img src="<?php echo JURI::base();?>images/business/<?php echo $profile->business_logo; ?>" />
				</div>				
				<?php endif; ?>
				
				<?php echo $user->info->content; ?>
				
				<?php if (!empty($profile->nick_skype) || !empty($profile->nick_yahoo)): ?>				
				<div>
					<strong>Liên hệ: </strong> 
					<?php if (!empty($profile->nick_skype)): ?>	
					<a href="skype:<?php echo $profile->nick_skype; ?>?call" class="skype"><?php echo $profile->nick_skype_alias ? $profile->nick_skype_alias : $profile->nick_skype; ?></a>
					<?php endif; ?>
					<?php if (!empty($profile->nick_yahoo)): ?>	
					<a href="ymsgr:SendIM?<?php echo $profile->nick_yahoo; ?>" class="yahoo"><?php echo $profile->nick_yahoo_alias ? $profile->nick_yahoo_alias : $profile->nick_yahoo; ?></a>
					<?php endif; ?>
				</div>
				<?php endif; ?>
			</div>
			
			
			<?php if (count($this->items) > 0): ?>
			
			<div class="services-list relative">
				
				<div class="seperator absolute"></div>
				
				<h2>SẢN PHẨM VÀ DỊCH VỤ</h2>
				<ul class="items">
					<?php foreach($this->items as $item):?>
					<li class="service-business-detail">
							<a title="<?php echo htmlspecialchars($item->name); ?>" href="<?php echo JRoute::_('index.php?option=com_jnt_hanhphuc&view=service&id='.$item->category.'&bid='.$item->id.'&user=' . JRequest::getString('user'))?>">
								<?php if ($item->img): ?>
								<div class="img">
									<img src='<?php echo JURI::base()?>images/users/<?php echo $user->id?>/services/<?php echo $item->id?>/<?php echo $item->img; ?>' />
								</div>
								<?php else: ?>
								NO IMAGE
								<?php endif; ?>
							</a>
					</li>
					<?php endforeach;?>
				</ul>
				
				<div class="clr"></div>
				
				<div class="pagination">
					<?php echo $this->pagination->getPagesLinks()?>
				</div>
				
				<div class="clr"></div>
			</div>
			<?php endif; ?>

<script type="text/javascript" src="http://www.google.com/jsapi?key=AIzaSyAAVKaGv0Tn_kz-xPSjLl66dznQuLssKqM"></script>

<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAAVKaGv0Tn_kz-xPSjLl66dznQuLssKqM&sensor=false"></script>
			
<script type="text/javascript">
<!--

google.load("maps", "2");

function addmarker(latilongi) {
    
}

jQuery(function($){
	$('.show-map-address').click(function(){
		
		// var rel = $(this).attr('rel');
		
		var address = $(this).attr('add');

		$('.show-map-address').css('font-weight', 'normal');
		$(this).css('font-weight', 'bold');
		
		$.post('<?php echo JRoute::_('index.php?option=com_jnt_hanhphuc&view=services&layout=map&tmpl=component&getmap=1', false); ?>',
				{'address': address},
				function(res)
				{
					
					var mapContainer = $('.map-container');

					if (mapContainer.hasClass('not-display'))
					{
						mapContainer.slideToggle( "slow").removeClass('not-display');
					}						
					
					$('#map_canvas').html('loading');
					
					res = $.parseJSON(res);

					var myLatlng = new google.maps.LatLng(res.lat, res.lng);
					
					var mapOptions = {
					    zoom: 4,
					    center: myLatlng,
					    scrollwheel: false
					};
					
					var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
					
					map.setCenter(myLatlng, 14);

					map.disableScrollWheelZoom()

					var marker = new GMarker(myLatlng, {draggable: false});

					map.addOverlay(marker);
				}
			);

		return false;
	});
});

//google.maps.event.addDomListener(window, 'load', initialize);

//-->
</script>
			
			<div class="business-info relative">
				
				<div class="seperator absolute"></div>
					<h3 style="font-size: 14px; padding: 0 0 10px;"><?php echo $profile->business_name; ?></h3>
					
					<div style="color: #CCC;">
					(Click vào địa chỉ để xem bản đồ)
					</div>
					
					<ul class="list-address">
						<?php foreach ($this->addresses as $add): ?>
						
						<?php 
						// map
						$address = $add->address . '+' . $add->district_title . '+' . $add->province_title;
						$address = base64_encode(urlencode($address));
						?>
						<li>
							<a href="#" class="show-map-address" rel="<?php echo $add->id; ?>" add="<?php echo $address; ?>">
								<?php 
								if (!empty($add->subname))
									echo $add->subname . ': ';
								?>
								<?php echo $add->address; ?>, <?php echo $add->district_title; ?>, <?php echo $add->province_title; ?>
							</a>
							
							<div class="map-content content-<?php echo $add->id; ?>">
								
							</div>
						</li>
						<?php endforeach; ?>
						<li>
							
						</li>
					</ul>
					
					<div class="map-container not-display" style="width: 630px; display: none; ">
						<div id="map-canvas" style="width: 630px; height: 330px;"></div>
					</div>
			
				<div class="clr"></div>
			</div>
			
			
			<div class="comments-container relative box">
		    	<div class="seperator absolute"></div>
		    	
		    	<div class="com-comments">
		    		<script type="text/javascript">
		    			var ITEM_ID_COMMENT = '<?php echo $user->id; ?>';
		    			var ITEM_TYPE_COMMENT = 'user';
		    		</script>
		    		<?php JEUtil::showForm($user->id, 'user', $user->name); ?>
		    	</div>
		    </div>
		</div>
	</div>
	
	<div class="float-right right-side">
		<?php echo JEUtil::loadModule('right', 'module-padding'); ?>
    </div>
</div>

<div class="clr"></div>
