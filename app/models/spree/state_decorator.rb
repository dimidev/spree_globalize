module Spree::StateDecorator
  def self.prepended(base)
    base.translates :name, fallbacks_for_empty_translations: true
  end

  Spree::State.include SpreeGlobalize::Translatable
end

::Spree::State.prepend(Spree::StateDecorator)
