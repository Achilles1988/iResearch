var express = require('express');

// Root
var app = express();
app.listen(3005, function () {
  console.log('app is listening at port 3005');
});
// app.use(app.static(__dirname + '/public'));

// /test_api
var testApi = express();
app.use('/test_api', testApi);

testApi.get('/page_truning_1', function(req, res){
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
