# Project Name

This README provides essential information to set up and run the application successfully. The application is built with Ruby version 3.3.0 and Rails version 7.0.4.

## Table of Contents

- [Installation](#installation)
- [API Documentation](#api-documentation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Installation

To get started with the application, follow these steps:

1. Ensure you have Ruby version 3.3.0 installed.

    ```bash
    gem install ruby -v 3.3.0
    ```

2. Install Rails version 7.0.4 by running:

    ```bash
    gem install rails -v 7.0.4
    ```

3. Clone the repository:

    ```bash
    git clone https://github.com/your-username/your-project.git
    ```

4. Navigate to the project directory:

    ```bash
    cd your-project
    ```

5. Install dependencies:

    ```bash
    bundle install
    ```

6. Set up the database:

    ```bash
    rails db:create
    rails db:migrate
    ```

## API Documentation

The API supports CRUD operations and can be accessed through the following links:

- **Categories:** [https://aim2.onrender.com/categories](https://aim2.onrender.com/categories)
    - Retrieve all categories: GET `/categories`
    - Retrieve a specific category by ID: GET `/categories/:id`
    - Create a new category: POST `/categories`
    - Update a category: PUT `/categories/:id`
    - Delete a category: DELETE `/categories/:id`

- **Requests:** [https://aim2.onrender.com/requests](https://aim2.onrender.com/requests)
    - Retrieve all requests: GET `/requests`
    - Retrieve a specific request by ID: GET `/requests/:id`
    - Create a new request: POST `/requests`
    - Update a request: PUT `/requests/:id`
    - Delete a request: DELETE `/requests/:id`

- **Assets:** [https://aim2.onrender.com/assets](https://aim2.onrender.com/assets)
    - Retrieve all assets: GET `/assets`
    - Retrieve a specific asset by ID: GET `/assets/:id`
    - Create a new asset: POST `/assets`
    - Update an asset: PUT `/assets/:id`
    - Delete an asset: DELETE `/assets/:id`

- **Employees:** [https://aim2.onrender.com/employees](https://aim2.onrender.com/employees)
    - Retrieve all employees: GET `/employees`
    - Retrieve a specific employee by ID: GET `/employees/:id`
    - Create a new employee: POST `/employees`
    - Update an employee: PUT `/employees/:id`
    - Delete an employee: DELETE `/employees/:id`

Please note that each endpoint provides additional links for specific actions based on the provided ID.

## Usage

To run the application locally, use the following command:

```bash
rails server

The application will be accessible at http://127.0.0.1:3000/
