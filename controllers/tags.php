<?php
namespace App;
class tags extends Controller
{
    function index()
    {
        $this->tags = get_all(
            "SELECT tag_name, ".
            "COUNT(post_id) AS count".
            "FROM post_tags NATURAL JOIN tag GROUP BY tag_id");
    }

}