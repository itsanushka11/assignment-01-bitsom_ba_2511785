//using database
Use('ecommerce');
// OP1: insertMany() — insert all 3 documents
db.products.insertMany([
  {
    _id: 1,
    name: "Samsung Galaxy S23",
    category: "Electronics",
    price: 75000,
    brand: "Samsung",
    warranty_years: 2,
    specifications: {
      ram: "8GB",
      storage: "256GB",
      voltage: "220V"
    },
    features: ["5G", "AMOLED Display", "Fast Charging"]
  },
  {
    _id: 2,
    name: "Men's Denim Jacket",
    category: "Clothing",
    price: 2500,
    brand: "Levis",
    size: ["S", "M", "L", "XL"],
    material: "Denim",
    color: "Blue"
  },
  {
    _id: 3,
    name: "Amul Milk",
    category: "Groceries",
    price: 60,
    brand: "Amul",
    expiry_date: new Date("2024-12-25"),
    nutritional_info: {
      calories: 150,
      protein: "8g"
    }
  }
]);

// OP2: find Electronics with price > 20000
db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
}).toArray();

// OP3: find Groceries expiring before 2025-01-01
db.products.find({
  category: "Groceries",
  expiry_date: { $lt: new Date("2025-01-01") }
}).toArray();

// OP4: updateOne() — add discount_percent
db.products.updateOne(
  { _id: 1 },
  { $set: { discount_percent: 10 } }
);

// OP5: createIndex() on category
db.products.createIndex({ category: 1 });