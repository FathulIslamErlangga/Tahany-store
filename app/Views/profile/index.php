<div class="action" id="menu-toggle">
    <div class="profile">
        <!-- mengambil data user sedang online dari session -->
        <img src="/assets/image/<?= user()->user_image; ?>" alt="foto profile user">
    </div>
    <div class="menu">
        <h3>Profile<br><span><?= user()->username; ?></span></h3>
        <ul>
            <li><img src="/assets/image/user.png" alt="icon user "><a href="">My Profile</a></li>
            <li><img src="/assets/image/edit.png" alt="icon edit profile"><a href="">EditProfile</a></li>
            <li><img src="/assets/image/mail.png" alt="icon message user"><a href="">Inbox</a></li>
            <li><img src="/assets/icon/wishlist.png" alt="icon wishlist"><a href="">wishlist</a></li>
            <li><img src="/assets/image/logout.png" alt="icon logout"><a href="<?= base_url('logout'); ?>">Logout</a></li>
        </ul>
    </div>
</div>