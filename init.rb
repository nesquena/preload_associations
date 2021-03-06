require 'active_record_ext'
require 'array_ext'

# extend activerecord with the :preload method
ActiveRecord::Base.send(:include, AssociationsPreload::Base)
# add :preload method to array
Array.send(:include, AssociationsPreload::Array)
