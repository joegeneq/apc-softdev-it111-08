<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Archive */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="archive-form">

    <?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]); ?>

    <?= $form->field($model, 'archive_name')->textInput(['maxlength' => 45]) ?>

    <?= $form->field($model, 'archive_number')->textInput() ?>

    <?= $form->field($model, 'file_name')->textInput(['maxlength' => 45]) ?>

    <?= $form->field($model, 'file' )->fileInput(); ?>

    <?= $form->field($model, 'added_by')->textInput(['maxlength' => 45]) ?>

    <?= $form->field($model, 'time_updated')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
