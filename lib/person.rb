class Person
  def initialize(arguments)
    arguments.each { |key, value| 
      self.class.attr_accessor(key)
      self.send(("#{key}="), value)
    }
  end
end