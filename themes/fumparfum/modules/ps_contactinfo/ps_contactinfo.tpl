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

<div class="block-contact col-md-3 links wrapper">

    <div class="hidden-sm-down">

    <p class="h4 block-contact-title">{l s='Store information' d='Shop.Theme.Global'}</p>
    {* {$contact_infos.address.formatted nofilter} *}
    </div> 
    <div class="title clearfix hidden-md-up" data-target="#block-contact-footer" data-toggle="collapse">
    <span class="h3">{l s='Store information' d='Shop.Theme.Global'}</span>
    <span class="float-xs-right">
      <span class="navbar-toggler collapse-icons">
        <i class="material-icons add">&#xE313;</i>
        <i class="material-icons remove">&#xE316;</i>
      </span>
    </span>
    </div>
    <div class="collapse" id="block-contact-footer">
    <div class="shop-address">
      {if $shop.address.address1}
        {$shop.address.address1} {$shop.address.city}
      {else}
        {l s='Subačiaus g. 19, Vilnius' d='Shop.Theme.Global'}
      {/if}
    </div>      
    <div class="shop-phone">
    {if $contact_infos.phone}
    <a href="tel:+37068474941">{$contact_infos.phone}</a>
    {else}
    <a href="{$urls.pages.contact}">{l s='Contact us' d='Shop.Theme.Global'}</a>
    {/if}
    </div>
    <div class="shop-email">
    {if $contact_infos.email}  
    <a href="mailto:{$contact_infos.email}" title="{l s='Contact us' d='Shop.Theme.Global'}">{$contact_infos.email}</a>   
    {else}
      <a href="mailto:store@fumparfum.com" title="{l s='Contact us' d='Shop.Theme.Global'}">store@fumparfum.com</a>
    {/if}
    </div>
    {if $contact_infos.fax}

    <br>

    {* [1][/1] is for a HTML tag. *}

    {l

      s='Fax: [1]%fax%[/1]'

      sprintf=[

        '[1]' => '<span>',

        '[/1]' => '</span>',

        '%fax%' => $contact_infos.fax

      ]

      d='Shop.Theme.Global'

    }

    {/if}

    {hook h='displaySocialfollow'}

    </div>  

</div>

