[static=order]
<section class="bg-lighter section-66">
	<div class="shell-wide">
		<div class="range range-xs-center text-sm-left">
			<div class="cell-xs-10 cell-sm-8 cell-md-12">
				<div class="range range-xs-center">
					{include file="engine/modules/sale.php?do=order"}
				</div>
			</div>
		</div>
	</div>
</section>
[/static]
[static=contacts]
<section class="bg-lighter section-66">
	<div class="shell-wide">
		<div class="range range-xs-center text-sm-left">
			<div class="cell-xs-10 cell-sm-8 cell-md-12">
				<div class="range range-xs-center">
					{static}
				</div>
			</div>
		</div>
	</div>
</section>
<!--Section Get In Touch-->
<section class="section-66 bg-white">
	<div class="shell">
	<h2 class="text-bold">Пишите нам</h2>
		<hr class="divider bg-saffron">
		<div class="offset-sm-top-66">
			<div class="range range-xs-center">
				<div class="cell-xs-10 cell-md-8">
					<!-- RD Mailform-->
					<form id="contacts" data-form-output="form-output-global" data-form-type="contact" method="post" action="/sendmail.php" class="rd-mailform text-left">
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
</section>
<section class="bg-lighter section-66" id="way">
	<div class="shell-wide">
		<h2 class="text-bold">Маршруты</h2>
		<hr class="divider bg-saffron">
		<div class="range range-xs-center text-sm-left">
			<div class="cell-xs-10 cell-sm-8 cell-md-12">
				<div class="range range-xs-center">
					<ul class="list-inline text-center">
						<li><a href="метро проспект Юрия Гагарина" class="new-adress" data-mode="pedestrian" data-hint="0"><i class="fa fa-map-marker" aria-hidden="true"></i> Станция метро "Проспект Гагарина"</a></li>
						<li><a href="метро Спортивная" class="new-adress" data-mode="pedestrian" data-hint="0"><i class="fa fa-map-marker" aria-hidden="true"></i> Стадион "металлист"</a></li>
						<li><a href="проспект Юрия Гагарина, 22" class="new-adress" data-mode="pedestrian" data-hint="0"><i class="fa fa-map-marker" aria-hidden="true"></i> Автостанция №1 "Автовокзал"</a></li>
						<li><a href="Южный Вокзал" class="new-adress" data-mode="auto" data-hint="1"><i class="fa fa-map-marker" aria-hidden="true"></i> Вокзал Южной Железной Дороги</a></li>
						<li><a href="Аеропорт" class="new-adress" data-mode="auto" data-hint="1"><i class="fa fa-map-marker" aria-hidden="true"></i> Аеропорт</a></li>
						<li><a href="Белгородское шоссе" class="new-adress" data-mode="auto" data-hint="1"><i class="fa fa-map-marker" aria-hidden="true"></i> Белгородское шоссе (Москва)</a></li>
						<li><a href="Полтавское шоссе" class="new-adress" data-mode="auto" data-hint="1"><i class="fa fa-map-marker" aria-hidden="true"></i> Киевская трасса</a></li>
						<li><a href="Московский проспект 302А" class="new-adress" data-mode="auto" data-hint="1"><i class="fa fa-map-marker" aria-hidden="true"></i> Ростовская трасса</a></li>
						<li><a href="Мерефянське шоссе" class="new-adress" data-mode="auto" data-hint="1"><i class="fa fa-map-marker" aria-hidden="true"></i> Симферопольское шоссе</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>
<section id="map" style="width:100%;height:400px;">
</section>
[/static]
