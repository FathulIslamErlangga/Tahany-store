<section class="product-brands">
    <h2 class="text-center">Featured <span> Brands </span></h2>
    <div class="container">
        <div class="row">
            <?php foreach ($brands as $product) : ?>
                <div class="col-auto">
                    <div class="list-brands">
                        <img src="<?= $product["image"]; ?>" alt="<?= $product["name"]; ?>">
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</section>