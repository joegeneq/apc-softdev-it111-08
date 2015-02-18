<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "Region".
 *
 * @property integer $idRegion
 * @property string $Region_code
 * @property string $Region_description
 *
 * @property Province[] $provinces
 */
class Region extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'Region';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Region_code', 'Region_description'], 'string', 'max' => 32]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'idRegion' => 'Id Region',
            'Region_code' => 'Region Code',
            'Region_description' => 'Region Description',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProvinces()
    {
        return $this->hasMany(Province::className(), ['Region_idRegion' => 'idRegion']);
    }
}
