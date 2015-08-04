ApiLock.setup do |config|
  # The secret key used by JWT. API Lock uses this key to generate
  # random tokens. Changing this key will invalidate all existing access tokens.
  # API Lock will use the `secret_key_base` on Rails 4+ applications as its `secret_key`
  # by default. You can change it below and use your own secret key.

  config.secret_key = '<%= SecureRandom.hex(64) %>'

end