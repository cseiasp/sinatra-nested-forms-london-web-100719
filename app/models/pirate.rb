class Pirate
    attr_reader :name 
    attr_accessor :weight, :height

    @@all = []

    def initialize(args)
        @name = args[:name]
        @weight = args[:weight]
        @height = args[:height]
        @@all << self
    end

    def self.all
        @@all
    end


end