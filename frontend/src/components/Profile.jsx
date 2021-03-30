import React, { useState, useEffect } from 'react'
import { profileRequest } from '../services/api'

function Profile() {

    const [user, setUser] = useState("")

    useEffect(() => {
        profileRequest()
        .then(res => setUser(res.user))
        .catch(console.log("need to add catch"))
        //add proper catch
    }, [])

    return(
        <div>
            <p>Profile Page</p>
            Welcome, {user.username}!
        </div>
    )

}

export default Profile