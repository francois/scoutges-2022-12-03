# frozen_string_literal: true

module Scoutges
  class Routes < Hanami::Routes
    root to: "public.index"
    get "/app.css", to: ->(env) { [200, {"Content-Type" => "text/css; charset=utf-8"}, [File.read("public/app.css")]] }
  end
end
