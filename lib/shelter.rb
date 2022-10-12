class Shelter
    attr_reader :name, :capacity, :pets

    def initialize(name, capacity)
        @name = name
        @capacity = capacity
        @pets = []
    end

    def add_pet(name)
        pets << name
    end
    

    def call_pets
        called_pets = []
        pets.each do |pet|
            called_pets << "#{pet}!"
        end
        return called_pets
    end

    def patrons
        pets
    end

    def over_capacity?
        capacity < pets.count
    end 

    def adopt
        if capacity >= pets.count
        else until capacity >= pets.count
            pets.shift
            end
        end
        return pets
    end
end