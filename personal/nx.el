(projectile-register-project-type 'angular '("tslint.json" "tsconfig.json")
                                  :compile "ng build"
                                  :run "ng serve"
                                  :test "ng test")
