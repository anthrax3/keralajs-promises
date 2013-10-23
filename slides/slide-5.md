```
var promiseAdd = function(val){
    var promise = new Aplus();
    setTimeout(function(){
        promise.fulfill(val + 1);
    }, 5000);
    return promise;
};

var promiseDivide = function(val){
    var promise = new Aplus();
    if(val === 0){
        promise.reject('Error');
    }
    setTimeout(function(){
        promise.fulfill(val / 2);
    }, 5000);
    return promise;
};
```
```
var onError = outPut = function(val){
    console.log(val);
};

var onError = outPut;

promiseAdd(2)
  .then(promiseDivide)
  .then(outPut)
  .then(undefined, onError);
```
