<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta name="yandex-verification" content="87ec08bab8fcc653" />
<meta name="google-site-verification" content="Yuz25L6vGOGLfRwBTCbU6_xzZF-t_veQge_uf4ktfro" />
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/moneymaker2/stylesheet/fonts.css" rel="stylesheet">
<!-- mmr2 2.0.4 oc -->
<link href="catalog/view/theme/moneymaker2/stylesheet/stylesheet.css?v=7" rel="stylesheet">
<link href="catalog/view/theme/moneymaker2/stylesheet/stylesheet.custom.css?v=1" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/common.moneymaker2.js" type="text/javascript"></script>
<script src="//yandex.st/jquery/cookie/1.0/jquery.cookie.min.js"></script>
<?php if ($moneymaker2_header_search_ajax) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/moneymaker2/livesearch.js"></script>
<?php } ?>
<?php if ($moneymaker2_common_browser_warned) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/moneymaker2/browser.update.js"></script>
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
<script src="catalog/view/javascript/lazy.js?v=1" type="text/javascript"></script>
</head>
<body class="<?php echo $class; ?>">
<header class="headh">
  <nav id="top" class="navbar navbar-default navbar-full" >
    <div class="container">
      <div class="navbar-header">
        <?php if (!$moneymaker2_header_strip_expanded) { ?>
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-top-collapse, .navbar-menu-collapse">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <?php } ?>
        <div id="logo">
          <?php if ($logo) { ?>
            <?php if ($home == $moneymaker2_header_url) { ?>
            <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" />
            <?php } else { ?>
            <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a>
            <?php } ?>
          <?php } else { ?>
          <h2><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h2>
          <?php } ?>
        </div>
      </div>
      <div class="hidden-xs"></div>
      <div class="collapse navbar-collapse navbar-top-collapse hidden-xs">
        <ul class="nav navbar-nav">
 <li >
            <a class="shops" href="/shops"><i class="fa fa-fw fa-th-large"></i> Магазины</a>
            
          </li>
          
          <li class="dropdown" id="contacts">
           <nobr>+38 093 663 32 32 </nobr>
        
           <nobr>+38 096 683 32 32</nobr>
          </li>
       
         
     
          <?php if ($moneymaker2_header_menu_links_top_enabled&&$moneymaker2_header_links) { ?>
          <?php foreach ($moneymaker2_header_links as $value) { ?>
          <li><a href="<?php echo $value['link']; ?>"><i class="fa fa-fw fa-<?php echo $value['icon']; ?>"></i> <?php echo $value['caption']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>

        <ul class="nav navbar width200">
  <li class="schedule-l-i">График работы Call-центра</li>  <li class="schedule-l-i">В будние дни с 9 до 20</li> <li class="schedule-l-i">Суббота с 10 до 17</li> <li class="schedule-l-i">Воскресенье выходной</li>
  </ul>

        <?php echo $search; ?>
        <ul class="nav navbar-nav navbar-right">
       
          

      
<li><a href="/reima-sales-news">Акции | Новости</a></li>
   <li class="dropdown" id="top-links">
            <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-bars"></i> <span class="<?php echo $moneymaker2_menu_class; ?>"><i class="fa fa-angle-down"></i></span></a>
            <ul class="dropdown-menu keep-open">
              <?php if ($moneymaker2_header_menu_links_enabled&&$moneymaker2_header_links) { ?>
              <li class="dropdown-header"><?php echo $moneymaker2_header_menu_links_caption; ?></li>
              <?php foreach ($moneymaker2_header_links as $value) { ?>
              <li><a href="<?php echo $value['link']; ?>"><i class="fa fa-fw fa-<?php echo $value['icon']; ?>"></i> <?php echo $value['caption']; ?></a></li>
              <?php } ?>
              <li class="divider"></li>
              <?php } ?>
            
              <?php if (!$logged) { ?>
              <li class="dropdown-header"><?php echo $text_account; ?></li>
              <li><a href="<?php echo $login; ?>" rel="nofollow"><i class="fa fa-fw fa-sign-in"></i> <?php echo $text_login; ?> / <?php echo $text_register; ?></a></li>
              <?php } else { ?>
              <li class="dropdown-header"><?php echo $moneymaker2_text_customer_name; ?></li>
              <li><a href="<?php echo $account; ?>" rel="nofollow"><i class="fa fa-fw fa-user"></i> <?php echo $text_account; ?></a></li>
              <?php } ?>
              <?php if (!$moneymaker2_common_wishlist_hide) { ?>
              <li><a href="<?php echo $wishlist; ?>" rel="nofollow"><i class="fa fa-fw fa-heart"></i> <span id="wishlist-total"><span><?php echo $text_wishlist; ?></span></span></a></li>
              <?php } ?>
              <?php if (!$moneymaker2_common_compare_hide) { ?>
              <li><a href="<?php echo $compare; ?>" rel="nofollow"><i class="fa fa-fw fa-exchange"></i> <span id="compare-total"><?php echo $text_compare; ?></span></a></li>
              <?php } ?>
              <?php if ($logged) { ?>
              <li class="divider"></li>
              <li><a href="<?php echo $logout; ?>" rel="nofollow"><i class="fa fa-fw fa-sign-out"></i> <?php echo $text_logout; ?></a></li>
              <?php } ?>
            </ul>
          </li>
   <?php if (!$moneymaker2_common_buy_hide) { ?>
          <?php echo $cart; ?>
          <?php } ?>
        </ul>
      </div>
    </div>
  </nav>

<?php if ($categories) { ?>
<div class="container">
  <nav id="menu" class="navbar">
    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
          <div class="dropdown-menu">
            <div class="dropdown-inner">
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              <ul class="list-unstyled">
                <?php foreach ($children as $child) { ?>
                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                <?php } ?>
              </ul>
              <?php } ?>
            </div>
            <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
        </li>
        <?php } else { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
    </div>
  </nav>
</div>
<?php } ?>
</header>
