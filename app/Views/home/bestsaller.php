<section class="bestsallers">
    <h2 class="text-center pt-5"><span>Best</span>sallers</h2>
    <div class="container">
        <div class="carousel-product uk-position-relative uk-visible-toggle uk-light uk-slider-container-offset" tabindex="-1" uk-slider>
            <div class="row">
                <ul class="uk-slider-items uk-child-width-1-2@s uk-grid">
                    <?php foreach ($bestsaller as $item) : ?>
                        <div class=" col-3">
                            <li>
                                <div class="uk-card uk-card-default">
                                    <div class="image-product uk-card-media-top">
                                        <a href="/product-details/<?= $item["id"]; ?>">
                                            <img src="<?= $item["image"]; ?>" alt="<?= $item["title"]; ?>">
                                        </a>
                                    </div>
                                    <div class="uk-card-body">
                                        <h6 class="uk-card-title">
                                            <!-- mengubah number mebjadi mata uang  -->
                                            <?= number_to_currency($item["price"], 'IDR') ?>
                                        </h6>

                                    </div>
                                </div>
                            </li>

                        </div>
                    <?php endforeach; ?>
                </ul>
            </div>

            <a href="#" uk-slidenav-previous uk-slider-item="previous"><img class="uk-position-center-left uk-position-small " src="/assets/icon/left-arrow.png" alt=""></a></a>

            <a href="#" uk-slidenav-next uk-slider-item="next"><img class="uk-position-center-right uk-position-small " src="/assets/icon/right-arrow.png" alt=""></a>

        </div>
        <a href="/bestsallers/product" class="btn btn-show">selengkapnya</a>
    </div>
</section>