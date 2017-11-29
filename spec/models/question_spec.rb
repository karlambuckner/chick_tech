require 'rails_helper'

describe Question do
  it { should validate_presence_of :heading }
  it { should validate_presence_of :post }
  it { should validate_uniqueness_of :heading}
  it { should validate_uniqueness_of :post}
  it { should have_many :answers }

end
