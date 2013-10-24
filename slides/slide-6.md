```js
User.get(1)
  .then(Accounts.get)
  .then(function(){
    console.log('Success');
  })
  .then(undefined, function(){
    console.log('Error');
  });
```

```js
var User = (function(){
  function get(user_id){
    var promise = new Aplus();
    $.get('/users/' + user_id, {
      success: function(data){
        promise.fulfill(data.account_id);
      },
      error: function(){
        promise.regect('Error');
      }
    });
    return promise;
  }

  return {
    get: get
  }
})
```