import mapboxgl from 'mapbox-gl';

const buildMap = (mapElement) => {
  // const getaddress = document.querySelector("#location");
  // const address = getaddress.value;
  // console.log(address);

  // const baseUrl = `https://api.mapbox.com/geocoding/v5/mapbox.places/${address}.json?access_token=pk.eyJ1IjoiajM1IiwiYSI6ImNrbmtlcHRtYzBhZWwyb28wY2h0ZXBubzcifQ.2EyMOZWpUGnmIoBnc4EdlQ`;

  // fetch(baseUrl)
  //   .then(response => response.json())
  //   .then((data) => {
  //     console.log(data.features);
  //     const longitude = (data.features[0].center)[0];
  //     const latitude = (data.features[0].center)[1];

      mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
      return new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/streets-v10',
        // center: [longitude, latitude],
        zoom: 10,
      });
    // });
};


const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup)
      .addTo(map);
  });
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 10, duration: 0 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  if (mapElement) {
    const map = buildMap(mapElement);
    const markers = JSON.parse(mapElement.dataset.markers);
    console.log(markers);
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);
  }
};

export { initMapbox };
