# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_tms-filter_session',
  :secret      => '3a924c6686b7ce68f6ee3739fb694b7e85cd28ef9ca9d6991e2f108c74b65abc1127edbd713f3577c148caa241ac3d64095fc7b6db287733ce9ebbfcaa597664'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
