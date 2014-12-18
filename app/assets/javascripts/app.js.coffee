app = angular.module 'serendipitousApp', ['rails']

app.controller 'AllController', ['$http', ($http)->
    all = this
    all.events = []
    $http.get('/api/events.json').success (data) ->
      all.events = data
    ]

app.directive "viewTabs", ->
  restrict: "E"
  templateUrl: '/templates/view-tabs.html'
  controller: ->
    this.tab = 3

    this.isSet = (checkTab) ->
      # console.log "isSet:" + checkTab
      this.tab == checkTab

    this.setTab = (activeTab)->
      # console.log "isTab:" + activeTab
      this.tab = activeTab
  controllerAs: "tab"

app.directive "mapDiv", ->
  restrict: "E"
  templateUrl: '/templates/map-div.html'

app.directive "eventsAll", ->
  restrict: 'E'
  templateUrl: "/templates/events-all.html"

app.directive "eventsUser", ->
  restrict: 'E'
  templateUrl: "/templates/events-user.html"

app.directive "eventNew", ->
  restrict: 'E'
  templateUrl: "/templates/event-new.html"

