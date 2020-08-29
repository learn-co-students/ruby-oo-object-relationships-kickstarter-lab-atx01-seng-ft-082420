class Project

    attr_reader :title
    @@all = []
    def initialize(title)
        @title=title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backers =ProjectBacker.all.select do |project1| 
            #binding.pry
            project1.project.title == self.title 
        end
        backers.collect do |projects|
        #    binding.pry
            projects.backer
        end 
    end
end