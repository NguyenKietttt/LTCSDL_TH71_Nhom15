import React, { useEffect, useState } from "react";
import "antd/dist/antd.css";
import { List, Button } from "antd";
import axios from "axios";

export const News = () => {
  const [listData, setListData] = useState([]);

  const [page, setPage] = useState(1);
  const [loading, setLoading] = useState(false);

  const fetchData = () => {
    setLoading(true);
    axios
      .post(`https://ncovweb.azurewebsites.net/api/News/Get-all`, {
        page: page,
        size: 5,
        id: 0,
        type: "dfsd",
        keyword: "stdsfsring",
      })
      .then((res) => {
        setListData(listData.concat(res.data.data.data));
        setPage(page + 1);
        setLoading(false);
      });
  };

  useEffect(() => {
    fetchData();
  }, []);

  return (
    <div style={{
      marginBottom: 30
    }}>
      <List
        itemLayout="vertical"
        size="large"
        loadMore={
          !loading ? (
            <div
              style={{
                textAlign: "center",
                marginTop: 12,
                height: 32,
                lineHeight: "32px",
              }}
            >
              <Button onClick={fetchData}>loading more</Button>
            </div>
          ) : (
            <></>
          )
        }
        dataSource={listData}
        renderItem={(item, index) => (
          <List.Item
            key={index}
            extra={<img width={272} alt="logo" src={item.picture} />}
          >
            <List.Item.Meta
              title={<a href={item.link}>{item.title}</a>}
              description={item.date}
            />
            {item.description}
          </List.Item>
        )}
      />
    </div>
  );
};
