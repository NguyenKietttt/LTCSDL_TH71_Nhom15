import React, { useState, useEffect } from "react";
import axios from "axios";

export const VietNamStatictis = () => {
  const [vietnamRecord, setVietnamRecord] = useState({});

  useEffect(() => {
    axios
      .post(
        'https://ncovweb.azurewebsites.net/api/Cases/Get-Newest-Case-By-CountryID',
        JSON.stringify("VN"),
        {
          headers: {
            Accept: "*/*",
            "Content-type": "application/json",
          },
        }
      )
      .then((res) => {
        setVietnamRecord(res.data.data[0]);
      })
      .catch((err) => {
        console.error(err);
      });
  }, []);

  return (
    <div>
      <div className="vietnam title">
        <p>VietNam</p>
      </div>
      <div className="confirmed statictis">
        <p>Confirmed</p>
        <p>{vietnamRecord.confirmed ? vietnamRecord.confirmed : 0}</p>
      </div>
      <div className="active statictis">
        <p>Active</p>
        <p>{vietnamRecord.active ? vietnamRecord.active : 0}</p>
      </div>
      <div className="recover statictis">
        <p>Recovered</p>
        <p>{vietnamRecord.recovered ? vietnamRecord.recovered : 0}</p>
      </div>
      <div className="death statictis">
        <p>Death</p>
        <p>{vietnamRecord.deaths ? vietnamRecord.deaths : 0}</p>
      </div>
    </div>
  );
};
