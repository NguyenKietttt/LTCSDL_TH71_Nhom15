import React from "react";
import { DevelopmentMap } from './component/DevelopmentMap';
import { CountAnimation } from './component/CountAnimation';

export const Overview = (props) => {
  return (
    <div>
      <CountAnimation />
      <DevelopmentMap isMarkerShown />
    </div>
  );
};
