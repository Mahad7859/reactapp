module.exports = {
  apps: [
    {
      name: "cra-frontend",
      script: "npm",
      args: "start",
      env: {
        PORT: 4001,
        REACT_APP_BACKEND_URL: "http://localhost:3000"
      }
    }
  ]
};

