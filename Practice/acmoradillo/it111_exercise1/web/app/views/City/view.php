<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\City */

$this->title = $model->idCity;
$this->params['breadcrumbs'][] = ['label' => 'Cities', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="city-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'idCity' => $model->idCity, 'province_id' => $model->province_id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'idCity' => $model->idCity, 'province_id' => $model->province_id], [
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
            'idCity',
            'city_code',
            'city_description',
            'province_id',
        ],
    ]) ?>

</div>
