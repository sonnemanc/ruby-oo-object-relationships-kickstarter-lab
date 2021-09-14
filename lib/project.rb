class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def project_backers1
        ProjectBacker.all.select do |c|
            c.project == self
        end
    end

    def backers
        project_backers1.map do |d|
            d.backer
        end
    end

end