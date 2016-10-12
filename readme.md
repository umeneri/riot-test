title: riot-react
==========
date: 10/04/16 21:13:21
tags: []
categories: []
- - -

# 調査目的
フロントエンドでモダンなJSを調査し、適切な使用方法を検討する


# 調査項目
コード 読みやすさ → 生産性向上に必須。バグの追跡、チームでの共有、機能追加での影響推測、

分離性 → 担当の分離、疎結合度 → 原因切り分け

性能

容量


# 前提
ES6使用


# riot.js

Riotは複雑な部分木(DOMツリー)の置き換えなしに、テンプレート変数だけを更新します。
テンプレート変数？？



[npmの使い方の勉強メモ1(node.js=v0.11.16, npm=2.3.0) - msakamoto-sfのはてなブログ](http://hblog.glamenv-septzen.info/entry/2015/03/22/233241)

npm init
npm install ... --save-dev



# vim

" javascript
NeoBundle 'pangloss/vim-javascript'
" riot
NeoBundle 'ryym/vim-riot'

> こちらは微妙…

[nicklasos/vim-jsx-riot: Modified React JSX syntax to work with Riot.js](https://github.com/nicklasos/vim-jsx-riot)

# 単語
コンポーネント指向

仮想DOM

Flux
react
anguler


erbのようなもの → 直感的！
ただし変数代入などの計算はscriptタグ内



 # sample

[とりあえず試してみたいって方のための Riot.js 入門 | phiary](http://phiary.me/riotjs-tutorial-try/)
試した


# react

# react

むしろ機能的に関連するタグと動作を、名前付きでまとめて短く記述できるReactの記述方法こそが楽で合理的になります。


[Reactを使うとなぜjQueryが要らなくなるのか - Qiita](http://qiita.com/naruto/items/fdb61bc743395f8d8faf)


> 感覚的にページ丸ごとを更新できるので、「ロード中はこのボタンとこのボタンを一時的に無効化してここにインジケータを表示して…」とか「このモードに入ったらこのDIVが非表示でこの要素にこのクラスが設定され…」みたいな面倒なコードが一掃され、勝手にページ全体の一貫性が保たれます。サンプルレベルでは実感できませんが、実用的なサイズのアプリならめっちゃ楽で、バグの心配が激減します。

→ 今回のフォームで痛感した

それぞれのコンポーネントの状態変化を見守って処理するのはしんどい




# es2015 babel webpack

[webpack+babel環境でフロントエンドもES6開発 - Qiita](http://qiita.com/HayneRyo/items/74892d3a37ee96a5df60)

webpackで設定に従ってビルドする

[webpackを使い倒す - Thujikun blog](http://thujikun.github.io/blog/2014/12/07/webpack/)
長い


# jqueryの使い所、意味
[You Might Not Need jQuery](http://youmightnotneedjquery.com/)

IEでの実装とjqueryを用いた実装の比較。見やすい。

ここ見ると通信とアニメーション以外はもういらないのでは、と思える

# 2016/10/07
# riot
todolistがすぐ書ける
わずか18行


[Riot.js ドキュメント日本語版 - Qiita](http://qiita.com/cognitom/items/018a65a6136689c49de6)

仮想DOM

最小のDOMの更新とリフロー
★データは一方通行: 更新とアンマウントは親から子へ伝播します。
テンプレートは高いパフォーマンスを得るため、プリコンパイルされキャッシュされます。
細かい制御のためのライフサイクルイベント
アイソモーフィックアプリケーションを実現する、カスタムタグのサーバサイドレンダリング



# jsの収集

[私のJavaScript情報の集め方 - Qiita](http://qiita.com/koba04/items/ba2381776d394633de72)
Podcastを聴いてみる

通勤時などに聴いていて正直全然聞き取れてないのであんまり意味ないのですが、JavaScript関連だと英語の勉強としてこんな感じのものを聴いています。
rebuild.fmとmozaic.fmはもちろん聴いています。



# コードの書き方がわからない
jsは迷う
アーキテクチャとかパターンが欲しい



> むしろ機能的に関連するタグと動作を、名前付きでまとめて短く記述できるReactの記述方法こそが楽で合理的になります。

# riotの疑問
アップデートのタイミング → 基本はイベントリスナの関数発動時？
つまり、状態変化がある、必要なのは
イベント
ajax
ぐらいしかないので、
その2つの発動時にupdate()が働けばいい

# riot
[Riot.js ことはじめ - Qiita](http://qiita.com/m_mizutani/items/887817fd7390b04423ac)
[フロント界隈で一番イケてるのは AngularJS でも React でもなく Riot.js だという話 | phiary](http://phiary.me/frontend-riot-js-no1/)
[Riot.js 2.0 を触ってみた — まだReactで消耗しているの? - Qiita](http://qiita.com/cognitom/items/fb1295f3f93911e9e92d)
[Riot.jsでフロントエンドの複雑さに反乱するときがやってきた - Qiita](http://qiita.com/aggre/items/928eb2bedbac6a7829c0#%E3%81%84%E3%81%BE%E5%BF%85%E8%A6%81%E3%81%AA%E3%82%82%E3%81%AE)
[Riot vue](http://txchen.github.io/feplay/riot_vue/#markdown)

# React
[Reactを使うとなぜjQueryが要らなくなるのか - Qiita](http://qiita.com/naruto/items/fdb61bc743395f8d8faf#fn5)
[React入門(1): Reactについて調べたのでまとめてみる – PAYFORWARD](http://blog.takanabe.tokyo/2015/05/19/583/)

# 仮想DOM
[なぜ仮想DOMという概念が俺達の魂を震えさせるのか - Qiita](http://qiita.com/mizchi/items/4d25bc26def1719d52e6)

Virtual DOMこそ未来
by mizchi氏

[仮想DOMで魂が震えてから一年、仮想DOMとFluxの今 - Qiita](http://qiita.com/mizchi/items/82f205e16e78424df71b)

# Vue.js

[Vue.jsから手軽に始めるJavaScriptフレームワーク - Qiita](http://qiita.com/icoxfog417/items/49f7301be502bc2ad897)



# アップデート発動条件
自動:イベントハンドラ実行時()
手動:update()


todoリストformの挙動:

input.onkeyup発動→ add-formタグないの他要素がupdate

更新対象は、タグの中身全て？


add: parent.items変化→ parentも更新される

→ つまり、何かしらイベント発生すると、parent、children含めて更新が発生する？

Reactみたいな仕組みがあるかわからないが、更新量は多そう


# react
[Reactを使うとなぜjQueryが要らなくなるのか - Qiita](http://qiita.com/naruto/items/fdb61bc743395f8d8faf#fn5)

メリット・デメリットがまとまっている。


ランキング

[2016年、ReactがAngularを抜いて1番人気に！ JSライブラリの利用意向はますます高まっている - Build Insider](http://www.buildinsider.net/hub/survey/201606-popularjs)

