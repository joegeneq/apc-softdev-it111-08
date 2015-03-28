<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "inventory".
 *
 * @property integer $Code
 * @property string $Model
 * @property string $Brand
 * @property string $Color
 * @property string $Specs
 * @property string $Status
 * @property string $PurchasedDate
 * @property string $Quantity
 * @property integer $user_id
 *
 * @property User $user
 */
class Inventory extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'inventory';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Code', 'Model', 'Brand', 'Color', 'Specs', 'Status', 'PurchasedDate', 'Quantity', 'user_id'], 'required'],
            [['Code', 'user_id'], 'integer'],
            [['PurchasedDate'], 'safe'],
            [['Model', 'Brand', 'Color', 'Specs', 'Status', 'Quantity'], 'string', 'max' => 45]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'Code' => 'Code',
            'Model' => 'Model',
            'Brand' => 'Brand',
            'Color' => 'Color',
            'Specs' => 'Specs',
            'Status' => 'Status',
            'PurchasedDate' => 'Purchased Date',
            'Quantity' => 'Quantity',
            'user_id' => 'User ID',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(User::className(), ['id' => 'user_id']);
    }
}
