module Spree::PaymentMethodDecorator
  def self.prepended(base)
    base.translates :name, :description, fallbacks_for_empty_translations: true
  end

  Spree::PaymentMethod.include SpreeGlobalize::Translatable
end

::Spree::PaymentMethod.prepend(Spree::PaymentMethodDecorator)
