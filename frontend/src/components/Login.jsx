import React, { useState } from 'react'
import { loginRequest } from '../services/api'

function Login() {

    const [username, setUsername] = useState("")
    const [password, setPassword] = useState("") 
    const [message, setMessage] = useState("")

    const handleChangeUsername = (e) => setUsername(e.target.value)
    const handleChangePassword = (e) => setPassword(e.target.value)

    const handleSubmit = (e) => {
        e.preventDefault()
        loginRequest({user:{username, password}})
        .then(console.log)
    }

    return(
        <div>
            <p>Login Below </p>

            <form onSubmit={handleSubmit}>
                <label htmlFor="username">Username: </label>
                <input type="text" onChange={handleChangeUsername} value={username}/>
                <label htmlFor="password">Password: </label>
                <input type="text" onChange={handleChangePassword} value={password}/>
                <input type="submit"/>
            </form>
        </div>
    )


}

export default Login