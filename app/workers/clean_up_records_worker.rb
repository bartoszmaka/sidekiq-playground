class CleanUpRecordsWorker
  include Sidekiq::Worker

  def perform(*_args)
    puts "removing"
    CleanUpRecords.call
  end
end
