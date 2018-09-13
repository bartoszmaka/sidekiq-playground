class CreateNewRecords
  def self.call
    new.call
  end

  def call
    FactoryBot.create(:article)
  end
  # delayed job example
  # handle_asynchronously :call, run_at: proc { 5.seconds.from_now }
end
