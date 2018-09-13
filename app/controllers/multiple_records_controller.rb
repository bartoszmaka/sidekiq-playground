class MultipleRecordsController < ApplicationController
  def create
    # delayed job example
    # CreateNewRecords.delay.call
    CreateNewRecords.call
    redirect_to root_path
  end

  def destroy
    CleanUpRecords.call
    redirect_to root_path
  end
end
