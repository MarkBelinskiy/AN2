<!DOCTYPE html>
<html lang="en" class="wide wow-animation smoothscroll scrollTo">
  <head>
	 <!-- Site Title-->
	 <meta charset="utf-8">
	 <meta name="format-detection" content="telephone=no">
	 <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	 <meta http-equiv="X-UA-Compatible" content="IE=Edge">
	 {headers}
	 <meta name="date" content="Dec 26">
	 <!-- Stylesheets-->
	 <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Montserrat:400,700%7CLato:400,700'">
	 <link rel="stylesheet" href="{THEME}/css/style.css">
	 <link rel="stylesheet" href="{THEME}/css/jquery.fancybox.css">
	 <link rel="stylesheet" href="{THEME}/css/style1.css">
	 
	 <!--[if lt IE 9]>
	 <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/r29/html5.min.js"></script>
	 <![endif]-->
  </head>
  <body>
	 <!-- Page-->
	 <div class="page text-center">
		<!-- Page Head-->
		<header class="page-head">
		  <!-- RD Navbar Transparent-->
		  <div class="rd-navbar-wrap">
		  	<nav data-lg-stick-up-offset="79px" data-md-device-layout="rd-navbar-fixed" data-lg-device-layout="rd-navbar-static" class="rd-navbar rd-navbar-top-panel rd-navbar-light" data-lg-auto-height="true" data-md-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-static" data-lg-stick-up="true">
		  		<div class="container">
		  			<div class="rd-navbar-inner">
		  				<div class="rd-navbar-top-panel">
		  					<div class="left-side">
		  						<address class="contact-info text-left">
		  						<span class="p"><span class="icon mdi mdi-phone"></span><a href="tel:+380577324954">+38(057) 732 49 54;</a></span>
		  						<span class="p"><a href="tel:+380671073608">+38(067) 107 36 08;</a></span>
		  						<span class="p"><a href="tel:+380665841833">+38(066) 584 18 33;</a></span>
		  						<span class="p"><a href="tel:+380731536282">+38(073) 153 62 82;</a></span>
		  					</address>
		  				</div>
		  				<div class="right-side">
		  					<address class="contact-info text-left"><span class="p"><span class="icon mdi mdi-email-open"></span><a href="mailto:#">antwohotel@gmail.com</a></span><div id="yb"><div id="ytWidget"><a href="ru"><img src="/templates/an2-en/images/russia_flag.gif" width="20"></a><a href="uk"><img src="/templates/an2-en/images/ukraine_flag.gif" width="20"></a><a href="en"><img src="/templates/an2-en/images/eng_flag.jpg" width="20"></a></div></div></address>
		  				</div>
		  			</div>
		  			<!-- RD Navbar Panel-->
		  			<div class="rd-navbar-panel">
		  				<!-- RD Navbar Toggle-->
		  				<button data-rd-navbar-toggle=".rd-navbar, .rd-navbar-nav-wrap" class="rd-navbar-toggle"><span></span></button>
		  				<!-- RD Navbar Top Panel Toggle-->
		  				<div id="yt"></div>
						<button data-rd-navbar-toggle=".rd-navbar, .rd-navbar-top-panel" class="rd-navbar-top-panel-toggle"><span></span></button>
						<!--Navbar Brand-->
						<div class="rd-navbar-brand"><a href="/" class="logo"><img src="{THEME}/img/Logo_AN-2.png" class="log" alt=""></a></div>
					 </div>
					 <div class="rd-navbar-menu-wrap">
						<div class="rd-navbar-nav-wrap">
						  <div class="rd-navbar-mobile-scroll">
							 <!--Navbar Brand Mobile-->
							 <div class="rd-navbar-mobile-brand"><a href="/" class="logo"><img src="{THEME}/img/Logo_AN-2.png" class="log" alt=""></a></div>
							 <!-- RD Navbar Nav-->
							 <ul class="rd-navbar-nav">
								<li class="active"><a href="/"><span>Главная</span></a>
								</li>
								<li><a href="/nomera/"><span>Номера</span></a>
								</li>
								<li><a href="/restoran/"><span>Ресторан</span></a>
								</li>
								<li><a href="/uslugi/"><span>Услуги</span></a>
								</li>
								<li><a href="/akcii/"><span>Акции</span></a>
								</li>
								<li><a href="/contacts.html"><span>Контакты</span></a>
								</li>
								<li><a href="http://antwo-hotel.com.ua/017.swf" target="_blank" class="btn btn-sm btn-3d"><i class="fa fa-refresh" aria-hidden="true"></i> 3D тур</a>
								</li>
							 </ul>
						  </div>
						</div>
					 </div>
				  </div>
				</div>
			 </nav>
		  </div>
		</header>
		<!-- Page Contents-->
		 [available=main]
		 <main class="page-content">
		 	<!--Section Search form-->
		 	<section class="context-dark">
		 		<!-- Swiper-->
		 		<div data-height="33%" data-min-height="600px" data-dots="true" class="swiper-container swiper-slider">
		 			<div class="swiper-wrapper">
		 				{custom category="43" template="custom/main-slider" available="main" navigation="no" order="date" sort="desc" cache="no"}
		 			</div>
		 			<div class="swiper-caption-wraper">
		 				<div class="shell section-66">
		 					<h2 class="text-bold">Забронировать номер</h2>
		 					<hr class="divider bg-saffron">
		 					<div class="range range-xs-center ">
			 				<div class="col-sm-8 pl5">
			 					<!-- RD Mailform-->
			 					<form  data-form-output="form-output-global" data-form-type="contact" method="post" action="http://order.antwo-hotel.com.ua/booking-search.php" class="rd-mailform text-left">
			 						<div class="range">
			 							<div class="col-lg-6 col-sm-6">
			 								<div class="form-group">
												<label for="from" class="form-label-size-lg form-label-outside rd-input-label focus not-empty">Дата заезда:</label>
												<div class="date-picker">
													<div class="input">
														<div class="result">От: <input type="text" id="from" name="check_in" readonly></div>
														<button><i class="fa fa-calendar"></i></button>
													</div>
													<div class="calendar from"></div>
												</div> 
			 								</div>
			 							</div>
			 							<div class="col-lg-6 col-sm-6 offset-lg-top-0">
			 								<div class="form-group">
			 									<label for="to" class="form-label-size-lg form-label-outside rd-input-label focus not-empty">Дата выезда:</label>
			 									<div class="date-picker">
													<div class="input">
														<div class="result">До: <input type="text" id="to" name="check_out" readonly></div>
														<button><i class="fa fa-calendar"></i></button>
													</div>
													<div class="calendar to"></div>
												</div>
			 								</div>
			 							</div>
			 							<div class="col-lg-6 col-sm-6 offset-top-24">
			 								<div class="form-group">
			 									<label for="select1" class="form-label-size-lg form-label-outside rd-input-label focus not-empty"> Количество взрослых:</label>
			 									<select id="select1" name="capacity" class="form-control select2-hidden-accessible" tabindex="-1" aria-hidden="false">
			 										<option value="1">1</option>
			 										<option value="2">2</option>
			 										<option value="3">3</option>
			 										<option value="4">4</option>
			 										<option value="5">5</option>
			 									</select>
			 								</div>
			 							</div>
			 							<div class="col-lg-6 col-sm-6 offset-top-24">
			 								<div class="form-group">
			 								<label for="select1" class="form-label-size-lg form-label-outside rd-input-label focus not-empty"> Количество детей:</label>
			 									<select id="select1" name="child_per_room" class="form-control select2-hidden-accessible" tabindex="-1" aria-hidden="false">
			 										<option value="1">1</option>
			 										<option value="2">2</option>
			 										<option value="3">3</option>
			 										<option value="4">4</option>
			 										<option value="5">5</option>
			 									</select>
			 								</div>
			 							</div>
			 							<input type="hidden" name="currency" value="UAH">
			 						</div>
			 						<div class="offset-top-30 text-center">
			 							<button type="submit" class="btn btn-primary">Забронировать</button>
			 						</div>
			 					</form>
			 				</div>
			 			</div>
			 		</div>
			 	</div>
			 	<!-- Swiper Pagination-->
			 	<div class="swiper-pagination swiper-pagination-type-2"></div>
			 </div>
			</section>
			<!--Section thumbnails terry-->
			<section class="section-34 bg-white">
				<div class="shell-fluid">
					<div class="range range-xs-center">
						{custom category="42" template="custom/main-uslugi" available="main" limit="4" navigation="no" order="date" sort="desc" cache="no"}
					</div>
				</div>
			</section>
			<!--Section Recent Properties-->
			<section class="section-66 bg-white">
				<div class="shell">
					<h2 class="text-bold">Наши номера</h2>
					<hr class="divider bg-saffron">
					<div class="range range-xs-center">
						{custom category="40" template="custom/main-nomera" available="main" navigation="no" order="date" sort="asc" cache="no"}
					</div>
					<div class="offset-top-50"><a href="http://order.antwo-hotel.com.ua" target="blank_" id="ui-to-top-btn" class="btn btn-primary">Забронировать<none> номер</none></a></div>

				</section>
		  <!--Section Real Estate Tools and Resources-->
		  <section class="context-dark">
			 <!-- RD Parallax-->
			 <div class="rd-parallax" data-parallax="scroll" data-image-src="{THEME}/img/bg-01.jpg">
			 	<div class="rd-parallax-layer">
			 		<div class="shell section-66">
			 			<h2 class="text-bold">Наши преимущества</h2>
			 			<hr class="divider bg-saffron">
			 			<div class="range range-xs-center offset-top-66">
			 				{custom category="44" template="custom/main-adv" available="main" navigation="no" order="date" sort="asc" cache="no"}
			 			</div>
			 		</div>
			 	</div>
			 </div>
			</section>
			<section class="section-66 bg-lighter">
				<div class="shell">
					<h2 class="text-bold">Отзывы</h2>
					<hr class="divider bg-saffron">
					<div class="offset-top-66">
						<!-- Testimonials Slider v.4-->
						<div data-items="1" data-sm-items="2" data-lg-items="3" data-nav="false" data-dots="true" data-margin="50px" class="owl-carousel owl-carousel-classic owl-carousel-class-light owl-carousel-testimonials-3">
		 				{custom category="45" template="custom/main-feedback" available="main" navigation="no" order="date" sort="asc" cache="no"}
		 			</div>
		 		</div>
		 	</div>
		 </section>
		 <!--Section Real Estate Tools and Resources-->
		 <section class="context-dark">
		 	<!-- RD Parallax-->
		 	<div class="rd-parallax" data-parallax="scroll" data-image-src="{THEME}/img/bg-02.jpg">
		 		<div class="rd-parallax-layer">
				  <div class="shell section-66">
					 <h2 class="text-bold">Пишите нам</h2>
					 <hr class="divider bg-saffron">
					 <div class="range range-xs-center offset-top-66">
						<div class="cell-sm-8">
						  <!-- RD Mailform-->
						  <form id="contacts" data-form-output="form-output-global" data-form-type="contact" method="post" action="/sendmail.php" class="rd-mailform text-left cma">
							 <div class="range">
								<div class="cell-lg-6">
								  <div class="form-group">
									 <label for="real-estate-first-name" class="form-label">Имя:</label>
									 <input id="real-estate-first-name" type="text" name="name" data-constraints="@Required" class="form-control">
								  </div>
								</div>
								<div class="cell-lg-6 offset-top-24 offset-lg-top-0">
								  <div class="form-group">
								  	<label for="real-estate-last-name" class="form-label">Фамилия:</label>
								  	<input id="real-estate-last-name" type="text" name="last_name" data-constraints="@Required" class="form-control">
								  </div>
								</div>
								<div class="cell-lg-6 offset-top-24">
									<div class="form-group">
										<label for="real-estate-mail" class="form-label">E-mail:</label>
										<input id="real-estate-mail" type="email" name="email" data-constraints="@Required @Email" class="form-control">
									</div>
								</div>
								<div class="cell-lg-6 offset-top-24">
									<div class="form-group">
										<label for="real-estate-phone" class="form-label">Телефон:</label>
										<input id="real-estate-phone" type="text" name="phone" data-constraints="@Required" class="form-control">
									</div>
									
								</div>
								<div class="cell-lg-12 offset-top-24">
									<div class="form-group">
										<label for="contact-me-message" class="form-label">Сообщение:</label>
										<textarea id="contact-me-message" name="message" data-constraints="@Required" style="height: 150px" class="form-control"></textarea>
								  </div>
								</div>
							 </div>
							 <div class="offset-top-30 text-center">
								<button type="submit" class="btn btn-primary">отправить</button>
							 </div>
						  </form>
						</div>
					 </div>
				  </div>
				</div>
			 </div>
		  </section>
		  <section class="section-66 bg-lighter">
				<div class="shell">
					
		 				{custom category="48" template="custom/about" available="main" navigation="no" order="date" sort="asc" cache="no"}
		 			
		 		</div>
		 	</div>
		 </section>
		</main>
		 [/available]

		 [not-available=main|showfull]
		 <section class="rd-parallax context-dark" data-parallax="scroll" data-image-src="{THEME}/img/bg-header-1920x362.jpg">
          <div class="rd-parallax-layer">
            <div class="shell section-top-34 section-sm-top-98 section-bottom-34">
              <div>
                <h1 class="text-bold">[category=40]Номера[/category][category=41]Ресторан[/category][category=42]Услуги[/category][category=47]Акции[/category][static=contacts]Контакты[/static][404]404 ошибка[/404]</h1>
              </div>
              <div class="list-inline list-inline-dashed p text-light breadcrumb-modern offset-top-10 offset-sm-top-66">
              {speedbar}
              </div>
            </div>
          </div>
        </section>
		
		
        
		 [/not-available]
		 
		 [available=cat]
		 [category=40]
		 <section class="section-66 bg-white">
		 	<div class="shell">
		 		<div class="range range-xs-center">
		 			{custom category="40" template="custom/main-nomera" navigation="no" order="date" sort="asc" cache="no"}
		 		</div>
		 		<div class="offset-top-50"><a href="http://order.antwo-hotel.com.ua/" target="blank_" class="btn btn-primary">Забронировать номер</a></div>
		 	</section>
		[/category]

		[category=41]
		<section class="section-34 bg-white">
				<div class="shell-fluid">
				<h2 class="text-bold">Смотрите на сайте ресторана:</h2>
				<hr class="divider bg-saffron ">
					<div class="range range-xs-center">
						{custom category="49" template="custom/main-uslugi" available="cat" navigation="no" order="date" sort="desc" cache="no"}
					</div>
				</div>
			</section>
		<section class="section-66 bg-white">
			<div class="shell">
				<h2 class="text-bold">Добро пожаловать</h2>
				<hr class="divider bg-saffron ">
				<div class="row-fluid">
					{custom category="41" template="custom/restoran" navigation="no" order="date" sort="asc" cache="no"}
				</div>
			</div>
		</section>
		<section class="context-dark">
			<!-- RD Parallax-->
			<div class="rd-parallax" data-parallax="scroll" data-image-src="{THEME}/img/bg-01.jpg">
				<div class="rd-parallax-layer">
					<div class="shell section-66">
						<h2 class="text-bold">Наши преимущества</h2>
						<hr class="divider bg-saffron">
						<div class="range range-xs-center offset-top-66">
							{custom category="46" template="custom/main-adv" available="cat" navigation="no" order="date" sort="asc" cache="no"}
						</div>
					</div>
				</div>
			</div>
		</section>
		[/category]

		[category=42]
		<section class="section-66 bg-white">
			<div class="shell">
				<div class="range range-xs-center">
					{custom category="42" template="custom/main-uslugi" available="cat" navigation="no" order="date" sort="desc" cache="no"}
				</div>
			</div>
		</section>

		<section class="section-66 bg-lighter">
			<div class="shell">
				<div class="row-fluid">
					{custom category="50" template="custom/dop-block" available="cat" navigation="no" order="date" sort="desc" cache="no"}

				</div>
			</div>
		</section>



		[/category]

			[category=47]
			<section class="section-66 bg-white">
				<div class="shell">
					<div class="range range-xs-center">
						{custom category="47" template="custom/akcii" available="cat" navigation="no" order="date" sort="desc" cache="no"}
					</div>
				</div>
			</section>
			[/category]

			[/available]
			
			[available=showfull]
			{content}
        [/available]
		{info}
		[category=51,52]
		<section class="section-66 bg-white">
			<div class="shell">
				<div class="range range-xs-center">
					{content}
				</div>
			</div>
		</section>
		[/category]
        [available=static]
        {content}
        [/available]
		<!-- Page Footers-->
		<!-- Default footer-->
		<footer class="section-relative section-top-66 section-bottom-34 page-footer bg-gray-base context-dark">
			<div class="shell">
				<div class="range range-sm-center text-lg-left">
					<div class="cell-sm-8 cell-md-12">
						<div class="range range-xs-center">
						 <div class="cell-xs-7 text-xs-left cell-md-6 cell-lg-3 cell-lg-push-4">
							<h6 class="text-uppercase text-spacing-60">Последние новости</h6>
							{custom category="52" template="custom/news" available="global" navigation="no" order="date" limit="3" sort="desc" cache="no"}
							</div>
							<div class="cell-xs-5 offset-top-41 offset-xs-top-0 text-xs-left cell-md-6 cell-lg-4 cell-lg-push-3">
								<h6 class="text-uppercase text-spacing-60">Полезные ссылки</h6>
								<div class="reveal-block">
									<div class="reveal-inline-block">
										<ul class="list list-marked">
											{custom category="51" template="custom/links" available="global" navigation="no" limit="3" order="date" sort="desc" cache="no"}
										</ul>
										<a class="btn btn-primary btn-sm" href="/stati/">Все статьи</a>
									</div>
								</div>
							</div>
							<div class="cell-xs-12 offset-top-66 cell-lg-3 cell-lg-push-1 offset-lg-top-0">
								<!-- Footer brand-->
								<a href="/" ><img src="{THEME}/img/Logo_AN-2_w_chetko.png" class="log" alt=""></a>
								<ul class="list-inline">
									<li><a href="https://www.facebook.com/Hotel-AN-2-397991760260147/" target="blank_" class="icon fa fa-facebook icon-xxs icon-circle icon-darkest-filled"></a></li>
									<li><a href="https://twitter.com/an2hotel" target="blank_" class="icon fa fa-twitter icon-xxs icon-circle icon-darkest-filled"></a></li>
									<li><a href="https://plus.google.com/+AntwohotelUakharkiv" target="blank_" class="icon fa fa-google-plus icon-xxs icon-circle icon-darkest-filled"></a></li>
									<li><a href="https://www.instagram.com/an2hotel/" target="blank_" class="icon fa fa-instagram icon-xxs icon-circle icon-darkest-filled"></a></li>
                                    <li><a href="https://vk.com/an2hotel" target="blank_" class="icon fa fa-vk icon-xxs icon-circle icon-darkest-filled"></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="shell offset-top-50">
				<p class="small text-darker">Все права защищены <span id="copyright-year"></span> . 
					<!-- {%FOOTER_LINK}-->
				</p>
			</div>
		</footer>
			</div>
			<!-- Global Mailform Output-->
			<div id="form-output-global" class="snackbars"></div>
			<!-- PhotoSwipe Gallery-->
			<div tabindex="-1" role="dialog" aria-hidden="true" class="pswp">
				<div class="pswp__bg"></div>
		<div class="pswp__scroll-wrap">
		  <div class="pswp__container">
			 <div class="pswp__item"></div>
			 <div class="pswp__item"></div>
			 <div class="pswp__item"></div>
		  </div>
		  <div class="pswp__ui pswp__ui--hidden">
			 <div class="pswp__top-bar">
				<div class="pswp__counter"></div>
				<button title="Close (Esc)" class="pswp__button pswp__button--close"></button>
				<button title="Share" class="pswp__button pswp__button--share"></button>
				<button title="Toggle fullscreen" class="pswp__button pswp__button--fs"></button>
				<button title="Zoom in/out" class="pswp__button pswp__button--zoom"></button>
				<div class="pswp__preloader">
				  <div class="pswp__preloader__icn">
					 <div class="pswp__preloader__cut">
						<div class="pswp__preloader__donut"></div>
					 </div>
				  </div>
				</div>
			 </div>
			 <div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
				<div class="pswp__share-tooltip"></div>
			 </div>
			 <button title="Previous (arrow left)" class="pswp__button pswp__button--arrow--left"></button>
			 <button title="Next (arrow right)" class="pswp__button pswp__button--arrow--right"></button>
			 <div class="pswp__caption">
				<div class="pswp__caption__center"></div>
			 </div>
		  </div>
		</div>
	 </div>
	 
	 <div class="for-calendar from"></div>
	 <div class="for-calendar to"></div>
	 <div class="black-zhizha"></div>
	 
	 <!-- Java script-->
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	 <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
	 <script src="{THEME}/js/slick.min.js"></script>
	 <script src="{THEME}/js/parallax.min.js"></script>
	 <script src="{THEME}/js/jquery.fancybox.pack.js"></script>
	 <script src="{THEME}/js/core.min.js"></script>
	 <script src="{THEME}/js/script.js"></script>

	[static=contacts] 
	 <script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
	 <script type="text/javascript">
        ymaps.ready(init);
		var where = 'Харьков';
		/*
		"auto" - автомобильная маршрутизация;
		"masstransit" - маршрутизация с использованием общественного транспорта. Доступна только для мультимаршрутов (опция multiRoute должна быть выставлена в true);
		"pedestrian" - пешеходная маршрутизация.
		*/
		var mode = "pedestrian";
		var def = [49.98228057327127,36.2484859999999];
		var hint = true;
        var map, find, start, finish, myRoute;
		
        function init(){ 
            map = new ymaps.Map("map", {
                center: def,
                zoom: 17,
				controls: []
            });
            
            finish = new ymaps.Placemark(def, {
                balloonContent: 'Гостиница AN-2'
            });

            map.geoObjects.add(finish);
        }
		
		$(".new-adress").on("click", function(e){
			e.preventDefault();
			find = $(this).attr("href");
			if($(this).data("hint")) {
				hint = ymaps.templateLayoutFactory.createClass(
					"<div class='balloon'>" +
					"<h6>Маршрут {% if properties.type == 'driving' %}" +
					"на авто" +
					"{% elseif properties.type == 'pedestrian' %}" +
					"пешком" +
					"{% else %}" +
					"транспортом" +
					"{% endif %}</h6>" +
					"Расстояние: " +
					"<b>{{ properties.distance.text }}</b>,<br />" +
					"Время: " +
					"<b>{{ properties.duration.text }}</b>." +
					"</div>"
				);
			} else {
				hint = ymaps.templateLayoutFactory.createClass("");
			}
			if($(this).data("mode")) {
				mode = $(this).data("mode");
			}
			
			ymaps.route([
			{
				type: 'wayPoint',
				point: find+" "+where
			},
			{
				type: 'wayPoint',
				point: def
			}
			], {
				multiRoute: true,
				routingMode: mode
			})
			.then(
				function (mroute) {
					if(myRoute) {
						map.geoObjects.remove(myRoute).remove(start);
					}
					mroute.options.set("boundsAutoApply", true);
					mroute.options.set("balloonLayout", hint);
					mroute.options.set("pinLayout", false);
					mroute.options.set("wayPointVisible", false);
					mroute.options.set("viaPointVisible", false);
					
					var geocoder = new ymaps.geocode(find+" "+where, { results: 1 } );
					geocoder.then(function (res) {
						var point = res.geoObjects.properties._data.metaDataProperty.GeocoderResponseMetaData.Point.coordinates.reverse();
						start = new ymaps.Placemark(point, {
							balloonContent: find
						}); 
						map.geoObjects.add(start);
					});
					
					map.geoObjects.add(myRoute = mroute);
				}
			);
		});
    </script>
	 [/static]
	 {jsfiles}
	 {AJAX}
</html>