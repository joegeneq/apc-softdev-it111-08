<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Archive;

/**
 * ArchiveSearch represents the model behind the search form about `app\models\Archive`.
 */
class ArchiveSearch extends Archive
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'archive_number'], 'integer'],
            [['archive_name', 'added_by', 'time_updated'], 'safe'],
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
        $query = Archive::find();

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
            'archive_number' => $this->archive_number,
            'time_updated' => $this->time_updated,
        ]);

        $query->andFilterWhere(['like', 'archive_name', $this->archive_name])
            ->andFilterWhere(['like', 'added_by', $this->added_by]);

        return $dataProvider;
    }
}
