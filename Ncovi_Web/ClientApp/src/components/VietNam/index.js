import React, { useEffect, useState } from "react";
import "antd/dist/antd.css";
import { Table } from "antd";
import axios from "axios";
import "./styles.scss";

export const VietNam = () => {
  const [listData, setListData] = useState([]);
  const [worldRecord, setWorldRecord] = useState({});

  const columns = [
    {
      title: "Tên thành phố ",
      dataIndex: "cityName",
      sorter: (a, b) => a.cityName.toString().localeCompare(b.cityName),
    },
    {
      title: "Tổng ca nhiễm",
      dataIndex: "totalCase",
      sorter: (a, b) => a.totalCase - b.totalCase,
    },
    {
      title: "Số ca nhiễm còn lại",
      dataIndex: "active",
      sorter: (a, b) => a.active - b.active,
    },
    {
      title: "Số ca hồi phục",
      dataIndex: "recovered",
      sorter: (a, b) => a.recovered - b.recovered,
    },
    {
      title: "Số người chết",
      dataIndex: "deaths",
      sorter: (a, b) => a.deaths - b.deaths,
    },
  ];

  useEffect(() => {
    axios
      .post("https://ncovweb.azurewebsites.net/api/City/Get-all", {})
      .then((res) => {
        setListData(listData.concat(res.data.data));
      });

    axios
      .post(`https://ncovweb.azurewebsites.net/api/Cases/Get-Global`, {})
      .then((res) => {
        setWorldRecord(res.data.data[0]);
      });
  }, []);

  return (
    <div>
      <div className="compare">
        <div>
          <div className="vietnam title">
            <p>VietNam</p>
          </div>
          <div className="confirmed statictis">
            <p>Confirmed</p>
            <p>0</p>
          </div>
          <div className="active statictis">
            <p>Active</p>
            <p>0</p>
          </div>
          <div className="recover statictis">
            <p>Recovered</p>
            <p>0</p>
          </div>
          <div className="death statictis">
            <p>Death</p>
            <p>0</p>
          </div>
        </div>
        <hr />
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
      </div>
      <Table columns={columns} dataSource={listData} scroll={{ y: 300 }} />
    </div>
  );
};
