require 'spree_core'
require 'spree_framgia_theme/engine'
module SpreeFramgiaTheme
  class Engine < Rails::Engine
    railtie_name "spree_blue_theme"
    
    config.autoload_paths += %W(#{config.root}/lib)
    
    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/overrides/*.rb")) do |c|
        Rails.application.config.cache_classes ? require(c) : load(c)
      end
    end
    
    config.to_prepare &method(:activate).to_proc
  end
end
