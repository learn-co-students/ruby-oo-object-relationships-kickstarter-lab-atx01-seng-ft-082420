require 'pry'
class Backer
    attr_accessor :name
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def projects
        ProjectBacker.all.select do |pb|
            pb.backer == self
        end
    end

    def backed_projects
        self.projects.map do |project_backer|
            project_backer.project
        end
    end

end 