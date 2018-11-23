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

<div class="contact-rich px-3 px-md-0">
  <h4>{l s='Store information' d='Shop.Theme.Global'}</h4>
  
    <p class="store-info">{l s='Visi FUMparFUM aromatai yra itin riboto tiražo, pagaminti rankomis iš aukščiausios kokybės natūralių ir sintetinių esencijų, laikantis tarptautinių IFRA rekomendacijų ir Geros Gamybos Praktikos reikalavimų, pagal ES standartus, FUMparFUM laboratorijoje Vilniuje.' d='Shop.Theme.Global'}</p>
    <p class="store-info">{l s='Pardavėjas: Aistis Mickevičius, individualios veiklos pažymos nr. 311514.' d='Shop.Theme.Global'}</p>
  <div class="block d-flex align-items-center">
    {* <div class="icon"><i class="material-icons">&#xE55F;</i></div>*}
    <div class="fum-nav"></div>
    <div class="data">
    {* {$contact_infos.address.formatted nofilter}*}
        {if $shop.address.address1}
          {$shop.address.address1} {$shop.address.city}
        {else}
          {l s='Subačiaus g. 19, Vilnius' d='Shop.Theme.Global'}
        {/if}
    </div>
  </div>
  {if $contact_infos.phone}
    <hr/>
    <div class="block d-flex align-items-center">
      {* <div class="icon"><i class="material-icons">&#xE0CD;</i></div>*}
      <div class="fum-phone"></div>
      <div class="data">
        {*{l s='Call us:' d='Shop.Theme.Global'}<br/>*}
        <a href="tel:{$contact_infos.phone}">{$contact_infos.phone}</a>
       </div>
    </div>
  {/if}
  {if $contact_infos.fax}
    <hr/>
    <div class="block d-flex align-items-center">
      <div class="icon"><i class="material-icons">&#xE0DF;</i></div>
      <div class="data">
        {*{l s='Fax:' d='Shop.Theme.Global'}<br/>*}
        {$contact_infos.fax}
      </div>
    </div>
  {/if}
  {if $contact_infos.email}
    <hr/>
    <div class="block d-flex align-items-center">
      {* <div class="icon"><i class="material-icons">&#xE158;</i></div>*}
        <div class="mail"></div>
        <div class="data email">
        {*{l s='Email us:' d='Shop.Theme.Global'}<br/>*}
            <a href="mailto:{$contact_infos.email}">{$contact_infos.email}</a>
        </div>
    </div>
  {/if}
</div>
