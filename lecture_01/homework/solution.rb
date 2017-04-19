CELSIUS_SIGN = 'C'
FAHRENHEIT_SIGN = 'F'
KELVIN_SIGN = 'K'

TEMP_UNITS = {
    CELSIUS_SIGN => {
        FAHRENHEIT_SIGN => 32.8,
        KELVIN_SIGN => 273.15
    },
    FAHRENHEIT_SIGN => {
        CELSIUS_SIGN => -17.22,
        KELVIN_SIGN => 255.927778
    },
    KELVIN_SIGN => {
        CELSIUS_SIGN => -272.15,
        FAHRENHEIT_SIGN => -457.87
    }
}

SUBSTANCES = %w[ water ethanol gold silver copper ]

CELSIUS_MELTING_POINTS = {
    SUBSTANCES[0] => 0,
    SUBSTANCES[1] => -114.1,
    SUBSTANCES[2] => 1064,
    SUBSTANCES[3] => 961.8,
    SUBSTANCES[4] => 1085
}

CELSIUS_BOILING_POINTS = {
    SUBSTANCES[0] => 100,
    SUBSTANCES[1] => 78.37,
    SUBSTANCES[2] => 2700,
    SUBSTANCES[3] => 2162,
    SUBSTANCES[4] => 2567
}

def convert_between_temp_units(degrees, default_temp_unit, result_temp_unit)
  degrees + TEMP_UNITS[default_temp_unit][result_temp_unit]
end

def point_of_substance(substance, temp_unit, celsius_temp_hash)
  celsius_point = celsius_temp_hash[substance]

  unless temp_unit == CELSIUS_SIGN
    return convert_between_temp_units(celsius_point, CELSIUS_SIGN, temp_unit)
  end

  celsius_point
end

def melting_point_of_substance(substance, temp_unit)
  point_of_substance(substance, temp_unit, CELSIUS_MELTING_POINTS)
end

def boiling_point_of_substance(substance, temp_unit)
  point_of_substance(substance, temp_unit, CELSIUS_BOILING_POINTS)
end

puts melting_point_of_substance('water', 'C')
puts melting_point_of_substance('water', 'K')
puts boiling_point_of_substance('water', 'C')
puts boiling_point_of_substance('ethanol', 'F')
puts boiling_point_of_substance('copper', 'K')