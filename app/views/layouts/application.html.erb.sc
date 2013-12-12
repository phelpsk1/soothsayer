<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><%= content_for?(:title) ? yield(:title) : "4play.io" %></title>
    <%= csrf_meta_tags %>

    <!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
    <!--[if lt IE 9]>
      <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.6.1/html5shiv.js" type="text/javascript"></script>
    <![endif]-->

    <%= stylesheet_link_tag "application", :media => "all" %>

    <!-- For third-generation iPad with high-resolution Retina display: -->
    <!-- Size should be 144 x 144 pixels -->
    <%= favicon_link_tag 'apple-touch-icon-144x144-precomposed.png', :rel => 'apple-touch-icon-precomposed', :type => 'image/png', :sizes => '144x144' %>

    <!-- For iPhone with high-resolution Retina display: -->
    <!-- Size should be 114 x 114 pixels -->
    <%= favicon_link_tag 'apple-touch-icon-114x114-precomposed.png', :rel => 'apple-touch-icon-precomposed', :type => 'image/png', :sizes => '114x114' %>

    <!-- For first- and second-generation iPad: -->
    <!-- Size should be 72 x 72 pixels -->
    <%= favicon_link_tag 'apple-touch-icon-72x72-precomposed.png', :rel => 'apple-touch-icon-precomposed', :type => 'image/png', :sizes => '72x72' %>

    <!-- For non-Retina iPhone, iPod Touch, and Android 2.1+ devices: -->
    <!-- Size should be 57 x 57 pixels -->
    <%= favicon_link_tag 'apple-touch-icon-precomposed.png', :rel => 'apple-touch-icon-precomposed', :type => 'image/png' %>

    <!-- For all other devices -->
    <!-- Size should be 32 x 32 pixels -->
    <%= favicon_link_tag 'favicon.ico', :rel => 'shortcut icon' %>

    <%= javascript_include_tag "application" %>
  </head>
  <body>

    <div class="navbar navbar-fluid-top navbar-inverse">
      <div class="navbar-inner">
        <div class="container-fluid">
          <a class="btn btn-navbar" data-target=".nav-collapse" data-toggle="collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="/">4play.io</a>
<embed src='http://www.shoutcast.com/media/popupPlayer_V19.swf?stationid=http://yp.shoutcast.com/sbin/tunein-station.pls?id=62125&play_status=1' quality='high' bgcolor='#ffffff' width='398' height='104' name='popupPlayer_V19' align='middle' allowScriptAccess='always' allowFullScreen='true' type='application/x-shockwave-flash' pluginspage='http://www.adobe.com/go/getflashplayer' ></embed>
						</li>
					</ul>
					<p>derp</p>
          <div class="container-fluid nav-collapse">
            <ul class="nav">
              <li><%= link_to "Link1", "/path1"  %></li>
              <li><%= link_to "Link2", "/path2"  %></li>
              <li><%= link_to "Link3", "/path3"  %></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span9">
          <%= bootstrap_flash %>
          <%= yield %>
        </div>
        <div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">Useless Box Thing</li>
              <li><%= link_to "Link1", "/path1"  %></li>
              <li><%= link_to "Link2", "/path2"  %></li>
              <li><%= link_to "Link3", "/path3"  %></li>
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
      </div><!--/row-->

      <footer>
        <p>&copy; Me 2013</p>
      </footer>

    </div> <!-- /container -->

  </body>
</html>