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

{if $elements}

  <div id="block-reassurance" class="w-100">

    <ul class="row mb-0 mx-0">

      {foreach from=$elements item=element}

        <li class="{if $page.page_name != "checkout"}col-md-4 {/if}col-xs-12">

          <div class="block-reassurance-item{if $page.page_name != "checkout"} text-center {/if}">

            <img src="{$element.image}" alt="{$element.text}">
            <br>
            <span class="">{$element.text|nl2br nofilter}</span>

          </div>

        </li>

      {/foreach}

    </ul>

  </div>

{/if}

