mospend (short for monthly spending) is a simple app that helps you to keep track of your monthly
spendings

## Development

**Setting up**

Do below steps to start running your local development server:

1. Install PostgreSQL
2. Install gems using `bundle` command
3. Create database using `bin/rails db:create` command
4. Run migrations using `bin/rails db:migrate` command
5. Populate the database with initial settings `bin/rails db:seed`
6. Start the development server using `bin/rails server` command
7. Visit the local app @ `localhost:3000`

**Tests**

To run the tests/specs use the command `rspec`

**Linting**

Execute `rubocop -a` to auto fix code style errors
