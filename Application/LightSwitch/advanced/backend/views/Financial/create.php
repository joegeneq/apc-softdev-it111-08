<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Financial */

$this->title = 'Create Financial';
$this->params['breadcrumbs'][] = ['label' => 'Financials', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="financial-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>