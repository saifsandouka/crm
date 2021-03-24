
function Upload() {

    const formSubmit = (e) => {
        e.preventDefault();
        const form = new FormData(e.target);
        fetch('http://localhost:14700/uploadFile', {
            method: 'POST',
            headers: {
                'Content-type': 'application/x-www-form-urlencoded'
            },
            body: form
        }).then(r => console.log(r));

    }

    return <form method="POST" onSubmit={formSubmit}>
        <input name='user_picture' type="file" />
        <button>Send</button>
    </form>
}

export default Upload;