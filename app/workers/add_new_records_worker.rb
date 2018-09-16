class AddNewRecordsWorker
  include Sidekiq::Worker

  def perform(*_args)
    puts "Adding"
    2.times { CreateNewRecords.call }
  end
end
