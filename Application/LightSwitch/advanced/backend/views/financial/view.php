<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Financial */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Financials', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="financial-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
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
            'id',
            'package_price',
            'receipt_no',
            'receipt_date',
            'vat',
            'tls_cut',
            'talent_fee',
            'total',
            'record_added',
            'update_by',
            'time_updated',
        ],
    ]) ?>

</div>
