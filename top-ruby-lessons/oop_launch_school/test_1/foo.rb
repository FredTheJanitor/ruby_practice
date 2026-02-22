class MyCar
  attr_accessor :year, :color, :model

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
    @running = "off"
    @stall = "no"
    @crash = "no"
  end

  def start
    if running == "on"
      return self.stall = "yes"
    end
    self.running = "on"
  end

  def turn_off
    self.running = "no"
    if speed > 0
      self.crash = "yes"
    end
    self.speed = 0
  end

  def speed_up
    self.speed += 5
  end

  def brake
    if speed > 0
      self.speed -= 5
    end
  end

  def info
    "year: #{year}, color: #{color}, model: #{model}, speed: #{speed}, running: #{running}, stalled: #{stall}, crash: #{crash}"
  end

end

