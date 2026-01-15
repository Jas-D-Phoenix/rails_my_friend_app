# Friends App

A robust and scalable Ruby on Rails CRUD application that allows authorized users to create, read, update, and delete friends in their dashboard. Built with modern web technologies and deployed on Railway.

## 🚀 Live Demo

[Add your Railway deployment URL here after deployment]

## ✨ Features

- **Full CRUD Operations**: Create, Read, Update, and Delete friends with a clean interface
- **User Authentication**: Secure sign-up, login, and logout using Devise
- **User-Scoped Data**: Each user can only see and manage their own friends
- **Modern UI**: Beautiful Bootstrap 4 styling with responsive design
- **Production Ready**: Configured for deployment on Railway with PostgreSQL

## 🛠️ Technologies Used

- **Ruby**: 3.1.3
- **Rails**: 7.0.5
- **PostgreSQL**: Production database (SQLite3 for development)
- **Bootstrap**: 4.5 for styling and components
- **Devise**: User authentication
- **Node.js**: JavaScript runtime
- **Yarn**: JavaScript package management

## 📋 Prerequisites

- Ruby 3.1.3
- Rails 7.0.5
- Node.js 19.1.0+
- Yarn 1.22.19+
- PostgreSQL (for production)
- SQLite3 (for development)

## 🚀 Getting Started

### Installation

1. Clone the repository:
```bash
git clone https://github.com/Jas-D-Phoenix/rails_my_friend_app.git
cd rails_my_friend_app
```

2. Install Ruby gems:
```bash
bundle install
```

3. Install JavaScript packages:
```bash
yarn install
```

4. Set up the database:
```bash
rails db:create
rails db:migrate
rails db:seed
```

5. Start the server:
```bash
rails server
```

6. Visit `http://localhost:3000` in your browser

### Demo Account

After running `rails db:seed`, you can use these credentials:
- **Email**: demo@example.com
- **Password**: password123

This account comes with 5 sample friends pre-loaded.

## 🗄️ Database

- **Development/Test**: SQLite3
- **Production**: PostgreSQL (configured for Railway)

## 🧪 Testing

Run the test suite:
```bash
rails test
```

## 🚢 Deployment

This app is configured for deployment on [Railway](https://railway.app).

### Railway Deployment Steps

1. Connect your GitHub repository to Railway
2. Add a PostgreSQL database service
3. Add environment variable: `SECRET_KEY_BASE` (generate with `rails secret`)
4. Railway will automatically detect and deploy your app

See [RAILWAY_DEPLOYMENT.md](./RAILWAY_DEPLOYMENT.md) for detailed deployment instructions.

## 📁 Project Structure

```
rails_my_friend_app/
├── app/
│   ├── controllers/
│   │   ├── friends_controller.rb
│   │   ├── home_controller.rb
│   │   └── application_controller.rb
│   ├── models/
│   │   ├── friend.rb
│   │   └── user.rb
│   └── views/
│       ├── friends/
│       ├── home/
│       └── layouts/
├── config/
│   ├── database.yml
│   ├── routes.rb
│   └── environments/
├── db/
│   ├── migrate/
│   └── seeds.rb
└── Procfile
```

## 🔐 Security Features

- User authentication with Devise
- Password encryption with bcrypt
- User-scoped data access
- CSRF protection
- Secure session management

## 📝 License

This project is open source and available under the [MIT License](LICENSE).

## 👤 Author

**Jas-D-Phoenix**

- GitHub: [@Jas-D-Phoenix](https://github.com/Jas-D-Phoenix)
- Project Link: [https://github.com/Jas-D-Phoenix/rails_my_friend_app](https://github.com/Jas-D-Phoenix/rails_my_friend_app)

## 🙏 Acknowledgments

- Built with [Ruby on Rails](https://rubyonrails.org/)
- Styled with [Bootstrap](https://getbootstrap.com/)
- Authentication by [Devise](https://github.com/heartcombo/devise)
- Deployed on [Railway](https://railway.app)
