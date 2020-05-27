import React, { useState, useEffect } from "react";
import { AutoComplete, Button, message } from "antd";
import axios from "axios";
import { ChartLineComponent } from "./ChartLine";

export const InputAutoComplete = () => {
  const [loading, setLoading] = useState(false);
  const [listNation, setListNation] = useState([]);
  const [firstNation, setFirstNation] = useState("");
  const [secondNation, setSecondNation] = useState("");
  const [flag, setFlag] = useState(false);

  const submitEvent = () => {
    setLoading(true);

    const temp1 = listNation.find((e) => e.id === firstNation);
    const temp2 = listNation.find((e) => e.id === secondNation);
    if (!temp1 || !temp2) {
      error();
      setLoading(false);
      return;
    }
    setLoading(false);
    setFlag(!flag);
  };

  const choiceNation = (value, funcSetState) => {
    const tempValue = listNation.find((e) => e.value === value);
    if (tempValue) {
      funcSetState(tempValue.id);
    }
  };

  const error = () => {
    message.error("Your input is invalid, please enter again");
  };

  useEffect(() => {
    axios
      .post(
        `https://ncovweb.azurewebsites.net/api/Country/Get-all-country-have-cases`,
        {}
      )
      .then((res) => {
        const options = [];
        res.data.data.forEach((element) => {
          options.push({ id: element.countryId, value: element.countryName });
        });
        setListNation(options);
      });
  }, []);

  return (
    <div>
      <div style={{
        marginTop: 50,
        marginBottom: 50,
        display: 'flex',
        flexDirection: 'column',
        justifyContent: 'space-around',
        height: 200,
        width: '50vw'
      }}>
      <AutoComplete
        onChange={(value) => choiceNation(value, setFirstNation)}
        options={listNation}
        placeholder="Input Nation"
        filterOption={(inputValue, option) =>
          option.value.toUpperCase().indexOf(inputValue.toUpperCase()) !== -1
        }
      />
      <AutoComplete
        onChange={(value) => choiceNation(value, setSecondNation)}
        options={listNation}
        placeholder="Input Nation"
        filterOption={(inputValue, option) =>
          option.value.toUpperCase().indexOf(inputValue.toUpperCase()) !== -1
        }
      />
      <Button type="primary" loading={loading} onClick={submitEvent}>
        Submit
      </Button>
      </div>
      <div
        style={{
          height: 600,
          marginBottom: '20vh'
        }}
      >
        <ChartLineComponent
          flag={flag}
          firstNation={firstNation}
          secondNation={secondNation}
        />
      </div>
    </div>
  );
};
