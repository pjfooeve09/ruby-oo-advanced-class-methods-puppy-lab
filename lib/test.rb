require "pry"

class Person
    attr_accessor :name
    @@all = []
    def self.all
      @@all
    end
    def initialize(name)
      @name = name
      @@all << @name
    end
    def normalize_name
      self.name.split(" ").collect{|w| w.capitalize}.join(" ")
    end
    def self.normalize_names
      self.all.each do |person|
        person.name = person.normalize_name
        binding.pry
      end
    end
  end 
  
peter = Person.new('pete')
puts peter.normalize_name

