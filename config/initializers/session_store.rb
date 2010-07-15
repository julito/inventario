# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_inventario_session',
  :secret      => 'f1192624c759658b4514ad9c6eb9e117fb45b759ce320b7ce40d1a4965bf1eb453b39911f14cb6e83e93992a81316b42054a297cff2c8c0c582216f8ff4bd7d6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
