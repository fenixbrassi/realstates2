Ruby V: ruby 2.7.2p137
Rails V: Rails 6.0.4.1



Step 1)

	Create The rails application:
		rails new realstate --api --database=mysql

Step 2)
	2.1) Config the database credentials (database.yml)
	2.2) Create the Datebase
		bundle exec rake db:create

Step 3) 

	Run the migrations 

		bundle exec rake db:migrate
