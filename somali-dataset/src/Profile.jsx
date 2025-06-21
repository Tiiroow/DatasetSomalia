// import React from 'react';
// import './Profile.css';

// function Profile() {
//   return (
//     <div className="profile-container">
//       <div className="profile-header">
//         <img src="./assets/profile.jpg" alt="Profile" className="profile-img" />
//         <div>
//           <h2>shukri idriis</h2>
//           <p>Researcher focused on NLP and speech recognition</p>
//           <div className="profile-stats">
//             <span><strong>10</strong> datasets</span>
//             <span><strong>1K</strong> likes</span>
//             <span><strong>800</strong> downloads</span>
//           </div>
//         </div>
//       </div>

//       <div className="profile-tabs">
//         <button>Datasets</button>
//         <button>Likes</button>
//       </div>

//       <div className="dataset-grid">
//         {[...Array(10)].map((_, i) => (
//           <div className="dataset-card" key={i}>
//             <h3>Somali Dataset {i + 1}</h3>
//             <p>Lorem ipsum dolor sit amet, consetetur adipiscing elit...</p>
//             <div className="tags">
//               <span className="tag">Text</span>
//               <span className="tag">50K samples</span>
//               <span className="tag">170 likes</span>
//             </div>
//           </div>
//         ))}
//       </div>
//     </div>
//   );
// }

// export default Profile;


// import React from 'react';
// import './Profile.css';
// import profileImg from './assets/profile.jpg'; // ✅ Importing the image properly

// function Profile() {
//   return (
//     <div className="profile-container">
//       <div className="profile-header">
//         <img src={profileImg} alt="Profile" className="profile-img" />
//         <div>
//           <h2>shukri idriis</h2>
//           <p>Researcher focused on NLP and speech recognition</p>
//           <div className="profile-stats">
//             <span><strong>10</strong> datasets</span>
//             <span><strong>1K</strong> likes</span>
//             <span><strong>800</strong> downloads</span>
//           </div>
//         </div>
//       </div>

//       <div className="profile-tabs">
//         <button className="active-tab">Datasets</button>
//         <button>Likes</button>
//       </div>

//       <div className="dataset-grid">
//         {[...Array(10)].map((_, i) => (
//           <div className="dataset-card" key={i}>
//             <h3>Somali Dataset {i + 1}</h3>
//             <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit...</p>
//             <div className="tags">
//               <span className="tag">Text</span>
//               <span className="tag">50K samples</span>
//               <span className="tag">170 likes</span>
//             </div>
//           </div>
//         ))}
//       </div>
//     </div>
//   );
// }

// export default Profile;


import React from 'react';
import './Profile.css';
import { useNavigate } from 'react-router-dom';
import profileImg from './assets/profile.jpg'; // Make sure the image exists

function Profile() {
  const navigate = useNavigate();

  const handleLogout = () => {
    // Optional: Clear authentication data here (if using localStorage/session)
    // localStorage.removeItem('token');
    navigate('/signin'); // Redirect to Sign In page
  };

  return (
    <div className="profile-container">
      <div className="profile-header">
        <img src={profileImg} alt="Profile" className="profile-img" />
        <div className="profile-info">
          <h2>shukri idriis</h2>
          <p>Researcher focused on NLP and speech recognition</p>
          <div className="profile-stats">
            <span><strong>10</strong> datasets</span>
            <span><strong>1K</strong> likes</span>
            <span><strong>800</strong> downloads</span>
          </div>
        </div>
        <button className="logout-btn" onClick={handleLogout}>Logout</button>
      </div>

      <div className="profile-tabs">
        <button className="active-tab">Datasets</button>
        <button>Likes</button>
      </div>

      <div className="dataset-grid">
        {[...Array(10)].map((_, i) => (
          <div className="dataset-card" key={i}>
            <h3>Somali Dataset {i + 1}</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit...</p>
            <div className="tags">
              <span className="tag">Text</span>
              <span className="tag">50K samples</span>
              <span className="tag">170 likes</span>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
}

export default Profile;
