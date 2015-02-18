<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "province".
 *
 * @property integer $idProvince
 * @property string $Province_code
 * @property string $Province_Description
 * @property integer $Region_idRegion
 *
 * @property City[] $cities
 * @property Region $regionIdRegion
 */
class Province extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'province';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Region_idRegion'], 'required'],
            [['Region_idRegion'], 'integer'],
            [['Province_code', 'Province_Description'], 'string', 'max' => 32]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'idProvince' => 'Id Province',
            'Province_code' => 'Province Code',
            'Province_Description' => 'Province  Description',
            'Region_idRegion' => 'Region Id Region',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCities()
    {
        return $this->hasMany(City::className(), ['Province_idProvince' => 'idProvince', 'Province_Region_idRegion' => 'Region_idRegion']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getRegionIdRegion()
    {
        return $this->hasOne(Region::className(), ['idRegion' => 'Region_idRegion']);
    }
}
