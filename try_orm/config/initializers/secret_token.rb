# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
TryOrm::Application.config.secret_key_base = 'b7eb498222b312f10a951dd295a22b0b21a540bf9bfbb617e2c97ad7c6adf7ca35b8474e524f4923a450aad45cf30f113a7a36d03cd20e267923e1d334495497'
