# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


= render :partial => "header"
.container
  .contents
    - @posts.each do |post|
      = render partial: "post", locals: { post: post }
  .side
    = form_for search_posts_path, method: :get, class: "search-form" do |form|
      = form.text_field :keyword, placeholder: "投稿を検索する", class: "search-input"
      = form.submit "検索", class: "search-btn"
  .blog
    BLOG
  .exp
    bodymakeにおいて知識を蓄えることは必須条件であり、それを上手く自分のトレーニングに取り入れる事で理想の体に近づくことができます
    %br
    このセクションで有益な情報をShearしていきます。