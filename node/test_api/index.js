var express = require('express');

// Root
var app = express();
app.listen(3000, function () {
  console.log('app is listening at port 3005');
});
// app.use(app.static(__dirname + '/public'));

// page_turning
var pageTurning = express();
app.use('/page_turning', pageTurning);

pageTurning.get('/', function(req, res){
  console
    res.send({
      'page_info': [
        {
          'header' : 'http://www.baidu.com',
          'nick' : 'feng1',
          'desc' : '我是2冯-1'
         },
         {
          'header' : 'http://www.baidu.com',
          'nick' : 'feng2',
          'desc' : '2冯是我-2'
         },
         {
          'header' : 'http://www.baidu.com',
          'nick' : 'feng3',
          'desc' : '我也很2-3'
         }
      ]
    });
})
