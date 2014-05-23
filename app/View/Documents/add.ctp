<div class="documents">
<?php echo $this->Form->create('Document',array('type'=>'file')); ?>
	<fieldset>
		<legend><?php echo __('Add Document'); ?></legend>
	<?php
		echo $this->Form->input('title');
		echo $this->Form->input('file_location',array('type'=>'file'));
		echo $this->Form->input('description');
		//echo $this->Form->hidden('department_id',array('value'=>AuthComponent::user('department_id')));

		//echo AuthComponent::user('department_id'). "checking for thida department";
		if(AuthComponent::user('role')=='admin')
		{
			echo "<div class='row'>";
			echo $this->Form->input('user_id');
			echo $this->Form->input('department_id');
		}
		else
		{
			echo $this->Form->hidden('user_id',array('value'=>AuthComponent::user('id')));
		}

		echo 'I want to share this in '. $this->Form->input('level_id',array('label'=>false));
		echo "</div>";
	?>
		
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>

