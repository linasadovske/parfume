{***
* csinstagramfeeds front-end module version 1.0.1 for Prestashop 1.6, 1.7
* Support contact : prestashop@comonsoft.com.
*
* NOTICE OF LICENSE
*
* This source file is the property of Com'onSoft
* that is bundled with this package.
* It is also available through the world-wide-web at this URL:
* https://boutique.comonsoft.com/
*
* @category  front-end
* @package   csinstagramfeeds
* @author    Com'onSoft (http://www.comonsoft.com/)
* @copyright 2016-2018 Com'onSoft and contributors
* @version   1.1.0
*}

{if isset($instagram_pics) && $instagram_pics|count > 0}
	<section class="col-xs-12 full-width" id="csinstagramfeed">
		<h2 class="subheading">{l s='Instagram srautas'}</h2>
		<ul id="bxslider-instagram" class="bxslider clearfix row">
		{foreach $instagram_pics as $pic}
			<li class="picture item col-xl-2 col-lg-4 col-md-6 col-12">
				<a href="{$pic.link}" title="{$pic.caption|escape:'html':'UTF-8'}" target="_blank" rel="nofollow">
					<img src="{$pic.image}" alt="{$pic.caption|escape:'html':'UTF-8'}" class="img-responsive" />
				</a>
			</li>
		{/foreach}
        <button href="#" class="border w-100 btn btn-primary text-uppercase btn-lg">
            {l s='Show more'}
        </button>
		</ul>
	</section>
{/if}