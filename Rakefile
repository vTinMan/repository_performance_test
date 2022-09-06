require 'active_record'
require 'faker'
require_relative './src/some_thing'
require_relative './src/some_thing_repository'
require_relative './src/open_data_list'
require_relative './src/some_thing_data_list'

Rake.add_rakelib 'tasks'

require 'standalone_migrations'
ENV["SCHEMA"] ||= File.join(ActiveRecord::Tasks::DatabaseTasks.db_dir, "schema.rb")
StandaloneMigrations::Tasks.load_tasks

