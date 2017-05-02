/**
 * Global variables
 */
 "use strict";
 var form = $('#contacts');
 form.ajaxForm({
 	beforeSubmit : function () {
 		form.addClass("sendloading");
 	},
 	success : function (data) {
 		form.delay(1000).queue(function () {
 			$(this).removeClass("sendloading");
 			$.each(data, function (i, e) {
 				if (e == "error") {
 					form.addClass("senderror").delay(2000).queue(function () {
 						$(this).removeClass("senderror").dequeue()
 					});
 					return false;
 				}
 				if (e == "good") {
 					form[0].reset();
 					form.addClass("sendgood").delay(2000).queue(function () {
 						$(this).removeClass("sendgood").dequeue()
 					});
 					return false;
 				}
 				form.find('input[name="' + e + '"], textarea[name="' + e + '"]').addClass("error").delay(2000).queue(function () {
 					$(this).removeClass("error").dequeue()
 				});
 			});
 			$(this).dequeue();
 		});
 	}
 });
 var userAgent = navigator.userAgent.toLowerCase(),
 initialDate = new Date(),

 $document = $(document),
 $window = $(window),
 $html = $("html"),

 isDesktop = $html.hasClass("desktop"),
 isIE = userAgent.indexOf("msie") != -1 ? parseInt(userAgent.split("msie")[1]) : userAgent.indexOf("trident") != -1 ? 11 : userAgent.indexOf("edge") != -1 ? 12 : false,
 isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent),
 isTouch = "ontouchstart" in window,

 plugins = {
 	pointerEvents : isIE < 11 ? "js/pointer-events.min.js" : false,
 	smoothScroll : $html.hasClass("use--smoothscroll") ? "js/smoothscroll.min.js" : false,
 	bootstrapTabs : $(".tabs"),
 	rdInputLabel : !isIE ? $(".form-label") : false,
 	rdNavbar : $(".rd-navbar"),
 	regula : $("[data-constraints]"),
 	radio : $("input[type='radio']"),
 	checkbox : $("input[type='checkbox']"),
 	owl : $(".owl-carousel"),
 	swiper : $(".swiper-slider"),
 	selectFilter : $("select"),
 	pageLoader : $(".page-loader"),
 	additionalFields : $(".additional-fields")
 };

