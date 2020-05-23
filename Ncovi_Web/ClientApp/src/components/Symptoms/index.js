import React from "react";
import { List, Divider } from "antd";

export const Symptoms = () => {
  const mostCommonSynptoms = ["Sốt", "Ho khan", "Mệt mỏi"];

  const lessCommonSymptoms = [
    "Đau nhức",
    "Đau họng",
    "Tiêu chảy",
    "Viêm kết mạc",
    "Đau đầu",
    "Mất vị giác hoặc khứu giác",
    "Da nổi mẩn hay ngón tay hoặc ngón chân bị tấy đỏ hoặc tím tái",
  ];

  const seriousSymptoms = [
    "Khó thở",
    "Đau hoặc tức ngực",
    "Mất khả năng nói hoặc cử động",
  ];

  const warning = [
    "Hãy đi khám ngay lập tức nếu bạn gặp phải các triệu chứng nghiêm trọng",
    "Luôn nhớ gọi điện trước khi gặp bác sĩ hoặc đến cơ sở y tế.",
    "Những người có triệu chứng nhẹ và không có biểu hiện bệnh nào khác nên điều trị triệu chứng tại nhà.",
    "Thông thường, các triệu chứng sẽ xuất hiện sau 5–6 ngày kể từ khi người bệnh nhiễm vi-rút. Tuy nhiên, thời gian này có thể lên tới 14 ngày.",
  ];

  return (
    <div style={{
      marginBottom: 30
    }}>
      <Divider orientation="left">Triệu chứng thường gặp</Divider>
      <List
        bordered
        dataSource={mostCommonSynptoms}
        renderItem={(item) => <List.Item>{item}</List.Item>}
      />

      <Divider orientation="left">Triệu chứng ít gặp</Divider>
      <List
        bordered
        dataSource={lessCommonSymptoms}
        renderItem={(item) => <List.Item>{item}</List.Item>}
      />

      <Divider orientation="left">Triệu chứng nghiên trọng</Divider>
      <List
        bordered
        dataSource={seriousSymptoms}
        renderItem={(item) => <List.Item>{item}</List.Item>}
      />

      <Divider orientation="left">Chú ý</Divider>
      <List
        bordered
        dataSource={warning}
        renderItem={(item) => <List.Item>{item}</List.Item>}
      />
    </div>
  );
};
