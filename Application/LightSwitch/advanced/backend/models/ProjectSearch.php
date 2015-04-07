<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Project;

/**
 * ProjectSearch represents the model behind the search form about `app\models\Project`.
 */
class ProjectSearch extends Project
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'project_number'], 'integer'],
            [['client_company_name', 'status', 'record_added', 'updated_by', 'time_updated'], 'safe'],
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
        $query = Project::find();

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
            'project_number' => $this->project_number,
            'record_added' => $this->record_added,
            'time_updated' => $this->time_updated,
        ]);

        $query->andFilterWhere(['like', 'client_company_name', $this->client_company_name])
            ->andFilterWhere(['like', 'status', $this->status])
            ->andFilterWhere(['like', 'updated_by', $this->updated_by]);

        return $dataProvider;
    }
}
