var http = require('http');

    http.createServer(function(req, res){
	process.env.TZ = "Asia/Shanghai";
        var time=new Date().toLocaleString();	
        var html = '<html>'  
        +'<head>'  
        +'<title>heroku Nodejs 8080</title>'  
        +'</head>'  
        +'<body>'  
		+ time+'<br>'
        +'</body>'  
        +'</html>';  
        res.writeHead(200,{'Content-Type' : 'text/html'});  
        res.write(html);  
        res.end();  
    }).listen(8080);
