<div class="span8">
    <?php foreach($posts as $post): ?>
        <h1><?=$post['post_subject'] ?></h1>
        <p><?=$post['post_text'] ?></p>
        <a href="<?=BASE_URL?>posts/view/<?=$post['post_id']?>">Loe veel...</a>
        <div>
            <span class="badge badge-success"><?=$post['post_created'] ?></span>
            <div class="pull-right"><span class="label"><?=$post['user_id'] ?></span></div>
        </div>
    <?php endforeach ?>
    <hr>
</div>