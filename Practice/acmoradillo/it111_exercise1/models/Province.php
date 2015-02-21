<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "province".
 *
 * @property integer $id
 * @property string $province_code
 * @property string $province_description
 * @property integer $region_idRegion
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
            [['region_idRegion'], 'required'],
            [['region_idRegion'], 'integer'],
            [['province_code', 'province_description'], 'string', 'max' => 32]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'province_code' => 'Province Code',
            'province_description' => 'Province Description',
            'region_idRegion' => 'Region Id Region',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCities()
    {
        return $this->hasMany(City::className(), ['province_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getRegionIdRegion()
    {
        return $this->hasOne(Region::className(), ['idRegion' => 'region_idRegion']);
    }
}
