<?php
App::uses('AppModel', 'Model');
/**
 * Level Model
 *
 * @property Document $Document
 */
class Level extends AppModel {


	//The Associations below have been created with all possible keys, those that are not needed can be removed

/**
 * hasMany associations
 *
 * @var array
 */
  var $displayField="title";
	public $hasMany = array(
		'Document' => array(
			'className' => 'Document',
			'foreignKey' => 'level_id',
			'dependent' => false,
			'conditions' => '',
			'fields' => '',
			'order' => '',
			'limit' => '',
			'offset' => '',
			'exclusive' => '',
			'finderQuery' => '',
			'counterQuery' => ''
		)
	);

}
