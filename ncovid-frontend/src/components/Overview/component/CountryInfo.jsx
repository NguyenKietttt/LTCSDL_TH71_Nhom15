import React, { useState } from "react";
import { Circle, InfoWindow, Marker } from "react-google-maps";

export const CountryInfo = (props) => {
  const { place } = props;
  const [isOpen, setOpen] = useState(false);
  const onCircleClick = (event, data) => {
    setOpen(true);
  };

  return (
    <Marker
      position={{
        lat: parseFloat(place.latitude),
        lng: parseFloat(place.longitude),
      }}
      visible={false}
    >
      {isOpen && (
        <InfoWindow
          // onPositionChanged={() => console.log('on position changed')}
          // onContentChanged={() => console.log('on content changed')}
          onCloseClick={() => setOpen(false)}
        >
          {isOpen && (
            <div>
              <p>Country : {place.countryName}</p>
              <p>Confirmed : {place.confirmed}</p>
              <p>Deaths : {place.deaths}</p>
              <p>Recovered : {place.recovered}</p>
            </div>
          )}
        </InfoWindow>
      )}
      <Circle
        onClick={(e) => onCircleClick(e, place)}
        defaultCenter={{
          lat: parseFloat(place.latitude),
          lng: parseFloat(place.longitude),
        }}
        radius={place.confirmed}
        options={{
          strokeColor: "#ff0000",
        }}
      />
    </Marker>
  );
};
