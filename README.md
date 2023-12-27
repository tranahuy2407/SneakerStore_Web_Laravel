Installation
After downloading the project, navigate into it.

$ cd nombreRepositorio

Run the following command.

$ composer install

Modify the name of the file .env.example to .env and add your credentials.

Finally, we just need to generate a key for our app.

$ php artisan key:generate
Alright, now we can run the project.

$ php artisan serve
