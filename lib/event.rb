require "pry"
require "time"

class Event
  attr_accessor = :start_date, :length, :title, :attendees
  @@all_events = []
 

  def initialize (start_date_to_update, length_to_update, title_to_update, attendees_to_update)
    @start_date = Time.parse(start_date_to_update)
    @length = length_to_update
    @title = title_to_update
    @attendees = attendees_to_update
    @@all_events << self
  end
  
  def postpone_24
    @start_date = @start_date + 60 * 60 * 24 # 60secs * 60mn * 24h
    puts @start_date
    return @start_date
  end

  def end_date
    @end_date = @start_date + @length * 60
    puts @end_date 
    return @end_date 
  end 

  def is_past
    if Time.now > @start_date 
      print true 
    else  
      print false
    end
  end 

  def is_future
    if Time.now < @start_date 
      print true 
    else  
      print false
    end
  end 

  def self.all
    return @@all_events
  end
 
  def is_soon 
    if @start_date < Time.now + 60 * 30
      print "l'événement est bientôt"
    else  
      print "l'événement est dans plus de 30 minutes"
    end
  end 

  def to_s
    puts " "
    puts "Titre : #{@title} "
    puts "Date de début : #{@start_date}"
    puts "Durée : #{@length} minutes"
    puts "Invités : #{@attendees.join(", ")}"
  end


end 


binding.pry 