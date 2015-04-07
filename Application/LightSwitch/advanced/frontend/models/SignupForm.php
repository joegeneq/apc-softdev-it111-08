<?php
namespace frontend\models;

use backend\models\AuthAssignment;
use common\models\User;
use yii\base\Model;
use Yii;

/**
 * Signup form
 */
class SignupForm extends Model
{
    public $firstname;
	public $lastname;
	public $username;
    public $email;
	public $roles;
    public $password;

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            ['username', 'filter', 'filter' => 'trim'],
            ['username', 'required'],
			['firstname', 'required'],
			['lastname', 'required'],
            ['username', 'unique', 'targetClass' => '\common\models\User', 'message' => 'This username has already been taken.'],
            ['username', 'string', 'min' => 2, 'max' => 255],

            ['email', 'filter', 'filter' => 'trim'],
            ['email', 'required'],
            ['email', 'email'],
            ['email', 'unique', 'targetClass' => '\common\models\User', 'message' => 'This email address has already been taken.'],
            ['password', 'required'],
            ['password', 'string', 'min' => 6],
			
			['roles','required', 'message' => 'Should not be blank'],
        ];
    }

    /**
     * Signs user up.
     *
     * @return User|null the saved model or null if saving fails
     */
    public function signup()
    {
        if ($this->validate()) {
            $user = new User();
            $user->username = $this->username;
			$user->firstname = $this->firstname;
			$user->lastname = $this->lastname;
            $user->email = $this->email;
            
            $user->setPassword($this->password);
            $user->generateAuthKey();
            
            $user->save();
            

            $rolelist = $_POST['SignupForm']['roles'];
            foreach ($rolelist as $value) 
            {
                 $newRole = new AuthAssignment;
                 $newRole->user_id = $user->id;
                 $newRole->item_name = $value;
                 $newRole->save();
            }
           return $user;
            
        }

        return null;
    }
}
