module Spree
  module Admin
    class StatesTranslationsController < Spree::Admin::TranslationsController
      private
      def collection_url
        send "admin_country_states_url", @resource.country
      end
    end
  end
end
