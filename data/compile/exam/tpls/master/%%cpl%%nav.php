<div class="navbar navbar-inverse">	<div class="navbar-inner">		<div class="container-fluid">			<button data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar" type="button"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>			<a href="index.php" target="_blank" class="brand"><img src="app/core/styles/images/favicon.png">系统管理平台</a>			<div class="nav-collapse navbar-responsive-collapse collapse">				<ul class="nav">					<li<?php if($this->tpl_var['_app'] == 'core'){ ?> class="active"<?php } ?>>						<a href="index.php?core-master">全局</a>					</li>					<?php $aid = 0;
 foreach($this->tpl_var['apps'] as $key => $app){ 
 $aid++; ?>					<?php if($app['appstatus'] && $app['appid'] != 'core'){ ?>					<li<?php if($this->tpl_var['_app'] == $app['appid']){ ?> class="active"<?php } ?>>						<a href="index.php?<?php echo $app['appid']; ?>-master"><?php echo $app['appname']; ?></a>					</li>					<?php } ?>					<?php } ?>				</ul>				<ul class="nav pull-right">					<li>						<a href="index.php">网站首页</a>					</li>					<li class="divider-vertical">					</li>					<li class="dropdown">						<a data-toggle="dropdown" class="dropdown-toggle" href="#"><?php echo $this->tpl_var['_user']['username']; ?><strong class="caret"></strong></a>						<ul class="dropdown-menu">							<!--							<li>								<a href="index.php?user-app-privatement">个人中心</a>							</li>							<li class="divider">							</li>							-->							<li>								<a href="index.php?core-master-logout">退出管理</a>							</li>						</ul>					</li>				</ul>			</div>		</div>	</div></div>