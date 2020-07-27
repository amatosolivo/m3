class Market {
  final String id;
  final String name;
  final String location;
  final String distance;
  final String rating;
  final String description;
  final String image;
  final String picture;
  const Market(
      {this.id,
      this.name,
      this.location,
      this.distance,
      this.rating,
      this.description,
      this.image,
      this.picture});
}

List<Market> markets = [
  const Market(
    id: "1",
    name: "Bravo",
    location: "av los proceres, santo domingo",
    distance: "54.6km",
    rating: "4 stars",
    description: "Super Bravo",
    image: "assets/images/productos.png",
  ),
  const Market(
    id: "2",
    location: "",
    distance: "",
    description: "Plaza Lama",
    image: "",
  ),
  const Market(
    id: "3",
    location: "",
    distance: "",
    description: "Ole",
    image: "",
  ),
  const Market(
    id: "4",
    location: "",
    distance: "",
    description: "Jumbo",
    image: "",
  ),
  const Market(
    id: "",
    location: "",
    distance: "",
    description: "La Cadena",
    image: "",
  ),
  const Market(
    id: "",
    location: "",
    distance: "",
    description: "La Sirena",
    image: "",
  ),
  const Market(
    id: "",
    location: "",
    distance: "",
    description: "El Nacional",
    image: "",
  ),
  const Market(
    id: "",
    location: "",
    distance: "",
    description: "PriceSmart",
    image: "",
  ),
  const Market(
    id: "",
    location: "",
    distance: "",
    description: "El Cumbre",
    image: "",
  ),
];
