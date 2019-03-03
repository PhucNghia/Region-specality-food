$(document).on('turbolinks:load', function() {
  $(document).on('change', '.quantity .product-quantity', function(){
    product_id = $(this).attr('id');
    quantity = $(this).val();
    if(quantity < 1)
      quantity = 1;
    change_product_quantity(product_id, quantity);
  });

  $(document).on('click', '.remove-product', function(){
    product_id = $(this).attr('data-product-id');
    delete_product(product_id);
  });
});

function change_product_quantity(product_id, quantity){
  $.ajax({
    type: "PATCH",
    url: "booking_carts/" + product_id,
    data: {
      quantity: quantity
    }
  });
}

function delete_product(product_id){
  $.ajax({
    type: "DELETE",
    url: "booking_carts/" + product_id
  })
}
