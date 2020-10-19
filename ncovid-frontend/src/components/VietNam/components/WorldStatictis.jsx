import React, { useState, useEffect } from "react";
import axios from "axios";

export const WorldStatictis = () => {
  const [worldRecord, setWorldRecord] = useState({});

  useEffect(() => {
    axios
      .post(`/api/Cases/Get-Global`, {})
      .then((res) => {
        setWorldRecord(res.data.data[0]);
      });
  }, []);

  return (
    <div>
      <div className="world title">
        <p>World</p>
      </div>
      <div className="confirmed statictis">
        <p>Confirmed</p>
        <p>{worldRecord.totalConfirmed ? worldRecord.totalConfirmed : 0}</p>
      </div>
      <div className="active statictis">
        <p>Active</p>
        <p>{worldRecord.totalConfirmed ? worldRecord.totalActive : 0}</p>
      </div>
      <div className="recover statictis">
        <p>Recovered</p>
        <p>{worldRecord.totalConfirmed ? worldRecord.totalDeaths : 0}</p>
      </div>
      <div className="death statictis">
        <p>Death</p>
        <p>{worldRecord.totalConfirmed ? worldRecord.totalRecovered : 0}</p>
      </div>
    </div>
  );
};
