<!doctype html>
<html lang="en">

<head>

		<cfset qGetLastTwoCustomerComments	= createObject('modules.customer_comments.customer_comments').mGetLastTwoCustomerComments(site_dsn='#application.site_dsn#') />

		<title><cfoutput>#application.site_name#</cfoutput></title>

		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

		<!--- <link type="text/css" rel="stylesheet" href="/site_wide_assets/css/site-wide-css-mobile-first.css"/> --->
		<link type='text/css' rel='stylesheet' href='/site_wide_assets/css/reset.css' />
		<link href='http://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Raleway:200' rel='stylesheet' type='text/css'>
		
		<script src="/site_wide_assets/jquery/jquery-2.1.1.min.js"></script>
		<script src="/site_wide_assets/harvey/harvey.js"></script>
		<script src="/site_wide_assets/harvey/site_wide_harvey.js"></script>
		<script src="/modules/menu/menu.js"></script>

</head>


<body>

	<style>
		.page_background { height:auto; width:100%; min-height:100%; min-width:100%; position:fixed; top:0px; left:0px; }
	</style>

	<img class="page_background" src="<cfoutput>#application.imagesDir#</cfoutput>/<cfoutput>#application.pageBackgroundImage#</cfoutput>"/>

	<cfinclude template="/modules/misc/screen_width/screen-width.cfm"/>



	<style>

			@media screen and (max-width:601px) and (orientation:portrait) {

				#page_wrapper { position:relative; width:95%; margin:0 auto; margin-top:1em; }

			}

			@media screen and (min-width:602px) {

				#page_wrapper {	position:relative; width:90%; margin:0 auto; margin-top:1.5em; max-width:1400px; }

			}

	</style>

	<div id="page_wrapper">





		<style>
				.container_100 { border:1px solid rgba(255,255,255,.7); border-radius:1em; background-color:rgba(0,0,0,.6);
									  margin-bottom:1em; padding:1em 2em; }
		</style>

		<div id="header" class="container_100">





			<style>

				@media screen and (max-width:601px) and (orientation:portrait) {

					#logo { margin-top:.5em; margin-bottom:.75em; margin-left:1em; float:none; max-width:500px; }
				}

				@media screen and (min-width:602px) {

					#logo 		{ 	margin-top:.5em; float:left; max-width:500px; }
				}

			</style>

			<img id="logo" src="<cfoutput>#application.imagesDir#</cfoutput>/<cfoutput>#application.site_logo#</cfoutput>" />





			<style>

				@media screen and (max-width:601px) and (orientation:portrait) {

					#business_info_container { float:right; text-align:right; margin-right:1em; display:none;}
					#business_name { color:rgba(255,255,175,1); display:none;}
					#business_info_container a { color:rgba(255,255,255,.8); text-decoration:none; }
					#business_info_container a:hover { color:rgba(255,255,255,1) }

				}

				@media screen and (min-width:602px) {

					#business_info_container { float:right; margin:1em 1em 1em 0; text-align:right; }
					#business_name { color:rgba(255,255,175,1); }
					#business_info_container a { color:rgba(255,255,255,.8); text-decoration:none; }
					#business_info_container a:hover { color:rgba(255,255,255,1) }

				}

			</style>

			<div id="business_info_container">

				<p id="business_name"><cfoutput>#application.site_name#</cfoutput></p>
				<p id="business_street_address" class="business_info"><cfoutput>#application.site_street_address#</cfoutput></p>
				<p id="business_city_state_zip" class="business_info"><cfoutput>#application.site_city#, #application.site_state# #application.site_zip_code#</cfoutput></p>
				<p id="header_address_spacer">&nbsp;</p>
				<p id="business_email"><a href="mailto:<cfoutput>#application.site_contact_email_recipient#</cfoutput>" class="business_info"><cfoutput>#application.site_contact_email_recipient#</cfoutput></a></p>
				<p id="business_phone" class="business_info"><cfoutput>#application.site_phone_number#</cfoutput></p>

			</div>






			<div style="clear:both;"></div>

		</div> <!--- [ #header ] --->






			<style>

				@media screen and (max-width:601px) and (orientation:portrait) {

					.container_100 { border:1px solid rgba(255,255,255,.7); border-radius:1em; background-color:rgba(0,0,0,.6);
									  margin-bottom:1em; padding:1em 2em; text-align:center; }
					#menu_and_social_container { padding: .5em 0 0 0; }
					.social_icons_link img { width:32px; }
					#facebook, #pinterest, #menu, #googleplus { margin-right:35px; }
					#twitter { }
					#menu { padding:4px 18px 4px 18px; border:1px solid rgba(255,255,206,.5);
							  border-radius:.5em; color:rgba(255,255,206,1); position:relative; top:-.75em;
							  background-color:rgba(0,0,0,.6); }

				}

				@media screen and (min-width:602px) {

					.container_100 { border:1px solid rgba(255,255,255,.7); border-radius:1em; background-color:rgba(0,0,0,.6);
									  margin-bottom:1em; padding:1em 2em; text-align:center; }
					#menu_and_social_container { padding: .5em 0 0 0; }
					.social_icons_link img { width:32px; }
					#facebook, #pinterest, #menu, #googleplus { margin-right:35px; }
					#twitter { }
					#menu { padding:4px 18px 4px 18px; border:1px solid rgba(255,255,206,.5);
							  border-radius:.5em; color:rgba(255,255,206,1); position:relative; top:-.75em;
							  background-color:rgba(0,0,0,.6); }
				}

			</style>

			<!--- <cfinclude template = "/modules/menu/menu.cfm" /> --->

			<div class="container_100">

				<div id="menu_and_social_container">

					<a class="social_icons_link" href="" target="_blank">
						<img id="facebook" src="/site_wide_assets/images/facebook.png"/></a>

					<a class="social_icons_link" href="http://www.pinterest.com" target="_blank">
						<img id="pinterest" src="/site_wide_assets/images/pinterest.png"/></a>

					<span id="menu">MENU</span>

					<a class="social_icons_link" href="https://plus.google.com" target="_blank">
						<img id="googleplus" src="/site_wide_assets/images/googleplus.png"/></a>
					
					<a class="social_icons_link" href="http://www.twitter.com" target="_blank">
						<img id="twitter" src="/site_wide_assets/images/twitter.png"/></a>

				</div> <!--- [ .menu_and_social_601_container ] --->

			</div> <!--- [ .container_100 ] --->





	</div> <!--- [ #page_wrapper ] --->





</body>