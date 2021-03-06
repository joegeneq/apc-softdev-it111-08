<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\financial;

/**
 * FinancialSearch represents the model behind the search form about `app\models\financial`.
 */
class FinancialSearch extends financial
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'receipt_no'], 'integer'],
            [['package_price', 'vat', 'tls_cut', 'talent_fee', 'total'], 'number'],
            [['receipt_date', 'file_name', 'files', 'record_added', 'update_by', 'time_updated'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = financial::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
            'package_price' => $this->package_price,
            'receipt_no' => $this->receipt_no,
            'receipt_date' => $this->receipt_date,
            'vat' => $this->vat,
            'tls_cut' => $this->tls_cut,
            'talent_fee' => $this->talent_fee,
            'total' => $this->total,
            'record_added' => $this->record_added,
            'time_updated' => $this->time_updated,
        ]);

        $query->andFilterWhere(['like', 'file_name', $this->file_name])
            ->andFilterWhere(['like', 'files', $this->files])
            ->andFilterWhere(['like', 'update_by', $this->update_by]);

        return $dataProvider;
    }
}
