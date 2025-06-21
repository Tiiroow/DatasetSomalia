// import React from "react";

// function AllDatasets() {
//   const datasets = [
//     { id: 1, name: "Sample Dataset 1" },
//     { id: 2, name: "Sample Dataset 2" },
//     { id: 3, name: "Sample Dataset 3" },
//     { id: 4, name: "Sample Dataset 4" },
//   ];

//   return (
//     <div className="container">
//       <h1>All Datasets</h1>
//       <input className="search-bar" placeholder="Search datasets..." />

//       {datasets.map((dataset) => (
//         <div className="dataset-card large" key={dataset.id}>
//           <div>
//             <h3>{dataset.name}</h3>
//             <p>Lorem ipsum dolor, amet, con setriur aliqueti...</p>
//             <div className="tags">
//               <span className="tag">word</span>
//               <span className="tag">50k samples</span>
//             </div>
//           </div>
//           <button className="download-btn">Download</button>
//         </div>
//       ))}
//     </div>
//   );
// }

// export default AllDatasets;
// AllDatasets.jsx


// import React from "react";

// function AllDatasets() {
//   return (
//     <div className="container">
//       <h1>All Datasets</h1>
//       {/* Your dataset cards here */}
//     </div>
//   );
// }

// export default AllDatasets;


// import React from "react";
// import "./App.css"; // if you need styles from App.css

// function AllDatasets() {
//   const datasets = [
//     { id: 1, name: "Sample Dataset 1" },
//     { id: 2, name: "Sample Dataset 2" },
//     { id: 3, name: "Sample Dataset 3" },
//     { id: 4, name: "Sample Dataset 4" },
//   ];

//   return (
//     <div className="container">
//       <h1>All Datasets</h1>
//       <input className="search-bar" placeholder="Search datasets..." />

//       {datasets.map((dataset) => (
//         <div className="dataset-card large" key={dataset.id}>
//           <div>
//             <h3>{dataset.name}</h3>
//             <p>Lorem ipsum dolor, amet, con setriur aliqueti...</p>
//             <div className="tags">
//               <span className="tag">word</span>
//               <span className="tag">50k samples</span>
//             </div>
//           </div>
//           <button className="download-btn">Download</button>
//         </div>
//       ))}
//     </div>
//   );
// }

// export default AllDatasets;


import React from "react";
import "./App.css"; // ✅ include this if you're using styles

function AllDatasets() {
  const datasets = [
    { id: 1, name: "Sample Dataset 1" },
    { id: 2, name: "Sample Dataset 2" },
    { id: 3, name: "Sample Dataset 3" },
    { id: 4, name: "Sample Dataset 4" },
    { id: 5, name: "Sample Dataset 5" },
    { id: 6, name: "Sample Dataset 6" },
    { id: 7, name: "Sample Dataset 7" },
    { id: 8, name: "Sample Dataset 8" },
    { id: 9, name: "Sample Dataset 9" },
    { id: 10, name: "Sample Dataset 10" },
  ];

  return (
    <div className="container">
      <h1>All Datasets</h1>
      <input className="search-bar" placeholder="Search datasets..." />

      {datasets.map((dataset) => (
        <div className="dataset-card large" key={dataset.id}>
          <div>
            <h3>{dataset.name}</h3>
            <p>Lorem ipsum dolor, amet, con setriur aliqueti...</p>
            <div className="tags">
              <span className="tag">word</span>
              <span className="tag">50k samples</span>
            </div>
          </div>
          <button className="download-btn">Download</button>
        </div>
      ))}
    </div>
  );
}

export default AllDatasets;
