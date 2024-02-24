const express = require('express');
const mongoose = require('mongoose');
const todoRoutes = require('./routes/todoRoutes');
const path = require('path');
const methodOverride = require('method-override');
const Todo = require('./models/Todo');
require('dotenv').config();


const app = express();

// Connect to MongoDB
mongoose.connect(process.env.MONGODB_URI, { useNewUrlParser: true, useUnifiedTopology: true });

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(methodOverride('_method'));
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, '/views'));

app.get('/', async (req, res) => {
    const todos = await Todo.find();
    res.render('index', { todos });
});

app.get('/server-info', async(req, res) => {

    // import os module
    const os = require("os");

    // get host name
    const hostName = os.hostname();

    res.json({
        serverName: hostName,
        serverTime: new Date().toISOString()
    });
});

app.use('/todos', todoRoutes);

app.listen(3000, () => console.log('Server is running...'));