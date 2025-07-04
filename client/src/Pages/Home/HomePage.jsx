import React from 'react';
import Navbar from '../../components/Navbar';
import Footer from '../../components/Footer';
import ContentHome from '../../components/ContentHome';
import '../Home/home.css'

const HomePage = () => {
  return (
    <div className='home-page'>
      <div className="navbar-home"> 
        <Navbar />
      </div>
      <div className="content-home">
        <ContentHome />
      </div>
      <div className="footer-home">
        <Footer />
      </div>
    </div>
  )
}

export default HomePage;