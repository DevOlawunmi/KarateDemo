function() {
    var env = karate.env; // get java system property 'karate.env'

    karate.log('karate.env selected environment was:', env);
    karate.configure("ssl", true)

    if (!env) {
    env = 'dev'; //env can be anything: dev, qa, staging, etc.
    }

    var config = {
    env: env,

    AM_USERNAME: 'ola.ajibola@h-f.co.uk',
    AM_PASSWORD: '@Fisherman01',
    AM_HOST: 'https://auth.pingone.eu.'+env+'.azureedge.net',
    AM_AUTHENTICATE_PATH: '/bfc2e611-8a03-48ab-bdd8-8b997ba52560/as/token',

    IDM_USERNAME: 'ola.ajibola@h-f.co.uk',
    IDM_PASSWORD: '@Fisherman01',
    IDM_HOST: 'https://idm.'+env+'.example.net',
    IDM_MANAGED_USER_PATH: '/idm/managed/user',
    };

    if(env == 'qa') {
    config.AM_USERNAME: 'myUserName'
    config.AM_PASSWORD: 'myPa55word'
    }

    if(env == 'live') {
        config.AM_USERNAME: 'admin'
        config.AM_PASSWORD: 'secret'
    }

    karate.log('OpenAM Host:', config.AM_HOST);

    karate.configure('connectTimeout', 60000);
    karate.configure('readTimeout', 60000);

    return config;