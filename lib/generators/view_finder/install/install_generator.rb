module ViewFinder
  # Copies formtastic.css to public/stylesheets/ (Rails 3.0.x only) and a config initializer
  #
  # @example
  #   $ rails generate view_finder:install
  #
  # @todo Test with Rails 3.0
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../../../templates', __FILE__)
    class_option :template_engine

    unless ::Rails.config.assets.enabled
      # Asset pipeline is not enabled - Lets copy the javascripts
      desc "Copies all JS files to public/javascripts/"
      def copy_files
        template '../../../vendor/assets/javascripts/formtastic.css',     'public/javascripts/formtastic.css'
        template '../../../vendor/assets/javascripts/formtastic_ie6.css', 'public/javascripts/formtastic_ie6.css'
      end
    end

    def copy_scaffold_template
      engine = options[:template_engine]
      copy_file "_form.html.#{engine}", "lib/templates/#{engine}/scaffold/_form.html.#{engine}"
    end
  end
end