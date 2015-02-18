<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Province */

$this->title = $model->idProvince;
$this->params['breadcrumbs'][] = ['label' => 'Provinces', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="province-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'idProvince' => $model->idProvince, 'Region_idRegion' => $model->Region_idRegion], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'idProvince' => $model->idProvince, 'Region_idRegion' => $model->Region_idRegion], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'idProvince',
            'Province_code',
            'Province_Description',
            'Region_idRegion',
        ],
    ]) ?>

</div>
