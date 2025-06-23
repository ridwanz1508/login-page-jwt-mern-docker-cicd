import Product from '../models/ProductModel.js';
import path from 'path';
import fs from 'fs';
 
export const getProducts = async (req, res) => {
    try {
        const response = await Product.findAll();
        res.json (response);
    } catch (error) {
        console.log(error.message);
    }
}

export const getProductByID = async (req, res) => {
    try {
        const response = await Product.findOne({
            where: {
                id: req.params.id
            }
        });
        res.json (response);
    } catch (error) {
        console.log(error.message);
    }
}

export const saveProduct = async (req, res) => {
    if (req.files === null) return res.status(400).json({ msg: "No file uploaded"});

    const name = req.body.name;
    const file = req.files.file;
    const title = req.body.title;
    const price = req.body.price;
    const desc = req.body.desc;
    const promo = req.body.promo;
    const category = req.body.category;

    const fileSize = file.data.length;
    const ext = path.extname (file.name);
    const fileName = file.md5 + ext;
    const url = `${req.protocol}://${req.get('host')}/images/${fileName}`;
    const allowedType = ['.png', '.jpg', '.jpeg'];
    if(!allowedType.includes(ext.toLowerCase())) return res.status(422).json({msg:'invaled image'});
    if (fileSize > 5000000) return res.status(422).json({msg:'Image must be less than 5 mb'});

    // file uploaded will be saved here (folder & db)
    file.mv(`./public/images/coffee/${fileName}`, async (err)=> {
        if (err) return res.status(500).json({msg: err.message});  
        // save in db
        try {
            await Product.create({
                name: name, 
                image: fileName, 
                url: url,
                title: title, 
                price: price,
                promo: promo,
                category: category,
                desc: desc,
            });
            res.status(201).json({msg: 'File has been uploaded!'})
        } catch (error) {
            console.log (error.message);
        }
    });
}

export const updateProduct = async (req, res) => {
    const product = await Product.findOne({
        where: {
            id: req.params.id
        }
    }); 
    if (!product) return res.status(404).json ({msg:"No data found."});

    // if no image uploaded, using image provided in db, else : update image in db
    let fileName = "";
    if (req.files === null) {
        fileName = Product.image;
    } else {
        const file = req.files.file;
        const fileSize = file.data.length;
        const ext = path.extname (file.name);
        fileName = file.md5 + ext;
        const allowedType = ['.png', '.jpg', '.jpeg'];
    
        if(!allowedType.includes(ext.toLowerCase())) return res.status(442).json({msg:'invaled image'});
        if (fileSize > 5000000) return res.status(442).json({msg:'Image must be less than 5 mb'});

        // delete file from folder
        const filePath = `public/images/coffee/${product.image}`;
        fs.unlinkSync(filePath);

        // then upload file and will be saved here (folder)
        file.mv(`./public/images/coffee/${fileName}`, (err)=> {
            if (err) return res.status(500).json({msg: err.message});
        });
    }
    // then save in db
    const name = req.body.name;
    const title = req.body.title;
    const price = req.body.price;
    const desc = req.body.desc;
    const promo = req.body.promo;
    const category = req.body.category;
    const url = `${req.protocol}://${req.get('host')}/images/coffee/${fileName}`;
    try {
        await Product.update({
            name: name, 
            image: fileName, 
            url: url,
            title: title, 
            price: price,
            promo: promo,
            category: category,
            desc: desc
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

export const deleteProduct = async (req, res) => {
    const product = await Product.findOne({
        where: {
            id: req.params.id 
        }
    }); 
    if (!product) return res.status(404).json ({msg:"No data found."});

    try {
        // delete file
        const filePath = `public/images/coffee/${product.image}`;
        fs.unlinkSync(filePath);

        await Product.destroy({
            where: {
                id: req.params.id
            }
        });
        res.status(200).json({msg: 'File deleted successfully'})
    } catch (error) {
        console.log(error.message);
    }
}







