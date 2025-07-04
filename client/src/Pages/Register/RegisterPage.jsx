import React, { useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import API from '../../api/axios.js';
import Swal from 'sweetalert2';
import './register.css';

const RegisterPage = () => {
    // password show | hide
    const [showPass, setShowPass] = useState(false);
    const [passType, setPassType] = useState('password');
    const [showConfPass, setShowConfPass] = useState(false);
    const [confPassType, setConfPassType] = useState('password');

    const togglePasswordVisibility = () => {
        setShowPass(!showPass);
        setPassType(showPass ? 'password' : 'text');
    } 
    const handleShowLabelClick = () => {
        togglePasswordVisibility();
    }
    const toggleConfPasswordVisibility = () => {
        setShowConfPass(!showConfPass);
        setConfPassType(showConfPass ? 'password' : 'text');
    }
    const handleShowLabelClickConf = () => {
        toggleConfPasswordVisibility();
    }

    // register flow
    const [name, setName] = useState('');
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');
    const [confPassword, setConfPassword] = useState('');
    // const [msg, setMsg] = useState('');
    const navigate = useNavigate();

    const Register = async (e) => {
        e.preventDefault();
        try {
            await API.post('/users', {
                name: name,
                email: email,
                password: password,
                confPassword: confPassword,
            });
            // setMsg('Registration successful!');
            Swal.fire({
                icon: 'success',
                title: 'Registration Successful!',
                text: 'You have successfully registered.',
                showConfirmButton: false,
                timer: 1500
            });
            navigate('/');
        } catch (error) {
            if (error.response) {
                // setMsg(error.response.data.msg);
                Swal.fire({
                    icon: 'error',
                    title: 'Registration Failed',
                    text: error.response.data.msg,
                    showConfirmButton: false,
                    timer: 1500
                });
            }
        }
    }

    return (
        <div className="register-page">
            <form className="register-form" onSubmit={Register}>
                {/* <p className='text-auth'>{msg}</p> */}
                <h2>Register Your Account</h2>
                <div className="input-group">
                    <input 
                        placeholder='Full Name' 
                        type="text" 
                        value={name} onChange={(e) => setName(e.target.value)}
                        className='register-user' required />
                </div>
                <div className="input-group">
                    <input 
                        placeholder='Your Email'
                        type="email" 
                        value={email} onChange={(e) => setEmail(e.target.value)}
                        className='register-user' required />
                </div>
                <div className="input-group">
                    <input 
                        placeholder='Password'
                        type={passType}
                        value={password} onChange={(e) => setPassword(e.target.value)}
                        className='register-pass' required
                    />
                    <label className='register-label' onClick={handleShowLabelClick}>
                        {showPass ? "Hide" : "Show"}
                    </label>
                </div>
                <div className="input-group">
                    <input 
                        placeholder='Confirm Password'
                        type={confPassType}
                        value={confPassword} onChange={(e) => setConfPassword(e.target.value)}
                        className='register-confpass' required
                    />
                    <label className='register-label' onClick={handleShowLabelClickConf}>
                        {showConfPass ? "Hide" : "Show"}
                    </label>
                </div>
                <button type='submit' className='btn-register'>Register Now</button>
                <div className="register-text">
                    <p>Back to login? click <Link to="/"><span>here</span></Link></p>
                </div>
            </form>
        </div>
    )
}

export default RegisterPage;
