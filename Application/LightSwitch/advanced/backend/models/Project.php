<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "project".
 *
 * @property integer $id
 * @property integer $project_number
 * @property string $client_company_name
 * @property string $status
 * @property string $record_added
 * @property string $updated_by
 * @property string $time_updated
 */
class Project extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'project';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['project_number', 'client_company_name', 'status', 'updated_by'], 'required'],
            [['project_number'], 'integer'],
            [['record_added', 'time_updated'], 'safe'],
            [['client_company_name', 'status', 'updated_by'], 'string', 'max' => 45]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'project_number' => 'Project Number',
            'client_company_name' => 'Client Company Name',
            'status' => 'Status',
            'record_added' => 'Record Added',
            'updated_by' => 'Updated By',
            'time_updated' => 'Time Updated',
        ];
    }
}
