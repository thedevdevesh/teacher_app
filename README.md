# TeacherApp

TeacherApp is a Ruby on Rails application designed for managing student information. This project utilizes various technologies and gems to provide a robust and interactive user experience.

## Table of Contents

- [TeacherApp](#teacherapp)
  - [Table of Contents](#table-of-contents)
  - [Features](#features)
  - [Technologies](#technologies)
  - [Setup](#setup)
    - [Prerequisites](#prerequisites)
    - [Installation](#installation)

## Features

- User authentication with Devise
- Responsive UI using Bootstrap
- CRUD operations for student management
- AJAX-based interactions for a seamless experience

## Technologies

- Ruby 3.2.1
- Rails 6.1.4
- PostgreSQL
- Bootstrap 5
- jQuery
- Webpacker

## Setup

### Prerequisites

Ensure you have the following installed on your machine:

- Ruby (version 3.2.1)
- Rails (version 6.1.4)
- PostgreSQL
- Node.js and Yarn (for JavaScript dependencies)

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/thedevdevesh/teacher_app.git
   cd teacher_app
2. **Install gems:**
   ```bash
    bundle install

3. **Install JavaScript dependencies:**
   ```bash
    yarn install
4. **Initialize the database:**
   ```bash
    rails db:create
    rails db:migrate

5. **Running the Application:**
   ```bash
    rails server


