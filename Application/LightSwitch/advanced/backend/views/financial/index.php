<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\FinancialSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Financials';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="financial-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Financial', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'package_price',
            'receipt_no',
            'receipt_date',
            'vat',
            // 'tls_cut',
            // 'talent_fee',
            // 'total',
            // 'file_name',
            // 'files',
            // 'record_added',
            // 'update_by',
            // 'time_updated',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
