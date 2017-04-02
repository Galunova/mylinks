namespace :db do
  desc "Populate database with dummy data"
  task :populate => :environment do
    full_reset

    @user = User.create(email: "test@gmail.com", password: "12345678")

    dummy :user, 25 do
      User.create(
        email: Faker::Internet.email,
        password: '123456',
        username: Faker::Internet.user_name
      )
    end
  end

  def full_reset
    puts "Reset old data"
    Rake::Task['db:reset'].invoke
    puts "...reset done"
  end

  def dummy(title, number = 1)
    puts "Creating dummy #{title}..."
    number.times { yield }
    puts "...done"
  end
end