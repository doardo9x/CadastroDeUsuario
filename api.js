const express = require('express');
const bodyParser = require('body-parser');
const db = require('./db');

const app = express();

app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static('public'));

// post - enviar dados
app.post('/add-jogo', async (req, res) => {
  const { nome, lancamento, genero } = req.body;

  try {
    const [result] = await db.query(
      'INSERT INTO jogos (nome, lancamento, genero) VALUES (?, ?, ?)',
      [nome, lancamento, genero],
    );
    res.send('Jogo inserido com sucesso!');
  } catch (error) {
    res.status(500).send('Erro ao inserir o Jogo: ' + error.message);
  }
});

app.listen(3000, () => {
  console.log('Server is running on http://localhost:3000');
});