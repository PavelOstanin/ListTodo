app = angular.module("todoList", [])


app.controller 'TodoController', [
  '$scope'
  ($scope) ->
    $scope.lists = []

    $scope.addList = ->
      $scope.lists.push
        text: $scope.listText
      $scope.listText = ''
      return

    $scope.removeCategory = (cat) ->
       $scope.lists.splice($scope.lists.indexOf(cat), 1)

]
