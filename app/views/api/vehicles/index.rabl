object false
node :success do
  true
end

node :vehicles do
  @vehicles.map do |vehicle|
    {
      plate: vehicle.plate,
      color: vehicle.color,
      year: vehicle.year,
      category: vehicle.category,
    }
  end
end