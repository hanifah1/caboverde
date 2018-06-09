if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['pk_test_IUbaoxU5wILXRbRYlawAfP83'],
    secret_key: ENV['sk_test_LHK1a9Zd7VUPulHy9gKwrdUU']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_IUbaoxU5wILXRbRYlawAfP83',
    secret_key: 'sk_test_LHK1a9Zd7VUPulHy9gKwrdUU'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
