<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
			<a class="sidebar-brand d-flex align-items-center justify-content-center" href="<?= base_url('dashboard') ?>">
				<div class="sidebar-brand-text mx-3">Data Penjualan</div>
			</a>
			<hr class="sidebar-divider my-0">
			<li class="nav-item <?= $aktif == 'dashboard' ? 'active' : '' ?>">
				<a class="nav-link" href="<?= base_url('dashboard') ?>">
					<i class="fas fa-fw fa-tachometer-alt"></i>
					<span>Dashboard</span></a>
			</li>
			<hr class="sidebar-divider">

			<li class="nav-item <?= $aktif == 'barang' ? 'active' : '' ?>">
				<a class="nav-link" href="<?= base_url('barang') ?>">
					<i class="fas fa-fw fa-box"></i>
					<span>Data Penjualan Barang</span></a>
			</li>

			<!-- Divider -->
			<hr class="sidebar-divider">
			<?php if ($this->session->login['role'] == 'admin'): ?>

				<li class="nav-item <?= $aktif == 'pengguna' ? 'active' : '' ?>">
					<a class="nav-link" href="<?= base_url('pengguna') ?>">
						<i class="fas fa-fw fa-users"></i>
						<span>Manajemen Pengguna</span></a>
				</li>

				<!-- Divider -->
				<hr class="sidebar-divider d-none d-md-block">
			<?php endif; ?>

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>
		</ul>