# frozen_string_literal: true

require "hanami"

module Scoutges
  class App < Hanami::App
    environment(:development) do
      require "byebug"
    end

    environment(:test) do
      require "byebug"
    end
  end
end
