require('parcels')
require('pry')
require('rspec')

  describe('#parcels') do
    describe('#volume') do
      it("calculates volume based on width, length and height and returns the value") do
        volume = Parcel.new(2, 2, 4, 0, 0, 0)
        expect(volume.volume()).to(eq(0))
      end
    end

    describe('#weight') do
      it("returns $5 for parcels less than 5lbs") do
        weight = Parcel.new(2, 2, 4, 3, 0, 0)
        expect(weight.weight()).to(eq(5))
      end
    end

    describe('#speed') do
      it("returns $5 for a parcel over 500 unit of volume") do
        speed = Parcel.new(10, 10, 6, 10, 5, 0)
        expect(speed.speed()).to(eq(5))
      end
    end

    describe('#distance') do
      it("returns $5 for a long distance parcel") do
        distance = Parcel.new(10, 10, 6, 10, 5, 1)
        expect(distance.distance()).to(eq(5))
      end
    end

    describe('#cost_to_ship') do
      it("returns $5 for a long distance parcel") do
        cost = Parcel.new(10, 10, 6, 10, 5, 1)
        expect(cost.cost_to_ship()).to(eq(25))
      end
    end

end
