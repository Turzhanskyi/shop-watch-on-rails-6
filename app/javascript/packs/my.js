
    $.ajaxSetup({
        headers: {
            'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
        }
    });
//document.addEventListener("turbolinks:load", function() {
    $('body').on('click', '.add-to-cart-link', function(e) {
        e.preventDefault();
        var product_id = $(this).data('id'),
            quantity   = $('.quantity input').val() ? $('.quantity input').val() : 1,
            mod        = $('.vailable select').val(),
            access     = $('#cart_access').val();
        
            if(access == 99){
                showCartEmpty()
                return false
            };
            
            $.ajax({
                beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token',
                    $('meta[name="csrf-token"]').attr('content'))},
                url: "/cart/cart_items",
                data: {product_id: product_id, quantity: quantity, mod: mod},
                type: 'POST',
                success: function (res) {
                    showCart(res)
                },
                error: function () {
                    alert('Error! Try later!');
                },

            });
    });

    $('#cart .modal-body').on('click', '.del-item', function(){
        var id = $(this).data('id');
        $.ajax({
            beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token',
                $('meta[name="csrf-token"]').attr('content'))},
            url: "/cart/cart_items/" + id,
            data: {id: id},
            method: 'delete',
            type: 'POST',
            success: function (res) {
                showCart(res)
            },
            error: function () {
                alert('Error!');
            },

        });
    });

    function showCart(cart) {
        if($.trim(cart) === '<td>Cart is Empty</td>'){
            $('#cart .modal-footer a , #cart .modal-footer .btn-danger').css('display', 'none');    
        }else{
            $('#cart .modal-footer a , #cart .modal-footer .btn-danger').css('display', 'inline-block');
        }
        $('#cart .modal-body').html(cart); 
        $('#cart').modal();
        if($('.cart-sum').text()){
            $('.simpleCart_total').html($('#cart .cart-sum').text());
        }else{
            $('.simpleCart_total').text('Empty Cart');
        }
    }

    window.getCart = function () {
        $.ajax({
            url: '/cart',
            type: 'GET',
            success: function(res) {
                showCart(res)
            },
            error: function () {
                alert('Error! Try later!');
            }, 
        });
    }

    function showCartEmpty() {
        var result = {error: 'Please sign in! To view the cart.'}
        var modal  = $('#cart').modal();
        $('#cart .modal-footer a, #cart .modal-footer .btn-danger').css('display', 'none');
        modal.find('.modal-body').html(result.error)
    }

     window.clearCart = function () {
        $.ajax({
            url: '/cart',
            method: 'delete',
            type: 'POST',
            
            success: function (res) {
                localStorage.clear()
                showCart(res)
            },
            error: function () {
                alert('Error!');
            }, 
        });
    }