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

<div id="_desktop_contact_link">
  <div id="contact-link">
    <div class="shop-address">
        {* <i class="material-icons">&#xE55F;</i>*}
        <div class="fum-nav"></div>
        {if $shop.address.address1}
          {$shop.address.address1} {$shop.address.city}
        {else}
          {l s='Subačiaus g. 19, Vilnius' d='Shop.Theme.Global'}
        {/if}
    </div>
    <div class="shop-email">
      {* <i class="material-icons">&#xE158;</i>*}
      <div class="mail"></div>
      {if $shop.email}  
      <a href="mailto:{$contact_infos.email}" title="{l s='Contact us' d='Shop.Theme.Global'}">{$contact_infos.email}</a>   
        {* {$shop.email} *}
      {else}
        <a href="mailto:store@fumparfum.com" title="{l s='Contact us' d='Shop.Theme.Global'}">store@fumparfum.com</a>
      {/if}
    </div>
    <div class="shop-phone">
    {if $contact_infos.phone}
      {* <i class="material-icons">&#xE0CD;</i>*}
      <div class="fum-phone"></div>
      <a href="tel:+37068474941" title="{l s='Contact us' d='Shop.Theme.Global'}">{$contact_infos.phone}</a>
      {* {l
        s='Call us: [1]%phone%[/1]'
        sprintf=[
          '[1]' => '<span>',
          '[/1]' => '</span>',
          '%phone%' => $contact_infos.phone
        ]
        d='Shop.Theme.Global'
      } *}
    {else}
      <a href="{$urls.pages.contact}" title="{l s='Contact us' d='Shop.Theme.Global'}">{l s='Contact us' d='Shop.Theme.Global'}</a>
    {/if}
    </div>
  </div>
</div>
