require 'pry'
class Backer
    attr_accessor :name, :project

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        (ProjectBacker.all.select {|backed| backed.backer == self}).collect{|proj| proj.project}
    #     ProjectBacker.all.select do |backed|
    #         (backed.backer == self).collect do |p|
    #             p.project
    #         end
    #     end
    end
    
end


0