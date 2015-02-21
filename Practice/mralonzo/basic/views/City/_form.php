<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use app\models\Province;

/* @var $this yii\web\View */
/* @var $model app\models\City */
/* @var $form yii\widgets\ActiveForm
<?= $form->field($model, 'Province_idProvince')->textInput() ?> */
?>

<div class="city-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'City_code')->textInput(['maxlength' => 32]) ?>

    <?= $form->field($model, 'City_description')->textInput(['maxlength' => 32]) ?>
	
	<?= $form->field($model, 'Province_id')->dropDownList(ArrayHelper::map(Province::find()->all(), 'id','Province_Description'))  ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
