SpreeProductZoom + Hover Zoom
=======================

A Spree extension that adds lightbox **and hover** zoom functionality for product images.
The lightbox is powered by [fancyBox](http://fancyapps.com/fancybox/).
Zoom on hover is available thanks to the amazing work done by [Drift](http://github.com/imgix/drift/).

Installation
=======

Add this extension to your Gemfile:

```ruby
gem "spree_product_zoom", :git => "git://github.com/vinzloh/spree_product_zoom.git"
```

Then run:

```
bundle install
```

Run:

```
bundle exec rails g spree_product_zoom:install
```

in order to copy over the required css and js files.

Once installation is complete your product images can be zoomed by clicking on the "Zoom In" button beneath an image.

Configuration
=========

spree_product_zoom has only one configuration option, the paperclip image style to use when zooming in on an image. It defaults to `:original`.

To change the default style from `:original` create a file config/initializers/spree_product_zoom.rb with the following content:

```
Spree::ProductZoom::Config[:default_image_style] = :your_image_style
```

Customization
=============

To change the zoom factor, add the line below to your .js file:
```
SpreeProductHoverZoom.zoomFactor = 1
```

To change the hover pane height, override the css:
```
.product-hover-zoom {
  height: 500px;
}
```

License
=======

This project has been released under the New BSD License, Copyright (c) 2012 John Dyer.
Please keep in mind that *fancyBox* has to be licensed in particular if you want to use this gem in a commercial way. See for more details: http://www.fancyapps.com/fancybox/#license
