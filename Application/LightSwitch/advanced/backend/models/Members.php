<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "members".
 *
 * @property integer $id
 * @property string $firstname
 * @property string $lastname
 * @property string $middlename
 * @property string $status
 * @property string $contact
 * @property string $specialization
 * @property string $address
 */
class Members extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'members';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'firstname', 'lastname', 'middlename', 'status', 'contact', 'specialization', 'address'], 'required'],
            [['id'], 'integer'],
            [['firstname', 'lastname', 'middlename', 'status', 'contact', 'specialization', 'address'], 'string', 'max' => 45]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'firstname' => 'Firstname',
            'lastname' => 'Lastname',
            'middlename' => 'Middlename',
            'status' => 'Status',
            'contact' => 'Contact',
            'specialization' => 'Specialization',
            'address' => 'Address',
        ];
    }
}
