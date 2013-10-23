```
var add = function(cb, val){
    setTimeout(function(){
        cb(outPut, val + 1);
    }, 5000);
};

var multiply = function(cb, val){
    setTimeout(function(){
        cb(val * 5);
    }, 5000);
};

var outPut = function(val){
    console.log(val);
};

add(multiply, 2, outPut);
```
