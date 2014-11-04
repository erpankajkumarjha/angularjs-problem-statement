'use strict';

angular.module('gcAJSDemoApp.controllers', []).

  /* Team Controller */
  controller('teamController', function($scope, gcAJSAPI) {
    $scope.teamsList = [];

    gcAJSAPI.getAllTeams().success(function (response) {
        if(response.status === true){
            $scope.teamsList = response.data;
        }
    });
  }).

  /* Player controller */
  controller('playerController', function($scope, $routeParams, gcAJSAPI) {
    $scope.id = $routeParams.id;
    $scope.team = [];
    $scope.playersList = [];

    gcAJSAPI.getPlayersByTeam($scope.id).success(function (response) {
        if(response.status === true){
            $scope.playersList = response.data.players;
            $scope.team = response.data.team;
        }
    });
  });