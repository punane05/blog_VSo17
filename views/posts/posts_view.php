<div class="span8">
    <a href="<?=BASE_URL?>posts/">Tagasi...</a>
    <p class="text-right"><?php echo $post['name'] ?></p>
    <h1><?php echo $post['post_subject'] ?></h1>
    <p><?php echo $post['post_text'] ?></p>
    <div>
        <u class="list-inline list unstyled" style="text-decoration: none;">
            <hr>
            <li><span><i class="glyphicon glyphicon-calendar"></i><?php echo $post['post_created'] ?></span></li>
            <li>|</li>
            <?php foreach ($tags as $tag):?>
                <a href="#">
                    <span class="label label-info">
                        <?php echo $tag['tag_name']; ?>
                    </span>
                </a>&nbsp;
            <?php endforeach?>
        </u>
    </div>
</div>
<hr>

<div class="container">
    <div class="row">
        <div class="media comment-box">
            <div class="media-body">

                <?php foreach($comments as $comment): ?>
                    <h4 class="media-heading"><?=$comment['comment_subject']?></h4>
                    <p><?=$comment['comment_text']?></p>
                    <span class="badge badge-success">Commented on <?=$comment['comment_created']?></span> <span class="badge badge-success">Author: <?=$comment['comment_author']?></span>

                    <hr>
                <?php endforeach ?>

            </div>
        </div>
    </div>
</div>