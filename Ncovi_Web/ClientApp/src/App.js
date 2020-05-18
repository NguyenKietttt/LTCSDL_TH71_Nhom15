import React, { useState } from "react";
import "antd/dist/antd.css";
import "./custom.css";
import { Layout, Menu, Space, Typography } from "antd";
import {
  MenuUnfoldOutlined,
  MenuFoldOutlined,
  WarningOutlined,
  HeartOutlined,
  FileSearchOutlined,
  MedicineBoxOutlined,
  GlobalOutlined,
  ContainerOutlined,
} from "@ant-design/icons";
import { Overview, Precaution, Symptoms, Treatment, News, VietNam } from "./components";

const { Header, Sider, Content } = Layout;

export const App = () => {
  const [collapsed, setCollapsed] = useState(false);
  const [content, setContent] = useState("1");
  const handleChange = ({ key }) => {
    setContent(key);
  };

  const { Title } = Typography;

  const mapComponent = {
    "1": <Overview isMarkerShown />,
    "2": <Symptoms />,
    "3": <Precaution />,
    "4": <Treatment />,
    "5": <VietNam />,
    "6": <News />
  };

  return (
    <Layout
      style={{
        height: "100vh",
        background: "none",
      }}
    >
      <Sider trigger={null} collapsible collapsed={collapsed}>
        <div
          className="logo"
          style={{
            fontSize: collapsed ? "1vw" : "2vw",
          }}
        >
          Ncov 2019
        </div>
        <Menu
          onClick={handleChange}
          theme="dark"
          mode="inline"
          defaultSelectedKeys={["1"]}
        >
          <Menu.Item key="1">
            <GlobalOutlined />
            <span>Overview</span>
          </Menu.Item>
          <Menu.Item key="2">
            <WarningOutlined />
            <span>Symptoms</span>
          </Menu.Item>
          <Menu.Item key="3">
            <HeartOutlined />
            <span>Precautions</span>
          </Menu.Item>
          <Menu.Item key="4">
            <MedicineBoxOutlined />
            <span>Treatment</span>
          </Menu.Item>
          <Menu.Item key="5">
            <FileSearchOutlined />
            <span>Viet Nam</span>
          </Menu.Item>
          <Menu.Item key="6">
            <ContainerOutlined />
            <span>News</span>
          </Menu.Item>
        </Menu>
      </Sider>
      <Layout
        theme="dark"
        style={{
          background: "none",
        }}
      >
        <Header className="header">
          <Space size={10}>
            {React.createElement(
              collapsed ? MenuUnfoldOutlined : MenuFoldOutlined,
              {
                className: "trigger",
                onClick: () => setCollapsed(!collapsed),
              }
            )}
            <Space direction="vertical" align="center">
              <Title style={{ color: "white", marginTop: "4%" }} level={3}>
                Stay at home, Protect the NHS, Save lives
              </Title>
            </Space>
          </Space>
        </Header>
        <Content
          style={{
            margin: "24px 16px",
            padding: 24,
            minHeight: 280,
          }}
        >
          {mapComponent[content]}
        </Content>
      </Layout>
    </Layout>
  );
};
