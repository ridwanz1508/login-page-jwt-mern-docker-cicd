import ProductSnack from '../models/ProductSnackModel.js';
import path from 'path';
import fs from 'fs';

export const getProductSnacks = async (req, res) => {
    try {
        const response = await ProductSnack.findAll();
        res.json (response);
    } catch (error) {
        console.log(error.message);
    }
}

export const getProductSnackByID = async (req, res) => {
    try {
        const response = await ProductSnack.findOne({
            where: {
                id: req.params.id
            }
        });
        res.json(response);
    } catch (error) {
        console.error(error.message);
    }
}

export const saveProductSnack = async (req, res) => {
    if (req.files === null) return res.status(400).json({ msg: "No file uploaded"});

    const name = req.body.name;
    const file = req.files.file;
    const title = req.body.title;
    const price = req.body.price;
    const promo = req.body.promo;
    const category = req.body.category;

    const fileSize = file.data.length;
    const ext = path.extname (file.name);
    const fileName = file.md5 + ext;
    const url = `${req.protocol}://${req.get('host')}/images/snacks/${fileName}`;
    const allowedType = ['.png', '.jpg', '.jpeg'];
    if(!allowedType.includes(ext.toLowerCase())) return res.status(422).json({msg:'invaled image'});
    if (fileSize > 5000000) return res.status(422).json({msg:'Image must be less than 5 mb'});

    // file uploaded will be saved here (folder & db)
    file.mv(`./public/images/snacks/${fileName}`, async (err)=> {
        if (err) return res.status(500).json({msg: err.message});  
        // save in db
        try {
            await ProductSnack.create({
                name: name, 
                image: fileName, 
                url: url,
                title: title, 
                price: price,
                promo: promo,
                category: category,
            });
            res.status(201).json({msg: 'File has been uploaded!'})
        } catch (error) {
            console.log (error.message);
        }
    });
}

export const updateProductSnack = async (req, res) => {
    const product = await ProductSnack.findOne({
        where: {
            id: req.params.id
        }
    }); 
    if (!product) return res.status(404).json ({msg:"No data found."});

    let fileName = "";
    if (req.files === null) {
        fileName = ProductSnack.image;
    } else {
        const file = req.files.file;
        const fileSize = file.data.length;
        const ext = path.extname (file.name);
        fileName = file.md5 + ext;
        const allowedType = ['.png', '.jpg', '.jpeg'];
    
        if(!allowedType.includes(ext.toLowerCase())) return res.status(442).json({msg:'invaled image'});
        if (fileSize > 5000000) return res.status(442).json({msg:'Image must be less than 5 mb'});

        // delete file from folder
        const filePath = `public/images/snacks/${product.image}`;
        fs.unlinkSync(filePath);

        // saved folder
        file.mv(`./public/images/snacks/${fileName}`, (err)=> {
            if (err) return res.status(500).json({msg: err.message});
        });
    }

    const name = req.body.name;
    const title = req.body.title;
    const price = req.body.price;
    const promo = req.body.promo;
    const category = req.body.category;
    const url = `${req.protocol}://${req.get('host')}/images/snacks/${fileName}`;
    try {
        await ProductSnack.update({
            name: name, 
            image: fileName, 
            url: url,
            title: title, 
            price: price,
            promo: promo,
            category: category,
        }, {
            where: {
                id: req.params.id
            }
        });
        res.status(200).json({msg: 'File has been updated.'})
    } catch (error) {
        console.log(error.message);
    }
}

export const deleteProductSnack = async (req, res) => {
    const product = await ProductSnack.findOne({
        where: {
            id: req.params.id 
        }
    }); 
    if (!product) return res.status(404).json ({msg:"No data found."});

    try {
        // delete file from folder
        const filePath = `public/images/snacks/${product.image}`;
        fs.unlinkSync(filePath);
        // delete file from database
        await ProductSnack.destroy({
            where: {
                id: req.params.id
            }
        });
        res.status(200).json({msg: 'File deleted successfully'})
    } catch (error) {
        console.log(error.message);
    }
}