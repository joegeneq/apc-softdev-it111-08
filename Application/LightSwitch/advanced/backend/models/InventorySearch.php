<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Inventory;

/**
 * InventorySearch represents the model behind the search form about `app\models\Inventory`.
 */
class InventorySearch extends Inventory
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Code', 'user_id'], 'integer'],
            [['Model', 'Brand', 'Color', 'Specs', 'Status', 'PurchasedDate', 'Quantity'], 'safe'],
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
        $query = Inventory::find();

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
            'Code' => $this->Code,
            'PurchasedDate' => $this->PurchasedDate,
            'user_id' => $this->user_id,
        ]);

        $query->andFilterWhere(['like', 'Model', $this->Model])
            ->andFilterWhere(['like', 'Brand', $this->Brand])
            ->andFilterWhere(['like', 'Color', $this->Color])
            ->andFilterWhere(['like', 'Specs', $this->Specs])
            ->andFilterWhere(['like', 'Status', $this->Status])
            ->andFilterWhere(['like', 'Quantity', $this->Quantity]);

        return $dataProvider;
    }
}
