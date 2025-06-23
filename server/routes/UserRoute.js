import express from "express";
import { getUser, Register, Login, Logout  } from '../controllers/UserController.js';
import { verifyToken } from "../middleware/VerifyToken.js";
import { refreshTokenUser } from "../controllers/UserRefreshToken.js";
 
const router = express.Router();

router.get('/users', verifyToken, getUser);
router.post('/users', Register);
router.post('/login', Login);
router.get('/token', refreshTokenUser);
router.delete('/logout', Logout);

export default router;

