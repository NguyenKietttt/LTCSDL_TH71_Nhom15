import React, {useEffect, useState} from "react";
import CountUp from "react-countup";
import { Space } from "antd";
import "./style.css";
import axios from 'axios';

export const CountAnimation = () => {
  const [statictis, setStatictis] = useState({
    "totalConfirmed": 0,
    "totalDeaths": 0,
    "totalRecovered": 0
  });

  useEffect(() => {
    if (statictis.totalConfirmed === 0) {
      axios
        .post(`https://ncovweb.azurewebsites.net/api/Cases/Get-Global`, {})
        .then((res) => {
          setStatictis(res.data.data[0]);
        });
    }
  });


  return (
    <Space size={70}>
      <CountUp start={0} end={statictis.totalConfirmed} duration={5} delay={0}>
        {({ countUpRef }) => (
          <div className="counter">
            <p>Confirmed</p>
            <span ref={countUpRef} />
          </div>
        )}
      </CountUp>
      <CountUp start={0} end={statictis.totalRecovered} duration={3} delay={0}>
        {({ countUpRef }) => (
          <div className="counter">
            <p>Recovered</p>
            <span ref={countUpRef} />
          </div>
        )}
      </CountUp>
      <CountUp start={0} end={statictis.totalDeaths} duration={2} delay={0}>
        {({ countUpRef }) => (
          <div className="counter">
            <p>Death</p>
            <span ref={countUpRef} />
          </div>
        )}
      </CountUp>
    </Space>
  );
};
