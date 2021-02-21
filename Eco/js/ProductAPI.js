class ProductAPI {

    static getProductJSON() {
        fetch('http://localhost:8080/api/products')
            .then(result => result.json())
            .then(productJSON => {
                ProductAPI.populateProduct(productJSON);
            });
    }

    static populateProduct(listProduct) {
        document.querySelector('#list-product').innerHTML = "";

        listProduct.forEach(oProduct => {
            console.log("info:" + oProduct.id + "" + oProduct.name);
            let card = `
            <div class="col-md-6">
                <div id="product-${oProduct.id}" class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                    <div class="col p-4 d-flex flex-column position-static">
                    <strong class="d-inline-block mb-2 text-primary">${oProduct.category}</strong>
                    <h3 class="mb-0">${oProduct.name}</h3>
                    <div class="mb-1 text-muted">${oProduct.weight}</div>
                    <p class="card-text mb-auto">${oProduct.description}</p>
                    <h6 class="mb-1 text-muted">${oProduct.price}</h6>
                    <button data-target="#pedido" style="background-color:mediumseagreen;border-color:mediumseagreen;width:90px; height:40px" data-idOrder="${oProduct.id}" type="button" class="btn btn-primary btn-buy btn-xs" 
                    data-toggle="modal" data-placement="top">
						Comprar
					</button>
                    </div>
                    <div class="col-auto d-none d-lg-block">
                    <a><img src="./img/${oProduct.image}" alt="eco" class="img-thumbnail" width="200" height="250"></a>
                    </div>
                    <div class="text-center" data-toggle="modal" data-target="#pedido">
				</div>
                </div>
            </div>
            `;
            document.querySelector('#list-product').innerHTML += card;
        });
        ProductAPI.handleButtonOrder();
    }

   static searchProduct() {
        fetch('./data/product.json')
            .then(result => result.json())
            .then(data => {
                let txtSearch = document.querySelector("#txt-search").value;
                txtSearch = txtSearch.toLowerCase();
                let listProduct = data.products;
                let product = listProduct.filter(
                    (item) => (item.name.toLowerCase().indexOf(txtSearch) > -1)
                );
                if (product.length > 0) {
                    ProductAPI.populateProduct(product);
                } else {
                    document.querySelector("#list-product").innerHTML = `
                    <p>Ningun producto coincide con los datos de búsqueda</p>
                    `;
                }
            });
    }

    static handleButtonOrder() {
		let aBtn = document.querySelectorAll(".btn-buy");
		if (aBtn) {
			aBtn.forEach(item => {
				item.addEventListener("click", function (e) {
                    let idProduct = this.getAttribute("data-idOrder");
                    let nameProduct = document.querySelector("#product-" + idProduct + " h3").textContent;
                    let priceProduct = document.querySelector("#product-" + idProduct + " h6").textContent;
					document.querySelector("#order_quantity").value = "1";
					let tagPostId = document.querySelector("#order_id");
					let tagPostName = document.querySelector("#order_name");
                    tagPostName.innerHTML = nameProduct;
					let tagPostPrice = document.querySelector("#order_price");
                    tagPostPrice.innerHTML = priceProduct;
					tagPostId.value = idProduct; 
				});
			});
		}
	}
}
export default ProductAPI;