<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\mycomment;

/**
 * myCommentSearch represents the model behind the search form about `app\models\mycomment`.
 */
class myCommentSearch extends mycomment
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'myaddress_id', 'author', 'body'], 'integer'],
            [['created_at'], 'safe'],
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
        $query = mycomment::find();

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
            'myaddress_id' => $this->myaddress_id,
            'author' => $this->author,
            'body' => $this->body,
            'created_at' => $this->created_at,
        ]);

        return $dataProvider;
    }
}
