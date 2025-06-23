import express from "express";
import { getProductSnacks, getProductSnackByID, saveProductSnack, updateProductSnack, deleteProductSnack } from '../controllers/ProductSnackController.js';
 
const router = express.Router();

router.get('/snack-menu', getProductSnacks);
router.get('/snack-menu/:id', getProductSnackByID);
router.post('/snack-menu', saveProductSnack);
router.patch('/snack-menu/:id', updateProductSnack);
router.delete('/snack-menu/:id', deleteProductSnack);

export default router;

