# T2A2 Marketplace Application

## Identification of the problem you are trying to solve by building this particular marketplace app

The drilling industry can be a dynamic workplace. Clients contracts can changed regularly and employee demand can rise and fall depending on fluctuations around the world. There is are limited platforms for company's to advertise casual positions to skilled personnel directly.
There is a need for an application to provide a bridge between drillers and employers to connect and network with each other without the need to search through other job providers.

## Why is it a problem that needs solving?

Filling this void in the market will give the employers a platform to advertise positions on a short term basis. Also it allows users to see the length of time that they can expect to have work, which can help navigate their future decisions.

## A link (URL) to your deployed app (i.e. website)

[Drillers Connect](https://drillersconnect.herokuapp.com/)

https://drillersconnect.herokuapp.com/

## A link to your GitHub repository (repo)

James Perrin Drillers Connect [Git hub](https://github.com/perro88/DrillersConnect)

https://github.com/perro88/DrillersConnect

## Description of your marketplace app (website)

### Purpose

Drillers Connect is a hub for people in the drilling industry.  
In changing industry where job stability and full-time employment is an uncertainty, Drillers Connect provides a job network application that is focused primarily on short term contracts.  
The app gives the ability to employers to post jobs on a main page. The users can sign up, have their current and previous information presented alongside an uploaded profile picture and apply for the jobs available. The employer can then review job applicants and their work information. Only the employer that created the job post has access to the users email so they can contact the applicant that suits them best.

### Features

Users

- Users must sign in.
- Each User has their own page which they can update their own details and upload a profile picture.
- They apply for jobs by leaving a link to their personal page on the job listing.
- A user has the ability to become an employer

Employers

- Employers sign in.
- Ability to fill out a form detailing the job.
- Ability to add a 'new job' post on the jobs page.
- Can delete and edit their job posts.
- After posting the job the employer can view the job and see users that have applied.
- Employers can view users personal pages that have applied.
- Have access to users email that have applied to their job.
- A employer has the ability to become a user

Administration

- Admins have a special login. email: admin@admin.com, password: Admin1
- The Admins have the ability to delete any user or employer.

### Sitemap

![Drillers Connect Site Map](./docs/sitemap.png)

### Screenshots

![home](./docs/screenshots/home.png)
![home2](./docs/screenshots/home2.png)
![home](./docs/screenshots/login.png)
![login](./docs/screenshots/home.png)
![profile](./docs/screenshots/profile.png)
![jobindex](./docs/screenshots/jobindex.png)
![userindex](./docs/screenshots/userindex.png)
![jobshow](./docs/screenshots/jobshow.png)
![usershow](./docs/screenshots/usershow.png)
![applyjob](./docs/screenshots/applyjob.png)

### Target audience

This application is targeted towards people who are active in the drilling industry.  
Such as:

- Drilling contractors: Ensign Energy Services, Boart Longyear, Mitchels Drilling Services, Savannah
- Resource company's: Origin, Santos, MMG, Chevron, BHP
- Drilling Specialist: Directional Drillers, Drilling Engineers
- Drill crew: Drillers, Assistant Drillers, Roughnecks, Derrickman, Offsiders
- Entry level: People who are looking for a start into the industry

### Tech stack (e.g. html, css, deployment platform, etc)

- Html
- Css/SCSS
- Rails: A framework for the Ruby language to develop web applications.
- Bootstrap: A front-end framework to help style SCSS.
- Cloudinary: Is a cloud-based image and video management services.
- Devise: Is a gem that is used for User Authentication.
- Dotenv: Is a gem that creates a ENV file that contains configuration variables
- Rolify: Is a gem for assigning roles.
- Pundit: Is a gem that provides a set of helpers which provides a authorization system.
- Postgresql: Is a free and open-source relational database management system.
- Heroku: Heroku is a cloud platform for deploying web applications.

## User stories for your app

[Trello](https://trello.com/b/smssAhWM/drillers-connect-marketplace-app)

Setup the Rails applications, deploy to heroku and generate User Model with Devise

- Generate a Rails app and setup Postgresql and local host
- Deploy app onto Heroku and link Github page
- Install and setup Devise
- Generate User model with Devise
- Setup the log in/ sign up feature that gives users permission to access the application

Generate Models and Controllers. Setup actions and routes for Controllers. Complete CRUD

- Generate Job and Information Models
- Generate Jobs, Information and Pages(Home/Root) Controllers
- Define all routes and actions for controllers
- Create simple nav bar
- Implement CRUD actions where relevant on Views and Controllers

Installed and implemented Rolify and Pundit

- Install and setup Rolify
- Create Roles :Employer, :Admin for basic seeds and testing
- Install and setup Pundit
- Create policies for Controller authorization
- Test/Debug

Installed and implemented Cloudinary and Dotenv

- Install and setup Cloudinary
- Install and setup Dotenv
- Add .env to git ignore
- Add Cloudinary credentials to .env file
- Add Cloudinary credentials to Heroku

Create a seed file

- Create a extensive seed file that contains Users, Employers, Information and Jobs

Develop View pages

- Develop all views relevant to the User. Customize links that are accessible
- Develop all views relevant to the Employer. Customize links that are accessible
- Develop all views relevant to the Admin. Customize links that are accessible
- Make buttons to enable Users to become Employers
- Make buttons to enable Employers to become Users
- BASIC MVP DONE :)

Generate a JobUser join table to allow users to apply for jobs

- Generate Model JobUser that is a join table to User and Job Models
- Setup relations and dependencies
- Create actions and View logic
- Test

Create a basic front-end styling for the application

- Install and setup Bootstrap
- Implement styling in Views
- Implement styling in stylesheet

Bug hunt

- Try to break the app!!!

### Wire-frames for your app

Home page

![home](./docs/wireframes/home.png)

Profile page

![profile](./docs/wireframes/profile.png)

Users page

![users](./docs/wireframes/users.png)

Jobs index page

![job_index](./docs/wireframes/jobindex.png)

Job show page

![job_show](./docs/wireframes/jobshow.png)

For a closer look at the wireframes they are located in the docs folder.

## An ERD for your app -->

![Drillers Connect ERD Map](./docs/Marketplace_ERD.png)

## Explain the different high-level components (abstractions) in your app

In the application the main component is based around the Users Model.  
A logged in user has access to create a profile with recent work information and upload a profile picture.  
They can view available jobs and apply for them by leaving a link to their profile page.  
After signing up any user has the choice to become an employer. An employer is able to view users profile information and can post, edit and delete jobs. On a job that a employer has posted they can see the users that have applied for the position and have access to their emails so they can respond to the applicants.  
There is a Admin login who is the only user that has the authority to remove any user/employer from the application.

## Detail any third party services that your app will use

Bootstrap: Utilized to quickly create a functional and responsive web page.

Cloudinary: Used to store all uploaded profile pictures of the users.

Postgresql: To store and manage all of the table data from the application in a relational database. In the app it has the ability to access the Information and Job data through the User table with the aid of foreign keys. The 'apply for job' feature was made easy through the use of a join table.

Heroku: Heroku was used as a platform for deploying the web application. Also it allowed for dynamic development and testing.

## Describe your projects models in terms of the relationships (active record associations) they have with each other

User is the main model to which other models 'belongs_to'. This is shown in the other models such as in the Jobs model when it states 'belongs_to' meaning it can only have one association to the User Model.
Inturn the User model 'has_many' method associates that a User can have many associations the Job model. A dependent: :destroy method can also accompany a 'has_many' reference which indicates that if a instances of the User data were to be removed, all job instances connected to that user would also be removed.  
Another Rails helper 'has_one_attached' is utilized when attaching a form of media the User model and allows only one association to the connected model.

## Discuss the database relations to be implemented in your application

In the database all tables relate primarily through the User Model. Foreign keys are used to indicate relationships between the tables. This is either a one to one, or one to many relationship. The latter can be seen in the Jobs table where there is a foreign key of User ID to reference which user that job post belongs to. To elaborate a user can have many jobs but a job can only have one user. This is also true for the Information table.  
There is also a implementation of a join table in the database. It is used to hold data for when a user applies for a job. Because this feature requires a many to many relationship between the User and Job tables, a separate join table named JobUser is needed. User can have many JobUsers. A Job can have many JobUsers. But a JobUser can only have one of each. Keeping the database fluid with only one to one/one to many relations.

## Provide your database schema design

Refer to the ERD 😎.

## Describe the way tasks are allocated and tracked in your project

After creating the ERD's, wire-frames and sitemap the tasks of the project were separated into dynamic lists of priority to complete a MVP for the application.
Setup, authentication, CRUD, Views, basic styling and then added features.
I started with a hard copy on paper to get a general idea of which order the segments of the application needed to be completed. Then I created a markdown file with the step by step process which I kept on my desktop.
Only after completion of the MVP did I then focus on additional features. Steps for these features were less descriptive since they were not needed for the MVP but still outlined basic goals.
The only goals for production that I tracked intentionally was the completion of the CRUD requirements and completion of the MVP.

The markdown file is available in the docs folder - workflow.md
