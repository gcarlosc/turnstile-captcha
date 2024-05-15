# frozen_string_literal: true

class Turnstile::Configuration
  DEFAULTS = {
    enabled: true,
    server_url: "https://challenges.cloudflare.com/turnstile/v0/siteverify",
    script_url: "https://challenges.cloudflare.com/turnstile/v0/api.js",
    language: "en-US"
  }.freeze

  attr_accessor :site_key, :secret_key, :language, :enabled, :script_url, :server_url, :on_failure

  def initialize
    @enabled = DEFAULTS[:enabled]
    @language = DEFAULTS[:language]
    @server_url = DEFAULTS[:server_url]
    @script_url = DEFAULTS[:script_url]
    @on_failure = nil
  end
end
