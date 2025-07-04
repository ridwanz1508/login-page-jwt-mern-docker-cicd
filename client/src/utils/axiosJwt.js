import axios from 'axios';
import { jwtDecode } from 'jwt-decode';
import API from '../api/axios';

let token = '';
let expire = 0;

export const setTokenState = (newToken) => {
  token = newToken;
  const decoded = jwtDecode(newToken);
  expire = decoded.exp;
};

const axiosJwt = axios.create({
  baseURL: process.env.REACT_APP_API_URL,
  withCredentials: true
});

axiosJwt.interceptors.request.use(async (config) => {
  const now = Date.now();
  if (expire * 1000 < now) {
    const response = await API.get('/token');
    setTokenState(response.data.accessToken);
    config.headers.Authorization = `Bearer ${response.data.accessToken}`;
  } else {
    config.headers.Authorization = `Bearer ${token}`;
  }
  return config;
}, (error) => {
  return Promise.reject(error);
});

export default axiosJwt;
