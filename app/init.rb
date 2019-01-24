require 'active_record'
require_relative './models/study'
require_relative './models/account'
require_relative './models/endpoint'
require_relative './models/endpoint_connection'

def db_config
  db_config_file = File.join(File.expand_path('..', __FILE__), '..', 'db', 'config.yml')
  YAML.load(File.read(db_config_file))
end

ActiveRecord::Base.establish_connection(db_config["development"])

