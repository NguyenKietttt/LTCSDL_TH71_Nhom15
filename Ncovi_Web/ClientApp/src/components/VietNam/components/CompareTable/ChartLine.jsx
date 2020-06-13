import React, { useState, useEffect } from "react";
import { ResponsiveLine } from "@nivo/line";
import axios from "axios";

const ChartLine = (props) => {
  const { firstNation, secondNation } = props;

  const [dataFirst, setDataFirst] = useState({});
  const [dataSecond, setDataSecond] = useState({});

  useEffect(() => {
    axios
      .all([
        axios.post(
          "https://ncovweb.azurewebsites.net/api/Cases/Get-Cases-By-CountryID",
          JSON.stringify(firstNation),
          {
            headers: {
              Accept: "*/*",
              "Content-type": "application/json",
            },
          }
        ),
        axios.post(
          "https://ncovweb.azurewebsites.net/api/Cases/Get-Cases-By-CountryID",
          JSON.stringify(secondNation),
          {
            headers: {
              Accept: "*/*",
              "Content-type": "application/json",
            },
          }
        ),
      ])
      .then(
        axios.spread((res1, res2) => {
          const temp = [];
          res1.data.data.data.forEach((element) => {
            temp.push({
              x: element.date,
              y: element.newConfirmed,
            });
          });

          const temp1 = [];
          res2.data.data.data.forEach((element) => {
            temp1.push({
              x: element.date,
              y: element.newConfirmed,
            });
          });

          setDataFirst({
            "id": firstNation,
            "color": "hsl(271, 70%, 50%)",
            "data": [...temp],
          });
          setDataSecond({
            "id": secondNation,
            "color": "hsl(97, 70%, 50%)",
            "data": [...temp1],
          });
        })
      );
  }, [firstNation, secondNation]);

  return (
    <ResponsiveLine
      data={dataFirst.id ? [dataFirst, dataSecond] : []}
      margin={{ top: 50, right: 110, bottom: 100, left: 60 }}
      xScale={{ type: "point" }}
      yScale={{
        type: "linear",
        min: "auto",
        max: "auto",
        stacked: true,
        reverse: false,
      }}
      axisTop={null}
      axisRight={null}
      axisBottom={{
        orient: "bottom",
        tickSize: 0,
        tickPadding: 10,
        legend: "Time",
        legendOffset: 75,
        tickRotation: -61,
        legendPosition: "middle",

      }}
      axisLeft={{
        orient: "left",
        tickSize: 5,
        tickPadding: 5,
        tickRotation: 0,
        legend: "Case Confirmed",
        legendOffset: -40,
        legendPosition: "middle",
      }}
      colors={{ scheme: "nivo" }}
      pointSize={10}
      pointColor={{ theme: "background" }}
      pointBorderWidth={2}
      pointBorderColor={{ from: "serieColor" }}
      pointLabel="y"
      pointLabelYOffset={-12}
      useMesh={true}
      legends={[
        {
          anchor: "bottom-right",
          direction: "column",
          justify: false,
          translateX: 100,
          translateY: 0,
          itemsSpacing: 0,
          itemDirection: "left-to-right",
          itemWidth: 80,
          itemHeight: 20,
          itemOpacity: 0.75,
          symbolSize: 12,
          symbolShape: "circle",
          symbolBorderColor: "rgba(0, 0, 0, .5)",
          effects: [
            {
              on: "hover",
              style: {
                itemBackground: "rgba(0, 0, 0, .03)",
                itemOpacity: 1,
              },
            },
          ],
        },
      ]}
    />
  );
};

export const ChartLineComponent = React.memo(
  ChartLine,
  (prevProps, nextProps) => {
    return prevProps.flag === nextProps.flag;
  }
);
