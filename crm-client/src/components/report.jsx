function Report() {
   const downloadReport = () => {
      fetch('http://localhost:14700/reports/user-report', {
         method: 'GET',
         headers: {
            'Content-type': 'application/json',
            'Authorization': 'Bearer ' + window.localStorage.getItem('token')
         },
      }).then(res => res.blob().then(blobRes => {
         const file = window.URL.createObjectURL(blobRes);
         window.location.assign(file);
      }));
   }
   return <div>
      <button onClick={downloadReport}>Download users report</button>
   </div>
}

export default Report;