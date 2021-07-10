import React from "react";
import axios from "axios";
import UsersList from "./components/UsersList";
import NavBar from "./components/nav-bar";

import "./App.css";

axios.interceptors.response.use((response) => response.data);

function App() {
  return (
    <div className="App">
      <NavBar />
      <h1>Users</h1>
      <UsersList />
    </div>
  );
}

export default App;
