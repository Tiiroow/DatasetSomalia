// // Home.jsx
// import React from "react";
// import { Link } from "react-router-dom"; // make sure this is at the top
// import "./Home.css"; // Import your CSS file

// function Home() {
//   return (
//     <div className="container">
//       <header>
//         <div className="header-content">
//           <h1>Somali Dataset Repository</h1>
//         </div>
//         import { Link } from "react-router-dom"; // make sure this is at the top

// ...

// <div className="nav">
//   <Link to="/datasets"><button>Datasets</button></Link>
//   <button>Upload Dataset</button>
//   <button>Sign in</button>
// </div>

//       </header>

//       <input type="text" className="search-bar" placeholder="Search datasets..." />

//       <section>
//         <h2>Featured Datasets</h2>
//         <div className="dataset-card large">
//           <div>
//             <h3>Sample Dataset</h3>
//             <p>Lorem ipsum dolor, amet, con setriur aliqueti, edi dlissed diam enat.</p>
//             <div className="tags">
//               <span className="tag">text</span>
//               <span className="tag">50k samples</span>
//               <span className="tag">open</span>
//             </div>
//           </div>
//           <button className="download-btn">Download</button>
//         </div>
//       </section>

//       <section>
//         <h2>Browse by Category</h2>
//         <div className="grid grid-cols-2 sm:grid-cols-4 gap-4">
//           <div className="bg-blue-100 text-blue-700 text-center py-4 rounded-lg font-bold text-sm cursor-pointer">📝 Text</div>
//           <div className="bg-blue-100 text-blue-700 text-center py-4 rounded-lg font-bold text-sm cursor-pointer">🔊 Audio</div>
//           <div className="bg-blue-100 text-blue-700 text-center py-4 rounded-lg font-bold text-sm cursor-pointer">🖼️ Image</div>
//           <div className="bg-blue-100 text-blue-700 text-center py-4 rounded-lg font-bold text-sm cursor-pointer">🎥 Video</div>
//         </div>
//       </section>

//       <section>
//         <h2>Recent Datasets</h2>
//         <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-4">
//           {[...Array(8)].map((_, index) => (
//             <div className="dataset-card" key={index}>
//               <h3>Sample Dataset</h3>
//               <p>Lorem ipsum dolor, amet, con secitur aliqueti enat.</p>
//               <div className="tags">
//                 <span className="tag">text</span>
//                 <span className="tag">50k samples</span>
//                 <span className="tag">open</span>
//               </div>
//             </div>
//           ))}
//         </div>
//       </section>
//     </div>
//   );
// }

// export default Home;
import React from "react";
import { Link } from "react-router-dom";
import "./Home.css";

function Home() {
  return (
    <div className="container">
      {/* Header */}
      <header>
        <div className="header-content">
          <h1>Somali Dataset Repository</h1>
        </div>
        <div className="nav">
          <Link to="/datasets"><button>Datasets</button></Link>
          <Link to="/upload"><button className="px-4 py-2 text-sm bg-white border rounded-lg border-gray-300 hover:bg-gray-100 transition">Upload Dataset</button></Link>

          <Link to="/signin"><button className="px-4 py-2 text-sm bg-white border rounded-lg border-gray-300 hover:bg-gray-100 transition">Sign in</button></Link>

        </div>
      </header>

      {/* Search Bar */}
      <input type="text" className="search-bar" placeholder="Search datasets..." />

      {/* Featured Section */}
      <section>
        <h2>Featured Datasets</h2>
        <div className="dataset-card large">
          <div>
            <h3>Sample Dataset</h3>
            <p>Lorem ipsum dolor, amet, con setriur aliqueti, edi dlissed diam enat.</p>
            <div className="tags">
              <span className="tag">text</span>
              <span className="tag">50k samples</span>
              <span className="tag">open</span>
            </div>
          </div>
          <button className="download-btn">Download</button>
        </div>
      </section>

      {/* Category Section */}
      <section>
        <h2>Browse by Category</h2>
        <div className="grid grid-cols-2 sm:grid-cols-4 gap-4">
          <div className="bg-blue-100 text-blue-700 text-center py-4 rounded-lg font-bold text-sm cursor-pointer">📝 Text</div>
          <div className="bg-blue-100 text-blue-700 text-center py-4 rounded-lg font-bold text-sm cursor-pointer">🔊 Audio</div>
          <div className="bg-blue-100 text-blue-700 text-center py-4 rounded-lg font-bold text-sm cursor-pointer">🖼️ Image</div>
          <div className="bg-blue-100 text-blue-700 text-center py-4 rounded-lg font-bold text-sm cursor-pointer">🎥 Video</div>
        </div>
      </section>

      {/* Recent Datasets Section */}
      <section>
        <h2>Recent Datasets</h2>
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-4">
          {[...Array(8)].map((_, index) => (
            <div className="dataset-card" key={index}>
              <h3>Sample Dataset {index + 1}</h3>
              <p>Lorem ipsum dolor, amet, con secitur aliqueti enat.</p>
              <div className="tags">
                <span className="tag">text</span>
                <span className="tag">50k samples</span>
                <span className="tag">open</span>
              </div>
            </div>
          ))}
        </div>
      </section>
    </div>
  );
}

export default Home;
