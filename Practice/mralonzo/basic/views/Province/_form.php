<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use app\models\Region;

/* @var $this yii\web\View */
/* @var $model app\models\Province */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="province-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'Province_code')->textInput(['maxlength' => 32]) ?>

    <?= $form->field($model, 'Province_Description')->textInput(['maxlength' => 32]) ?>

    <?= $form->field($model, 'Region_id')->dropDownList(ArrayHelper::map(Region::find()->all(), 'id','Region_description'))  ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
