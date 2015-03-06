<?php
use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \frontend\models\SignupForm */

$this->title = 'Signup';
$this->params['breadcrumbs'][] = $this->title;
?>


<div class="site-signup">
    <h1><?= Html::encode($this->title) ?></h1>

    <p>Please fill out the following fields to sign up:</p>

    <div class="row">
        <div class="col-lg-5">
            <?php $form = ActiveForm::begin(['id' => 'form-signup']); ?>
               
				<?= $form->field($model, 'username')->label('Username:') ?>
                <?= $form->field($model, 'password')->passwordInput() ?>
                <?= $form->field($model, 'email')->hint('Please enter your email address')->label('Email:') ?>
				<?= $form->field($model, 'firstname')->label('Firstname:') ?>
				<?= $form->field($model, 'lastname') ?>
				<?= $form->field($model, 'roles')->dropDownList(['Core Members','None Core Members','Freelancers'], ['prompt'=>'Select...'])->label('Account Type') ?>
                
			
                <div class="form-group">
                    <?= Html::submitButton('Signup', ['class' => 'btn btn-primary', 'name' => 'signup-button']) ?>
                </div>
            <?php ActiveForm::end(); ?>
        </div>
    </div>
</div>
