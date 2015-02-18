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
        <?= Html::a('Update', ['update', 'idCity' => $model->idCity, 'Province_idProvince' => $model->Province_idProvince], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'idCity' => $model->idCity, 'Province_idProvince' => $model->Province_idProvince], [
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
            'City_code',
            'City_description',
            'Province_idProvince',
        ],
    ]) ?>

</div>
