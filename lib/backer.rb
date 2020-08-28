require 'pry'

class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        # Create method that connects
        # project with the backer
        # project == self creating ProjectBacker
        ProjectBacker.new(project, self)
        
    end

    def backed_projects
        # projects placed in an array
        # projects have to == backers of project
        # I have to make the
        pb = ProjectBacker.all.select do |item|
            item.backer == self  
        end
        # take
        pb.collect do |pb|
            pb.project  
        end
        # binding.pry
    end

end