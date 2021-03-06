# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = (ENV["ASSETS_VERSION"] || "1.0")
Rails.application.config.assets.precompile += %w( jquerymobile.blue.css jquerymobile.nativedroid.css jquerymobile.nativedroid.dark.css )
Rails.application.config.assets.precompile += %w(rails_admin/rails_admin.js rails_admin/rails_admin.css rails_admin/jquery.colorpicker.js rails_admin/jquery.colorpicker.css ckeditor/*)

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
