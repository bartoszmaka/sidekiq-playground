class CleanUpRecords
  def self.call
    new.call
  end

  def call
    Article.destroy_all
    Writer.destroy_all
    Project.destroy_all
  end
end
