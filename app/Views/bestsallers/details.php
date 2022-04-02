<?= $this->extend('layout/templats'); ?>
<?= $this->section("content"); ?>
<section class="details-product">
    <div class="container">
        <h4 class="mb-5">Details-product</h4>
        <div class="row">
            <div class="col-auto">
                <figure class="image-details">
                    <img src="<?= $produk["image"]; ?>" alt="">
                </figure>
            </div>
            <div class="product row offset-1 col">
                <div class="description">
                    <h3 class="text-dark text-center text-uppercase">
                        <?= $produk["title"]; ?></h3>
                    <ul class="mb-4">
                        <li class="items">
                            <h5 class="mb-4 pt-3"> Price :
                                <span class="price"><?= number_to_currency($produk["price"], 'IDR') ?></span>
                            </h5>
                        </li>
                        <li>
                            <h5 class="mb-4"> Product Code :
                                <span class="code"><?= $produk["code"]; ?></span>
                            </h5>
                        </li>
                        <li>
                            <h5 class="mb-4"> Description : </h5> <span class="detail-product"><?= $produk["description"]; ?></span>
                        </li>
                    </ul>
                    <tr>
                        <th>
                        <td>
                            <div class="mb-4 table-select">
                                <div class="table">
                                    <h4>Size :
                                        <select class=" mb-5 form-select form-select-sm" aria-label=".form-select-sm example">
                                            <option selected>Open this select menu</option>
                                            <option value="1">One</option>
                                            <option value="2">Two</option>
                                            <option value="3">Three</option>
                                        </select>
                                    </h4>
                                </div>
                                <div class="table">
                                    <h4>Color :
                                        <select class=" mb-5 form-select form-select-sm" aria-label=".form-select-sm example">
                                            <option selected>Open this select menu</option>
                                            <option value="1">One</option>
                                            <option value="2">Two</option>
                                            <option value="3">Three</option>
                                        </select>
                                    </h4>
                                </div>
                            </div>
                        </td>
                        </th>
                    </tr>
                    <div class="base-button">
                        <a href="<?= base_url('cart'); ?>" class="icn-cart btn btn-cart">Cart</a>
                        <a class="btn-buy btn">Buy Now</a>
                        <a href="<?= base_url('wishlist'); ?>" class="btn icn-favorite btn-wishlist">Wishlist</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</section>
<?= $this->endSection(); ?>