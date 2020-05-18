import React from "react";
import "./styles.css";
import { List, Divider } from "antd";

export const Precaution = () => {
  const shouldDo = [
    "Rửa tay thường xuyên trong 20 giây, bằng xà phòng và nước hoặc dung dịch rửa tay khô chứa cồn",
    "Tránh tiếp xúc gần (trong phạm vi 1 mét hoặc 3 feet) với những người không khỏe",
    "Ở nhà và tự cách ly khỏi những người khác trong gia đình nếu bạn cảm thấy không khỏe",
  ];

  const shouldNotDo = [
    "Chạm tay vào mắt, mũi hoặc miệng nếu tay bạn không sạch",
  ];

  return (
    <div>
      <Divider orientation="left">Thực hiện những việc sau</Divider>
      <List
        bordered
        dataSource={shouldDo}
        renderItem={(item) => <List.Item>{item}</List.Item>}
      />

      <Divider orientation="left">Không thực hiện những việc sau</Divider>
      <List
        bordered
        dataSource={shouldNotDo}
        renderItem={(item) => <List.Item>{item}</List.Item>}
      />
    </div>
  );
};
