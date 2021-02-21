export function saveOrderInStorage() {

	let proId = document.querySelector("#order_id").value;
	let proName = document.querySelector("#order_name").innerHTML;
	let proQuantity = document.querySelector("#order_quantity") .value;
	let proPrice = document.querySelector("#order_price").value;
	let order = {
		"id": proId,
		"poductName": proName,
		"quantity": proQuantity,
		"price": proPrice
	};

	$('#pedido').modal('hide');
	localStorage.setItem("order", JSON.stringify(order));
	console.info("Pedido realizado correctamente:" + order);
	window.location.href = "order.html";

}