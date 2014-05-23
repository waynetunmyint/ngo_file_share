<?php

	$cakeDescription = __d('cake_dev', 'NGO FIle Share');
?>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!DOCTYPE html>
<html>
<head>

	<?php echo $this->Html->charset(); ?>
	<title>
		<?php echo $cakeDescription ?>:
		<?php echo $title_for_layout; ?>
	</title>
	<?php echo $this->Html->script('ckeditor/ckeditor');?>
	<?php
		echo $this->Html->meta('icon');
		echo $this->Html->css('cake.generic');
		echo $this->Html->css('bootstrap');
		echo $this->fetch('meta');
		echo $this->fetch('css');
		echo $this->fetch('script');
		echo $this->Html->script('bootstrap');
	?>
</head>
<body>
	<div id="container-fluid">
	<span class="glyphicon glyphicon-shopping"></span>
		<div id="menu" >
			<nav class="navbar navbar-inverse navbar-static-top" role="navigation">
			<a class="navbar-brand" href="<?php echo $this->Html->url('/documents/index'); ?>">
				<?php echo $cakeDescription;?>
			</a>
			<ul class="nav navbar-nav">
			  <li class="active"><?php echo $this->HTML->link('Home','/pages/index');?></li>
<!-- 			  <li><?php echo $this->HTML->link('Books','/books/index');?></li>
			  <li><?php echo $this->HTML->link('Cart','/books/view_cart');?></li>
			  <li><?php echo $this->HTML->link('Authors','/authors/index');?></li> -->
			  <li><?php echo $this->HTML->link('Departments','/departments/index');?></li> 
			  <li><?php echo $this->HTML->link('Documents','/documents/index');?></li> 
			  <li><?php echo $this->HTML->link('Users','/users/index');?></li> 
			</ul>
			<ul class="navbar-form form-inline navbar-right" style="background:#fff;">
				<span class="glyphicon glyphicon-shopping"></span>
					<?php
					if(AuthComponent::user('username'))
					{
					$user_name=AuthComponent::user('username');
					echo $this->Html->link(" Welcome ".$user_name."- Log Out", array('controller' => 'users','action'=> 'logout'));
					}
					else
					{
					echo $this->Html->link("Welcome guest, Log in?", array('controller' => 'users','action'=> 'login'));
					}

					?> 
			</ul>
		</nav>
	</div>
		<span class="remove"></span>
		<div id="content">
				<?php echo $this->Session->flash(); ?>


			<?php echo $this->fetch('content'); ?>
		</div>


		<div id="footer">
		<footer>
			<?php echo $this->Html->link(
					$this->Html->image('cake.power.gif', array('alt' => $cakeDescription, 'border' => '0')),
					'http://www.cakephp.org/',
					array('target' => '_blank', 'escape' => false)
				);
			?>
			</footer>
		</div>
	</div>
	<?php //echo $this->element('sql_dump'); ?>
</body>
</html>

<style>

/*	.nav
	{
		background-color: orange;
	}*/
</style>

<script>

ckeditor.replaceAll();
</script
