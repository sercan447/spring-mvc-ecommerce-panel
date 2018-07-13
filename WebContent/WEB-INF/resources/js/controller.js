var cartApp = angular.module ("app", []);

cartApp.controller("cartCtrl", function ($scope, $http){
    
	
      
    $scope.addToCart = function (productId) {
    	var url = "http://localhost:8080/MuzikMagazasiJAVA-EE/rest/cart/add/"+productId;
        $http.put(url).then(function () {
            alert("Product successfully added to the cart!"+productId);
        });
    };//addToCart
    
    $scope.clearCart = function(){
        var url3 = "http://localhost:8080/MuzikMagazasiJAVA-EE/rest/cart/"+$scope.cartId;
        	$http.delete(url3).then($scope.refreshCart());
        	
        };//clearCart
        
        
        $scope.removeFromCart = function(productId){
        var url1 = "http://localhost:8080/MuzikMagazasiJAVA-EE/rest/cart/remove/"+productId;
        
        	$http.put(url1).then(function(data){
        		alert("Silindi.");
        		$scope.refreshCart();
        	});	
        };//removeFromCart
        
        	
        $scope.refreshCart = function(){
        var url2 = "http://localhost:8080/MuzikMagazasiJAVA-EE/rest/cart/"+$scope.cartId;
        	$http.get(url2).then(function(data){
        			
        		$scope.cart = data.cartItems;
        		$scope.veri1 = "deneme verısı";
        	
        	});
        };//refreshCart
        
      
        $scope.initCartId = function(cartId){
        	$scope.cartId = cartId;
        	
        	$scope.refreshCart(cartId);
        }//initCartId
    
});



