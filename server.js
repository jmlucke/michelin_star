const path = require('path');
const express = require('express');
const { engine } = require('express-handlebars');
const fs = require('fs');
const cors = require('cors');
const port = process.env.PORT || 8080;
const app = express();
app.engine('handlebars', engine());
app.set('view engine', 'handlebars');
app.set('views', __dirname + '/views');

var corsOptions = {
  origin: 'http://localhost:8081'
};

app.use(cors(corsOptions));

const mysql = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : process.env.MYSQLPW,
  database : 'michelin'
});
 
connection.connect();

// Search SP call
let sql = `CALL sp_get_search_result(?)`;

// use static files, allows for css/javascript links
app.use(express.static('public'));

app.get('/', function(req, res) {
    res.render('index');
});

app.get('/search', (req, res) => {
    const query = req.query.query;
    connection.query(sql, query, (error, results, fields) => {
        if (error) {
            return console.log(error.message);
        }
        res.render('search', {results: results[0]});
    });
});


app.listen(port);
console.log('Server is initialized and listening on port ' + port);
