module Rails
  module CheckPath
    class Railtie < ::Rails::Railtie
      initializer 'rails.check_path' do
        ActiveSupport.on_load(:action_controller) do
          ActionView::Helpers::UrlHelper.send :include, Rails::CheckPath::Helper
        end
      end
    end
  end
end
