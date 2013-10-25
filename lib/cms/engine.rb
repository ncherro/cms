require "nested_form"
require "simple_form"
require "ancestry"
require "rack/cache"
require "dragonfly"
require "tinymce-rails"

module Cms
  class Engine < ::Rails::Engine

    isolate_namespace Cms

    # precompile our css / js files
    initializer "precompile", :group => :all do |app|
      app.config.assets.precompile << "tinymce/plugins/cms_image/plugin.js"
      app.config.assets.precompile << "admin/spree_cms_image.js"
      app.config.assets.precompile << "tinymce/plugins/cms_file/plugin.js"
      app.config.assets.precompile << "admin/spree_cms_file.js"
    end

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

  end
end
