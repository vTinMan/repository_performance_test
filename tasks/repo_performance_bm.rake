# frozen_string_literal: true

namespace :repo_performance_bm do
  def loading_method(things)
    some_array = []
    things.each do |thing|
      some_array << [thing.name, thing.display_name, thing.short_description,
                     thing.is_hidden, thing.kind_cd, thing.category_id, thing.price]
    end
  end

  desc 'Repository performance benchmarks'
  task :run, [:limit] => :environment do |_, args|
    limit = (args['limit'] || 50_000).to_i
    Benchmark.bm(25) do |x|
      x.report('ORM') do
        things = SomeThing.limit(limit)
        loading_method(things)
      end
      x.report('ORM with select') do
        things = SomeThing.select(%i[name display_name short_description
                                     is_hidden kind_cd category_id price])
                          .limit(limit)
        loading_method(things)
      end
      x.report('Repo with OpenStruct') do
        things = SomeThingRepository.new.select_open_data(limit)
        loading_method(things)
      end
      x.report('Repo with normal Struct') do
        things = SomeThingRepository.new.select_data(limit)
        loading_method(things)
      end
    end
  end
end
