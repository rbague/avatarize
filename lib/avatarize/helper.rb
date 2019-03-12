module Avatarize
  # Module Helper provides a method to generate the avatar in views
  module Helper
    def avatar_tag(content, size = nil, html_options = {})
      avatar = avatarize_deep_copy(Avatarize.defaults)
      avatar[:data][:avatar_content] = content unless content.nil? || content.empty?
      avatar[:data][:avatar_size] = size unless size.nil? || size <= 0

      tag(:img, html_options.merge(avatar))
    end

    private

    def avatarize_deep_copy(source)
      source.each_with_object(source.dup) do |(key, value), hash|
        hash[key] = if value.is_a?(Hash)
                      avatarize_deep_copy(value)
                    else
                      value
                    end
      end
    end
  end
end
