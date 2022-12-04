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
        link href: "app.css", rel: "stylesheet"
      end

      body(class: "bg-gray-200 m-2") do
        div(&)
      end
    end
  end
end
