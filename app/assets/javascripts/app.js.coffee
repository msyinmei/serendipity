app = angular.module 'serendipitousApp', ['rails']

# app.controller('StoreController', ['$http', function($http){
#     var store = this;
#     store.products = [];
#     $http.get('/store-products.json').success(function(data){
#       store.products = data;
#     });
#   }]);

app.directive "formattedAddress", ->
  restrict: "E"
  replace: true
  template: "<h1>hi!</h1>"


app.directive "viewTabs", ->
  restrict: "E"
  replace:true
  template: '<section><ul class="nav nav-pills"><li ng-class="{ active:tab.isSet(1) }"><a href ng-click="tab.setTab(1)">Description</a></li><li ng-class="{ active:tab.isSet(2) }"><a href ng-click="tab.setTab(2)">Specs</a></li><li ng-class="{ active:tab.isSet(3) }"><a href ng-click="tab.setTab(3)">Reviews</a></li></ul><events-all ng-show="tab.isSet(1)"></events-all><events-user ng-show="tab.isSet(2)"></events-user><event-new ng-show="tab.isSet(3)"></event-new></section>'
  controller: ->
    this.tab = 1

    this.isSet = (checkTab) ->
      this.tab == checkTab

    this.setTab = (activeTab)->
      this.tab = activeTab
  controllerAs: "tab"

app.directive "eventsAll", ->
  restrict: 'E',
  templateUrl: "/templates/events-all.html"

app.directive "eventsUser", ->
  restrict: 'E',
  templateUrl: "/templates/events-user.html"

app.directive "eventNew", ->
  restrict: 'E',
  templateUrl: "/templates/event-new.html"

# app.directive "eventsAll", ->
#   restrict: "E",
#   templateUrl: "events-All.html",
#   controller: ->
#     this.current = 0
#     this.setCurrent = (imageNumber)->
#       this.current = imageNumber || 0
#   controllerAs: "eventsAll"

