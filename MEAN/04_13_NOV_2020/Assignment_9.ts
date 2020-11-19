//Create a class Products that will have an array of Product objects.
//printAllProducts() must iterate through array and print out all products

class product {
    id: number
    name: string
    price: number

    constructor(id: number, name: string, price: number) {
        this.id = id;
        this.name = name;
        this.price = price;
    }

    printAllProducts() {
        console.log("Product Name : " + this.name + ", Product ID : " + this.id + " Product Price : " + this.price);
    }
}

export class productArray {
    products: product[];

    constructor(products: product[]) {
        this.products = products;
    }

    printAllProducts() {
        for (var prod of this.products) {
            prod.printAllProducts();
        }
    }
}

var products = new productArray([new product(7, "LOL", 70), new product(70, "LMAO", 7070), new product(700, "ROTFL", 770077)]);
products.printAllProducts();