/**
 * Initialize All Scripts
 */
 $document.ready(function () {
	$("#ytWidget>a").on("click", function(e){
		e.preventDefault();
		var newlng = $(this).attr("href");
		var lng = location.pathname.replace(/\/(en|uk)\//ig, "");
		if(newlng != "ru") {
			var lnk = "/"+newlng+"/"+lng;
		} else {
			var lnk = "/"+lng;
		}
		location.href = lnk.replace(/\/\//ig, "/");
	});
	
	$(document).on("click", '.yt-listbox__text', function(e){
		$(".yt-button__icon_type_right").click();
	});
	/**
	 * isScrolledIntoView
	 * @description  check the element whas been scrolled into the view
	 */
	 function isScrolledIntoView(elem) {
	 	var $window = $(window);
	 	return elem.offset().top + elem.outerHeight() >= $window.scrollTop() && elem.offset().top <= $window.scrollTop() + $window.height();
	 }

	/**
	 * initOnView
	 * @description  calls a function when element has been scrolled into the view
	 */
	 function lazyInit(element, func) {
	 	var $win = jQuery(window);
	 	$win.on('load scroll', function () {
	 		if ((!element.hasClass('lazy-loaded') && (isScrolledIntoView(element)))) {
	 			func.call(element);
	 			element.addClass('lazy-loaded');
	 		}
	 	});
	 }

	/**
	 * resizeOnImageLoad
	 * @description  calls a resize event when imageloaded
	 */
	 function resizeOnImageLoad(image) {
	 	image.onload = function () {
	 		$window.trigger("resize");
	 	}
	 }

	/**
	 * getSwiperHeight
	 * @description  calculate the height of swiper slider basing on data attr
	 */
	 function getSwiperHeight(object, attr) {
	 	var val = object.attr("data-" + attr),
	 	dim;

	 	if (!val) {
	 		return undefined;
	 	}

	 	dim = val.match(/(px)|(%)|(vh)$/i);

	 	if (dim.length) {
	 		switch (dim[0]) {
	 			case "px":
	 			return parseFloat(val);
	 			case "vh":
	 			return $(window).height() * (parseFloat(val) / 100);
	 			case "%":
	 			return object.width() * (parseFloat(val) / 100);
	 		}
	 	} else {
	 		return undefined;
	 	}
	 }

	/**
	 * toggleSwiperInnerVideos
	 * @description  toggle swiper videos on active slides
	 // */
	 function toggleSwiperInnerVideos(swiper) {
	 	var videos;

	 	$.grep(swiper.slides, function (element, index) {
	 		var $slide = $(element),
	 		video;

	 		if (index === swiper.activeIndex) {
	 			videos = $slide.find("video");
	 			if (videos.length) {
	 				videos.get(0).play();
	 			}
	 		} else {
	 			$slide.find("video").each(function () {
	 				this.pause();
	 			});
	 		}
	 	});
	 }

	/**
	 * toggleSwiperCaptionAnimation
	 * @description  toggle swiper animations on active slides
	 */
	 function toggleSwiperCaptionAnimation(swiper) {
	 	if (isIE && isIE < 10) {
	 		return;
	 	}

	 	var prevSlide = $(swiper.container),
	 	nextSlide = $(swiper.slides[swiper.activeIndex]);

	 	prevSlide
	 	.find("[data-caption-animate]")
	 	.each(function () {
	 		var $this = $(this);
	 		$this
	 		.removeClass("animated")
	 		.removeClass($this.attr("data-caption-animate"))
	 		.addClass("not-animated");
	 	});

	 	nextSlide
	 	.find("[data-caption-animate]")
	 	.each(function () {
	 		var $this = $(this),
	 		delay = $this.attr("data-caption-delay");

	 		setTimeout(function () {
	 			$this
	 			.removeClass("not-animated")
	 			.addClass($this.attr("data-caption-animate"))
	 			.addClass("animated");
	 		}, delay ? parseInt(delay) : 0);
	 	});
	 }

	/**
	 * attachFormValidator
	 * @description  attach form validation to elements
	 */
	 function attachFormValidator(elements) {
	 	for (var i = 0; i < elements.length; i++) {
	 		var o = $(elements[i]),
	 		v;
	 		o.addClass("form-control-has-validation").after("<span class='form-validation'></span>");
	 		v = o.parent().find(".form-validation");
	 		if (v.is(":last-child")) {
	 			o.addClass("form-control-last-child");
	 		}
	 	}

	 	elements
	 	.on('input change propertychange blur', function (e) {
	 		var $this = $(this),
	 		results;

	 		if (e.type != "blur") {
	 			if (!$this.parent().hasClass("has-error")) {
	 				return;
	 			}
	 		}

	 		if ($this.parents('.rd-mailform').hasClass('success')) {
	 			return;
	 		}

	 		if ((results = $this.regula('validate')).length) {
	 			for (i = 0; i < results.length; i++) {
	 				$this.siblings(".form-validation").text(results[i].message).parent().addClass("has-error")
	 			}
	 		} else {
	 			$this.siblings(".form-validation").text("").parent().removeClass("has-error")
	 		}
	 	})
	 	.regula('bind');
	 }

	/**
	 * isValidated
	 * @description  check if all elemnts pass validation
	 */
	 function isValidated(elements) {
	 	var results,
	 	errors = 0;
	 	if (elements.length) {
	 		for (j = 0; j < elements.length; j++) {

	 			var $input = $(elements[j]);

	 			if ((results = $input.regula('validate')).length) {
	 				for (k = 0; k < results.length; k++) {
	 					errors++;
	 					$input.siblings(".form-validation").text(results[k].message).parent().addClass("has-error");
	 				}
	 			} else {
	 				$input.siblings(".form-validation").text("").parent().removeClass("has-error")
	 			}
	 		}

	 		return errors == 0;
	 	}
	 	return true;
	 }

	/**
	 * IE Polyfills
	 * @description  Adds some loosing functionality to IE browsers
	 */
	 if (isIE) {
	 	if (isIE < 10) {
	 		$html.addClass("lt-ie-10");
	 	}

	 	if (isIE < 11) {
	 		if (plugins.pointerEvents) {
	 			$.getScript(plugins.pointerEvents)
	 			.done(function () {
	 				$html.addClass("ie-10");
	 				PointerEventsPolyfill.initialize({});
	 			});
	 		}
	 	}

	 	if (isIE === 11) {
	 		$("html").addClass("ie-11");
	 	}

	 	if (isIE === 12) {
	 		$("html").addClass("ie-edge");
	 	}
	 }

	/**
	 * Swiper 3.1.7
	 * @description  Enable Swiper Slider
	 */
	 if (plugins.swiper.length) {
	 	plugins.swiper.each(function () {
	 		var s = $(this);

	 		var pag = s.find(".swiper-pagination"),
	 		next = s.find(".swiper-button-next"),
	 		prev = s.find(".swiper-button-prev"),
	 		bar = s.find(".swiper-scrollbar"),
	 		h = getSwiperHeight(plugins.swiper, "height"),
	 		mh = getSwiperHeight(plugins.swiper, "min-height"),
	 		parallax = s.parents('.rd-parallax').length;

	 		s.find(".swiper-slide")
	 		.each(function () {
	 			var $this = $(this),
	 			url;

	 			if (url = $this.attr("data-slide-bg")) {
	 				$this.css({
	 					"background-image" : "url(" + url + ")",
	 					"background-size" : "cover"
	 				})
	 			}

	 		})
	 		.end()
	 		.find("[data-caption-animate]")
	 		.addClass("not-animated")
	 		.end()
	 		.swiper({
	 			autoplay : s.attr('data-autoplay') === "true" ? 5000 : false,
	 			direction : s.attr('data-direction') ? s.attr('data-direction') : "horizontal",
	 			effect : s.attr('data-slide-effect') ? s.attr('data-slide-effect') : "slide",
	 			speed : s.attr('data-slide-speed') ? s.attr('data-slide-speed') : 600,
	 			keyboardControl : s.attr('data-keyboard') === "true",
	 			mousewheelControl : s.attr('data-mousewheel') === "true",
	 			mousewheelReleaseOnEdges : s.attr('data-mousewheel-release') === "true",
	 			nextButton : next.length ? next.get(0) : null,
	 			prevButton : prev.length ? prev.get(0) : null,
	 			pagination : pag.length ? pag.get(0) : null,
	 			simulateTouch : false,
	 			paginationClickable : pag.length ? pag.attr("data-clickable") !== "false" : false,
	 			paginationBulletRender : pag.length ? pag.attr("data-index-bullet") === "true" ? function (index, className) {
	 				return '<span class="' + className + '">' + (index + 1) + '</span>';
	 			}
	 			: null : null,
	 			scrollbar : bar.length ? bar.get(0) : null,
	 			scrollbarDraggable : bar.length ? bar.attr("data-draggable") !== "false" : true,
	 			scrollbarHide : bar.length ? bar.attr("data-draggable") === "false" : false,
	 			loop : s.attr('data-loop') !== "false",
	 			loopAdditionalSlides : 0,
	 			loopedSlides : 0,
	 			onTransitionStart : function (swiper) {
	 				toggleSwiperInnerVideos(swiper);
	 			},
	 			onTransitionEnd : function (swiper) {
	 				toggleSwiperCaptionAnimation(swiper);
	 				$(window).trigger("resize");
	 			},

	 			onInit : function (swiper) {
	 				if (plugins.pageLoader.length) {
	 					var srcFirst = $("#page-loader").attr("data-slide-bg"),
	 					image = document.createElement('img');

	 					image.src = srcFirst;
	 					image.onload = function () {
	 						plugins.pageLoader.addClass("loaded");
	 					};
	 				}
	 				toggleSwiperInnerVideos(swiper);
	 				toggleSwiperCaptionAnimation(swiper);

					// Create parallax effect on swiper caption
					s.find(".swiper-parallax")
					.each(function () {
						var $this = $(this),
						speed;

						if (parallax && !isIE && !isMobile) {
							if (speed = $this.attr("data-speed")) {
								makeParallax($this, speed, s, false);
							}
						}
					});
					$(window).on('resize', function () {
						swiper.update(true);
					})
				},
				onSlideChangeStart : function (swiper) {
					var activeSlideIndex,
					slidesCount,
					thumbsToShow = 3;

					activeSlideIndex = swiper.activeIndex;
					slidesCount = swiper.slides.not(".swiper-slide-duplicate").length;

					//If there is not enough slides
					if (slidesCount < thumbsToShow)
						return false;

					//Fix index count
					if (activeSlideIndex === slidesCount + 1) {
						activeSlideIndex = 1;
					} else if (activeSlideIndex === 0) {
						activeSlideIndex = slidesCount;
					}

					//Lopp that adds background to thumbs
					for (var i = -thumbsToShow; i < thumbsToShow + 1; i++) {
						if (i === 0)
							continue;

						//Previous btn thumbs
						if (i < 0) {
							//If there is no slides before current
							if ((activeSlideIndex + i - 1) < 0) {
								$(swiper.container).find('.swiper-button-prev .preview__img-' + Math.abs(i))
								.css("background-image", "url(" + swiper.slides[slidesCount + i + 1].getAttribute("data-preview-bg") + ")");
							} else {
								$(swiper.container).find('.swiper-button-prev .preview__img-' + Math.abs(i))
								.css("background-image", "url(" + swiper.slides[activeSlideIndex + i].getAttribute("data-preview-bg") + ")");
							}

							//Next btn thumbs
						} else {
							//If there is no slides after current
							if (activeSlideIndex + i - 1 > slidesCount) {
								$(swiper.container).find('.swiper-button-next .preview__img-' + i)
								.css("background-image", "url(" + swiper.slides[i].getAttribute("data-preview-bg") + ")");
							} else {
								$(swiper.container).find('.swiper-button-next .preview__img-' + i)
								.css("background-image", "url(" + swiper.slides[activeSlideIndex + i].getAttribute("data-preview-bg") + ")");
							}
						}
					}
				},
			});

$(window)
.on("resize", function () {
	var mh = getSwiperHeight(s, "min-height"),
	h = getSwiperHeight(s, "height");
	if (h) {
		s.css("height", mh ? mh > h ? mh : h : h);
	}
})
.load(function () {
	s.find("video").each(function () {
		if (!$(this).parents(".swiper-slide-active").length) {
			this.pause();
		}
	});
})
.trigger("resize");
});
}

	/**
	 * Copyright Year
	 * @description  Evaluates correct copyright year
	 */
	 var o = $("#copyright-year");
	 if (o.length) {
	 	o.text(initialDate.getFullYear());
	 }

	/**
	 * Smooth scrolling
	 * @description  Enables a smooth scrolling for Google Chrome (Windows)
	 */
	 if (plugins.smoothScroll) {
	 	$.getScript(plugins.smoothScroll);
	 }

	/**
	 * Bootstrap tabs
	 * @description Activate Bootstrap Tabs
	 */
	 if (plugins.bootstrapTabs.length) {
	 	var i;
	 	for (i = 0; i < plugins.bootstrapTabs.length; i++) {
	 		var bootstrapTab = $(plugins.bootstrapTabs[i]);

	 		bootstrapTab.on("click", "a", function (event) {
	 			event.preventDefault();
	 			$(this).tab('show');
	 		});
	 	}
	 }

	/**
	 * RD Input Label
	 * @description Enables RD Input Label Plugin
	 */
	 if (plugins.rdInputLabel.length) {
	 	plugins.rdInputLabel.RDInputLabel();
	 } else {
	 	$(".form-label").each(function(){
	 		$(this).hide();
	 		var thetext = $(this).text();
	 		var thefor = $(this).attr("for");
	 		$("#"+thefor).attr("placeholder", thetext);
	 	});
	 }

	/**
	 * Radio
	 * @description Add custom styling options for input[type="radio"]
	 */
	 if (plugins.radio.length) {
	 	var i;
	 	for (i = 0; i < plugins.radio.length; i++) {
	 		var $this = $(plugins.radio[i]);
	 		$this.addClass("radio-custom").after("<span class='radio-custom-dummy'></span>")
	 	}
	 }

	/**
	 * Checkbox
	 * @description Add custom styling options for input[type="checkbox"]
	 */
	 if (plugins.checkbox.length) {
	 	var i;
	 	for (i = 0; i < plugins.checkbox.length; i++) {
	 		var $this = $(plugins.checkbox[i]);
	 		$this.addClass("checkbox-custom").after("<span class='checkbox-custom-dummy'></span>")
	 	}
	 }

	/**
	 * Regula
	 * @description Enables Regula plugin
	 */
	 if (plugins.regula.length) {
	 	attachFormValidator(plugins.regula);

	 }

	/**
	 * WOW
	 * @description Enables Wow animation plugin
	 */
	 if ($html.hasClass('desktop') && $html.hasClass("wow-animation") && $(".wow").length) {
	 	new WOW().init();
	 }

	/**
	 * Owl carousel
	 * @description Enables Owl carousel plugin
	 */
	 if (plugins.owl.length) {
	 	var k;
	 	for (k = 0; k < plugins.owl.length; k++) {
	 		var c = $(plugins.owl[k]),
	 		responsive = {};

	 		var aliaces = ["-", "-xs-", "-sm-", "-md-", "-lg-"],
	 		values = [0, 480, 768, 992, 1200],
	 		i,
	 		j;

	 		for (i = 0; i < values.length; i++) {
	 			responsive[values[i]] = {};
	 			for (j = i; j >= -1; j--) {
	 				if (!responsive[values[i]]["items"] && c.attr("data" + aliaces[j] + "items")) {
	 					responsive[values[i]]["items"] = j < 0 ? 1 : parseInt(c.attr("data" + aliaces[j] + "items"));
	 				}
	 				if (!responsive[values[i]]["stagePadding"] && responsive[values[i]]["stagePadding"] !== 0 && c.attr("data" + aliaces[j] + "stage-padding")) {
	 					responsive[values[i]]["stagePadding"] = j < 0 ? 0 : parseInt(c.attr("data" + aliaces[j] + "stage-padding"));
	 				}
	 				if (!responsive[values[i]]["margin"] && responsive[values[i]]["margin"] !== 0 && c.attr("data" + aliaces[j] + "margin")) {
	 					responsive[values[i]]["margin"] = j < 0 ? 30 : parseInt(c.attr("data" + aliaces[j] + "margin"));
	 				}
	 				if (!responsive[values[i]]["dotsEach"] && responsive[values[i]]["dotsEach"] !== 0 && c.attr("data" + aliaces[j] + "dots-each")) {
	 					responsive[values[i]]["dotsEach"] = j < 0 ? false : parseInt(c.attr("data" + aliaces[j] + "dots-each"));
	 				}
	 			}
	 		}

			// Create custom Pagination
			if (c.attr('data-dots-custom')) {
				c.on("initialized.owl.carousel", function (event) {
					var carousel = $(event.currentTarget),
					customPag = $(carousel.attr("data-dots-custom")),
					active = 0;

					if (carousel.attr('data-active')) {
						active = parseInt(carousel.attr('data-active'));
					}

					carousel.trigger('to.owl.carousel', [active, 300, true]);
					customPag.find("[data-owl-item='" + active + "']").addClass("active");

					customPag.find("[data-owl-item]").on('click', function (e) {
						e.preventDefault();
						carousel.trigger('to.owl.carousel', [parseInt(this.getAttribute("data-owl-item")), 300, true]);
					});

					carousel.on("translate.owl.carousel", function (event) {
						customPag.find(".active").removeClass("active");
						customPag.find("[data-owl-item='" + event.item.index + "']").addClass("active")
					});
				});
			}

			// Create custom Navigation
			if (c.attr('data-nav-custom')) {
				c.on("initialized.owl.carousel", function (event) {
					var carousel = $(event.currentTarget),
					customNav = $(carousel.attr("data-nav-custom"));

					customNav.find("[data-owl-prev]").on('click', function (e) {
						e.preventDefault();
						carousel.trigger('prev.owl.carousel', [300]);
					});

					customNav.find("[data-owl-next]").on('click', function (e) {
						e.preventDefault();
						carousel.trigger('next.owl.carousel', [300]);
					});
				});
			}

			c.owlCarousel({
				autoplay : c.attr("data-autoplay") === "true",
				loop : c.attr("data-loop") === "true",
				items : 1,
				autoplaySpeed : 600,
				autoplayTimeout : 3000,
				dotsContainer : c.attr("data-pagination-class") || false,
				navContainer : c.attr("data-navigation-class") || false,
				mouseDrag : c.attr("data-mouse-drag") === "true",
				nav : c.attr("data-nav") === "true",
				dots : c.attr("data-dots") === "true",
				dotsEach : c.attr("data-dots-each") ? parseInt(c.attr("data-dots-each")) : false,
				responsive : responsive,
				animateOut : c.attr("data-animation-out") || false,
				navText : $.parseJSON(c.attr("data-nav-text")) || [],
				navClass : $.parseJSON(c.attr("data-nav-class")) || ['owl-prev', 'owl-next']
			});

		}
	}

	/**
	 * RD Navbar
	 * @description Enables RD Navbar plugin
	 */
	 if (plugins.rdNavbar.length) {
	 	plugins.rdNavbar.RDNavbar({
	 		stickUpClone : (plugins.rdNavbar.attr("data-stick-up-clone")) ? plugins.rdNavbar.attr("data-stick-up-clone") === 'true' : false,
	 		stickUpOffset : (plugins.rdNavbar.attr("data-stick-up-offset")) ? plugins.rdNavbar.attr("data-stick-up-offset") : 1,
	 	});
	 	if (plugins.rdNavbar.attr("data-body-class")) {
	 		document.body.className += ' ' + plugins.rdNavbar.attr("data-body-class");
	 	}
	 }

	/**
	 * Select2
	 * @description Enables select2 plugin
	 */
	 if (plugins.selectFilter.length) {
	 	var i;
	 	for (i = 0; i < plugins.selectFilter.length; i++) {
	 		var select = $(plugins.selectFilter[i]);

	 		select.select2({
	 			theme : "bootstrap"
	 		}).next().addClass(select.attr("class").match(/(input-sm)|(input-lg)|($)/i).toString().replace(new RegExp(",", 'g'), " "));
	 	}
	 }

	/**
	 * Page loader
	 * @description Enables Page loader
	 */
	 if (plugins.pageLoader.length > 0) {

	 	$window.on("load", function () {
	 		var loader = setTimeout(function () {
	 			plugins.pageLoader.addClass("loaded");
	 			$window.trigger("resize");
	 		}, 200);
	 	});

	 }

	/**
	 * UI To Top
	 * @description Enables ToTop Button
	 */
	 if (isDesktop || isMobile) {
	 	$().UItoTop({
	 		easingType : 'easeOutQuart',
	 		containerClass : 'ui-to-top icon icon-xs icon-circle icon-darker-filled mdi mdi-chevron-up'
	 	});
	 }


	/**
	 * Additional Fields
	 */
	 if (plugins.additionalFields.length) {
	 	var counter,
	 	i,
	 	j,
	 	k,
	 	fields;

	 	for (i = 0; i < plugins.additionalFields.length; i++) {
	 		counter = 0;
	 		var additionalFields = $(plugins.additionalFields[i]),
	 		markup = additionalFields.attr('data-additional-field').replace(/\$num\$/g, counter),
	 		init = additionalFields.attr('data-init-count');

	 		additionalFields.find('.additional-fields-add').on('click', function (e) {
	 			e.preventDefault();
	 			counter++;
	 			fields = $(this).parents('.additional-fields');
	 			fields.find('.additional-fields-wrap').append(markup);
	 			for (j = 0; j < fields.find('.additional-fields-wrap > *').length; j++) {
	 				var field = fields.find('.additional-fields-wrap > *')[j];
	 				if (field.className.indexOf('additional-field') == -1) {
	 					$(field).wrap('<div class="additional-field"></div>')
	 					attachFormValidator($(field).find('[data-constraints]'));
	 				}
	 			}
	 		});

	 		for (j = 0; j < init; j++) {
	 			additionalFields.find('.additional-fields-wrap').append(markup);
	 			for (k = 0; k < additionalFields.find('.additional-fields-wrap > *').length; k++) {
	 				var field = additionalFields.find('.additional-fields-wrap > *')[k];

	 				if (field.className.indexOf('additional-field') == -1) {
	 					$(field).wrap('<div class="additional-field"></div>')
	 					attachFormValidator($(field).find('[data-constraints]'));
	 				}
	 			}
	 		}
	 	}

	 	$document.delegate('.additional-field-remove', 'click', function (e) {
	 		e.preventDefault();
	 		$(this).parents('.additional-field').remove();
	 	});

	 }

	 $(".rd-navbar-nav>li").each(function () {
	 	if (location.pathname == $(this).children("a").attr("href")) {
	 		$(this).addClass("active");
	 	} else {
	 		$(this).removeClass("active");
	 	}
	 });

	 $('.gallfull>ul').slick({
	 	dots : false,
	 	arrows : true,
	 	infinite : true,
	 	speed : 500,
	 	adaptiveHeight : true,
	 	slidesToShow : 1,
	 	slidesToScroll : 1,
	 	centerMode : true,
	 	variableWidth : true,
	 	mobileFirst : true,
	 	autoplay : true,
	 	autoplaySpeed : 2000,
	 	nextArrow : '<i class="fa fa-angle-right slick-next" aria-hidden="true"></i>',
	 	prevArrow : '<i class="fa fa-angle-left slick-prev" aria-hidden="true"></i>'
	 });

	 $('.gallfull li>a').on("click", function (e) {
	 	e.preventDefault();
	 	var lineed = $(this).closest(".slick-track").find("li:not(.slick-cloned)").size();
	 	var clicked = $(this).closest(".slick-track").find("li").index($(this).closest("li"));
	 	var lastli = clicked + lineed - 1;
	 	$(this).closest(".slick-track").find("li").each(function (i, e) {
	 		if (i + 1 >= clicked && i + 1 <= lastli) {
	 			$(this).children().attr('rel', 'gallfull');
	 		} else {
	 			$(this).children().removeAttr('rel');
	 		}
	 	});
	 	$('.gallfull li>a[rel="gallfull"]').fancybox({
	 		openEffect : "elastic",
	 		maxHeight : "80%"
	 	});
	 });

	 $('.img-full').fancybox({
	 	openEffect : "elastic",
	 	maxHeight : "80%"
	 });
	 var dateFormat = 'dd/mm/yy';
	 function getDate(element) {
	 	var date;
	 	try {
	 		date = $.datepicker.parseDate(dateFormat, element.value);
	 	} catch (error) {
	 		date = null;
	 	}
	 	return date;
	 }

	 if($(window).width() < 400) {
	 	$('.date-picker .calendar').remove();
	 	$(".for-calendar.from").html('<div class="date-picker"><div class="calendar from"></div></div>');
	 	$(".for-calendar.to").html('<div class="date-picker"><div class="calendar to"></div></div>');
	 }
	 $(".calendar.from, .calendar.to").datepicker({
	 	dateFormat : dateFormat,
	 	firstDay : 1,
	 	minDate : new Date(),
	 	monthNames : ['Январь', 'Февраль', 'Март', 'Апрель', 'Май', 'Июнь', 'Июль', 'Август', 'Сентябрь', 'Октябрь', 'Ноябрь', 'Декабрь'],
	 	dayNamesMin : ['Вс', 'Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб']
	 });

	 $(document).on('click', '.date-picker .input', function (e) {
	 	e.preventDefault();
	 	if($(window).width() >= 400) {
	 		if ($(".calendar").is(":visible")) {
	 			$(".calendar").fadeOut(250);
	 		}
	 		var $me = $(this), $parent = $me.parents('.date-picker').children(".calendar");
	 		if (!$me.parents('.date-picker').children(".calendar").is(":visible")) {
	 			$me.parents('.date-picker').children(".calendar").fadeIn(250);
	 		}
	 	} else {
	 		var id = $(this).find("input").attr("name");
	 		var block = ".for-calendar."+id;
	 		$(".black-zhizha").fadeIn(250);
	 		$(block).find(".date-picker").addClass("cloned");
	 		$(block).fadeIn(250);
	 		$(block).find(".calendar").slideDown(250);
	 	}
	 });

	 $(".calendar").on("change", function (e) {
	 	if($(window).width() >= 400) {
	 		var $me = $(this),
	 		$selected = $me.val(),
	 		$parent = $me.parents('.date-picker');
	 		$parent.find('.result').children('input').val($selected);
	 		if ($me.hasClass("to")) {
	 			$(".calendar.from").datepicker("option", "maxDate", getDate(this));
	 		} else {
	 			$(".calendar.to").datepicker("option", "minDate", getDate(this));
	 		}
	 		if ($(".calendar").is(":visible")) {
	 			$(".calendar").fadeOut(250);
	 		}
	 	} else {
	 		if ($(this).hasClass("to")) {
	 			$(".calendar.from").datepicker("option", "maxDate", getDate(this));
	 			$('input#to').val($(this).val());
	 		} else {
	 			$(".calendar.to").datepicker("option", "minDate", getDate(this));
	 			$('input#from').val($(this).val());
	 		}
	 		if ($(".for-calendar").is(":visible")) {
	 			$(".for-calendar").fadeOut(250);
	 			$(".black-zhizha").fadeOut(250);
	 			$(".calendar").slideUp(250);
	 		}
	 	}
	 });

	 $("body").on("click", function (e) {
	 	if($(window).width() >= 400) {
	 		if(typeof $(e.target).closest(".date-picker")[0] == "undefined" && !$(e.target).hasClass("ui-state-hover")) {
	 			$(".calendar").fadeOut(250);
	 		}
	 	} else {
	 		console.log($(e.target).parent());
	 		if(typeof $(e.target).find(".calendar")[0] != "undefined" && $(".black-zhizha").is(":visible")) {
	 			$(".black-zhizha").fadeOut(250);
	 			$(".for-calendar").fadeOut(250);
	 			$(".calendar").slideUp(250);
	 		}
	 	}
	 });

	 $(".way").on("click", function(e){
	 	e.preventDefault();
	 	$("html, body").animate({ scrollTop: $($(this).attr("href")).offset().top - 77 }, 1000);
	 });
	 /*
	 $( window ).on("resize", function() {
	 	if ($( window ).width() < 1200) {
	 		$('#yt').append( $('#ytWidget') );
	 	} else {
	 		$('#yb').append( $('#ytWidget') );
	 	}
	 });
	 */
	});
