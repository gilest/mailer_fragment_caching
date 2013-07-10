Mailer Fragment Caching
=======================

Use Rails fragment caching from within your mailers. 

Very much a work in progress, I have only used tried it with Rails 4.0.0 and Ruby 2.

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

```
class CoolMailer

  include MailerFragmentCaching
  
  def cool_email
    ...
  end

end
```

Use cached fragments in your mailer templates, just like regular views.

```
<%= cache @thing do %>
  <%= render @thing %>
<% end %>
```
