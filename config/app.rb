# frozen_string_literal: true

require "hanami"

module Scoutges
  class App < Hanami::App
    environment(:development) do
      security.content_security_policy %{
        form-action 'self';
        frame-ancestors 'self';
        base-uri 'self';
        default-src 'none';
        script-src 'self';
        connect-src 'self';
        img-src 'self' https: data:;
        style-src 'self' 'unsafe-inline' https: http:;
        font-src 'self';
        object-src 'none';
        plugin-types application/pdf;
        child-src 'self';
        frame-src 'self';
        media-src 'self'
      }
    end


    environment(:development) do
      require "byebug"
    end

    environment(:test) do
      require "byebug"
    end
  end
end
