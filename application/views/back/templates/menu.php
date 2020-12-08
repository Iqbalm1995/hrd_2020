<!-- BEGIN SIDEBAR -->
<!-- mobile and tablet only sidebar -->
<div class="tablet mobile only row">
	<div id="mobiletabletsidebar" class="mobiletabletsidebar animate hidden">
		<div class="ui left fixed vertical menu scrollable">
			<div class="item">
				<table>
					<tr>
						<td>
							<img class="ui mini image" src="<?= base_url('assets/') ?>images/logo.png">
						</td>
						<td>
							<strong>SIM REKRUTMEN</strong>
						</td>
					</tr>
				</table>
			</div>
			<a class="item" href="<?= base_url('admin/dashboard/') ?>"><i class="home icon"></i> Dashboard</a>
			<a class="item" href="<?= base_url('admin/dashboard/') ?>table/"><i class="table icon"></i> Table</a>
			<!-- Begin Simple Accordion -->
			<div class="ui accordion simpleaccordion item">
			    <div class="title titleaccordion item"><i class="dropdown icon"></i> Social Media</div>
			    <div class="content contentaccordion">
			        <a class="item itemaccordion" href="#"><i class="facebook icon"></i> Facebook</a>
			    </div>
			</div>
			<!-- End Simple Accordion -->
			<a class="item"><i class="settings icon"></i> Settings</a>
			<a class="item" href="<?= base_url('admin/user_admin/') ?>"><i class="user icon"></i> Pengguna</a>	
			<a class="item" href="<?= base_url('admin/user_roles/') ?>"><i class="users icon"></i> Role / Hak Akses</a>	
			<a class="item"><i class="sign out alternate icon"></i> Logout</a>
			<a class="item" href="https://fomantic-ui.com/"><i class="heart icon"></i>More Components</a>
			<div class="item" id="hidemobiletabletsidebar">
				<button class="fluid ui button">
					Close
				</button>
			</div>
		</div>
	</div>
</div>
<!-- end mobile and tablet only sidebar -->
<!-- computer only sidebar -->
<div class="computer only row">
	<div class="left floated three wide computer column" id="computersidebar">
		<div class="ui vertical fluid menu scrollable" id="simplefluid">
			<div class="clearsidebar"></div>
			<div class="item">
				<img src="<?= base_url('assets/') ?>images/user.png" id="sidebar-image">
			</div>
			<a class="item" href="<?= base_url('admin/dashboard/') ?>"><i class="home icon"></i> Dashboard</a>
			<a class="item" href="<?= base_url('admin/dashboard/') ?>table/"><i class="table icon"></i> Table</a>
			<!-- Begin Simple Accordion -->
			<div class="ui accordion simpleaccordion item">
			    <div class="title titleaccordion item"><i class="dropdown icon"></i> Social Media</div>
			    <div class="content contentaccordion">
			        <a class="item itemaccordion" href="#"><i class="facebook icon"></i> Facebook</a>
			    </div>
			</div>
			<!-- End Simple Accordion -->
			<div class="ui item">
				<div class="ui fluid selection dropdown moredropdown">
					<div class="text">Menu</div>
					<i class="dropdown icon"></i>
					<div class="menu">
						<p class="item">Choice 1</p>
						<p class="item">Choice 2</p>
					</div>
				</div>
			</div>
			<a class="item"><i class="settings icon"></i> Settings</a>	
			<a class="item" href="<?= base_url('admin/user_admin/') ?>"><i class="user icon"></i> Pengguna</a>	
			<a class="item" href="<?= base_url('admin/user_roles/') ?>"><i class="users icon"></i> Role / Hak Akses</a>
			<a class="item"><i class="sign out alternate icon"></i> Logout</a>
			<a class="item" href="https://fomantic-ui.com/"><i class="heart icon"></i>More Components</a>
			<a class="item"></a>
		</div>
	</div>
</div>
<!-- end computer only sidebar -->
<!-- END SIDEBAR -->
</div>
</div>