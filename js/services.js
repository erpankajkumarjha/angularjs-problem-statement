'use strict';
var serviceUrl= 'http://localhost/gcAJSDemoApp/php/';
angular.module('gcAJSDemoApp.services', [])
  .factory('gcAJSAPI', function($http) {

    var gcAJS = {};

    gcAJS.getAllTeams = function() {
      return $http({
        method: 'GET', 
        url: serviceUrl+'teams.php/'+ new Date().getTime()
      });
    }

     gcAJS.getPlayersByTeam = function(id) {
      return $http({
        method: 'GET', 
        url: serviceUrl+'players.php/'+ id +'/' + new Date().getTime()
      });
    }

    return gcAJS;
  });
