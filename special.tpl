<?php echo $header; ?>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
      <ul class="breadcrumb text-center">
        <?php foreach ($breadcrumbs as $i=> $breadcrumb) { ?>
        <?php if($i+1<count($breadcrumbs)) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li><?php } else { ?><li class="active"><?php echo $breadcrumb['text']; ?></li><?php } ?>
        <?php } ?>
      </ul>
      <?php echo $content_top; ?>
      <h1 class="h2 text-center content-title"><?php echo $heading_title; ?></h1>
      <div class="row catalog-thumb">
        <div class="col-sm-12 text-center">
          <span class="fa-stack fa-2x img-thumbnail">
            <i class="fa fa-circle fa-stack-2x"></i>
            <i class="fa fa-percent fa-stack-1x fa-inverse"></i>
          </span>
        </div>
      </div>
      <hr class="catalog-hr">
      <?php if ($products) { ?>
      <div class="row limits">
        <div class="col-xs-12 text-center">
          <div class="btn-group text-left">
            <div class="btn-group btn-group-sm dropdown">
              <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                <?php echo str_replace(":","",$text_sort); ?><i class="fa fa-fw fa-angle-down"></i>
              </button>
              <ul class="dropdown-menu" id="input-sort">
                <?php foreach ($sorts as $sorts) { ?>
                <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                <li class="active"><a href="<?php echo $sorts['href']; ?>" rel="nofollow"><?php echo $sorts['text']; ?></a></li>
                <?php } else { ?>
                <li><a href="<?php echo $sorts['href']; ?>" rel="nofollow"><?php echo $sorts['text']; ?></a></li>
                <?php } ?>
                <?php } ?>
              </ul>
            </div>
            <?php if (!$moneymaker2_catalog_layout_switcher_hide) { ?>
            <button type="button" id="list-view" class="btn btn-default btn-sm <?php if ($moneymaker2_catalog_default_view) { ?>active<?php } ?> hidden-xxs" data-toggle="tooltip" data-trigger="hover" data-placement="bottom" title="<?php echo $button_list; ?>"><i class="fa fa-list"></i></button>
            <button type="button" id="grid-view" class="btn btn-default btn-sm <?php if (!$moneymaker2_catalog_default_view) { ?>active<?php } ?> hidden-xxs" data-toggle="tooltip" data-trigger="hover" data-placement="bottom" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
            <?php } ?>
            <div class="btn-group btn-group-sm limit-btn-group dropdown">
              <ul class="dropdown-menu" id="input-limit">
                <?php foreach ($limits as $limits) { ?>
                <?php if ($limits['value'] == $limit) { ?>
                <li class="active"><a href="<?php echo $limits['href']; ?>" rel="nofollow"><small><?php echo $limits['text']; ?></small></a></li>
                <?php $mmr_limit_active = $limits['text']; ?>
                <?php } else { ?>
                <li><a href="<?php echo $limits['href']; ?>" rel="nofollow"><small><?php echo $limits['text']; ?></small></a></li>
                <?php } ?>
                <?php } ?>
              </ul>
              <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                <i class="fa fa-arrows-v hidden-md hidden-lg"></i> <span class="hidden-xs hidden-sm"><?php echo $text_limit; ?> </span><?php echo isset($mmr_limit_active) ? $mmr_limit_active : $limits['text']; ?><i class="fa fa-fw fa-angle-down"></i>
              </button>
            </div>
          </div>
        </div>
      </div>
      <div class="row products">
        <?php foreach ($products as $product) { ?>
        <div class="product-layout <?php if ($moneymaker2_catalog_default_view) { ?>product-list<?php } else { ?>product-grid<?php } ?>">
          <div class="product-thumb">
            <div class="image">
              <?php if ($product['stickers']) { ?>
              <div class="stickers">
                <?php foreach ($product['stickers'] as $sticker) { ?>
                <div class="sticker text-left sticker-<?php echo $sticker['type']; ?>">
                  <span class="fa-stack fa-<?php echo $moneymaker2_stickers_size_catalog; ?>" <?php if (!$moneymaker2_stickers_mode) { ?>data-toggle="tooltip" data-placement="right" title="<?php echo strip_tags($sticker['caption']); ?>"<?php } ?>>
                  <i class="fa fa-circle fa-stack-2x"></i>
                  <i class="fa fa-<?php echo $sticker['icon']; ?> fa-stack-1x fa-inverse"></i>
                  </span><?php if ($moneymaker2_stickers_mode) { ?><div><?php echo $sticker['caption']; ?></div><?php } ?>
                </div>
                <?php } ?>
              </div>
              <?php } ?>
              <?php if ($product['rating']) { ?>
              <div class="rating">
                <?php for ($i = 5; $i >= 1; $i--) { ?>
                <?php if ($product['rating'] < $i) { ?>
                <i class="fa fa-star"></i>
                <?php } else { ?>
                <i class="fa fa-star active"></i>
                <?php } ?>
                <?php } ?>
              </div>
              <?php } ?>
              <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
            </div>
            <div>
              <div class="caption">
                <a href="<?php echo $product['href']; ?>"<?php if ($product['special']) { ?> class="text-special"<?php } ?>><?php echo $product['name']; ?></a>
              </div>
              <?php if ($moneymaker2_common_price_detached) { ?>
              <div class="price-detached"><small><?php if ($product['price']) { ?><span class="price text-muted"><?php if (!$product['special']) { ?><?php echo $product['price']; ?><?php } else { ?><span class="price-new"><b><?php echo $product['special']; ?></b></span> <span class="price-old"><?php echo $product['price']; ?></span><?php } ?></span><?php } ?><?php if ($product['tax']) { ?><br /><span class="price-tax text-muted"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span><?php } ?></small></div>
              <?php } ?>
              <div class="btn-group btn-group-sm">
                <?php if (!$moneymaker2_common_buy_hide) { ?>
                <button type="button" <?php if ($moneymaker2_common_cart_outofstock_disabled&&$product['quantity']<=0) { ?>disabled="disabled"<?php } ?> <?php if (!$moneymaker2_common_price_detached) { ?><?php if (($product['price']&&$product['special'])||($product['price']&&$product['tax'])) { ?>data-toggle="tooltip" data-html="true" data-placement="bottom" title="<?php if ($product['special']) { ?><span class='price-old'><?php echo $product['price']; ?></span><br /><?php } ?><?php if ($product['tax']) { ?><span class='price-tax'><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span><?php } ?>"<?php } ?><?php } ?> class="btn <?php if (!$product['special']) { ?>btn-primary<?php } else { ?>btn-danger<?php } ?>" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><i class="fa fa-fw fa-shopping-cart"></i> <?php if (!$moneymaker2_common_price_detached) { ?><?php if ($product['price']) { ?><span class="price"><?php if (!$product['special']) { ?><?php echo $product['price']; ?><?php } else { ?><span class="price-new"><?php echo $product['special']; ?></span><?php } ?></span><?php } ?><?php } else { ?><?php echo $button_cart; ?><?php } ?></button>
                <?php } ?>
                <?php if (!$moneymaker2_common_wishlist_hide) { ?><button type="button" class="btn btn-default" <?php if (!$moneymaker2_common_wishlist_caption) { ?>data-toggle="tooltip" data-placement="bottom" <?php } ?>title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-fw fa-heart"></i><?php if ($moneymaker2_common_wishlist_caption) { ?> <?php echo $button_wishlist; ?><?php } ?></button><?php } ?>
                <?php if (!$moneymaker2_common_compare_hide) { ?><button type="button" class="btn btn-default" <?php if (!$moneymaker2_common_compare_caption) { ?>data-toggle="tooltip" data-placement="bottom" <?php } ?>title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-fw fa-area-chart"></i><?php if ($moneymaker2_common_compare_caption) { ?> <?php echo $button_compare; ?><?php } ?></button><?php } ?>
              </div>
              <div class="additional"><?php echo $product['stock']; ?> <?php echo $product['code']; ?></div>
              <div class="description"><?php echo $product['description']; ?></div>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
      <div class="row">
        <div class="col-sm-12 text-center"><?php echo $pagination; ?><p><small><?php echo $results; ?></small></p></div>
      </div>
      <?php } else { ?>
      <div class="row">
        <div class="col-sm-12 text-center">
          <p class="h4"><?php echo $text_empty; ?></p>
        </div>
      </div>
      <div class="buttons">
        <div class="text-center"><a href="<?php echo $continue; ?>" class="btn btn-default"><i class="fa fa-fw fa-angle-right"></i><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>