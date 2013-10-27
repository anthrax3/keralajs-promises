##  Using jQuery

```
$.when(
  $.ajax( "/page1.php" ),
  $.ajax( "/page2.php" ),
)
.then(onSuccess, onError);
```
