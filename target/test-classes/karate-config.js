function fn() {
  karate.configure('connectTimeout', 50000);
  karate.configure('readTimeout', 50000);
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
 var config = {
        env: env,
        testConfig:   'bar',
        urlSoap:      'url',
        urlRest:      'url',
        urlRestBus:   'url',
        urlApi:       'url',
        datajson:     'json'
    }
    switch (env){
        case "dev":
        config.urlApi     = 'https://api-v2.dev.mpr.mipaquete.com';
        config.datajson   = 'dev';
        break;
  }
  return config;
}