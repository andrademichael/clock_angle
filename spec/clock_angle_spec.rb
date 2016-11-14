require('rspec')
require('clock_angle')

describe('String#clock_angle') do
  it('returns 0° if input is the string "12:00"') do
    expect("12:00".clock_angle).to(eq("0°"))
  end
end
