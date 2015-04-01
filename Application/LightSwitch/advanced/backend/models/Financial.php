<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "financial".
 *
 * @property integer $id
 * @property string $package_price
 * @property integer $receipt_no
 * @property string $receipt_date
 * @property string $vat
 * @property string $tls_cut
 * @property string $talent_fee
 * @property string $total
 * @property string $file_name
 * @property string $files
 * @property string $record_added
 * @property string $update_by
 * @property string $time_updated
 */
class Financial extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'financial';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['package_price', 'receipt_no', 'receipt_date', 'vat', 'tls_cut', 'talent_fee', 'total', 'file_name', 'files', 'update_by'], 'required'],
            [['package_price', 'vat', 'tls_cut', 'talent_fee', 'total'], 'number'],
            [['receipt_no'], 'integer'],
            [['receipt_date', 'record_added', 'time_updated'], 'safe'],
            [['file_name', 'update_by'], 'string', 'max' => 45],
            [['files'], 'string', 'max' => 200]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'package_price' => 'Package Price',
            'receipt_no' => 'Receipt No',
            'receipt_date' => 'Receipt Date',
            'vat' => 'Vat',
            'tls_cut' => 'Tls Cut',
            'talent_fee' => 'Talent Fee',
            'total' => 'Total',
            'file_name' => 'File Name',
            'files' => 'Files',
            'record_added' => 'Record Added',
            'update_by' => 'Update By',
            'time_updated' => 'Time Updated',
        ];
    }
}
