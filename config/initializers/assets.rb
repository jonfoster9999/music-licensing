# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Rails.root + "lib"

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w(search.js song.css store.css tags.css licenses.css admin/songs.css admin/album_covers.css texture.css)
Rails.application.config.assets.precompile += ["*lib/assets*"]
