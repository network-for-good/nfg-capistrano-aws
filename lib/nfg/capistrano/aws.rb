require 'nfg/capistrano/config/settings'

%w(sidekiq.rake aws.rake config.rake migrations.rake).each do |file|
  load File.expand_path("../tasks/#{file}", __FILE__)
end

require 'nfg/capistrano/config/callbacks'