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
<div id="blockcart-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">        
        <h4 class="modal-title h6 text-uppercase" id="myModalLabel"><i class="material-icons rtl-no-flip">&#xE876;</i>{l s='Product successfully added to your shopping cart' d='Shop.Theme.Checkout'}</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="col-md-7 divide-right">
            <div class="row">
              <div class="col-md-5">
                <img class="product-image" src="{$product.cover.medium.url}" alt="{$product.cover.legend}" title="{$product.cover.legend}" itemprop="image">
              </div>
              <div class="col-md-7">
                <h6 class="h6 product-name">{$product.name}</h6>
                <p class="modal-price mt-4 mb-3">{$product.price}</p>
                {hook h='displayProductPriceBlock' product=$product type="unit_price"}
                {foreach from=$product.attributes item="property_value" key="property"}
                  <span class="text-uppercase">{$property}:</span> <span>{$property_value}</span><br>
                {/foreach}
                <p><span class="text-uppercase">{l s='Quantity:' d='Shop.Theme.Checkout'}</span>&nbsp;<span>{$product.cart_quantity}</span></p>
              </div>
            </div>
          </div>
          <div class="col-md-5">
            <div class="cart-content">
              {if $cart.products_count > 1}
                <p class="cart-products-count">{l s='There are %products_count% items in your cart.' sprintf=['%products_count%' => $cart.products_count] d='Shop.Theme.Checkout'}</p>
              {else}
                <p class="cart-products-count">{l s='There is %product_count% item in your cart.' sprintf=['%product_count%' =>$cart.products_count] d='Shop.Theme.Checkout'}</p>
              {/if}
              <p class="d-flex justify-content-between">
                <span class="text-uppercase">{l s='Total products:' d='Shop.Theme.Checkout'}</span>
                <span>{$cart.subtotals.products.value}</span>
              </p>
              <p class="d-flex justify-content-between">
                <span class="text-uppercase">{l s='Total shipping:' d='Shop.Theme.Checkout'}</span>
                <span>{$cart.subtotals.shipping.value} {hook h='displayCheckoutSubtotalDetails' subtotal=$cart.subtotals.shipping}</span>
              </p>
              {if $cart.subtotals.tax}
              	<p class="d-flex justify-content-between">
                  <span class="text-uppercase">{$cart.subtotals.tax.label}</span>
                  <span>{$cart.subtotals.tax.value}</span>
                </p>
              {/if}
              <p class="d-flex justify-content-between">
                <span class="text-uppercase">{l s='Total:' d='Shop.Theme.Checkout'}</span>
                <span>{$cart.totals.total.value} {$cart.labels.tax_short}</span>
              </p>
              {* <div class="cart-content-btn">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">{l s='Continue shopping' d='Shop.Theme.Actions'}</button>
                <a href="{$cart_url}" class="btn btn-primary">
                  {l s='Proceed to checkout' d='Shop.Theme.Actions'} 
                  <i class="material-icons shopping-cart">shopping_cart</i>
                </a>
              </div> *}
            </div>
          </div>
        </div>
        <div class="row">
            <div class="cart-content-btn col-md-7 mt-4 offset-md-5">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">{l s='Continue shopping' d='Shop.Theme.Actions'}</button>
              <a href="{$cart_url}" class="btn btn-primary btn-block">
                {l s='Proceed to checkout' d='Shop.Theme.Actions'} 
                <i class="material-icons shopping-cart">shopping_cart</i>
              </a>
            </div>
        </div>
      </div>
    </div>
  </div>
</div>
