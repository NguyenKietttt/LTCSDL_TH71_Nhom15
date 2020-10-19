import React, { Fragment, useEffect, useState } from "react";
import { compose, withProps } from "recompose";
import { withScriptjs, withGoogleMap, GoogleMap } from "react-google-maps";
import "./style.css";
import axios from "axios";
import { CountryInfo } from "./CountryInfo";

export const DevelopmentMap = compose(
  withProps({
    /**
     * Note: create and replace your own key in the Google console.
     * https://console.developers.google.com/apis/dashboard
     * The key "AIzaSyBkNaAGLEVq0YLQMi-PYEMabFeREadYe1Q" can be ONLY used in this sandbox (no forked).
     */
    googleMapURL:
      "https://maps.googleapis.com/maps/api/js?key=AIzaSyBWpaxAznkLrSQjSV-B4zQV93E5NR4U0zM&v=3.exp&libraries=geometry,drawing,places",
    loadingElement: <div style={{ height: `100%` }} />,
    containerElement: <div style={{ height: `400px` }} />,
    mapElement: <div style={{ height: `100%` }} />,
  }),
  withScriptjs,
  withGoogleMap
)(() => {
  useEffect(() => {
    axios
      .post(
        `/api/Country/Get-all-country-have-cases`,
        {}
      )
      .then((res) => {
        setPlaces(res.data.data);
      });
  }, []);

  const [places, setPlaces] = useState([]);

  return (
    <GoogleMap
      defaultZoom={1}
      defaultCenter={{ lat: 40.6710729, lng: -73.9988001 }}
    >
      {places.map((place) => {
        return (
          <Fragment key={place.countryId}>
            <CountryInfo place={place} />
          </Fragment>
        );
      })}
    </GoogleMap>
  );
});
