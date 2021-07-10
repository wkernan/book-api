import React, { useState, useEffect } from "react";
import axios from "axios";

const UsersList = (props) => {
  useEffect(() => {
    axios
      .get("http://localhost:3001/api/v1/users.json")
      .then(({ data }) => setUsers(data));
  }, []);

  const [users, setUsers] = useState([]);

  return (
    <div>
      <div className="users-list">
        {users.map((user, index) => (
          <div key={index}>{user.attributes.pretty_name}</div>
        ))}
      </div>
    </div>
  );
};

export default UsersList;
