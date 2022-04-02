<?= $this->extend('layout/templats'); ?>
<?= $this->section("content"); ?>
<section class="register">
    <img src="/assets/image/hero-login.jpg" alt="">
    <div class="container">
        <div class="hero-content">
            <div class="form-register">
                <h4><?= lang('Auth.register') ?></h4>
                <?= view('Myth\Auth\Views\_message_block') ?>
                <form action="<?= route_to('register') ?>" method="post">
                    <?= csrf_field() ?>
                    <div class="form-input pt-3">
                        <div class="uk-margin">
                            <span>email</span>
                            <div class="uk-inline">
                                <span class="uk-form-icon" uk-icon="icon: mail"></span>
                                <input type="email" name="email" class="uk-input <?php if (session('errors.email')) : ?>is-invalid<?php endif ?>" aria-describedby="emailHelp" placeholder="<?= lang('Auth.email') ?>" value="<?= old('email') ?>">
                            </div>
                        </div>
                    </div>
                    <div class="form-input">
                        <div class="uk-margin">
                            <span>username</span>
                            <div class="uk-inline">
                                <span class="uk-form-icon" uk-icon="icon: user"></span>
                                <!-- jika username salah input -->
                                <input type="text" class="uk-input <?php if (session('errors.username')) : ?>is-invalid<?php endif ?>" name="username" placeholder="<?= lang('Auth.username') ?>" value="<?= old('username') ?>">
                            </div>
                        </div>
                    </div>
                    <div class="form-input">
                        <div class="uk-margin">
                            <span>password</span>
                            <div class="uk-inline">
                                <span class="uk-form-icon " uk-icon="icon: lock"></span>
                                <!-- jika passowrd  terjadi kesalahan atau password kurang strong -->
                                <input type="password" name="password" class="uk-input <?php if (session('errors.password')) : ?>is-invalid<?php endif ?>" placeholder="<?= lang('Auth.password') ?>" autocomplete="off">
                            </div>
                        </div>
                    </div>
                    <div class="form-input">
                        <div class="uk-margin">
                            <span>repeat password</span>
                            <div class="uk-inline">
                                <span class="uk-form-icon " uk-icon="icon: lock"></span>
                                <!-- cek jika password sama dari password yang di masukan sebelumnya -->
                                <input type="password" name="pass_confirm" class="uk-input <?php if (session('errors.pass_confirm')) : ?>is-invalid<?php endif ?>" placeholder="<?= lang('Auth.repeatPassword') ?>" autocomplete="off">
                            </div>
                        </div>
                    </div>
                    <p><?= lang('Auth.alreadyRegistered') ?> <a href="<?= route_to('login') ?>"><?= lang('Auth.signIn') ?></a></p>
                    <button class="btn" type="submit"><?= lang('Auth.register') ?></button>
                </form>
            </div>
        </div>
    </div>
</section>
<?= $this->endSection(); ?>