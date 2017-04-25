angular.module('yourAppName').config ($stateProvider, $urlRouterProvider, $locationProvider) ->
    $urlRouterProvider.otherwise "/"

    $stateProvider
    .state 'home',
        url: '/'
        templateUrl: '/views/home.html'
        controller: 'HomeController'
        # authenticate: true

    $locationProvider.html5Mode true
