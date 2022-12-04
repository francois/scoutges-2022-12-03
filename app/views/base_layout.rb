# frozen_string_literal: true

class Scoutges::Views::BaseLayout < Scoutges::View
  def initialize(title:)
    @title = title
  end

  def template(&)
    doctype

    html do
      head do
        meta charset: "utf-8"
        title { @title }
        # style
      end

      body(&)
    end
  end
end
