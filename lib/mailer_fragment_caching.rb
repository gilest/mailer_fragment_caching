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

end