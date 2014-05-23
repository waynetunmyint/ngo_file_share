<div class="departments">
	<h2><?php echo __('Departments'); ?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('id'); ?></th>
			<th><?php echo $this->Paginator->sort('name'); ?></th>
			<th><?php echo $this->Paginator->sort('dept_code'); ?></th>
			<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	<?php foreach ($departments as $department): ?>
	<tr>
		<td><?php echo h($department['Department']['id']); ?>&nbsp;</td>
		<td><?php echo h($department['Department']['name']); ?>&nbsp;</td>
		<td><?php echo h($department['Department']['dept_code']); ?>&nbsp;</td>
		<td class="actions">
			<?php 
				if(AuthComponent::user('role')=='admin')
				{
					echo $this->Html->link(__('View'), array('action' => 'view', $department['Department']['id'])); 
					echo $this->Html->link(__('Edit'), array('action' => 'edit', $department['Department']['id']));
				 	echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $department['Department']['id']), null, __('Are you sure you want to delete # %s?', $department['Department']['id']));
				}
 			?>
		</td>
	</tr>
<?php endforeach; ?>
	</table>
	<p>
	<?php
	echo $this->Paginator->counter(array(
	'format' => __('Page {:page} of {:pages}, showing {:current} records out of {:count} total, starting on record {:start}, ending on {:end}')
	));
	?>	</p>
	<div class="paging">
	<?php
		echo $this->Paginator->prev('< ' . __('previous'), 
			array(),
			 null, 
			 array('class' => 'prev disabled'));
		echo $this->Paginator->numbers(array('separator' => ''));
		echo $this->Paginator->next(__('next') . ' >', array(), null, array('class' => 'next disabled'));
	?>
	</div>
</div>
<?php 
	if(AuthComponent::user('role')=='admin')
	{
		echo '<hr>';
		echo $this->Html->link('New Department', 
			array('action' => 'add'),
			array('class'=>'btn btn-success'),
			null); 
		echo "&nbsp;";
		echo $this->Html->link(__('List Documents'), array('controller' => 'documents', 'action' => 'index'),array('class'=>'btn btn-info'));
	}
?>
