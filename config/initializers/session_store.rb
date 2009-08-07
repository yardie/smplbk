# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_simplebooker_session',
  :secret      => 'a856c876c56a3892ef0c600c45716bd895a2a5320cd4bec4b3b99289065c35216f976a45d32d830ee4d4ed8b9258b297126f37ddf279d6beb62836472d65495f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
