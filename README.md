# Mailer Fragment Caching

Allows the use of Rails fragment caching helpers from within mailers.

Tested in Rails `3.2`, `4.0`, `4.1` and `4.2`. If you're using **Rails 5** then you don't need this gem as this feature has now been [added to Rails 5](https://github.com/rails/rails/pull/22825).

# Installation

Add this line to your application's Gemfile:

`gem 'mailer_fragment_caching'`

And then execute:

`$ bundle`

Make sure you have caching enabled in your environment configuration:

`config.action_controller.perform_caching = true`

And configure your cache store as your please:

`config.cache_store = :mem_cache_store`

# Usage

Include the module within your mailer file.

```ruby
class CoolMailer < ActionMailer::Base

  include MailerFragmentCaching

  def cool_email
    ...
  end

end
```

Use cached fragments in your mailer templates, just like regular views.

```erb
<% cache @thing do %>
  <%= render @thing %>
<% end %>
```
