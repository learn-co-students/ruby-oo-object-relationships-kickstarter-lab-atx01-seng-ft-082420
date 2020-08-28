require 'pry'

class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end
    
    def backed_projects
        #(ProjectBacker.all.select {| pb | pb.backer == self}).collect{ | p | p.project}
        #line of code above is another way of writing this. 
        
        list_of_pb = ProjectBacker.all.select do | pb |
            pb.backer == self
        end

        list_of_pb.collect do | p |
            p.project 
        end
    end

end
