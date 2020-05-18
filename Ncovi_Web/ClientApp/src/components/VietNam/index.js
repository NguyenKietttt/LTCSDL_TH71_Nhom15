import React, { useEffect, useState } from "react";
import "antd/dist/antd.css";
import { Table } from "antd";
import axios from "axios";

export const VietNam = () => {
  const [listData, setListData] = useState([]);

  const columns = [
    {
      title: "Tên thành phố ",
      dataIndex: "cityName",
      sorter: (a, b) => a[0] > b[0],
    },
    {
      title: "Tổng ca nhiễm",
      dataIndex: "totalCase",
      sorter: (a, b) => a.age - b.age,
    },
    {
      title: "Số ca nhiễm còn lại",
      dataIndex: "active",
      sorter: (a, b) => a.age - b.age,
    },
    {
      title: "Số ca hồi phục",
      dataIndex: "recovered",
      sorter: (a, b) => a.age - b.age,
    },
    {
      title: "Số người chết",
      dataIndex: "deaths",
      sorter: (a, b) => a.age - b.age,
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
      <Table columns={columns} dataSource={listData} scroll={{ y: 300 }} />
    </div>
  );
};
