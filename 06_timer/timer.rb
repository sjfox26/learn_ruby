class Timer
  attr_accessor :seconds
  
  def initialize
    @seconds = 0
  end
  
  def time_string
    Time.at(@seconds).strftime "%H:%M:%S"
  end
  
end


#common questions- http://ruby-doc.org/core-2.0.0/Time.html
