<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "city".
 *
 * @property integer $idCity
 * @property string $City_code
 * @property string $City_description
 * @property integer $Province_idProvince
 * @property integer $Province_Region_idRegion
 *
 * @property Province $provinceIdProvince
 */
class City extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'city';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Province_idProvince', 'Province_Region_idRegion'], 'required'],
            [['Province_idProvince', 'Province_Region_idRegion'], 'integer'],
            [['City_code', 'City_description'], 'string', 'max' => 32]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'idCity' => 'Id City',
            'City_code' => 'City Code',
            'City_description' => 'City Description',
            'Province_idProvince' => 'Province Id Province',
            'Province_Region_idRegion' => 'Province  Region Id Region',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProvinceIdProvince()
    {
        return $this->hasOne(Province::className(), ['idProvince' => 'Province_idProvince', 'Region_idRegion' => 'Province_Region_idRegion']);
    }
}
