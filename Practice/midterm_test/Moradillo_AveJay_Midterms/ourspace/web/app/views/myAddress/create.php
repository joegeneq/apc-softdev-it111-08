<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\myAddress */

$this->title = 'Create My Address';
$this->params['breadcrumbs'][] = ['label' => 'My Addresses', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="my-address-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
