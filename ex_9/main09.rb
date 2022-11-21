class Employee

    def prepare(bike)
      @bike = bike || nil
      begin
        @bike.prepare()
      rescue
        puts 'Uhh, boss, I dunno how to do that.'
      end
    end
  
  end
  
  class BmxBike
  
    def prepare
      puts 'Cleaning...'
    end
  
  end
  
  class RoadBike
  
    def prepare
      puts 'Lubricating gears...'
    end
  
  end
  
  class MountainBike
  
    def prepare
      puts 'Adjusting suspension...'
    end
  
  end
  
  class Tricycle
  
    def prepare
      puts 'Adjusting seat...'
    end
  
  end
  
  bikes = [BmxBike.new, RoadBike.new, MountainBike.new, Tricycle.new]
  
  employee = Employee.new
  
  bikes.each do |bike|
    employee.prepare(bike)
  end