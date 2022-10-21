class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    # 2 Raising our custom error
    if person.is_a?(Person)
      self.partner = person
      person.partner = self
    else
      # 2.2 Implementing the rescue
      begin
        raise PartnerError
      rescue PartnerError => error
        puts error.message
      end
    end
  end

  # 1 Defining the custom error class
  class PartnerError < StandardError
    # 1.1 Writing a Custom Error Message
    def message
    "you must give the get_married method an argument of an instance of the person class!"
  end
  end

end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name




