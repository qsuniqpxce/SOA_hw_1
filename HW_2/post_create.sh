curl -X POST http://localhost:8088/products \
     -H "Content-Type: application/json" \
     -d '{
       "name": "Apple",
       "description": "Yummy",
       "price": 22.96,
       "stock": 10000,
       "category": "Food",
       "status": "ACTIVE"
     }'
