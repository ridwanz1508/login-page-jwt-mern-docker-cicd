import React from 'react';
import { Link, useNavigate } from 'react-router-dom';
import API from '../api/axios.js';
import Swal from 'sweetalert2';
import { FaCoffee, FaNewspaper, FaSignOutAlt } from 'react-icons/fa';
import '../css/navbar.css';

const Navbar = () => {
  const navigate = useNavigate();

  const Logout = async () => {
    const confirm = await Swal.fire({
      title: 'Are you sure?',
      text: "You will be logged out from the session.",
      icon: 'warning',
      showCancelButton: true,
      confirmButtonText: 'Yes, logout!'
    });

    if (confirm.isConfirmed) {
      try {
        await API.delete('/logout');
        Swal.fire({
          icon: 'success',
          title: 'Logged Out!',
          text: 'You have been successfully logged out.',
          showConfirmButton: false,
          timer: 1500
        }).then(() => {
            navigate('/');
        })
      } catch (error) {
        console.error(error);
        Swal.fire({
          icon: 'error',
          title: 'Logout Failed',
          text: 'Something went wrong. Please try again later.',
          confirmButtonText: 'OK'
        });
      }
    }
  };

  return (
    <div className='navbar'>
      <div className="nav-logo">
        <Link to='/home'>COFFEE us.</Link>
      </div>
      <div className="nav-search">
        <input className='nav-search-menu' type="search" placeholder='search your favorite coffee' />
      </div>
      <div className="nav-menu">
        <Link to="/home"><FaCoffee /> Menu</Link>
        <Link to="/home"><FaNewspaper /> News</Link>
        <button 
          className='nav-btn-logout'
          onClick={Logout}
        ><FaSignOutAlt /> Logout</button>
      </div>
    </div> 
  );
};

export default Navbar;
