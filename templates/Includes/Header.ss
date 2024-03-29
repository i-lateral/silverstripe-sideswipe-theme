<header class="col-md-auto py-0 sticky-top" role="banner">
	<div class="d-flex sticky-top flex-column py-5">
		<h1 class="text-center">				
			<a href="$BaseHref" class="brand" rel="home">
				<% if $SiteConfig.Logo %>
					$SiteConfig.Logo.ScaleHeight(80)
				<% else %>
					$SiteConfig.Title
				<% end_if %>
			</a>
		</h1>
		<% if not $SiteConfig.Logo && $SiteConfig.Tagline %>
			<p class="d-none d-sm-block">
				<a href="$BaseHref" class="brand" rel="home">
					$SiteConfig.Tagline
				</a>
			</p>
		<% end_if %>
		<div class="navbar navbar-expand-md navbar-light">
			<button class="navbar-toggler mx-auto my-1 ml-sm-auto mr-sm-2" type="button" data-toggle="collapse" data-target="#MainNav" aria-controls="MainNav" aria-expanded="false" aria-label="Toggle navigation">
				<i class="fas fa-bars"></i>
			</button>
			<% if $SearchForm %>
				<button class="navbar-toggler my-1 mx-auto mx-sm-2" type="button" data-toggle="collapse" data-target="#SearchBar" aria-controls="SearchBar" aria-expanded="false" aria-label="Toggle search">
					<i class="fas fa-search"></i>
				</button>
			<% end_if %>
			<% with $SiteConfig.ContactPage %>
				<ul class="nav justify-content-end d-none d-sm-block d-lg-none">
					<% if $PhoneNumber %>
						<li class="nav-item">
							<span class="nav-link">$PhoneNumber</span>
						</li>
					<% end_if %>
					<% if $Email %>
						<li class="nav-item">
							<a class="nav-link" href="mailto:$Email">$Email</a>
						</li>
					<% end_if %>
				</ul>
			<% end_with %>
		</div>
		<div <% if $SearchForm %>class="searchform-enabled"<% end_if %>>
			<% with $SiteConfig.ContactPage %>
				<ul class="nav justify-content-end d-sm-none d-lg-flex">
					<% if $PhoneNumber %>
						<li class="nav-item">
							<span class="nav-link">$PhoneNumber</span>
						</li>
					<% end_if %>
					<% if $Email %>
						<li class="nav-item">
							<a class="nav-link" href="mailto:$Email">$Email</a>
						</li>
					<% end_if %>
				</ul>
			<% end_with %>
			<% if $SearchForm %>
				<div class="search-bar navbar navbar-expand-md p-0">
					<div id="SearchBar" class="collapse navbar-collapse">
						<div class="mx-auto mr-lg-0 my-2">
							$SearchForm
						</div>
					</div>
				</div>
			<% end_if %>
			<% include Navigation %>
		</div>
	</div>
</header>
