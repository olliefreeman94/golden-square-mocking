require "CatFacts"

RSpec.describe CatFacts do
  it "returns a formatted cat fact" do
    requester = double :requester
    expect(requester).to receive(:get).with(
      URI("https://catfact.ninja/fact")
    ).and_return(
      '{"fact":"The average cat food meal is the equivalent to about five mice.","length":63}'
    )
    cat_facts = CatFacts.new(requester)
    expect( cat_facts.provide ).to eq "Cat fact: The average cat food meal is the equivalent to about five mice."
  end
end