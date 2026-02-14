# Daily App

A full-stack web application built with React and Express.js.

## Project Structure

```
daily-app/
├── client/          # React frontend application
│   ├── src/
│   ├── public/
│   └── package.json
└── server/          # Express.js backend server
    ├── server.js
    └── package.json
```

## Prerequisites

- Node.js (v14 or higher)
- npm (v6 or higher)

## Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/kofficengg/daily-app.git
   cd daily-app
   ```

2. **Install client dependencies**
   ```bash
   cd client
   npm install
   cd ..
   ```

3. **Install server dependencies**
   ```bash
   cd server
   npm install
   cd ..
   ```

## Running the Application

The application consists of two parts: the client (React app) and the server (Express.js). Follow these steps:

### Option 1: Production Mode (Recommended)

1. **Build the client**
   ```bash
   cd client
   npm run build
   cd ..
   ```

2. **Start the server**
   ```bash
   cd server
   npm start
   ```

3. **Access the application**
   - Open your browser and navigate to: `http://localhost:10000`

### Option 2: Development Mode

For development, you can run the client and server separately:

1. **Start the client** (in one terminal)
   ```bash
   cd client
   npm start
   ```
   - Client will run on `http://localhost:3000`

2. **Start the server** (in another terminal)
   ```bash
   cd server
   npm start
   ```
   - Server will run on `http://localhost:10000`

## Environment Variables

The server uses the following environment variables:

- `PORT` - The port number for the server (default: 10000)

You can set them by creating a `.env` file in the server directory or by exporting them:

```bash
export PORT=8080
cd server
npm start
```

## Available Scripts

### Client Scripts

- `npm start` - Runs the app in development mode
- `npm run build` - Builds the app for production
- `npm test` - Runs the test suite
- `npm run eject` - Ejects from Create React App (one-way operation)

### Server Scripts

- `npm start` - Starts the Express server

## Troubleshooting

### Port Already in Use

If port 10000 is already in use, you can change it:

```bash
PORT=8080 npm start
```

### Build Issues

If you encounter build issues with the client:

1. Delete `node_modules` and `package-lock.json`
2. Run `npm install` again
3. Try building again with `npm run build`

## License

This project is licensed under the MIT License.
