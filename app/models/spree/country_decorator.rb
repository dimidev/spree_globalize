module Spree::CountryDecorator
  def self.prepended(base)
    base.translates :name, fallbacks_for_empty_translations: true
  end

  Spree::Country.include SpreeGlobalize::Translatable
end

::Spree::Country.prepend(Spree::CountryDecorator)
