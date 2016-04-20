module TripPackagesHelper

  def increment_quantity(id)
    session[:trip][id.to_s] += 1
  end

  def decrement_quantity(id)
    session[:trip][id.to_s] -= 1
  end

end
