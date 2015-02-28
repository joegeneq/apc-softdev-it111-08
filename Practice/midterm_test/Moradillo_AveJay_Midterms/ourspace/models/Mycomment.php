<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "mycomment".
 *
 * @property integer $id
 * @property integer $myaddress_id
 * @property integer $author
 * @property integer $body
 * @property string $created_at
 */
class Mycomment extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'mycomment';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['myaddress_id', 'author', 'body'], 'required'],
            [['myaddress_id', 'author', 'body'], 'integer'],
            [['created_at'], 'safe'],
            [['myaddress_id'], 'unique']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'myaddress_id' => 'Myaddress ID',
            'author' => 'Author',
            'body' => 'Body',
            'created_at' => 'Created At',
        ];
    }
}
