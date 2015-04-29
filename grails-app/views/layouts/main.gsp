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
<asset:stylesheet src="bootstrap.css" />
<asset:stylesheet src="custom.css" />
<asset:javascript src="bootstrap.min.js" />
<g:layoutHead />
</head>
<body>
	<div class="container">
		<asset:image src="tps_logo.png" alt="Taylor's" />
		<nav class="navbar navbar-default navbar-justified">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Taylor's</a>
				</div>

				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="${ pageProperty(name:'meta.nav').equals( 'news' ) ? 'active' : null }"><a href="/News/">Home<span
								class="sr-only">(current)</span></a></li>
						<li class="${ pageProperty(name:'meta.nav').equals( 'client' ) ? 'active' : null }"><a href="/Client/">Clients</a></li>
						<li class="${ pageProperty(name:'meta.nav').equals( 'candidate' ) ? 'active' : null }"><a href="/Employee/">Candidates</a></li>
						<li class="${ pageProperty(name:'meta.nav').equals( 'about' ) ? 'active' : null }"><a href="/about/">About</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">Dropdown
								<span class="caret"></span>
						</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li class="divider"></li>
								<li><a href="#">Separated link</a></li>
								<li class="divider"></li>
								<li><a href="#">One more separated link</a></li>
							</ul></li>
					</ul>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Search">
						</div>
						<button type="submit" class="btn btn-default">Submit</button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li><g:link class="list" action="logout">Logout</g:link></li>
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
