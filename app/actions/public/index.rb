# frozen_string_literal: true

module Scoutges
  module Actions
    module Public
      class Index < Scoutges::Action
        def handle(*, response)
          response.content_type = "text/html; charset=utf-8"
          response.body = Scoutges::Views::HomePage.new(title: "Scoutges — Your Scout Home on the Web").call
        end
      end
    end
  end
end
