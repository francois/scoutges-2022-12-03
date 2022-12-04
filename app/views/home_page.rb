# frozen_string_literal: true

class Scoutges::Views::HomePage < Scoutges::View
  def initialize(title:)
    @title = title
  end

  def template
    render Scoutges::Views::BaseLayout.new(title: @title) do
      article do
        p do
          text "Welcome to Scoutges"
        end
      end
    end
  end
end
