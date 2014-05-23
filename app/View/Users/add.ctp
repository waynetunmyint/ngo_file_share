<div class="users form">
<?php echo $this->Form->create('User'); ?>
	<fieldset>
		<legend><?php echo __('Add User'); ?></legend>
	<?php
		echo $this->Form->input('username',array('placeholder'=>'enter your desired username'));
		echo $this->Form->input('password',array('placeholder'=>'enter your desired password'));
		echo $this->Form->input('email',array('placeholder'=>'enter your email'));
		echo $this->Form->input('department_id');
		echo $this->Form->hidden('role',array('value'=>'user'));
		$time_now = date("Y-m-d");
		echo $this->Form->hidden('updated_at',array('value'=>$time_now));
		echo $this->Form->hidden('created_at',array('value'=>$time_now));

		if(AuthComponent::user('role')=='admin')
		{
			echo $this->Form->hidden('status',array('value'=>'approved'));
		}
		else
		{
			echo $this->Form->hidden('status',array('value'=>'pending'));	
		}
		
		
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', array('action' => 'add', null), null, __('Please make sure you chose the right department'))); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Users'), array('action' => 'index')); ?></li>
		<li><?php echo $this->Html->link(__('List Departments'), array('controller' => 'departments', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Department'), array('controller' => 'departments', 'action' => 'add')); ?> </li>
	</ul>
</div>
