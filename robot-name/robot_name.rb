class Robot

  ALPHA = ("A".."Z").to_a
  NUMERIC = (0..9).to_a

  @@names = []

  def all_robot_names
    @@names
  end

  def name
    @name ||= create_name
  end

  def reset
    @name = nil
  end

  private

  def create_name
    t = new_name
    all_robot_names.include?(t) ? add_name(new_name) : add_name(t)
  end

  def add_name(n)
    all_robot_names.push(n)
    return n
  end

  def new_name
    (letters + numbers).flatten.join("")
  end

  def letters
    [].tap do |alpha|
      2.times do
        alpha << ALPHA[rand(ALPHA.length)]
      end
    end  
  end

  def numbers
    [].tap do |num|
      3.times do
        num << rand(NUMERIC.length)
      end
    end
  end

end

module BookKeeping
  VERSION = 2
end