<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\myAddressSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'My Addresses';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="my-address-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create My Address', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'firstname',
            'middlename',
            'lastname',
            'gender',
            // 'created_at',
            // 'home_address',
            // 'landline',
            // 'cellphone',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
