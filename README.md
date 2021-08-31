# README

#car_booking_app

  CAR_BOOKING_APP was designed a ROR application for a car rental company which allows the user to book a car for sometime. Assume main Stakeholders are User,Car,Booking. You are allowed to add more stakeholders. Every car will have its own amount to book. Ex. Baleno will cost 100 for a booking.

  * model created for User, Car and Bookings 
  * creating column and records in tables by using migration in database
  * makes link between two tables by associations like one to one , one to many and many  to many

          MANY TO MANY ASSOCIATION

           Eg :  1) user has many cars through bookings
                 2) car has many users through bookings
                 3) bookings belongs to user and car

  * created controllers for users, cars and bookings

  * after that moves to fix a url in routes with http methods and respective controllers and actions

  * In a particular controller write a respective logics in actions(methods)

  * API list:
    1. Api for a user. User name should be present.
    2. Api for a booking -  A user should select a car to book.
    3. Api to list past bookings for a user. Input will be user id.
    4. Api to list cars.
    5. Api to list past bookings for a car. Input will be car id.
    6. Api to list the different cars booked by a user. Input will be user id.
