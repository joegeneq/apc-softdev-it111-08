<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "client".
 *
 * @property string $firstname
 * @property string $lastname
 * @property string $address
 * @property integer $contact_number
 * @property string $company_name
 * @property string $company_position
 */
class Client extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'client';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['firstname', 'lastname', 'address', 'contact_number', 'company_name', 'company_position'], 'required'],
            [['contact_number'], 'integer'],
            [['firstname', 'company_name', 'company_position'], 'string', 'max' => 45],
            [['lastname'], 'string', 'max' => 64],
            [['address'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'firstname' => 'Firstname',
            'lastname' => 'Lastname',
            'address' => 'Address',
            'contact_number' => 'Contact Number',
            'company_name' => 'Company Name',
            'company_position' => 'Company Position',
        ];
    }
}
