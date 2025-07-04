import React, { useState, useEffect } from 'react';
import API from '../api/axios.js';
import axiosJwt, { setTokenState } from '../utils/axiosJwt.js';
import { jwtDecode } from 'jwt-decode';
import { useNavigate } from 'react-router-dom';
import { FaHeart, FaShoppingCart, FaTag, FaUtensils, FaStar } from 'react-icons/fa';
import '../css/home.css';

const ContentHome = () => {
  const [name, setName] = useState('');
  const [products, setProducts] = useState([]);
  const [snacks, setSnacks] = useState([]);
  const [loading, setLoading] = useState(true);
  const [category, setCategory] = useState('All');
  const navigate = useNavigate();

  useEffect(() => {
    const init = async () => {
      try {
        const response = await API.get('/token');
        const token = response.data.accessToken;
        const decoded = jwtDecode(token);
        setName(decoded.name);
        setTokenState(token);
        await Promise.all([getProducts(), getSnacks()]);
      } catch (error) {
        if (error.response) {
          navigate('/');
        }
      }
    };
    init();
  }, [navigate]);

  const getProducts = async () => {
    try {
      const response = await axiosJwt.get('/products');
      const productData = response.data.map(item => ({
        ...item,
        category: (item.category || '').toLowerCase(),
      }));
      setProducts(productData);
    } catch (error) {
      console.error('Error fetching products:', error);
    }
  };

  const getSnacks = async () => {
    try {
      const response = await axiosJwt.get('/snack-menu');
      const snackData = response.data.map(item => ({
        ...item,
        category: 'snacks',
      }));
      setSnacks(snackData);
    } catch (error) {
      console.error('Error fetching snacks:', error);
    } finally {
      setLoading(false);
    }
  };

  const handleViewDetails = (id) => {
    navigate(`/product/${id}`);
  };

  const getFilteredProducts = () => {
    if (category === 'All') {
      return products;
    }
    if (category === 'Coffee') {
      return products.filter(p => p.category === 'coffee');
    }
    return [];
  };

  const getFilteredSnacks = () => {
    if (category === 'All' || category === 'Snacks') {
      return snacks;
    }
    return [];
  };

  return (
    <div className="content-home">
      <div className="hero-banner">
        <h1>Welcome, Grab Your Favorite Coffee ☕</h1>
        <p>Discover the best flavors and promotions!</p>
      </div>

      <div className="promo-section">
        <FaTag className="promo-icon" />
        <div className="promo-text">
          <h2>Promo Spesial Minggu Ini!</h2>
          <p>Beli 2 kopi dapat 1 snack gratis! Berlaku sampai Minggu, 31 Mei.</p>
        </div>
      </div>

      <div className="filter-bar">
        {['All', 'Coffee', 'Snacks'].map((cat) => (
          <button
            key={cat}
            onClick={() => setCategory(cat)}
            className={category === cat ? 'active' : ''}
          >
            {cat}
          </button>
        ))}
      </div>

      {loading ? (
        <div className="loader">Loading...</div>
      ) : (
        <>
          {getFilteredProducts().length > 0 && (
            <div className="product-grid">
              {getFilteredProducts().map((product) => (
                <div className="product-card" key={product.id}>
                  <div className="product-image-container">
                    <img src={product.url} alt={product.title} className="product-image" />
                    <div className="product-icon-top-left">
                      <FaHeart className="icon" />
                    </div>
                    <div className="product-icon-top-right">
                      <FaShoppingCart className="icon" />
                    </div>
                  </div>
                  <div className="product-info">
                    <h3 className="product-title">{product.title || product.name}</h3>
                    <p className="product-price">
                      ${product.price?.toFixed(2) || 'N/A'}
                    </p>
                    <div className="product-rating">
                      {[...Array(5)].map((_, i) => (
                        <FaStar key={i} className={i < 4 ? 'star filled' : 'star'} />
                      ))}
                    </div>
                    <button className="view-details-btn" onClick={() => handleViewDetails(product.id)}>
                      View Details
                    </button>
                  </div>
                </div>
              ))}
            </div>
          )}

          {getFilteredSnacks().length > 0 && (
            <div className="snack-section">
              <h2><FaUtensils /> Snacks & Bites</h2>
              <ul className="snack-list">
                {getFilteredSnacks().map((snack) => (
                  <li key={snack.id} className="snack-item">
                    <span className="snack-name">{snack.title || snack.name}</span>
                    <span className="snack-price">Rp {snack.price.toLocaleString()}</span>
                  </li>
                ))}
              </ul>
            </div>
          )}
        </>
      )}
    </div>
  );
};

export default ContentHome;
