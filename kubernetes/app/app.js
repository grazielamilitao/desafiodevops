const express = require('express')
const app = express()
const port = 3000;

app.listen(port);
console.log(`Aplicação teste executando em http://localhost: ${port}`);
app.get('/', (req, res) => {
  const name = process.env.NAME || 'Graziela';
  res.send(`Olá ${name}!`);
});

app.get("/healthcheck", (req, res) =>  {
  statusApp = true;

  const healthcheck = {
    uptime: process.uptime(),
    message: "OK",
    timestamp: Date.now(),
    checks: [
        {
            name: "App",
            type: "internal",
            status: statusApp
        }
    ]
  }
  
  res.status(200).send(healthcheck);
});