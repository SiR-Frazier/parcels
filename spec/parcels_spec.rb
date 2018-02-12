require('parcels')
require('pry')
require('rspec')

describe('#volume_calculator') do
  it("calculates volume based on width, length and height and returns the value") do
    volume = Parcel.new(2, 2, 4)
    expect(volume.volume_calculator()).to(eq(16))
  end
end
