<?php

namespace backend\controllers;

use Yii;
use app\models\Project;
use app\models\ProjectSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;
use yii\web\ForbiddenHttpException;
/**
 * ProjectController implements the CRUD actions for Project model.
 */
class ProjectController extends Controller
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
     * Lists all Project models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new ProjectSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Project model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        {
            return $this->render('view', [
                'model' => $this->findModel($id),
            ]);
        } else {
           throw new ForbiddenHttpException('Are you a authorized Member?');
        }
    }

    /**
     * Creates a new Project model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        if( Yii::$app->user->can('Core-Members'))
        {
            $model = new Project();

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
     * Updates an existing Project model.
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


                 // get the instance of the uploaded file
                 $imageName = $model->file_name;
                 $model->file = UploadedFile::getInstance($model,'file');
                 $model->file->saveAs('uploads/'.$imageName.'.'.$model->file->extension );

                 // save the file path in the db column
                 $model->files = 'uploads/'.$imageName.'.'.$model->file->extension;
                 $model->save();

                 
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
     * Deletes an existing Project model.
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
     * Finds the Project model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Project the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Project::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
