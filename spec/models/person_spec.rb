require 'rails_helper'

describe Person, type: :model do
  it "should have a name" do
    expect(Person.create).to have(1).error_on(:name)
  end
  
  it "should have a non-blank name" do
    expect(Person.create({name: '' })).to have(1).error_on(:name)
  end
end
