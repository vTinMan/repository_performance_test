class SomeThingRepository
  SomeThingData = Struct.new(
    :name,
    :display_name,
    :short_description,
    :is_hidden,
    :kind_cd,
    :category_id,
    :price
  )

  def select_open_data(limit)
    rows = ActiveRecord::Base.connection.exec_query query(limit)
    OpenDataList.new(rows)
  end

  def select_data(limit)
    rows = ActiveRecord::Base.connection.exec_query query(limit)
    SomeThingDataList.new(rows)
  end

  private

  def query(limit)
    some_thing_table = SomeThing.arel_table
    query = some_thing_table.project(
      some_thing_table[:name], some_thing_table[:display_name], some_thing_table[:short_description],
      some_thing_table[:is_hidden], some_thing_table[:kind_cd], some_thing_table[:category_id], some_thing_table[:price]
    ).take(limit).to_sql
  end
end
