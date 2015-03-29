<?php
$params = array_merge(
    require(__DIR__ . '/../../common/config/params.php'),
    require(__DIR__ . '/../../common/config/params-local.php'),
    require(__DIR__ . '/params.php'),
    require(__DIR__ . '/params-local.php')
);

return [
'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
'extensions' => require(__DIR__ . '/../../vendor/yiisoft/extensions.php'),
    'id' => 'app-backend',
    'basePath' => dirname(__DIR__),
    'controllerNamespace' => 'backend\controllers',
    'bootstrap' => ['log'],
 
    'components' => [

        'authManager' => [
                           'class' => 'yii\rbac\DbManager',
                           'defaultRoles' => ['guest'],
          ], 

	 'db' => [ 
	        'class' => 'yii\db\Connection',
            'dsn' => 'mysql:host=localhost;dbname=ls_dss',
            'username' => 'root',
            'password' => '',
            'charset' => 'utf8',
			
			],
        'user' => [
            'identityClass' => 'common\models\User',
            'enableAutoLogin' => true,
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
          
    
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
    ],
    'modules'=>[],
    'params' => $params,
];
