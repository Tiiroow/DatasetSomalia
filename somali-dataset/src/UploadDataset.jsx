// import React, { useState } from "react";
// import { Link } from "react-router-dom";
// import "./UploadDataset.css"; // optional: if you want custom styling

// function UploadDataset() {
//   const [title, setTitle] = useState("");
//   const [description, setDescription] = useState("");
//   const [file, setFile] = useState(null);

//   const handleSubmit = (e) => {
//     e.preventDefault();
//     alert("Dataset submitted!");
//     // You can handle API submission here
//   };

//   return (
//     <div className="upload-container">
//       <header className="upload-header">
//         <h2>Somali Dataset Repository</h2>
//         <Link to="/datasets">Datasets</Link>
//       </header>

//       <h3>Upload Dataset</h3>
//       <form onSubmit={handleSubmit}>
//         <label>Title</label>
//         <input
//           type="text"
//           value={title}
//           onChange={(e) => setTitle(e.target.value)}
//           placeholder="Enter title"
//         />

//         <label>Description</label>
//         <textarea
//           value={description}
//           onChange={(e) => setDescription(e.target.value)}
//           placeholder="Enter description"
//         />

//         <label>License</label>
//         <div className="upload-box">
//           <input
//             type="file"
//             onChange={(e) => setFile(e.target.files[0])}
//           />
//         </div>

//         <label>Submit</label>
//         <input type="text" disabled placeholder="Ready to submit..." />

//         <button type="submit">Submit</button>
//       </form>
//     </div>
//   );
// }

// export default UploadDataset;
import React, { useState } from "react";
import { Link } from "react-router-dom";
import "./UploadDataset.css";

function UploadDataset() {
  const [title, setTitle] = useState("");
  const [description, setDescription] = useState("");
  const [file, setFile] = useState(null);

  const handleSubmit = (e) => {
    e.preventDefault();
    alert("Dataset submitted!");
  };

  return (
    <div className="upload-page">
      <header className="upload-header">
        <h2>Somali Dataset Repository</h2>
        <Link to="/datasets" className="nav-link">Datasets</Link>
      </header>

      <div className="form-container">
        <h3>Upload Dataset</h3>
        <form onSubmit={handleSubmit} className="upload-form">
          <label htmlFor="title">Title</label>
          <input
            type="text"
            id="title"
            value={title}
            onChange={(e) => setTitle(e.target.value)}
            placeholder="Enter dataset title"
          />

          <label htmlFor="description">Description</label>
          <textarea
            id="description"
            value={description}
            onChange={(e) => setDescription(e.target.value)}
            placeholder="Enter description"
          ></textarea>

          <label htmlFor="file">License</label>
          <input
            type="file"
            id="file"
            onChange={(e) => setFile(e.target.files[0])}
            className="file-input"
          />

          <button type="submit" className="submit-button">Submit</button>
        </form>
      </div>
    </div>
  );
}

export default UploadDataset;
