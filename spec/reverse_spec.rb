require('rspec')
require('reverse')

describe('reverse') do
  it("returns the integer of 1 for the symbol 'I'") do
    reverse('I').should(eq(1))
  end
  it("returns the integer of 6 for the symbol 'VI'") do
    reverse('VI').should(eq(6))
  end
  it("returns the integer of 4 for the symbol 'IV'") do
    reverse('IV').should(eq(4))
  end
end
