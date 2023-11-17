Rails.configuration.stripe = {
  :publishable_key => 'pk_test_51O8o1USDFWtOrrM4OVcV03YoZXKNklBpTNTzPgzXFtdTbpRbtJCrdVn0yEXqmO18WtIdZYQor652T3CluEE07z6L00FXKIxjMn',
  :secret_key => 'sk_test_51O8o1USDFWtOrrM48lqxkcFoPRUV7zZwYSCENII73NL5QyK1jWs4wXX5vBLMpEOzi8c1jqWhqSjdE3CymcABr0Fc00zjEXTwoF'
}
Stripe.api_key = Rails.configuration.stripe[:secret_key]
