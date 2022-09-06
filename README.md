# Benchmarks for Repository pattern versus ActiveRecord

This project provides rake-tasks to compare performance of Repository pattern and ActiveRecord.

Also OpenStruct is added to check performance.

# How to start

Run PostgreSQL.

Make relevant `.envrc` or `config.yml`. You can find `.envrc.example` in source code.

Execute following commands:

    bundle install
    source .envrc
    rake db:create
    rake db:schema:load
    rake db:seed
    rake repo_performance_bm:run

# Results

                                    user     system      total        real
    ORM                         0.819602   0.139791   0.959393 (  1.192897)
    ORM with select             0.598545   0.049890   0.648435 (  0.686818)
    Repo with OpenStruct        1.780801   0.006749   1.787550 (  1.824733)
    Repo with normal Struct     0.144575   0.011026   0.155601 (  0.192547)
