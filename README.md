# Problem Statement
The goal of this project is to build a mobile application that enables dealers to book drivers for transporting their goods. The application will have two types of user logins - Dealers and Drivers. Dealers can book drivers whose interested routes match the dealer's location (State and City). Drivers can see the list of dealers who have booked them.

# Use Cases
As a Dealer
New Dealer Signup:

The dealer can sign up using a form that collects the following details:
Name
Mobile Number
Nature of Material
Weight of Material
Quantity
City
State
Dashboard:

The dealer's dashboard will display a list of drivers whose interested routes match the dealer's location (State and City).
The dealer can also search for drivers based on specific routes (From: State and City, To: State and City).
As a Driver
New Driver Signup:

The driver can sign up using a form that collects the following details:
Name
Age
Truck Number
Mobile Number
Truck Capacity
Transporter Name
Driving Experience
3 Interested Routes (From: State and City, To: State and City)
Dashboard:

The driver's dashboard will display a list of dealers who have booked their services.
Features
User Registration and Login:

Users can register and log in using their username and password.
Alternatively, users can also log in using OTP sent to their email.
Dealer Home Screen:

Display a list of drivers with interested routes matching the dealer's location (State and City).
Allow dealers to search for drivers based on specific routes (From: State and City, To: State and City).
Driver Home Screen:

Display a list of dealers who have booked the driver's services.
Deployment
To deploy the application, follow these steps:

Fork and clone the repository from [GitHub Repo URL].

Set up the frontend and backend code on any cloud platform like AWS, Microsoft Azure, Google Cloud, Heroku, or any other platform of your choice.

For databases, you can use any database system, but we recommend using free tier sandboxes on MongoDB Atlas.

Make sure to update the necessary configurations (e.g., database connection strings, API keys) to match your deployment environment.

Technologies Used
Frontend: [List frontend technologies, e.g., React Native, Flutter]
Backend: [List backend technologies, e.g., Node.js, Express]
Database: [List database system, e.g., MongoDB]
