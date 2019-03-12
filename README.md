# Avatarize

Gem to create letter avatars from users name (or any string).
It uses HTML canvas to generate the image (base64).

Based on [Lee Crossley's](https://github.com/leecrossley) [gist](https://gist.github.com/leecrossley/6027780)

## Installation

Add this line to your application's `Gemfile`:

```ruby
gem 'avatarize'
```

Add the following to `application.js`:
```js
  //= require avatarize

  window.addEventListener("turbolinks:load", Avatarizer.processAll);
  // Or this if not uing turbolinks
  window.addEventListener("load", Avatarizer.processAll);
```

## Usage

To create an avatar:
```erb
  <%= avatar_tag 'Avatarize' %>

  # Custom size
  <%= avatar_tag 'Avatarize', 200 %>

  # Other html attributes
  <%= avatar_tag 'Avatarize', nil, class: 'rounded-circle', title: 'Avatar' %>
```

## Contributing

Bug reports and pull requests are welcome.

1. Fork the project https://github.com/rbague/avatarize/fork
2. Run `bundle` and `bundle exec rake`
3. Make your feature or bug fix
4. Add tests for it. This is important so that it does not break in a future version.
5. Submit a new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
