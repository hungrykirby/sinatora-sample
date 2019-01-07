#
# On importe sass/plugin/rack depuis le gem sass
# Et on indique à Rack d'utiliser le middleware fourni par ce gem
#
require 'sass/plugin/rack'
Sass::Plugin.options[:style] = :compressed
use Sass::Plugin::Rack

#
# Le reste de votre fichier config.ru, qui indique comment lancer
# l'application. Par exemple, pour un projet Sinatra basique:
#
require './app.rb'
run Sinatra::Application
