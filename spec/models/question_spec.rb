require "spec_helper"

describe Question, type: :model do
  describe "attributes" do
    it { should have_attribute("statement").with(type: :string, limit: 1024, null: false) }
    it { should have_attribute("answer").with(type: :string, limit: 255, null: false) }
  end
end
