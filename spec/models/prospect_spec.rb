require 'spec_helper'

describe Prospect do
  it "is not valid without email" do
    subject.should have(1).error_on(:email)
  end
end
