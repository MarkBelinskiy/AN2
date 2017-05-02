<section class="rd-parallax context-dark" data-parallax="scroll" data-image-src="{THEME}/img/bg-header-1920x362.jpg">
	<div class="rd-parallax-layer">
		<div class="shell section-top-34 section-sm-top-98 section-bottom-34">
			<div>
				<h1 class="text-bold">{title}</h1>
			</div>
			<div class="list-inline list-inline-dashed p text-light breadcrumb-modern offset-top-10 offset-sm-top-66">
				{full-speedbar}
			</div>
		</div>
	</div>
	<div class="clearfix"></div>
</section>
[not-catlist=42,47,51,52]
<section class="section-66 bg-white">
	<div class="shell">
		<div class="">
			<div class="range">
				<div class="cell-md-7 cell-lg-8">
					<!-- Owl Carousel-->
					[xfgiven_gal]
					<div class="gallfull img-responsive reveal-inline-block">
						[xfvalue_gal]
					</div>
					[/xfgiven_gal]
					<div class="text-sm-left offset-top-50">
						<h5 class="text-bold">Описание</h5>
						{full-story}
					</div>
					[xfgiven_feature1]
					<div class="offset-top-30">
						<!-- Bootstrap Table-->
						[xfgiven_value1]
						<div class="table-responsive clearfix">
							<table class="table table-striped">
								<thead>
									<tr>
										<th>Детальные характеристики</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th>[xfvalue_feature1]</th>
										<td>[xfvalue_value1]</td>
									</tr>
									[xfgiven_feature2]
									[xfgiven_value2]
									<tr>
										<th>[xfvalue_feature2]</th>
										<td>[xfvalue_value2]</td>
									</tr>
									[/xfgiven_value2]
									[/xfgiven_feature2]

									[xfgiven_feature3]
									[xfgiven_value3]
									<tr>
										<th>[xfvalue_feature3]</th>
										<td>[xfvalue_value3]</td>
									</tr>
									[/xfgiven_value3]
									[/xfgiven_feature3]

									[xfgiven_feature4]
									[xfgiven_value4]
									<tr>
										<th>[xfvalue_feature4]</th>
										<td>[xfvalue_value4]</td>
									</tr>
									[/xfgiven_value4]
									[/xfgiven_feature4]

									[xfgiven_feature5]
									[xfgiven_value5]
									<tr>
										<th>[xfvalue_feature5]</th>
										<td>[xfvalue_value5]</td>
									</tr>
									[/xfgiven_value5]
									[/xfgiven_feature5]
								</tbody>
							</table>
						</div>
						[/xfgiven_value1]
					</div>
					[/xfgiven_feature1]
				</div>
				<div class="cell-md-5 cell-lg-4 text-md-left inset-md-left-30 offset-top-66 offset-sm-top-0">
					<div class="range">
						<div class="cell-xs-12 cell-md-push-1 offset-top-41 offset-md-top-0">
								<ul class="list-inline list-inline-dotted text-dark">
									<li>[xfvalue_metr-count] м<sup>2</sup>
									</li>
									<li>[xfvalue_rooms-count] [declination=[xfvalue_rooms-count]]комнат|а|ы|[/declination]</li>
								</ul>
							<div class="offset-top-20">
								<h5 class="text-bold">[xfvalue_cost]</h5>
							</div>
						</div>
						<div class="cell-xs-12 cell-md-push-2 offset-top-41 offset-md-top-20">
							<a href="http://order.antwo-hotel.com.ua/index.php" target="blank_" class="btn btn-primary">Забронировать <none>номер</none></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="clearfix"></div>
</section>

<section class="section-66 bg-lighter">
	<div class="shell">
		<h2 class="text-bold">Другие предложения</h2>
		<hr class="divider bg-saffron">
		<div class="offset-sm-top-66">
			<div class="range range-xs-center">
				{custom idexclude="{news-id}" category="40" template="custom/main-nomera" available="showfull" navigation="no" from="0" limit="4" fixed="yes" order="date" sort="desc" cache="no"}
			</div>
		</div>
	</div>
	<div class="clearfix"></div>
</section>
[/not-catlist]

[catlist=42]
<section class="section-66 bg-white">
	<div class="shell">
		<div class="row-fluid">
			[xfgiven_gal]
			<div class="col-md-6 cell-sm-12 p0 mb1">
				<div class="gallfull img-responsive reveal-inline-block">
					[xfvalue_gal]
				</div>
			</div>
			[/xfgiven_gal]
			<div class=" offset-top-30 offset-md-top-0 text-md-left ">
				<div class="text-justify">{full-story}</div>
			</div>
		</div>
	</div>
	<div class="clearfix"></div>
</section>

[/catlist]

[catlist=47,51,52]
<section class="section-66 bg-white">
	<div class="shell">
		<div class="row-fluid">
			<div class="col-md-7 pull-left np">
				<a href="[xfvalue_image_url_photo-akcii]" class="img-full" rel="img-full">
					<img src="[xfvalue_image_url_photo-akcii]" alt="" class="img-responsive reveal-inline-block"/>
				</a>
			</div>
			<div class=" offset-top-30 offset-md-top-0 text-md-left ">
				<div class="text-justify">{full-story}</div>
			</div>
		</div>
	</div>
	<div class="clearfix"></div>
</section>
[/catlist]

