<?php
App::uses('AppModel', 'Model');
/**
 * Document Model
 *
 * @property Department $Department
 * @property User $User
 */
class Document extends AppModel {


	//The Associations below have been created with all possible keys, those that are not needed can be removed

/**
 * belongsTo associations
 *
 * @var array
 */

//var $displayField = 'username';
	public $belongsTo = array(
		'Department' => array(
			'className' => 'Department',
			'foreignKey' => 'department_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'User' => array(
			'className' => 'User',
			'foreignKey' => 'user_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'Level' => array(
			'className' => 'Level',
			'foreignKey' => 'level_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);

	public $validate = array(
        'file_location' => array(
            'processCoverUpload' => array(
                'rule' => 'processCoverUpload',
                'message' => 'Unable to process cover image upload.',
                'allowEmpty' => TRUE,
            ),
        )
	);

    public function processCoverUpload($check = array()) 
    {
        if (!is_uploaded_file($check['file_location']['tmp_name'])) 
        {
            return FALSE;
        }
        if (!move_uploaded_file($check['file_location']['tmp_name'], WWW_ROOT . 'files' . DS . $check['file_location']['name'])) 
        {
            return FALSE;
        }
        $this->data[$this->alias]['file_location'] = 'files' . '/' . $check['file_location']['name'];
        return TRUE;
    }

    function download_file($id)
    {

    }
}
