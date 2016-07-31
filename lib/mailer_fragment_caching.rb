module MailerFragmentCaching

  include ActionController::Caching::Fragments

  def perform_caching
    ActionController::Base.perform_caching
  end

  def cache_store
    ActionController::Base.cache_store
  end

  def cache_configured?
    perform_caching && cache_store
  end

  # In Rails4, <tt>ActionController::Caching#view_cache_dependencies</tt> must
  # also be duplicated in order for +cache+ to work.
  # <tt>ActionView::Helpers::CacheHelper#fragment_name_with_digest</tt> relies on it.
  if Rails::VERSION::MAJOR >= 4
    def self.included(base)
      base.class_eval do
        class_attribute :_view_cache_dependencies
        self._view_cache_dependencies = []
        helper_method :view_cache_dependencies if respond_to?(:helper_method)
      end
    end

    def self.view_cache_dependency(&dependency)
      self._view_cache_dependencies += [dependency]
    end

    def view_cache_dependencies
      self.class._view_cache_dependencies.map { |dep| instance_exec(&dep) }.compact
    end

    def instrument_fragment_cache(name, key) # :nodoc:
      yield if block_given?
    end
  end
end