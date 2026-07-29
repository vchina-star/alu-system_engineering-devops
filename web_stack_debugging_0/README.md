# Web Stack Debugging #0

This project focuses on debugging a broken Apache setup running inside a Docker container, so that it correctly serves the string "Hello Holberton" when the root path is queried.

## Task 0: Give me a page!

File: 0-give_me_a_page

The container image holbertonschool/265-0 already had the correct index page content ("Hello Holberton") in place at /var/www/html/index.html, but the Apache web server was not running.

The fix was to start the Apache service:

    service apache2 start

After running this command, querying the root of the server returns "Hello Holberton" as expected.
