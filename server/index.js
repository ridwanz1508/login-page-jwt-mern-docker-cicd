import express from "express";
import FileUpload from 'express-fileupload';
import cors from 'cors';
import UserRouter from './routes/UserRoute.js';
import ProductRouter from './routes/ProductRoute.js';
import ProductSnackRouter from './routes/ProductSnackRoute.js';
import db from './config/database.js';
import dotenv from 'dotenv';
import cookieParser from "cookie-parser";
 
dotenv.config();
const app = express();

app.use(cors({ 
    origin: 'http://localhost:3000',
    credentials: true
}));
app.use(cookieParser());
app.use(express.json());

app.use(FileUpload());
app.use(express.static('public'));

app.use(UserRouter);
app.use(ProductRouter);
app.use(ProductSnackRouter); 

app.listen(process.env.PORT, ()=> console.log('Server is running...'));


async function testConnection() {
    try {
        await db.authenticate();
        console.log('connected to database');
        await db.sync(); 
    } 
    catch (error) {
        console.error ('failed connected ' + error);
    }
}
testConnection();
