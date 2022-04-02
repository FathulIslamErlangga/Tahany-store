<?= $this->extend('layout/templats'); ?>
<?= $this->section("content"); ?>
<section class="login-register">
    <img src="/assets/image/hero-login.jpg" alt="">
    <div class="container">
        <div class="hero-content">
            <div class="form-login">
                <h4><?= lang('Auth.loginTitle') ?></h4>
                <?= view('Myth\Auth\Views\_message_block') ?>
                <form action="<?= route_to('login') ?>" method="post">
                    <?= csrf_field() ?>

                    <?php if ($config->validFields === ['email']) : ?>
                        <div class="form-input pt-3">
                            <div class="uk-margin">
                                <span>username or email</span>
                                <div class="uk-inline">
                                    <span class="uk-form-icon" uk-icon="icon: user"></span>
                                    <input name="login" class="uk-input  <?php if (session('errors.login')) : ?>is-invalid<?php endif ?>" type="text" placeholder="<?= lang('Auth.email') ?>">
                                    <div class="invalid-feedback">
                                        <?= session('errors.login') ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php else : ?>
                        <div class="form-input">
                            <div class="uk-margin">
                                <span>username or email</span>
                                <div class="uk-inline">
                                    <span class="uk-form-icon" uk-icon="icon: user"></span>
                                    <input name="login" class="uk-input  <?php if (session('errors.login')) : ?>is-invalid<?php endif ?>" type="email" placeholder="<?= lang('Auth.emailOrUsername') ?>">
                                    <div class="invalid-feedback">
                                        <?= session('errors.login') ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>
                    <div class="form-input">
                        <div class="uk-margin">
                            <span>password</span>
                            <div class="uk-inline">
                                <span class="uk-form-icon " uk-icon="icon: lock"></span>
                                <input class="uk-input  <?php if (session('errors.password')) : ?>is-invalid<?php endif ?>" type="password" name="password" placeholder="<?= lang('Auth.password') ?>">
                                <div class="invalid-feedback">
                                    <?= session('errors.password') ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php if ($config->allowRemembering) : ?>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="checkbox" name="remember" class="form-check-input" <?php if (old('remember')) : ?> checked <?php endif ?>>
                                <?= lang('Auth.rememberMe') ?>
                            </label>
                        </div>
                    <?php endif; ?>

                    <?php if ($config->allowRegistration) : ?>
                        <p>Need an <a href="<?= route_to('register') ?>">account</a>?</p>
                    <?php endif; ?>
                    <?php if ($config->activeResetter) : ?>
                        <p>Forgot your <a href="<?= route_to('forgot') ?>">password</a>?</p>
                    <?php endif; ?>
                    <button type="submit" class="btn"><?= lang('Auth.loginAction') ?></button>
                </form>
                <!-- <a href="" class="btn">login</a> -->
                <div class="login-social-media">
                    <h6>login social media</h6>
                    <div class="icn-media-sosial">
                        <a href="">
                            <img src="/assets/icon/google.png" class="list-inline-item" alt="">
                        </a>
                        <a href="">
                            <img src="/assets/icon/facebook.png" class="list-inline-item" alt="">
                        </a>
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>
<?= $this->endSection(); ?>