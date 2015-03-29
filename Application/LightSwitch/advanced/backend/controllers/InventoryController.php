<?php

namespace backend\controllers;

use Yii;
use app\models\Inventory;
use app\models\InventorySearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\ForbiddenHttpException;

/**
 * InventoryController implements the CRUD actions for Inventory model.
 */
class InventoryController extends Controller
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
     * Lists all Inventory models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new InventorySearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Inventory model.
     * @param integer $Code
     * @param integer $user_id
     * @return mixed
     */
    public function actionView($Code, $user_id)
    {
        return $this->render('view', [
            'model' => $this->findModel($Code, $user_id),
        ]);
    }

    /**
     * Creates a new Inventory model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        if( Yii::$app->user->can('Core-Members'))
        {
            $model = new Inventory();

            if ($model->load(Yii::$app->request->post()) && $model->save()) {
                return $this->redirect(['view', 'Code' => $model->Code, 'user_id' => $model->user_id]);
            } else {
                return $this->render('create', [
                    'model' => $model,
                ]);
            }
        } else {
           throw new ForbiddenHttpException('Are you a Core Member?');
        }
    }

    /**
     * Updates an existing Inventory model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $Code
     * @param integer $user_id
     * @return mixed
     */
    public function actionUpdate($Code, $user_id)
    {
        $model = $this->findModel($Code, $user_id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'Code' => $model->Code, 'user_id' => $model->user_id]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Inventory model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $Code
     * @param integer $user_id
     * @return mixed
     */
    public function actionDelete($Code, $user_id)
    {
        $this->findModel($Code, $user_id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Inventory model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $Code
     * @param integer $user_id
     * @return Inventory the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($Code, $user_id)
    {
        if (($model = Inventory::findOne(['Code' => $Code, 'user_id' => $user_id])) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
