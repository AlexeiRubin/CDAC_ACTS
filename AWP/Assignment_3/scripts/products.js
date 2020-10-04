var products = [
    {
        name: "Chair",
        price: "499",
        weight: "2.5Kg",
        imagepath: "images/chair.png"
    },
    {
        name: "Table",
        price: "899",
        weight: "10Kg",
        imagepath: "images/table.png"
    },
    {
        name: "Coffee Table",
        price: "1299",
        weight: "12Kg",
        imagepath: "images/coffeeTable.png"
    },
    {
        name: "Peg Table",
        price: "999",
        weight: "5Kg",
        imagepath: "images/pegTable.png"
    }
];

function showProducts() {
    for (i = 0; i < products.length; ++i) {
        var divProduct = document.createElement("div");

        var productName = document.createElement("H4");
        var productNameValue = document.createTextNode(products[i].name);

        var productPrice = document.createElement("p");
        var productPriceValue = document.createTextNode(products[i].price);

        var productWeight = document.createElement("p");
        var productWeightValue = document.createTextNode(products[i].weight);

        var image = document.createElement("img");
        image.src = products[i].imagepath;
        image.setAttribute("width", "200");
        image.setAttribute("height", "200");
        image.className="productImage";

        divProduct.appendChild(productName);
        productName.appendChild(productNameValue);

        divProduct.appendChild(productPrice);
        productPrice.appendChild(productPriceValue);

        divProduct.appendChild(productWeight);
        productWeight.appendChild(productWeightValue);
        
        divProduct.appendChild(image);
        
        divProduct.className = "product";

        document.getElementById("productsContainer").appendChild(divProduct);
    }
}