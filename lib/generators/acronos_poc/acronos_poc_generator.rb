require 'rails/generators/base'

class AcronosPocGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  argument :controller, type: :string
  argument :method, type: :string, default: "index"

  def generate_view
    template "#{method}.html.erb", "app/views/#{controller}/#{method}.html.erb"
  end
end
