<?php

use yii\helpers\Html;
use yii\grid\GridView;
use app\models\AuthItem;

/* @var $this yii\web\View */
/* @var $searchModel app\models\ClientSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Clients';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="client-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>

        <?= 
            Html::a('Create Client', ['create'], ['class' => 'btn btn-success']) 
        ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'firstname',
            'lastname',
            'address',
            'contact_number',
            'company_name',
            // 'company_position',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
