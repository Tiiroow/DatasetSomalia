
import React from "react";
import { Routes, Route } from "react-router-dom";
import Home from "./Home";
import AllDatasets from "./AllDatasets";
import UploadDataset from "./UploadDataset";
import Profile from "./Profile";
import Auth from "./Auth"; 
import ForgetPassword from './ForgetPassword';


const AppRoutes = () => {
  return (
    <Routes>
      <Route path="/" element={<Home />} />
      <Route path="/datasets" element={<AllDatasets />} />
      <Route path="/upload" element={<UploadDataset />} />
      <Route path="/profile" element={<Profile />} />
      <Route path="/signin" element={<Auth />} /> {/* ✅ Route added */}
      <Route path="/signup" element={<Auth />} /> {/* ✅ Optional: same page */}
      <Route path="/reset-password" element={<ForgetPassword />} />

    </Routes>
  );
};

export default AppRoutes;
