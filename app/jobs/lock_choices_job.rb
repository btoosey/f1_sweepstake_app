class LockChoicesJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    puts "Test string"
  end
end
