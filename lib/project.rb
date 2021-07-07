class Project
    attr_accessor :title
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backer_list
        ProjectBacker.all.select do |project_backer|
            project_backer.project == self
        end
    end

    def backers
        self.backer_list.map do |project_backer|
            project_backer.backer
        end
    end

end