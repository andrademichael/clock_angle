require('rspec')
require('clock_angle')
require('pry')

describe('String#clock_angle') do
  it('returns 0° if input is the string "12:00"') do
    expect("12:00".clock_angle).to(eq(0))
  end

  it('returns the degree distance for every hour up to 6 as a Float') do
    expect("6:00".clock_angle).to(eq(180))
  end

  it('returns the degree distance for every hour between 6 and 12 as a Float') do
    expect("9:00".clock_angle).to(eq(90))
  end

  it('returns the distance between the hour and minute hand in degrees') do
    expect("2:30".clock_angle).to(eq(105))
  end
end
