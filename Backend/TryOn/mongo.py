# Mongodb db connection and collections
from pymongo import MongoClient
client = MongoClient("mongodb+srv://django:BXlqNpgpjH5KAw9d@blud.us39q.mongodb.net/?retryWrites=true&w=majority")
db = client['yah']
Items = db['Items']
Items.insert_many(
    [
        {
            "name":"Women Slim-Fit T-Shirt Full-Sleeve black",
            "id":"ws1",
            "cost":"400",
            "color":"black",
            "material":"cotton",
            "description":"High quality women's full sleeve t-shirt in black colour. A slim fit t-shirt with high quality material and perfect fit",
            "imageUrl":"00006_00.jpg",
            "youtubeLink":"https://www.youtube.com/watch?v=Nuv6nkjrwQg"
        },
        {
            "name":"Women Slim-Fit T-Shirt Full-Sleeve brown",
            "id":"ws2",
            "cost":"600",
            "color":"brown",
            "material":"cotton",
            "description":"High quality women's full sleeve T- shirt in brown colour. A slim fit t-shirt with high quality material and perfect fit",
            "imageUrl":"00848_00.jpg",
            "youtubeLink":"https://www.youtube.com/watch?v=Nuv6nkjrwQg"
        },
        {
            "name":"Women T-Shirt Comfort-Fit Cut-Sleeve black",
            "id":"ws10",
            "cost":"400",
            "color":"black",
            "material":"cotton",
            "description":"High quality women's cut sleeve shirt in black colour. A comfort fit t-shirt with high quality material and perfect fit",
            "imageUrl":"02167_00.jpg",
            "youtubeLink":"https://www.youtube.com/watch?v=Nuv6nkjrwQg"
        },
        {
            "name":"Women T-Shirt Comfort-Fit Sleeveless white",
            "id":"ws2",
            "cost":"500",
            "color":"white",
            "material":"cotton",
            "description":"High quality women's t-shirt in white colour. A comfort fit t-shirt with high quality material and perfect fit",
            "imageUrl":"02844_00.jpg",
            "youtubeLink":"https://www.youtube.com/watch?v=Nuv6nkjrwQg"
        },
        {
            "name":"Women T-Shirt Comfort-Fit Cut-Sleeve white",
            "id":"ws4",
            "cost":"700",
            "color":"white",
            "material":"cotton",
            "description":"High quality women's sleeveless shirt in white colour. A comfort fit t-shirt with high quality material and perfect fit",
            "imageUrl":"04499_00.jpg",
            "youtubeLink":"https://www.youtube.com/watch?v=Nuv6nkjrwQg"
        },
        {
            "name":"Women T-Shirt Comfort-Fit Cut-Sleeve peach",
            "id":"ws5",
            "cost":"600",
            "color":"peach",
            "material":"cotton",
            "description":"High quality women's Cut-sleeve shirt in peach colour. A Comfort fit t-shirt with high quality material and perfect fit",
            "imageUrl":"05557_00.jpg",
            "youtubeLink":"https://www.youtube.com/watch?v=Nuv6nkjrwQg"
        },
        {
            "name":"Women dress Comfort-Fit Sleeveless black",
            "id":"ws6",
            "cost":"200",
            "color":"black",
            "material":"cotton",
            "description":"High quality women's Sleeveless shirt in black colour. A comfort fit dress with high quality material and perfect fit",
            "imageUrl":"06637_00.jpg",
            "youtubeLink":"https://www.youtube.com/watch?v=Nuv6nkjrwQg"
        },
        {
            "name":"Women T-Shirt Slim-Fit Full-Sleeve grey",
            "id":"ws7",
            "cost":"800",
            "color":"grey",
            "material":"cotton",
            "description":"High quality women's full hand shirt in grey colour. A slim fit t-shirt with high quality material and perfect fit",
            "imageUrl":"08088_00.jpg",
            "youtubeLink":"https://www.youtube.com/watch?v=Nuv6nkjrwQg"
        },
        {
            "name":"Women T-Shirt Slim-Fit Full-Sleeve white",
            "id":"ws8",
            "cost":"900",
            "color":"white",
            "material":"cotton",
            "description":"High quality women's full hand shirt in white colour. A slim fit t-shirt with high quality material and perfect fit",
            "imageUrl":"08671_00.jpg",
            "youtubeLink":"https://www.youtube.com/watch?v=Nuv6nkjrwQg"
        },
        {
            "name":"Women T-Shirt Slim-Fit Half-Sleeve black",
            "id":"ws9",
            "cost":"1000",
            "color":"black",
            "material":"cotton",
            "description":"High quality women's half sleeve shirt in black colour. A slim fit t-shirt with high quality material and perfect fit",
            "imageUrl":"10006_00.jpg",
            "youtubeLink":"https://www.youtube.com/watch?v=Nuv6nkjrwQg"
        },
        
        {
            "name":"Women Jacket Slim-Fit Half-Sleeve peach",
            "id":"ws11",
            "cost":"300",
            "color":"peach",
            "material":"cotton",
            "description":"High quality women's half sleeve jacket in peach colour. A Jacket with high quality material and perfect fit",
            "imageUrl":"11053_00.jpg",
            "youtubeLink":"https://www.youtube.com/watch?v=Nuv6nkjrwQg"
        },
        {
            "name":"Women dress Comfort-Fit Full-Sleeve black",
            "id":"ws12",
            "cost":"600",
            "color":"black",
            "material":"cotton",
            "description":"High quality women's full hand shirt in black colour. A comfort fit t-shirt with high quality material and perfect fit",
            "imageUrl":"12736_00.jpg",
            "youtubeLink":"https://www.youtube.com/watch?v=Nuv6nkjrwQg"
        },
        {
            "name":"Women T-Shirt Slim-Fit Half-Sleeve blue",
            "id":"ws13",
            "cost":"500",
            "color":"blue",
            "material":"cotton",
            "description":"High quality women's half sleeve shirt in blue colour. A slim fit t-shirt with high quality material and perfect fit",
            "imageUrl":"13201_00.jpg",
            "youtubeLink":"https://www.youtube.com/watch?v=Nuv6nkjrwQg"
        },
        {
            "name":"Women T-Shirt Slim-Fit Full-Sleeve yellow",
            "id":"ws14",
            "cost":"700",
            "color":"yellow",
            "material":"wool",
            "description":"High quality women's full hand sweatshirt in yellow colour. A slim fit shirt with perfect fit",
            "imageUrl":"14306_00.jpg",
            "youtubeLink":"https://www.youtube.com/watch?v=Nuv6nkjrwQg"
        }
    ]

)