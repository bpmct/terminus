# frozen_string_literal: true

module Terminus
  module Actions
    module API
      module FeaturedScreens
        class Index < Base
          include Deps[
            :settings,
            screen_repo: "repositories.screen",
            device_repo: "repositories.device"
          ]

          def handle(*, response)
            screens = screen_repo.featured_with_devices(device_repo:, api_url: settings.api_uri)
            response.body = {data: screens}.to_json
          end

          protected

          def authorize(*) = nil
        end
      end
    end
  end
end
