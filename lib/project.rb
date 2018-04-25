class Project
  attr_accessor :title
  @@all = []
  def initialize(title)
    @title = title
    @@all << self
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
