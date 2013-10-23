##  Using jQuery

```
$.when(
  $.ajax( "/page1.php" ),
  $.ajax( "/page2.php" ),
)
.then(onSuccess, onError);
```
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
