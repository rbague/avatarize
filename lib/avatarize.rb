# frozen_string_literal: true

require 'avatarize/version'
require 'avatarize/engine' if defined?(Rails)

module Avatarize # :nodoc:
  class << self
    attr_accessor :defaults
  end

  self.defaults = { data: { avatar_content: '?', avatar_size: 100 } }
end
