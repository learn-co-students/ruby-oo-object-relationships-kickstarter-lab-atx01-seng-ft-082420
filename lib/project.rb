require 'pry'

class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        b = ProjectBacker.all.select do |item|
            item.project == self
            # binding.pry
        end
        b.collect do |b|
            b.backer 
        end
    end
end
