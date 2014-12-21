class StaticPagesController < ApplicationController
  require 'rest-firebase'
  def home

  end

  def update
	f = RestFirebase.new :site => 'https://readingapp.firebaseio.com/',
	                 :secret => 'secret',
                     :d => {:auth_data => 'something'},
                     :log_method => method(:puts),
                     # `timeout` in seconds
                     :timeout => 10,
                     # `max_retries` upon failures. Default is: `0`
                     :max_retries => 3,
                     # `retry_exceptions` for which exceptions should retry
                     # Default is: `[IOError, SystemCallError]`
                     :retry_exceptions =>
                       [IOError, SystemCallError, Timeout::Error],
                     # `error_callback` would get called each time there's
                     # an exception. Useful for monitoring and logging.
                     :error_callback => method(:p),
                     # `auth_ttl` describes when we should refresh the auth
                     # token. Set it to `false` to disable auto-refreshing.
                     # The default is 23 hours.
                     :auth_ttl => 82800,
                     # `auth` is the auth token from Firebase. Leave it alone
                     # to auto-generate. Set it to `false` to disable it.
                     :auth => false # Ignore auth for this example!


	p f.post("users", :email => params[:email], :intention => params[:intention])

	@email = params[:email]

  end

end
