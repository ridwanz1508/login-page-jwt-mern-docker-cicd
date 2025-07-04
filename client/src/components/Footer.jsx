import React from 'react';
import { Link } from 'react-router-dom';
import { FaFacebook, FaTwitter, FaInstagram, FaLinkedin, FaGithub } from 'react-icons/fa';
import '../css/footer.css';

const Footer = () => {
  return (
    <div className="footer">
      <div className='footer-part'>
        <div className='footer-content'>
          <h2>Contact Us</h2>
          <p>Address: 123 Main Street, City, Country</p>
          <p>Email: example@example.com</p>
          <p>Phone: 123-456-7890</p>
        </div>
        <div className='footer-social'>
          <h2>Follow Us</h2>
          <div className='social-icons'>
            <Link to='#'><FaFacebook size={30} /></Link>
            <Link to='#'><FaTwitter size={30} /></Link>
            <Link to='#'><FaInstagram size={30} /></Link>
            <Link to='#'><FaLinkedin size={30} /></Link>
            <Link to='#'><FaGithub size={30} /></Link>
          </div>
        </div>
      </div>
      <div className="footer-legal">
        <p>2024 Hak Cipta Terpelihara Oleh PT COFFEE us</p>
      </div>
    </div>
  )
}

export default Footer;
