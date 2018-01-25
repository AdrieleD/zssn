# ZSSN (Zombie Survival Social Network)

This project was created to solve [this](https://gist.github.com/akitaonrails/711b5553533d1a14364907bbcdbee677) challenge.

# Requirements

* Ruby 2.3.1 
* Rails 4.2.6
* Bundler

# Parameters

* Survivor
```
{
        name:string
        age:integer
        gender:string
        lastLatitude:decimal
        lastLongitude:decimal
 }
 ```
 * Inventory
 ```
 {
        water:integer
        food:integer
        medication:integer
        ammunition:integer
 }
 ```

# Running

cd zssn/

rails s

Link: http://localhost:3000/

# Notes

* The parameters are started with a default value: 0
* The average resources per survivor is calculated only on healthy survivors
