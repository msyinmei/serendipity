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
  templateUrl: '/templates/view-tabs.html'
  controller: ->
    this.tab = 1

    this.isSet = (checkTab) ->
      # console.log "isSet:" + checkTab
      this.tab == checkTab

    this.setTab = (activeTab)->
      # console.log "isTab:" + activeTab
      this.tab = activeTab
  controllerAs: "tab"

app.directive "eventsAll", ->
  restrict: 'E'
  templateUrl: "/templates/events-all.html"

app.directive "eventsUser", ->
  restrict: 'E'
  templateUrl: "/templates/events-user.html"

app.directive "eventNew", ->
  restrict: 'E'
  templateUrl: "/templates/event-new.html"

