# frozen_string_literal: true

require 'active_record'
require 'uri'
require 'psych'

namespace :db do
  environment = ENV.fetch('RACK_ENV') { 'development' }

  config = YAML.safe_load(File.read('config/database.yaml'), aliases: true)
  config = config.fetch(environment)

  desc 'Migrate the database'
  task :migrate do
    ActiveRecord::Base.establish_connection(config)
    ActiveRecord::MigrationContext.new('db/migrate', ActiveRecord::SchemaMigration).migrate
    puts 'Database migrated.'
  end
end
