
angular.module('myApp', []).controller('namesCtrl', function($scope) {
    $scope.names = [
        {name:'6s',brand:'iphone'},
        {name:'7',brand:'iphone'},
        {name:'pro',brand:'mac'},
        {name:'mini',brand:'ipad'},
        {name:'gold',brand:'mac'},
        {name:'mini',brand:'ipad'},
        {name:'7 plus',brand:'iphone'},
        {name:'mini',brand:'ipad'},
        {name:'air',brand:'mac'}
        ];
    $scope.orderByMe = function(x) {
        $scope.myOrderBy = x;
    }
});