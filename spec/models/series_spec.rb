require 'spec_helper'

describe Series do

  it "has a valid factory" do
    FactoryGirl.create(:series).should be_valid
  end

  it "is invalid without a name" do
    FactoryGirl.build(:series, :name => nil, :begin_date => Date.current).should_not be_valid
  end

  it "is invalid without a begin date" do
    FactoryGirl.build(:series, :name => Faker::Name.name, :begin_date => nil).should_not be_valid
  end

  it "has an end date that is equal to or after the begin date if it has an end date at all" do
    @series = FactoryGirl.create(:series)
    @series.end_date = @series.begin_date.years_ago(1)
    @series.should_not be_valid

    @series.end_date = @series.begin_date
    @series.should be_valid
  end
end
