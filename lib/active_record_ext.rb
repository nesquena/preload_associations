module AssociationsPreload
  module Base
    def preload(records, *args)
      include_associations = send(:merge_includes, send(:scope, :find, :include), args)
      preload_associations(records, include_associations) unless include_associations.empty?
      records
    end
  end
end