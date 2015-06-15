<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title><g:layoutTitle default="Grails" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}"
	type="image/x-icon">
<asset:javascript src="jquery-1.11.3.min.js" />
<asset:stylesheet src="bootstrap.min.css" />
<asset:stylesheet src="custom.css" />
<asset:javascript src="bootstrap.js" />
<asset:javascript src="custom.js" />

<g:layoutHead />
</head>
<body>
	<div class="container">
		<asset:image src="tps_logo.png" alt="Taylor's" class="img-responsive" />
		<nav class="navbar navbar-inverse navbar-justified">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="/">Taylor's</a>
				</div>

				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<sec:ifAnyGranted roles="ROLE_ADMIN">
						<ul class="nav navbar-nav">
							<li
								class="${ pageProperty(name:'meta.nav').equals( 'news' ) ? 'active' : null }"><a
								href="/News/">Home<span class="sr-only">(current)</span></a></li>
							<li
								class="${ pageProperty(name:'meta.nav').equals( 'client' ) ? 'active' : null }"><a
								href="/Client/">Clients</a></li>
							<li
								class="${ pageProperty(name:'meta.nav').equals( 'candidate' ) ? 'active' : null }"><a
								href="/Candidate/">Candidates</a></li>
							<li
								class="${ pageProperty(name:'meta.nav').equals( 'requests' ) ? 'active' : null }"><a
								href="/Request/">Requests</a></li>
							<li
								class="${ pageProperty(name:'meta.nav').equals( 'about' ) ? 'active' : null }"><a
								href="/about/">About</a></li>
						</ul>
					</sec:ifAnyGranted>

					<sec:ifAnyGranted roles="ROLE_USER">
						<ul class="nav navbar-nav">
							<li
								class="${ pageProperty(name:'meta.nav').equals( 'news' ) ? 'active' : null }"><a
								href="/News/">Home<span class="sr-only">(current)</span></a></li>
							<li
								class="${ pageProperty(name:'meta.nav').equals( 'client' ) ? 'active' : null }"><a
								href="/Client/Profile/">Client Profile</a></li>
							<li
								class="${ pageProperty(name:'meta.nav').equals( 'candidate' ) ? 'active' : null }"><a
								href="/Candidate/">Candidates</a></li>
							<li
								class="${ pageProperty(name:'meta.nav').equals( 'requests' ) ? 'active' : null }"><a
								href="/Request/MyRequests/">My Requests</a></li>
							<li
								class="${ pageProperty(name:'meta.nav').equals( 'about' ) ? 'active' : null }"><a
								href="/about/">About</a></li>
						</ul>
					</sec:ifAnyGranted>

					<sec:ifAnyGranted roles="ROLE_CAN">
						<ul class="nav navbar-nav">
							<li
								class="${ pageProperty(name:'meta.nav').equals( 'news' ) ? 'active' : null }"><a
								href="/News/">Home<span class="sr-only">(current)</span></a></li>
							<li
								class="${ pageProperty(name:'meta.nav').equals( 'candidate' ) ? 'active' : null }"><a
								href="/Candidate/Profile/">Candidate Profile</a></li>
							<li
								class="${ pageProperty(name:'meta.nav').equals( 'about' ) ? 'active' : null }"><a
								href="/about/">About</a></li>
						</ul>
					</sec:ifAnyGranted>

					<sec:ifNotLoggedIn>
						<ul class="nav navbar-nav">
							<li
								class="${ pageProperty(name:'meta.nav').equals( 'news' ) ? 'active' : null }"><a
								href="/News/">Home<span class="sr-only">(current)</span></a></li>
							<li
								class="${ pageProperty(name:'meta.nav').equals( 'client' ) ? 'active' : null }"><a
								href="/Client/">Clients</a></li>
							<li
								class="${ pageProperty(name:'meta.nav').equals( 'candidate' ) ? 'active' : null }"><a
								href="/Candidate/">Candidates</a></li>
							<li
								class="${ pageProperty(name:'meta.nav').equals( 'requests' ) ? 'active' : null }"><a
								href="/Request/">Requests</a></li>
							<li
								class="${ pageProperty(name:'meta.nav').equals( 'about' ) ? 'active' : null }"><a
								href="/about/">About</a></li>
						</ul>
					</sec:ifNotLoggedIn>
					<ul class="nav navbar-nav navbar-right">
						<li><g:remoteLink class="logout" controller="logout"
								method="post" asynchronous="false" onSuccess="location.reload()">Logout</g:remoteLink>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-7 col-sm-6">
				<g:layoutBody />
				<div id="footer" role="contentinfo">
					<p>
						<small>Copyright &copy; Think Tank 2015, Written by John
							Leonardo and Steven Fathbruckner</small>
					</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
