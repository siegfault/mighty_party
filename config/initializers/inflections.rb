# Be sure to restart your server when you modify this file.

ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.plural /^(hero)$/i, '\1es'
  inflect.singular /^(hero)es$/i, '\1'
end
