{*
* 2012-2018 PrestaSOO
*
*  @author PrestaSOO <addons@prestasoo.com>
*  @copyright  2012-2018 PrestaSOO
*  @license    Commercial License. All right reserved.
*  International Registered Trademark & Property of PrestaSOO
*}

<div class="col-12 swiper-container">
<h2 class="h2 products-section-title text-uppercase">{l s='Our Partners' mod='soobrandlogoslider'}</h2>
	<ul id="brand_wrapper" class="swiper-wrapper">
		{foreach $brandcarousel as $brand}
		    <li class="swiper-slide">
				<a href="{$link->getmanufacturerLink($brand.id_manufacturer, $brand.link_rewrite)|escape:'htmlall':'UTF-8'}" title="{$brand.name|escape:'htmlall':'UTF-8'}" class="lnk_img">
					<img src="{$link->getManufacturerImageLink($brand.id_manufacturer, $imageName)}" alt="{$brand.name|escape:'htmlall':'UTF-8'}" />
				</a>
			</li>
		{/foreach}
	</ul>
	<div class="swiper-pagination"></div>
    <div class="swiper-button-prev"></div> 
    <div class="swiper-button-next"></div>
</div>