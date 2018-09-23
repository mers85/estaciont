# estaciónT

- Aplicación inteligente de alertas para la reducción de estaciones congestionadas en el sistema de TransMilenio.
- Herramienta de colaboración entre los usuarios de TransMilenio.

## API

### Estaciones

#### Index
Lista todas la estaciones

  {api_url}/api/v1/stations

  **Solicitud exitosa**

  [
    {
      "id": 1,
      "name": "Av Jimenez Caracas - A1S",
      "lat": null,
      "lng": null,
      "created_at": "2018-09-23T00:36:36.801Z",
      "updated_at": "2018-09-23T00:36:36.801Z",
      "image_url": "https://screenshots-estaciont.nyc3.digitaloceanspaces.com/av-jimenez-caracas.jpg"
    },
    {
      "id": 2,
      "name": "Marly-B1N-camara-1",
      "lat": null,
      "lng": null,
      "created_at": "2018-09-23T00:36:36.801Z",
      "updated_at": "2018-09-23T00:36:36.801Z",
      "image_url": "https://screenshots-estaciont.nyc3.digitaloceanspaces.com/marly.jpg"
    },
    {
      "id": 3,
      "name": "p_americas_t2",
      "lat": null,
      "lng": null,
      "created_at": "2018-09-23T00:36:36.801Z",
      "updated_at": "2018-09-23T00:36:36.801Z",
      "image_url": "https://screenshots-estaciont.nyc3.digitaloceanspaces.com/p_americas_t2.jpg"
    },
    {
      "id": 4,
      "name": "p_americas_t6",
      "lat": null,
      "lng": null,
      "created_at": "2018-09-23T00:36:36.801Z",
      "updated_at": "2018-09-23T00:36:36.801Z",
      "image_url": "https://screenshots-estaciont.nyc3.digitaloceanspaces.com/p_americas_t6.jpg"
    },
    {
      "id": 5,
      "name": "P. NORTE - T1",
      "lat": null,
      "lng": null,
      "created_at": "2018-09-23T00:36:36.801Z",
      "updated_at": "2018-09-23T00:36:36.801Z",
      "image_url": "https://screenshots-estaciont.nyc3.digitaloceanspaces.com/P.%20NORTE%20-%20T1.jpg"
    }
  ]

#### Show
Muestra los detalles de una estación

  {api_url}/api/v1/stations/{station_id}

  **Solicitud exitosa**

  {
    "id": 1,
    "name": "Av Jimenez Caracas - A1S"
  }
