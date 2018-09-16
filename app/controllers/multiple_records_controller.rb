class MultipleRecordsController < ApplicationController
  def create
    AddNewRecordsWorker.perform_in(10.seconds)
    # CreateNewRecords.call
    redirect_to root_path
  end

  def destroy
    CleanUpRecordsWorker.perform_in(10.seconds)
    # CleanUpRecords.call
    redirect_to root_path
  end
end

# delayed job example
# def create
#   CreateNewRecords.delay.call
#   redirect_to root_path
# end

# sidekiq example
# def create
#   HardWorker.perform_in(4.seconds)
#   HardWorker.perform_async
#   redirect_to root_path
# end
