
function Upload() {

    const formSubmit = (e) => {
        e.preventDefault();
        const form = new FormData(e.target);
        fetch('http://localhost:14700/upload', {
            method: 'POST',
            headers: {
                'Content-type': 'multipart/form-data'
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