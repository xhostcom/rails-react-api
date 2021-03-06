Rails.application.config.middleware.use Rack::Cors do
  allow do
    origins 'http://localhost:3001'
    resource '*',
             headers: :any,
             expose: ['access-token', 'expiry', 'token-type', 'uid', 'client'],
             methods: %i[get post options delete put]
  end
end
