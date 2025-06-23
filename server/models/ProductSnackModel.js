import { Sequelize } from "sequelize";
import db from '../config/database.js';

const { DataTypes } = Sequelize;

const ProductSnack = db.define('tb_product_add', {
    name: DataTypes.STRING,
    image: DataTypes.STRING,
    url: DataTypes.STRING,
    price: DataTypes.FLOAT,
    promo: DataTypes.FLOAT,
    title: DataTypes.STRING,
    category: DataTypes.STRING,
}, {
    freezeTableName: true
})

export default ProductSnack;