const URL = 'http://localhost:3000/'
const usersURL = URL + 'users'
const parseJSON = res => res.json()
const loginHeaders = {
    'Accepts': 'application/json',
    'Content-Type': 'application/json'
}

const authHeaders = () => ({
    Authorization: `Bearer ${localStorage.getItem('jwt')}`
})

export function loginRequest(credentials) {
    return fetch(URL + 'api/v1/login', {
        method: "POST",
        headers: loginHeaders,
        body: JSON.stringify(credentials)
    })
    .then(parseJSON)
}

export function profileRequest() {
    return fetch(URL + 'api/v1/profile', {
        headers: authHeaders()
    })
    .then(parseJSON)
}