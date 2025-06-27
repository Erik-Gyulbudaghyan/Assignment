const express = require('express');
const promClient = require('prom-client');

const app = express();
const PORT = process.env.PORT || 8080;

const collectDefaultMetrics = promClient.collectDefaultMetrics;
collectDefaultMetrics();

const httpCounter = new promClient.Counter({
  name: 'http_requests_total',
  help: 'Total HTTP requests',
  labelNames: ['method', 'route', 'status']
});

app.get('/healthz', (req, res) => res.status(200).send('OK'));

app.get('/', (req, res) => {
  httpCounter.inc({ method: 'GET', route: '/', status: 200 });
  res.send('Hello World from devops-capstone!');
});

app.get('/metrics', async (req, res) => {
  res.set('Content-Type', promClient.register.contentType);
  res.end(await promClient.register.metrics());
});

app.listen(PORT, () => console.log(`App listening on ${PORT}`));
