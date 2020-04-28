import React from "react";
import CountUp from "react-countup";
import { Space } from "antd";
import "./style.css";

export const Overview = () => {

  return (
    <Space size={70}>
      <CountUp start={0} end={3060657} duration={5} delay={0}>
        {({ countUpRef }) => (
          <div className="counter">
            <p>Death</p>
            <span ref={countUpRef} />
          </div>
        )}
      </CountUp>
      <CountUp start={0} end={919978} duration={3} delay={0}>
        {({ countUpRef }) => (
          <div className="counter">
            <p>Infected</p>
            <span ref={countUpRef} />
          </div>
        )}
      </CountUp>
      <CountUp start={0} end={211343} duration={2} delay={0}>
        {({ countUpRef }) => (
          <div className="counter">
            <p>Recovered</p>
            <span ref={countUpRef} />
          </div>
        )}
      </CountUp>
    </Space>
  );
};
