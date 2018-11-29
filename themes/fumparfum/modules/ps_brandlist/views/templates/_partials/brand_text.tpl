{**
 * 2007-2018 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2018 PrestaShop SA
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
<div class="swiper-container">
<div class="brands swiper-wrapper align-items-center">
  {foreach from=$brands item=brand name=brand_list}
    {if $smarty.foreach.brand_list.iteration <= $text_list_nb}
      <div class="facet-label swiper-slide">
        <a href="{$link->getmanufacturerLink($brand.id_manufacturer, $brand.link_rewrite)|escape:'htmlall':'UTF-8'}" title="{$brand.name|escape:'htmlall':'UTF-8'}" class="lnk_img">
					<img src="{$link->getManufacturerImageLink($brand.id_manufacturer, $imageName)}" alt="{$brand.name|escape:'htmlall':'UTF-8'}" />
				</a>
      </div>
    {/if}
  {/foreach}
</div>
	<div class="swiper-pagination"></div>
  <div class="swiper-button-prev"></div> 
  <div class="swiper-button-next"></div>
</div>