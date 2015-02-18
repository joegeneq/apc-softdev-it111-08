<?php

namespace app\controllers;

use Yii;
use app\models\Province;
use app\models\ProvinceSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * ProvinceController implements the CRUD actions for Province model.
 */
class ProvinceController extends Controller
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
     * Lists all Province models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new ProvinceSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Province model.
     * @param integer $idProvince
     * @param integer $Region_idRegion
     * @return mixed
     */
    public function actionView($idProvince, $Region_idRegion)
    {
        return $this->render('view', [
            'model' => $this->findModel($idProvince, $Region_idRegion),
        ]);
    }

    /**
     * Creates a new Province model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Province();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'idProvince' => $model->idProvince, 'Region_idRegion' => $model->Region_idRegion]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Province model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $idProvince
     * @param integer $Region_idRegion
     * @return mixed
     */
    public function actionUpdate($idProvince, $Region_idRegion)
    {
        $model = $this->findModel($idProvince, $Region_idRegion);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'idProvince' => $model->idProvince, 'Region_idRegion' => $model->Region_idRegion]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Province model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $idProvince
     * @param integer $Region_idRegion
     * @return mixed
     */
    public function actionDelete($idProvince, $Region_idRegion)
    {
        $this->findModel($idProvince, $Region_idRegion)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Province model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $idProvince
     * @param integer $Region_idRegion
     * @return Province the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($idProvince, $Region_idRegion)
    {
        if (($model = Province::findOne(['idProvince' => $idProvince, 'Region_idRegion' => $Region_idRegion])) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
