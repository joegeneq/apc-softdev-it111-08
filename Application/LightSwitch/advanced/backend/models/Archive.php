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
    public $file;
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
            [['file'], 'file'],
            [['archive_name', 'files', 'file_name', 'added_by'], 'string', 'max' => 45]
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
            'file_name' => 'File Name',
            'files' => 'Files',
            'added_by' => 'Added By',
            'time_updated' => 'Time Updated',
        ];
    }
}
