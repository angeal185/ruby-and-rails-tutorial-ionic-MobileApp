angular.module('starter.controllers', [])

.controller('AppCtrl', function($scope, $ionicModal, $timeout) {

})

.controller('HomeCtrl', function($scope, $stateParams) {
  $scope.openMarket = function(src){
    window.open(src,'_system'); 
  }
})

.controller('AboutCtrl', function($scope, $stateParams) {
  $scope.openMarket = function(src){
    window.open(src,'_system'); 
  }
})

.controller('AdvanceCtrl', function($scope) {
  $scope.advanceItems = [
    { title: '01 - Object Oriented', id: 1 , url:'01_object_oriented.html'},
    { title: '02 - Regular Expressions', id: 2 , url:'02_regular_expressions.html'},
    { title: '03 - Database access', id: 3, url:'03_database_access.html' },
    { title: '04 - Web Applications', id: 4 , url:'04_web_applications.html'},
    { title: '05 - Sending Email', id: 5 , url:'05_sending_email.html'},
    { title: '06 - Socket Programming', id: 6 , url:'06_socket_programming.html'},
    { title: '07 - Ruby/XML, XSLT', id: 7 , url:'07_xml_xslt.html'},
    { title: '08 - Web Services', id: 8 , url:'08_web_services.html'},    
    { title: '09 - Ruby/LDAP', id: 9 , url:'09_ldap.html'},
    { title: '10 - Multithreading', id: 10 , url:'10_multithreading.html'}
  ];
})
.controller('BasicCtrl', function($scope, $stateParams) {
  $scope.basicItems = [
    { title: '01 - Overview', id: 1 , url:'01_overview.html'},
    { title: '02 - Environment Setup', id: 2 , url:'02_environment.html'},
    { title: '03 - Syntax', id: 3, url:'03_syntax.html' },
    { title: '04 - Classes', id: 4 , url:'04_classes.html'},
    { title: '05 - Variables', id: 5 , url:'05_variables.html'},    
    { title: '06 - Operators', id: 6 , url:'06_operators.html'},    
    { title: '07 - Comments', id: 7 , url:'07_comments.html'},
    { title: '08 - If...ELSE', id: 8 , url:'08_if_else.html'},
    { title: '09 - Loops', id: 9 , url:'09_loops.html'},    
    { title: '10 - Methods', id: 10 , url:'10_methods.html'},    
    { title: '11 - Blocks', id: 11 , url:'11_blocks.html'},
    { title: '12 - Modules', id: 12 , url:'12_modules.html'},
    { title: '13 - Strings', id: 13 , url:'13_strings.html'},    
    { title: '14 - Arrays', id: 14 , url:'14_arrays.html'},
    { title: '15 - Hashes', id: 15 , url:'15_hashes.html'},
    { title: '16 - Date & Time', id: 16 , url:'16_date_time.html'},
    { title: '17 - Ranges', id: 17 , url:'17_ranges.html'},    
    { title: '18 - Iterators', id: 18 , url:'18_iterators.html'},
    { title: '19 - File I/O', id: 19 , url:'19_input_output.html'},
    { title: '20 - Exceptions', id: 20 , url:'20_exceptions.html'}
  ];
})
.controller('RailsCtrl', function($scope, $stateParams) {
  $scope.railsItems = [
    { title: '01 - Introduction', id: 1 , url:'01_introduction.html'},
    { title: '02 - Installation', id: 2 , url:'02_installation.html'},
    { title: '03 - Framework', id: 3, url:'03_framework.html' },
    { title: '04 - Directory Structure', id: 4 , url:'04_directory_structure.html'},
    { title: '05 - Examples', id: 5 , url:'05_examples.html'},       
    { title: '06 - Database Setup', id: 6 , url:'06_database_setup.html'},        
    { title: '07 - Active Records', id: 7 , url:'07_active_records.html'},
    { title: '08 - Migrations', id: 8 , url:'08_migrations.html'},
    { title: '09 - Controller', id: 9 , url:'09_controllers.html'},    
    { title: '10 - Routes', id: 10 , url:'10_routes.html'}, 
    { title: '11 - Views', id: 11 , url:'11_views.html'},
    { title: '12 - Layouts', id: 12 , url:'12_layouts.html'},
    { title: '13 - Scaffolding', id: 13 , url:'13_scaffolding.html'},    
    { title: '14 - Rails and AJAX', id: 14 , url:'14_and_ajax.html'},
    { title: '15 - File Uploading', id: 15 , url:'15_file_uploading.html'},
    { title: '16 - Send Emails', id: 16 , url:'16_send_email.html'}
  ];
})
.controller('BasicItemCtrl', function($scope, $stateParams) {
});