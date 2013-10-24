##  jQuery : multiple callbacks

```
$.when(function(){
    console.log('Hello Promise');
})

.then(function(){
    console.log('Success1');
}, function(){
    console.log('Error1');
})

.then(function(){
    console.log('Success2');
}, function(){
    console.log('Error2');
});
```
