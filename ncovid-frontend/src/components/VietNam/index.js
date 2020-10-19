import React, { useEffect, useState } from "react";
import "antd/dist/antd.css";
import { Table } from "antd";
import axios from "axios";
import { VietNamStatictis } from "./components/VietNamStatictis";
import { WorldStatictis } from "./components/WorldStatictis";
import { InputAutoComplete } from "./components/CompareTable/InputAutoComplete";
import "./styles.scss";

export const VietNam = () => {
  const [listData, setListData] = useState([]);
  const [listPatients, setListPatients] = useState([]);

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
  const columns1 = [
    {
      title: "Bệnh nhân ",
      dataIndex: "patientId",
      sorter: (a, b) => a.patientId.toString().localeCompare(b.patientId),
    },
    {
      title: "Tuổi",
      dataIndex: "age",
      sorter: (a, b) => a.age - b.age,
    },
    {
      title: "Giới tính",
      dataIndex: "sex",
      sorter: (a, b) => a.sex - b.sex,
    },
    {
      title: "Địa Điểm",
      dataIndex: "cityName",
      sorter: (a, b) => a.cityName - b.cityName,
    },
    {
      title: "Tình trạng",
      dataIndex: "status",
      sorter: (a, b) => a.status - b.status,
    },
  ];

  useEffect(() => {
    axios.post(`/api/City/Get-all`, {}).then((res) => {
      setListData(listData.concat(res.data.data));
    });
    axios.post(`/api/Patient/Get-all`, {}).then((res) => {
      setListPatients(listPatients.concat(res.data.data));
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
      <Table columns={columns1} dataSource={listPatients} scroll={{ y: 300 }} />
      <InputAutoComplete />
    </div>
  );
};
