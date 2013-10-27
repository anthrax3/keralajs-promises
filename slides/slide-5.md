```
User.get('1', {
  success: function(){
    Accounts.get('1', {
      success: function(){
        Accounts.update({twitter: @addyosmani}, {
          success: fucntion(){
            console.log('Success')
          },
          error: function(){
            console.log('Error');
          }
        })
      },
      error: fucntion(){
        console.log('Error');
      }
    })
  },
  error: function(){
    console.log('error');
  }
});
```