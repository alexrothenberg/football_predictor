# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_football_session',
  :secret      => 'eb89109499069313fef65391ce54eeb8a66b8935b5ff51562e441df988926541d8a96bf1f49d1845a9d63260c379f68bf000c0cdf2a8520958b723beafb41df3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
