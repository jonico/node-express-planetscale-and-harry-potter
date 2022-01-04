import express from 'express';
import mysql from 'mysql2/promise';
import dotenv from 'dotenv';
dotenv.config();

const connection = await mysql.createConnection({
	host : process.env.DB_HOST,
	user : process.env.DB_USER,
	database: process.env.DB_DATABASE,
	password : process.env.DB_PASSWORD,
	ssl : {
		rejectUnauthorized: true
	}
});

const app = express();

app.get('/characters', async (req, res) => {
	let status = 200;
	let retVal = {};
    
	try {
		const query = 'SELECT * FROM hp_character';
		const [rows] = await connection.execute(query);
		retVal.data = rows;
	} catch (error) {
		console.error(error);
		retVal.error = error;
		status = 500;
	}finally{
		res.status(status).json(retVal);
	}
});

app.get('/characters/:id', async (req, res) => {
	let status = 200;
	let retVal = {};
	
	const {id} = req.params;
	if(isNaN(Number(id))) {
		status = 400;
		retVal.message = 'Invalid request. Please make sure the id you are searching for is a number';
		return res.status(status).json(retVal);
	}
    
	try {
		const query = 'SELECT * FROM hp_character WHERE hp_character.id=?';
		const [rows] = await connection.execute(query, [id]);

		retVal.data = rows[0];
		if(!retVal.data){
			status = 404;
			retVal.message = `Couldn't find a character with id ${id}`;
		}
	} catch (error) {
		console.error(error);
		retVal.error = error;
		status = 500;
	}finally{
		res.status(status).json(retVal);
	}
});

app.get('/wands', async (req, res) => {
	let status = 200;
	let retVal = {};

	try {
		const query = 'SELECT * FROM wand';
		const [rows] = await connection.execute(query);
		retVal.data = rows;
	} catch (error) {
		console.error(error);
		retVal.error = error;
		status = 500;
	}finally{
		res.status(status).json(retVal);
	}
});



app.get('/wands/:id', async (req, res) => {
	let status = 200;
	const retVal = {};

	const {id} = req.params;
    
	if(isNaN(Number(id))) {
		status = 400;
		retVal.message = 'Invalid request. Please make sure the id you are searching for is a number';
		return res.status(status).json(retVal);
	}

	try {
		const query = 'SELECT * from wand where wand.id=?';
		const [rows] = await connection.execute(query, [id]);

		retVal.data = rows[0];
		if(!retVal.data) {
			retVal.message = `Couldn't find a wand with id ${id}`;
		}
	} catch (error) {
		console.error(error);
		retVal.error = error;
		status = 500;
	}finally{
		res.status(status).json(retVal);
	}
});

const port = process.env.PORT || 3000;
app.listen(port, () => {
	console.log('App is running');
});
