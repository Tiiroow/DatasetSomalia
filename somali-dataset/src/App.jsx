import React from "react";
import { BrowserRouter as Router } from "react-router-dom";
import AppRoutes from "./Routes";
import "./App.css"; // ✅ CSS is fine to keep

function App() {
  return (
    <Router>
      <AppRoutes />
    </Router>
  );
}

export default App;
