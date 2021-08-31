# Laravel development environment using Docker

* Create a Laravel application using composer container
   - `docker-compose run --rm composer create-project laravel/laravel --prefer-dist .`
   - You would see the app created inside the `src` folder
* In the `.env` file inside the source folder we need to configure the mysql connection settings
* Try to start server php mysql services
   - `docker-compose up -d server php mysql`
   - Now if you visit `http://localhost:8000/` you should see the Laravel app
   - Stop using `docker-compose down`
   - Added php and mysql as dependencies to server container so we can use `docker-compose up -d server`
