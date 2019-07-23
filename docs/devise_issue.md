# Code that was tried in `config/environments/development.rb`

```ruby
config.middleware.delete Rack::Lock
config.reload_classes_only_on_change = false
config.allow_concurrency = true
ActiveSupport::Dependencies.interlock.permit_concurrent_loads
```

Also tried toggling `config.cache_classes` and `config.eager_load` to `true`.
