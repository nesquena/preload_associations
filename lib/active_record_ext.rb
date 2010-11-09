module AssociationsPreload
  module Base
    def self.included(base)
      base.send(:include, AssociationsPreload::InstanceMethods)
      base.send(:extend, AssociationsPreload::ClassMethods)
    end
  end

  module InstanceMethods
    def preload(*args)
      self.class.preload(self, *args)
    end
  end

  module ClassMethods
    def preload(records, *args)
      include_associations = send(:merge_includes, send(:scope, :find, :include), args)
      preload_associations(records, include_associations) unless include_associations.empty?
      records
    end
  end
end