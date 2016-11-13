angular.module('starter', ['ionic', 'starter.controllers'])

.run(function($ionicPlatform) {
  $ionicPlatform.ready(function() {
    if (window.cordova && window.cordova.plugins.Keyboard) {
      cordova.plugins.Keyboard.hideKeyboardAccessoryBar(true);
      cordova.plugins.Keyboard.disableScroll(true);
    }

    if (window.StatusBar) {
      StatusBar.styleDefault();
    }

   var prefs = {
       language: 'en',
       appName: 'MY APP',
       iosURL: '<my_app_id>',
       androidURL: '',
       windowsURL: ''
     };
  });


})

.config(function($stateProvider, $urlRouterProvider, $ionicConfigProvider) {

  $ionicConfigProvider.scrolling.jsScrolling(false);
  $stateProvider

    .state('app', {
    url: '/app',
    abstract: true,
    templateUrl: 'templates/menu.html',
    controller: 'AppCtrl'
  })

  .state('app.home', {
    url: '/home',
    views: {
      'menuContent': {
        templateUrl: 'templates/home.html',
        controller: 'HomeCtrl'
      }
    }
  })
  
  .state('app.about', {
    url: '/about',
    views: {
      'menuContent': {
        templateUrl: 'templates/about.html',
        controller: 'AboutCtrl'
      }
    }
  })
  
  .state('app.basic', {
    url: '/basic',
    views: {
      'menuContent': {
        templateUrl: 'templates/basic.html',
        controller: 'BasicCtrl'
      }
    }
  })

  .state('app.basicItem', {
    url: '/basic/{itemUrl}',
    views: {
      'menuContent': {
        templateUrl: function (stateParams){
                    return 'data/basic/' + stateParams.itemUrl;
            },
        controller: 'BasicItemCtrl'
      }
    }
  })

  .state('app.advance', {
    url: '/advance',
    views: {
      'menuContent': {
        templateUrl: 'templates/advance.html',
        controller: 'AdvanceCtrl'
      }
    }
  })

  .state('app.advanceItem', {
      url: '/advance/{itemUrl}',
      views: {
        'menuContent': {
          templateUrl: function (stateParams){
                      return 'data/advance/' + stateParams.itemUrl;
              }
        }
      }
  })

    .state('app.rails', {
    url: '/rails',
    views: {
      'menuContent': {
        templateUrl: 'templates/rails.html',
        controller: 'RailsCtrl'
      }
    }
  })

  .state('app.railsItem', {
      url: '/rails/{itemUrl}',
      views: {
        'menuContent': {
          templateUrl: function (stateParams){
                      return 'data/rails/' + stateParams.itemUrl;
              }
        }
      }
  })
  
  .state('app.dateItem', {
      url: '/dateFn/{itemUrl}',
      views: {
        'menuContent': {
          templateUrl: function (stateParams){
                      return 'data/dateFn/' + stateParams.itemUrl;
              }
        }
      }
  })
  .state('app.constraintItem', {
      url: '/constraints/{itemUrl}',
      views: {
        'menuContent': {
          templateUrl: function (stateParams){
                      return 'data/constraints/' + stateParams.itemUrl;
              }
        }
      }
  })

  .state('app.joinItem', {
      url: '/join/{itemUrl}',
      views: {
        'menuContent': {
          templateUrl: function (stateParams){
                      return 'data/join/' + stateParams.itemUrl;
              }
        }
      }
  });

  $urlRouterProvider.otherwise('/app/home');
});

