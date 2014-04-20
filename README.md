Mailer Fragment Caching
=======================

Use Rails fragment caching from within your mailers. 

Very much a work in progress, apparently works in Rails 3.2 and Rails 4.

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
class CoolMailer

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
