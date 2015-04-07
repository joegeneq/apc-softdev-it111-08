<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Project */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="project-form">

    <?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]); ?>

    <?= $form->field($model, 'project_number')->textInput() ?>

    <?= $form->field($model, 'client_company_name')->textInput(['maxlength' => 45]) ?>

    <?= $form->field($model, 'status')->textInput(['maxlength' => 45]) ?>

    <?= $form->field($model, 'file_name')->textInput(['maxlength' => 45]) ?>

    <?= $form->field($model, 'file')->fileInput(); ?>

    <?= $form->field($model, 'record_added')->textInput() ?>

    <?= $form->field($model, 'updated_by')->textInput(['maxlength' => 45]) ?>

    <?= $form->field($model, 'time_updated')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
