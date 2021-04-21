function Contacts() {
    fetch('http://localhost:14700/contact', {
        method: 'GET',
        headers: {
            'Authorization': 'Bearer ' + window.localStorage.getItem('token'),
            'Content-type': 'application/json'
        }
    }).then(res => res.json().then(jRes => console.log(jRes)));

    return <></>;
}

export default Contacts;