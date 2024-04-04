const express = require('express');
const router = express.Router();
const Todo = require('../models/Todo');

// Get all todos
router.get('/', async (req, res) => {
    const todos = await Todo.find();
    res.json(todos);
});

// Create a todo
router.post('/', async (req, res) => {
    const newTodo = new Todo({
        name: req.body.name,
    });
    const savedTodo = await newTodo.save();
    res.json(savedTodo);
});

// Get specific todo
router.get('/:id', async (req, res) => {
    const todo = await Todo.findById(req.params.id);
    res.json(todo);
});

// Delete a todo
router.delete('/:id', async (req, res) => {
    const deletedTodo = await Todo.findByIdAndDelete(req.params.id);
    res.json(deletedTodo);
});

// Update a todo
router.patch('/:id', async (req, res) => {
    const updatedTodo = await Todo.updateOne(
        { _id: req.params.id },
        { $set: { name: req.body.name, done: req.body.done } }
    );
    res.json(updatedTodo);
});

module.exports = router;