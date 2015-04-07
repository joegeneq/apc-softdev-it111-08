<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "archive".
 *
 * @property integer $id
 * @property string $archive_name
 * @property integer $archive_number
 * @property string $added_by
 * @property string $time_updated
 */
class Archive extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'archive';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['archive_name', 'archive_number', 'added_by'], 'required'],
            [['archive_number'], 'integer'],
            [['time_updated'], 'safe'],
            [['archive_name', 'added_by'], 'string', 'max' => 45]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'archive_name' => 'Archive Name',
            'archive_number' => 'Archive Number',
            'added_by' => 'Added By',
            'time_updated' => 'Time Updated',
        ];
    }
}
