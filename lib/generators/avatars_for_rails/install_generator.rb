class Mailboxer::InstallGenerator < Rails::Generators::Base #:nodoc:
  include Rails::Generators::Migration
  
  source_root File.expand_path('../templates', __FILE__)
  
  require 'rails/generators/active_record'
  
  def self.next_migration_number(dirname)
    ActiveRecord::Generators::Base.next_migration_number(dirname)
  end
  
  def create_migration_file
    migration_template 'migration.rb', 'db/migrate/create_avatars_for_rails.rb'
  end
end