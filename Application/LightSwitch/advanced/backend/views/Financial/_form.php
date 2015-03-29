<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Financial */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="financial-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'package_price')->textInput(['maxlength' => 9]) ?>

    <?= $form->field($model, 'receipt_no')->textInput() ?>

    <?= $form->field($model, 'receipt_date')->textInput() ?>

    <?= $form->field($model, 'vat')->textInput(['maxlength' => 9]) ?>

    <?= $form->field($model, 'tls_cut')->textInput(['maxlength' => 9]) ?>

    <?= $form->field($model, 'talent_fee')->textInput(['maxlength' => 9]) ?>

    <?= $form->field($model, 'total')->textInput(['maxlength' => 9]) ?>

    <?= $form->field($model, 'record_added')->textInput() ?>

    <?= $form->field($model, 'update_by')->textInput(['maxlength' => 45]) ?>

    <?= $form->field($model, 'time_updated')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
