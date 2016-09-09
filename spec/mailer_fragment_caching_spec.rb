require 'spec_helper'

describe MailerFragmentCaching do

  before :all do
    Rails.cache.clear
  end

  it 'Send an email with no existing content in the cache' do
    email = TestMailer.test_email.deliver!

    expect(email.body.to_s).to include('Static content')
    expect(email.body.to_s).to include('Initial value')
  end

  it 'Send an email with existing content from the cache' do
    Rails.cache.write('views/test_key', 'Pre-cached value')
    email = TestMailer.test_email.deliver!

    expect(email.body.to_s).not_to include('Initial value')
    expect(email.body.to_s).to include('Static content')
    expect(email.body.to_s).to include('Pre-cached value')
  end

end
