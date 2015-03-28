<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Inventory */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="inventory-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'Code')->textInput() ?>

    <?= $form->field($model, 'Model')->textInput(['maxlength' => 45]) ?>

    <?= $form->field($model, 'Brand')->textInput(['maxlength' => 45]) ?>

    <?= $form->field($model, 'Color')->textInput(['maxlength' => 45]) ?>

    <?= $form->field($model, 'Specs')->textInput(['maxlength' => 45]) ?>

    <?= $form->field($model, 'Status')->textInput(['maxlength' => 45]) ?>

    <?= $form->field($model, 'PurchasedDate')->textInput() ?>

    <?= $form->field($model, 'Quantity')->textInput(['maxlength' => 45]) ?>

    <?= $form->field($model, 'user_id')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
