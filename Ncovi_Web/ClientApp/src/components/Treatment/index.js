import React from "react";
import { List, Divider, Typography } from "antd";

export const Treatment = () => {
  const takeCareYourself = [
    "Nếu cảm thấy không khỏe, bạn nên nghỉ ngơi, uống nhiều nước và ăn thực phẩm giàu dinh dưỡng. Ở trong phòng tách biệt với các thành viên khác trong gia đình và sử dụng phòng tắm riêng nếu có thể. Làm sạch và khử trùng các bề mặt thường xuyên chạm vào.",
    "Mọi người nên duy trì lối sống lành mạnh ở nhà. Duy trì chế độ ăn uống có lợi cho sức khỏe, ngủ đủ giấc, chăm vận động và giao tiếp với người thân, bạn bè qua điện thoại hoặc qua mạng. Trẻ em cần người lớn yêu thương và quan tâm hơn trong những lúc khó khăn. Cố gắng giữ nếp sinh hoạt và thời gian biểu như thường lệ.",
    "Việc bạn cảm thấy buồn, căng thẳng hay hoang mang là điều hết sức bình thường trong thời kỳ khủng hoảng. Khi đó, bạn có thể trò chuyện với những người mình tin tưởng, chẳng hạn như bạn bè và gia đình. Nếu bạn cảm thấy quá sức chịu đựng, hãy trao đổi với nhân viên y tế cộng đồng hoặc tư vấn viên.",
  ];

  const medicalTreatments = [
    "Nếu bạn có triệu chứng nhẹ và không có biểu hiện bệnh nào khác, hãy tự cách ly và liên hệ với cơ sở y tế hoặc đường dây hỗ trợ thông tin về COVID-19 để được tư vấn.",
    "Hãy đến cơ sở y tế nếu bạn bị sốt, ho và khó thở. Nhớ gọi điện trước.",
  ];

  const { Paragraph } = Typography;

  return (
    <div>
      <Divider orientation="left">Tự chăm sóc</Divider>
      <List
        bordered
        dataSource={takeCareYourself}
        renderItem={(item) => (
          <List.Item>
            <Paragraph ellipsis={{ rows: 3, expandable: true }}>
              {item}
            </Paragraph>
          </List.Item>
        )}
      />

      <Divider orientation="left">Phương pháp điều trị y tế</Divider>
      <List
        bordered
        dataSource={medicalTreatments}
        renderItem={(item) => (
          <List.Item>
            <Paragraph ellipsis={{ rows: 3, expandable: true }}>
              {item}
            </Paragraph>
          </List.Item>
        )}
      />
    </div>
  );
};
