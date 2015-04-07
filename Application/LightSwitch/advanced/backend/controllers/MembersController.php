<?php


namespace backend\controllers;

use Yii;
use app\models\members;
use app\models\membersSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\ForbiddenHttpException;

/**
 * MembersController implements the CRUD actions for members model.
 */
class MembersController extends Controller
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
     * Lists all members models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new membersSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single members model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        if( Yii::$app->user->can('Core-Members'))
        {
            return $this->render('view', [
                'model' => $this->findModel($id),
            ]);
        } else {
           throw new ForbiddenHttpException('Are you a authorized Member?');
        }
    }

    /**
     * Creates a new members model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        if( Yii::$app->user->can('Core-Members'))
        {
            $model = new members();

            if ($model->load(Yii::$app->request->post()) && $model->save()) {
                return $this->redirect(['view', 'id' => $model->id]);
            } else {
                return $this->render('create', [
                    'model' => $model,
                ]);
            }
         } else {
           throw new ForbiddenHttpException('Are you a authorized Member?');
        }
    }

    /**
     * Updates an existing members model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
         if( Yii::$app->user->can('Core-Members'))
        {
            $model = $this->findModel($id);

            if ($model->load(Yii::$app->request->post()) && $model->save()) {
                return $this->redirect(['view', 'id' => $model->id]);
            } else {
                return $this->render('update', [
                    'model' => $model,
                ]);
            }
        } else {
           throw new ForbiddenHttpException('Are you a authorized Member?');
        }
    }

    /**
     * Deletes an existing members model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
         if( Yii::$app->user->can('Core-Members'))
        {
            $this->findModel($id)->delete();

            return $this->redirect(['index']);
        } else {
           throw new ForbiddenHttpException('Are you a authorized Member?');
        }
    }

    /**
     * Finds the members model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return members the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = members::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
