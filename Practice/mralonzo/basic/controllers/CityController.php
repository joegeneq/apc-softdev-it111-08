<?php

namespace app\controllers;

use Yii;
use app\models\City;
use app\models\CitySearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * CityController implements the CRUD actions for City model.
 */
class CityController extends Controller
{
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                ],
            ],
        ];
    }

    /**
     * Lists all City models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new CitySearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single City model.
     * @param integer $idCity
     * @param integer $Province_idProvince
     * @return mixed
     */
    public function actionView($idCity, $Province_idProvince)
    {
        return $this->render('view', [
            'model' => $this->findModel($idCity, $Province_idProvince),
        ]);
    }

    /**
     * Creates a new City model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new City();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'idCity' => $model->idCity, 'Province_idProvince' => $model->Province_idProvince]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing City model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $idCity
     * @param integer $Province_idProvince
     * @return mixed
     */
    public function actionUpdate($idCity, $Province_idProvince)
    {
        $model = $this->findModel($idCity, $Province_idProvince);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'idCity' => $model->idCity, 'Province_idProvince' => $model->Province_idProvince]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing City model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $idCity
     * @param integer $Province_idProvince
     * @return mixed
     */
    public function actionDelete($idCity, $Province_idProvince)
    {
        $this->findModel($idCity, $Province_idProvince)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the City model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $idCity
     * @param integer $Province_idProvince
     * @return City the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($idCity, $Province_idProvince)
    {
        if (($model = City::findOne(['idCity' => $idCity, 'Province_idProvince' => $Province_idProvince])) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
