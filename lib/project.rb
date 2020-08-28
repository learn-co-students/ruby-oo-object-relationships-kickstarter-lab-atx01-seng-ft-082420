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
        list_of_b = ProjectBacker.all.select do | b |
            b.project == self
        end

        list_of_b.collect do | b |
            b.backer
        end
    end
end
