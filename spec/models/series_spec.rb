require 'spec_helper'

describe Series do
  before(:each) do
    @valid_attributes = {
        :name => 'MySeries',
        :begin_date => Date.current
    }
  end

  it "should create a new instance given valid attributes" do
    Series.create!(@valid_attributes)
  end

  it "should ensure that if we have an end date, it is not before the begin date" do
    series = Series.create!(@valid_attributes)
    series.end_date = series.begin_date.years_ago(1)
    series.should_not be_valid
  end

  it "should ensure that if we have an end date equal to the begin date, it is valid" do
    series = Series.create!(@valid_attributes)
    series.end_date = series.begin_date
    series.should be_valid
  end

  it "should ensure that if the end date is greater than the begin date, it is valid" do
    series = Series.create!(@valid_attributes)
    series.end_date = series.begin_date.tomorrow
    series.should be_valid
  end
end
