module SpreeProductZoom
  module Generators
    class InstallGenerator < Rails::Generators::Base

      def add_javascripts
        append_file 'vendor/assets/javascripts/spree/frontend/all.js', "//= require fancybox\n"
        append_file 'vendor/assets/javascripts/spree/frontend/all.js', "//= require drift.min\n"
        append_file 'vendor/assets/javascripts/spree/frontend/all.js', "//= require spree/frontend/spree_product_zoom\n"
      end

      def add_stylesheets
        inject_into_file 'vendor/assets/stylesheets/spree/frontend/all.css', " *= require spree/frontend/spree_product_zoom\n", :before => /\*\//, :verbose => true
      end
    end
  end
end
