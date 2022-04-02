<header class="nav-tahany">
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <img class="icon" src="https://colorhunt.co/img/colorhunt-favicon.svg" alt="">
            <a class="navbar-brand" href="<?= base_url('home'); ?>">
                <h5 class="tahany-title"><span class="store">Sonyu</span>nara</h5>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" href="/">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/home/bestsaller.php">Categories</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">koleksi</a>
                    </li>
                    <li class="nav-item">
                        <a href="" class="nav-link">skincare</a>
                    </li>
                    <!-- cek apakah user sudah login apa belum klo blm maka tampilkan  -->
                    <?php if (logged_in() == false) : ?>
                        <li class="btn-login">
                            <a href="<?= base_url('login'); ?>">
                                <span class="masuk">Login</span>
                            </a>
                        </li>
                        <li class="btn-register">
                            <a href="<?= base_url('register'); ?>">
                                <span class="daftar">register</span>
                            </a>
                        </li>
                    <?php endif; ?>
                </ul>
                <div class="box">
                    <div class="search-box">
                        <input type="text" placeholder="Search" name="" autofocus>
                        <a for="" class="icon-search">
                            <img src="/assets/icon/loupe.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="cart-tahany ">
                    <a href="<?= base_url('cart'); ?>">
                        <div class="info-cart">
                            <span class="number">10</span>
                        </div>
                        <img src="/assets/icon/shopping-cart.png" alt="">
                    </a>
                </div>

                <!-- cek jika user telah login -->
                <?php if (logged_in() == true) : ?>
                    <?= $this->include('profile/index'); ?>
                <?php endif; ?>
            </div>
        </div>
    </nav>
</header>