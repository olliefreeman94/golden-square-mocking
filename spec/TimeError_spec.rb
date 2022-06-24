require "TimeError"
require 'timecop'

RSpec.describe TimeError do
  it "returns difference between remote and local times" do
    requester = double :requester
    expect(requester).to receive(:get).with(
      URI("https://worldtimeapi.org/api/ip")
    ).and_return(
      '{"utc_datetime":"2022-06-24T00:00:00+01:00"}'
    )
    time_checker = TimeError.new(requester)
    time = Time.new(2022, 6, 24)
    expect( time_checker.error(time) ).to eq 0
    # Timecop.freeze(Time.local(2022, 6, 24)) do
    #   expect( time_checker.error ).to eq 0
    # end
  end
end