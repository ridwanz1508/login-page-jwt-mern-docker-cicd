import { Sequelize } from "sequelize";
import db from '../config/database.js';

const { DataTypes } = Sequelize;
 
const Product = db.define('tb_product_menu', {
    name: DataTypes.STRING,
    image: DataTypes.STRING,
    url: DataTypes.STRING,
    category: DataTypes.STRING,
    price: DataTypes.FLOAT,
    promo: DataTypes.FLOAT,
    title: DataTypes.STRING,
    desc: DataTypes.TEXT,
},{ 
    freezeTableName: true
})

export default Product;  




