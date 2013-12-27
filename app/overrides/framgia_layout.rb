Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
                     :replace_contents => "[data-hook='body']",
                     :name => "framgia_layout",
                     :text => %q{
                       <%= render :partial => 'layouts/framgia' %>
                     }
                     )
