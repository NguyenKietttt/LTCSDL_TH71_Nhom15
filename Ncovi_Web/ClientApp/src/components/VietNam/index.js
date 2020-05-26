import React, { useEffect, useState } from "react";
import "antd/dist/antd.css";
import { Table } from "antd";
import axios from "axios";
import { VietNamStatictis } from "./components/VietNamStatictis";
import { WorldStatictis } from "./components/WorldStatictis";
import { InputAutoComplete } from './components/CompareTable/InputAutoComplete';
import "./styles.scss";

export const VietNam = () => {
  const [listData, setListData] = useState([]);

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
  }, []);

  return (
    <div>
      <div className="compare">
        <VietNamStatictis />
        <hr />
        <WorldStatictis />
      </div>
      <Table columns={columns} dataSource={listData} scroll={{ y: 300 }} />
      <InputAutoComplete/>
    </div>
  );
};

