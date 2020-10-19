import React from "react";
import { DevelopmentMap } from './component/DevelopmentMap';
import { CountAnimation } from './component/CountAnimation';

export const Overview = (props) => {
  return (
    <div style={{
      marginBottom: 30
    }}>
      <CountAnimation />
      <DevelopmentMap isMarkerShown />
    </div>
  );
};
