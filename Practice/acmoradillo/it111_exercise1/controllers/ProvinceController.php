<?php

namespace app\controllers;

use Yii;
use app\models\province;
use app\models\ProvinceSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * ProvinceController implements the CRUD actions for province model.
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
     * Lists all province models.
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
     * Displays a single province model.
     * @param integer $id
     * @param integer $region_idRegion
     * @return mixed
     */
    public function actionView($id, $region_idRegion)
    {
        return $this->render('view', [
            'model' => $this->findModel($id, $region_idRegion),
        ]);
    }

    /**
     * Creates a new province model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new province();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id, 'region_idRegion' => $model->region_idRegion]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing province model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @param integer $region_idRegion
     * @return mixed
     */
    public function actionUpdate($id, $region_idRegion)
    {
        $model = $this->findModel($id, $region_idRegion);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id, 'region_idRegion' => $model->region_idRegion]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing province model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @param integer $region_idRegion
     * @return mixed
     */
    public function actionDelete($id, $region_idRegion)
    {
        $this->findModel($id, $region_idRegion)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the province model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @param integer $region_idRegion
     * @return province the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id, $region_idRegion)
    {
        if (($model = province::findOne(['id' => $id, 'region_idRegion' => $region_idRegion])) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
