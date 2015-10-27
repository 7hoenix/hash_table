require "./hash_table"

RSpec.describe HashTable, type: :model do
  describe "#push" do
    it "adds an element to the table" do
      hashy = HashTable.new(10)

      hashy.push("random_key", "random_value")
      value = hashy.retrieve("random_key")

      expect(value).to eq("random_value")
    end

    it "can add multiple elements with the same address" do
      hashy = HashTable.new(1)

      hashy.push("random_key", "random_value")
      hashy.push("other_key", "other_value")

      value = hashy.retrieve("random_key")
      other_value = hashy.retrieve("other_key")

      expect(value).to_not eq(other_value)
    end
  end
end
