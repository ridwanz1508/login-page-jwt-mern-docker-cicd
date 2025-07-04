import API from '../../api/axios.js';
import React, { useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import Swal from 'sweetalert2';
import './login.css';


const LoginPage = () => {
    // password show | hide
    const [showPass, setShowPass] = useState(false);
    const [passType, setPassType] = useState('password');

    const togglePasswordVisibility = () => {
        setShowPass(!showPass);
        setPassType(showPass ? 'password' : 'text');
    }
    const handleShowLabelClick = () => {
        togglePasswordVisibility(); 
    }

    // login flow
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');
    // const [msg, setMsg] = useState('');
    const navigate = useNavigate();

    const Auth = async (e) => {
        e.preventDefault();
        try {
            await API.post('/login', {
                email: email,
                password: password
            });
            // setMsg('Login Successfully!');
            Swal.fire({
                icon: 'success',
                title: 'Login Successful!',
                text: 'You have successfully Login.',
                showConfirmButton: false,
                timer: 1500
            }).then(() => {
                navigate('/home');
            })
        } catch (error) {
            if (error.response) {
                // setMsg(error.response.data.msg);
                Swal.fire({
                    icon: 'error',
                    title: 'Login Failed!',
                    text: error.response.data.msg,
                    showConfirmButton: false,
                    timer: 1500
                });
            }
        }
    }

    return (
        <div className="login-page">
            <form className="login-form" onSubmit={Auth}>
                {/* <p className='text-auth'>{msg}</p> */}
                <h2>Login Your Account</h2>
                <div className="input-group">
                    <input 
                        placeholder='Your Email' 
                        type="text" className='login-user' 
                        value={email} onChange={(e) => setEmail(e.target.value)}
                        required />
                </div>
                <div className="input-group">
                    <input 
                        placeholder='Password'
                        type={passType}
                        className='login-pass'
                        value={password} onChange={(e) => setPassword(e.target.value)}
                        required
                    />
                    <label className='login-label' onClick={handleShowLabelClick}>
                        {showPass ? "Hide" : "Show"}
                    </label>
                </div>
                <button type='submit' className='btn-login'>Login Now</button>
                <div className="login-text">
                    <p>Back to regitser? click <Link to="/register"><span>here</span></Link></p>
                </div>
            </form>
        </div>
    )
}

export default LoginPage;
