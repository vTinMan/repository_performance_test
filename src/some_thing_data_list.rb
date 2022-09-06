class SomeThingDataList
  include Enumerable
  def initialize(rows)
    @rows = rows
  end

  def each
    @rows.each do |row|
      order_item = SomeThingRepository::SomeThingData.new(row.values)
      yield(order_item)
    end
  end
end
