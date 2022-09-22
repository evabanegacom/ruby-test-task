require "date"
require_relative "spec_helper"
require_relative "../app/post"
require_relative "../app/post_serializer"

RSpec.describe PostSerializer do
  subject { described_class.new(post) }

  let(:post) do
    Post.new(1, "2020 is the year of Ruby!", DateTime.new(2020, 1, 1).strftime("%m-%d-%Y"))
  end

  it "serializes object" do
    expect(subject.serialize).to eq({
      id: 1,
      title: "2020 is the year of Ruby!",
      date: "01-01-2020",
    })
  end
end
