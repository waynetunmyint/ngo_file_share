<?php
App::uses('AppController', 'Controller');
/**
 * Documents Controller
 *
 * @property Document $Document
 * @property PaginatorComponent $Paginator
 */
class DocumentsController extends AppController {


	public function download_file($directory,$file_name) 
	{
	    $this->viewClass = 'Media';
	    // Render app/webroot/files/example.docx
	    $params = array(
	        'id'        => $file_name,
	        'name'      => 'from_web',
	         'download'  => true,
            'extension' => 'zip',
	        'path'      => 'webroot' . DS. $directory.DS
	    );
	    $this->set($params);
	}

	function test()
	{
		echo 'username '.AuthComponent::user('username').'<br>';
		echo 'role '.AuthComponent::user('role').'<br>';
	}

/**
 * Components
 *
 * @var array
 */
	public $components = array('Paginator');

/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->Document->recursive = 0;
		$this->set('documents', $this->Paginator->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->Document->exists($id)) {
			throw new NotFoundException(__('Invalid document'));
		}
		$options = array('conditions' => array('Document.' . $this->Document->primaryKey => $id));
		$this->set('document', $this->Document->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->Document->create();
			if ($this->Document->save($this->request->data)) {
				$this->Session->setFlash(__('The document has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The document could not be saved. Please, try again.'));
			}
		}
		//$departments = $this->Document->Department->find('list');
		$departments = $this->Document->Department->find('list');
		$levels = $this->Document->Level->find('list');
		$users = $this->Document->User->find('list');

		print_r($levels);

		// $users = Set::combine($users , '{n}.User.id', '{n}.User.username');
		$this->set(compact('departments', 'users','levels'));
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		if (!$this->Document->exists($id)) {
			throw new NotFoundException(__('Invalid document'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {

			$data=$this->request->data['Document'];
			{
				if (!$data['file_location']['name']) 
                {
                    unset($data['file_location']);
                }
			}
			if ($this->Document->save($data)) {
				$this->Session->setFlash(__('The document has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The document could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Document.' . $this->Document->primaryKey => $id));
			$this->request->data = $this->Document->find('first', $options);
		}
		$departments = $this->Document->Department->find('list');
		$users = $this->Document->User->find('list');
		$this->set(compact('departments', 'users'));
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) 
	{
		$this->Document->id = $id;
		if (!$this->Document->exists()) {
			throw new NotFoundException(__('Invalid document'));
		}
		$this->request->onlyAllow('post', 'delete');
		if ($this->Document->delete()) {
			$this->Session->setFlash(__('The document has been deleted.'));
		} else {
			$this->Session->setFlash(__('The document could not be deleted. Please, try again.'));
		}
		return $this->redirect(array('action' => 'index'));
	}}
