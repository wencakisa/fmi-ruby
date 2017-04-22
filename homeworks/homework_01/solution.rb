SUBSTANCES = {
    :water => { melting_point: 0, boiling_point: 100 },
    :ethanol => { melting_point: -114.1, boiling_point: 78.37 },
    :gold => { melting_point: 1064, boiling_point: 2700 },
    :silver => { melting_point: 961.8, boiling_point: 2162 },
    :copper => { melting_point: 1085, boiling_point: 2567 }
}

def degrees_to_celsius(degrees, temp_unit)
  case temp_unit
    when 'F' then (degrees - 32) / 1.8
    when 'K' then degrees - 273.15
    else degrees
  end
end

def degrees_from_celsius(degrees, temp_unit)
  case temp_unit
    when 'F' then degrees * 1.8 + 32
    when 'K' then degrees + 273.15
    else degrees
  end
end

def convert_between_temp_units(degrees, from_unit, to_unit)
  degrees_in_celsius = degrees_to_celsius(degrees, from_unit)

  degrees_from_celsius(degrees_in_celsius, to_unit)
end

def melting_point_of_substance(substance, temp_unit)
  degrees_from_celsius(SUBSTANCES[substance.to_sym][:melting_point], temp_unit)
end

def boiling_point_of_substance(substance, temp_unit)
  degrees_from_celsius(SUBSTANCES[substance.to_sym][:boiling_point], temp_unit)
end

puts melting_point_of_substance('water', 'C')
puts melting_point_of_substance('water', 'K')
puts melting_point_of_substance('gold', 'C')
puts boiling_point_of_substance('water', 'C')
puts boiling_point_of_substance('ethanol', 'F')
puts boiling_point_of_substance('copper', 'K')