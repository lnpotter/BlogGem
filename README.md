
# BlogGem - Backend API

## Project Overview

BlogGem is a simple backend API for a blogging platform built with Ruby on Rails. This API allows you to perform standard CRUD operations (Create, Read, Update, Delete) on blog posts. Additionally, it supports image uploads for each post using ActiveStorage. 

The application is designed as an API-only backend without any frontend views, making it ideal for mobile apps, single-page applications (SPAs), or as the backend for a separate frontend.

## Features

- **CRUD Operations for Posts**: You can create, retrieve, update, and delete blog posts.
- **Image Uploads**: Each blog post can have an associated image, uploaded and managed via the API.
- **JSON Responses**: All interactions with the API return data in JSON format, suitable for client-side consumption.
- **SQLite Database**: The app uses SQLite as the default database for development and testing.

## Technologies Used

- **Ruby on Rails**: The application is built using the Rails framework with the API-only mode.
- **ActiveStorage**: For handling image uploads associated with blog posts.
- **SQLite**: Default database for storing post and image data.
- **Curl/Postman**: Used for testing API endpoints and image uploads.

## Endpoints

- `GET /posts`: Retrieve all posts.
- `GET /posts/:id`: Retrieve a specific post by ID.
- `POST /posts`: Create a new post with optional image upload.
- `PUT /posts/:id`: Update an existing post.
- `DELETE /posts/:id`: Delete a post.

## Image Uploads

To upload an image along with a post, send a `multipart/form-data` request to the `POST /posts` or `PUT /posts/:id` endpoints. The image can be attached to the "post[image]" field.

Example using curl:

```bash
curl -X POST http://localhost:3000/posts   -F "post[title]=Sample Post"   -F "post[content]=This is a sample post."   -F "post[author]=Author Name"   -F "post[image]=@path_to_your_image.jpg"
```

## Setup and Installation

### Prerequisites

- Ruby 3.0 or later
- Rails 7.0 or later

### Installation Steps

1. Clone the repository:

```bash
git clone https://github.com/lnpotter/BlogGem.git
cd BlogGem
```

2. Install the required gems:

```bash
bundle install
```

3. Set up the database:

```bash
rails db:migrate
```

4. Start the Rails server:

```bash
rails server
```

5. Use an API client (like Postman or curl) to interact with the API.

## License

This project is licensed under the MIT License.
