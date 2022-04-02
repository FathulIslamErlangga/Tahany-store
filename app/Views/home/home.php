<?= $this->extend('layout/templats'); ?>
<?= $this->section('content'); ?>
<section class="hero-tahany">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 pt-5 tittle-hero">
                <h4>Dapatkan segera beberapa koleksi dari kami sekarang!</h4>
                <a href="" class="btn ml-5 btn-hero">selengkapnya</a>
            </div>
            <div class="col">
                <div class="image-hero">
                    <img src="/assets/image/ImageHero.png" alt="" class="figure">
                </div>
                <div class="image-frame">
                    <img src="/assets/image/frame-hero.png" alt="">
                </div>
            </div>
        </div>
    </div>
</section>
<section class="list-kategori">
    <div class="container">
        <div class="row">
            <div class="col list-discount">
                <a href="/">
                    <img src="/assets/icon/discount.png" alt="">
                </a>
                <span>Discount</span>
            </div>
            <div class="col list-accessoris">
                <a href="/">
                    <img src="/assets/icon/accessories.png" alt="">
                </a>
                <span>Accessories</span>
            </div>
            <div class="col list-dress">
                <a href="/">
                    <img src="/assets/icon/dress.png" alt="">
                </a>
                <span>Fashion</span>
            </div>
            <div class="col list-makeup">
                <a href="/">
                    <img src="/assets/icon/makeup.png" alt="">
                </a>
                <span>Makup</span>
            </div>
            <div class="col list-sling">
                <a href="/">
                    <img src="/assets/icon/sling.png" alt="">
                </a>
                <span>Tas</span>
            </div>
            <div class="col list-sepatu">
                <a href="/">
                    <img src="/assets/icon/sneakers.png" alt="">
                </a>
                <span>Sepatu</span>
            </div>
        </div>
    </div>
</section>
<?= $this->include('home/bestsaller'); ?>
<?= $this->include('brands/index'); ?>
<?= $this->endSection(); ?>