import { Sequelize } from "sequelize";
import db from '../config/database.js';

const {DataTypes} = Sequelize;

const User = db.define('tb_user_jwt', {
    fname: {
        type: DataTypes.STRING,
        allowNull: true,
        validate: {
            notEmpty: true,
            len: [3, 100]
        }
    },
    femail: {
        type: DataTypes.STRING,
        allowNull: true,
        validate: {
            notEmpty: true,
            len: [3, 100]
        }
    },
    fusername: {
        type: DataTypes.STRING,
        allowNull: true,
        validate: {
            notEmpty: true,
            len: [3, 100]
        } 
    }, 
    fpassword: {
        type: DataTypes.STRING,
        allowNull: true,
        validate: {
            notEmpty: true,
            len: [3, 100]
        }
    },
    frefresh_token: {
        type: DataTypes.TEXT,
        allowNull: true,
    }
}, {
    freezeTableName: true
});
 
export default User;


