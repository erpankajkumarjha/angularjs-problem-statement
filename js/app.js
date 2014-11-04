angular.module('gcAJSDemoApp', [
  'gcAJSDemoApp.services',
  'gcAJSDemoApp.controllers',
  'ngRoute'
]).
config(['$routeProvider', function($routeProvider) {
  $routeProvider.
	when("/teams", {templateUrl: "partials/teams.html", controller: "teamController"}).
	when("/team-players/:id", {templateUrl: "partials/players.html", controller: "playerController"}).
	otherwise({redirectTo: '/teams'});
}]);
