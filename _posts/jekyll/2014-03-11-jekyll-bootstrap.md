---
layout: post
title: "jekyll bootstrap"
description: ""
categories: [jekyll]
---




## インストール





### jekyll のインストール

    gem install jekyll





### jekyll-bootstrap のダウンロード

    git clone https://github.com/plusjade/jekyll-bootstrap.git







## 記事の投稿

    rake post title="Hello World"



## ページの作成

    rake page name="about.md"





 <!-- more -->





### 記事との違い

静的なページに特化。  
記事とは違い、タグやカテゴリの自動管理がされない。  
日付も不要、階層化が可能。





## ビルド

    jekyll build






## テストサーバの起動

    jekyll serve

http://localhost:4000/

から。







