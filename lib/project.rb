class Project
  attr_accessor :title, :backers
  @@all = []
  def initialize(title)
    @title = title
    @@all << self
    @backers = []
  end

  def add_backer(backer)
    self.backers << backer
  end

  def retrieve_or_create_by_title(title)
    retrieved = self.class.all.find {|project| project.title == title}
    if retrieved
      retrieved
    else
      Project.new(title)
    end
  end
end
