class Trip
  attr_reader :contents

  def initialize(initial_contents)
    @contents = initial_contents || {}
  end

  def add_package(package_id)
    contents[package_id.to_s] ||= 0
    contents[package_id.to_s] += 1
  end

  def total 
    contents.values.sum
  end

end
