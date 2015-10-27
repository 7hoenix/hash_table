require "./node"

RSpec.describe Node, type: :model do
  describe "#push" do
    it "adds a next node to the linked list" do
      node = Node.new("random_key", "random_value")
      node.push("other_key", "other_value")
      expect(node.next.retrieve("other_key")).to eq("other_value")
      expect(node.retrieve("random_key")).to eq("random_value")
    end
  end
end
