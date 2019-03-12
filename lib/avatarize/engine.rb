require 'avatarize/helper'

ActiveSupport.on_load(:action_view) do
  include Avatarize::Helper
end

module Avatarize
  class Engine < ::Rails::Engine; end
end
