---
layout: post
title: "jekyll 1.4.3 の windows への導入時の問題"
description: ""
categories: [jekyll]
---




## 問題

jekyll 1.4.3 を使用時に

    jekyll serve

を実行時すると、下記のようなエラーが出る。





 <!-- more -->





    PS C:\jekyll\test-site> jekyll serve --trace
    Configuration file: C:/jekyll/test-site/_config.yml
            Source: C:/jekyll/test-site
       Destination: C:/jekyll/test-site/_site
      Generating... C:/Ruby193/lib/ruby/1.9.1/fileutils.rb:247:in `mkdir': Invalid argument - C:/jekyll/test-site/_site/C: (Errno::EINVAL)
        from C:/Ruby193/lib/ruby/1.9.1/fileutils.rb:247:in `fu_mkdir'
        from C:/Ruby193/lib/ruby/1.9.1/fileutils.rb:221:in `block (2 levels) in mkdir_p'
        from C:/Ruby193/lib/ruby/1.9.1/fileutils.rb:219:in `reverse_each'
        from C:/Ruby193/lib/ruby/1.9.1/fileutils.rb:219:in `block in mkdir_p'
        from C:/Ruby193/lib/ruby/1.9.1/fileutils.rb:205:in `each'
        from C:/Ruby193/lib/ruby/1.9.1/fileutils.rb:205:in `mkdir_p'
        from C:/Ruby193/lib/ruby/gems/1.9.1/gems/jekyll-1.4.3/lib/jekyll/convertible.rb:168:in `write'
        from C:/Ruby193/lib/ruby/gems/1.9.1/gems/jekyll-1.4.3/lib/jekyll/site.rb:259:in `block in write'
        from C:/Ruby193/lib/ruby/gems/1.9.1/gems/jekyll-1.4.3/lib/jekyll/site.rb:397:in `block (2 levels) in each_site_file'
        from C:/Ruby193/lib/ruby/gems/1.9.1/gems/jekyll-1.4.3/lib/jekyll/site.rb:396:in `each'
        from C:/Ruby193/lib/ruby/gems/1.9.1/gems/jekyll-1.4.3/lib/jekyll/site.rb:396:in `block in each_site_file'
        from C:/Ruby193/lib/ruby/gems/1.9.1/gems/jekyll-1.4.3/lib/jekyll/site.rb:395:in `each'
        from C:/Ruby193/lib/ruby/gems/1.9.1/gems/jekyll-1.4.3/lib/jekyll/site.rb:395:in `each_site_file'
        from C:/Ruby193/lib/ruby/gems/1.9.1/gems/jekyll-1.4.3/lib/jekyll/site.rb:259:in `write'
        from C:/Ruby193/lib/ruby/gems/1.9.1/gems/jekyll-1.4.3/lib/jekyll/site.rb:41:in `process'
        from C:/Ruby193/lib/ruby/gems/1.9.1/gems/jekyll-1.4.3/lib/jekyll/command.rb:18:in `process_site'
        from C:/Ruby193/lib/ruby/gems/1.9.1/gems/jekyll-1.4.3/lib/jekyll/commands/build.rb:23:in `build'
        from C:/Ruby193/lib/ruby/gems/1.9.1/gems/jekyll-1.4.3/lib/jekyll/commands/build.rb:7:in `process'
        from C:/Ruby193/lib/ruby/gems/1.9.1/gems/jekyll-1.4.3/bin/jekyll:97:in `block (2 levels) in <top (required)>'
        from C:/Ruby193/lib/ruby/gems/1.9.1/gems/commander-4.1.5/lib/commander/command.rb:180:in `call'
        from C:/Ruby193/lib/ruby/gems/1.9.1/gems/commander-4.1.5/lib/commander/command.rb:180:in `call'
        from C:/Ruby193/lib/ruby/gems/1.9.1/gems/commander-4.1.5/lib/commander/command.rb:155:in `run'
        from C:/Ruby193/lib/ruby/gems/1.9.1/gems/commander-4.1.5/lib/commander/runner.rb:402:in `run_active_command'
        from C:/Ruby193/lib/ruby/gems/1.9.1/gems/commander-4.1.5/lib/commander/runner.rb:78:in `run!'
        from C:/Ruby193/lib/ruby/gems/1.9.1/gems/commander-4.1.5/lib/commander/delegates.rb:11:in `run!'
        from C:/Ruby193/lib/ruby/gems/1.9.1/gems/commander-4.1.5/lib/commander/import.rb:10:in `block in <top (required)>


[ruby - Jekyll - Error Running 'Jekyll Serve' - Stack Overflow](http://stackoverflow.com/questions/21137096/jekyll-error-running-jekyll-serve)  
http://stackoverflow.com/questions/21137096/jekyll-error-running-jekyll-serve

より引用。



## 解決策

[ruby - Jekyll - Error Running 'Jekyll Serve' - Stack Overflow](http://stackoverflow.com/questions/21137096/jekyll-error-running-jekyll-serve)  
http://stackoverflow.com/questions/21137096/jekyll-error-running-jekyll-serve

によると、jekyll 1.4.3 が原因らしい。
アンインストールして、1.4.2 を入れる。

    gem uninstall jekyll

    gem install jekyll --version "=1.4.2"





## 参考

[ruby - Jekyll - Error Running 'Jekyll Serve' - Stack Overflow](http://stackoverflow.com/questions/21137096/jekyll-error-running-jekyll-serve)  
http://stackoverflow.com/questions/21137096/jekyll-error-running-jekyll-serve
