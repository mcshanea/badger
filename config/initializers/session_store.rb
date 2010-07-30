# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_badger_session',
  :secret      => 'c1b22396e518a6ba8f09da662f0cb7b54bb1d68d18fa18e79c8f8616c43e656437bf4ddfdc5d666bc306baa645e86186b6a79db95763da076649a9e2ca881448'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
