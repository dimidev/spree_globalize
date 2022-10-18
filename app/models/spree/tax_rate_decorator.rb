module Spree::TaxRateDecorator
  def self.prepended(base)
    base.translates :name, fallbacks_for_empty_translations: true
  end

  Spree::TaxRate.include SpreeGlobalize::Translatable
end

::Spree::TaxRate.prepend(Spree::TaxRateDecorator)
