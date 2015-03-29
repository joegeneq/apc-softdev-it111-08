<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\membersSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Members';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="members-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Members', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'firstname',
            'lastname',
            'middlename',
            'status',
            // 'contact',
            // 'specialization',
            // 'address',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
