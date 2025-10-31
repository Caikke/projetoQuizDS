require('dotenv').config()
const mysql = require('mysql2/promise');

const connection = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    port: process.env.DB_PORT, parseInt(process.env.DB_PORT,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_DATABASE,
  });
   
  connection.connect((err) => {
   if (err) {
    console.error('Erro de conexão: ' + err.stack);
    return;
   }
   console.log('Conectado como ID ' + connection.threadID);
  });
   
  module.exports = connection;
   