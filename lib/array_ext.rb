module AssociationsPreload
  module Array
    def preload(*args)
      return self if self.empty?
      first.class.preload(self, *args)
    end
  end
end