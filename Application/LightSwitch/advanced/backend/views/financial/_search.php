<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\FinancialSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="financial-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'package_price') ?>

    <?= $form->field($model, 'receipt_no') ?>

    <?= $form->field($model, 'receipt_date') ?>

    <?= $form->field($model, 'vat') ?>

    <?php // echo $form->field($model, 'tls_cut') ?>

    <?php // echo $form->field($model, 'talent_fee') ?>

    <?php // echo $form->field($model, 'total') ?>

    <?php // echo $form->field($model, 'record_added') ?>

    <?php // echo $form->field($model, 'update_by') ?>

    <?php // echo $form->field($model, 'time_updated') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
