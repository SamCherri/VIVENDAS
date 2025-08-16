// @ts-nocheck
import express from 'express';

const app = express();

app.get('/health', (_req, res) => {
  res.json({ status: 'ok' });
});

export { app };

if (require.main === module) {
  const port = process.env.PORT || 3000;
  app.listen(port, () => {
    console.log(`Server running on port ${port}`);
  });
}
