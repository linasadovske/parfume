{*
 * This file allows you to customize your new-product page.
 * You can safely remove it if you want it to appear exactly like all other product listing pages
 *}
 

{extends file='catalog/listing/product-list.tpl'}

           <nav aria-label="breadcrumb">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{$urls.base_url} ">{l s='Pradinis'}</a></li>
                <li class="breadcrumb-item active" aria-current="page">{$page.meta.title}</li>
              </ol>
            </nav>
