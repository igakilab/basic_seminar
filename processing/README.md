<!-- TOC -->

- [Processingとは](#processingとは)
  - [Processingで何ができるか](#processingで何ができるか)
    - [字や絵がかける](#字や絵がかける)
    - [絵を動かせる（アニメーション）](#絵を動かせるアニメーション)
    - [画面をクリックできる](#画面をクリックできる)
    - [複雑なサンプル](#複雑なサンプル)
  - [インストール](#インストール)
    - [ファイルのダウンロード](#ファイルのダウンロード)
    - [ファイルの解凍](#ファイルの解凍)
    - [Processingの実行](#processingの実行)
  - [じゃんけんゲームを作ってみよう（その1）](#じゃんけんゲームを作ってみようその1)
    - [sketchファイルの保存](#sketchファイルの保存)
    - [画面の表示](#画面の表示)
      - [Try](#try)
    - [背景色の変更](#背景色の変更)
      - [カラーコードとは](#カラーコードとは)
      - [Try](#try-1)
    - [図形の表示](#図形の表示)
      - [Processingの座標](#processingの座標)
      - [Try](#try-2)
    - [文字の表示](#文字の表示)
      - [Try](#try-3)
      - [日本語の扱い（おまけ）](#日本語の扱いおまけ)
    - [マウスでの操作と条件分岐と変数(その1)](#マウスでの操作と条件分岐と変数その1)
      - [Try](#try-4)
    - [マウスでの操作と条件分岐と変数(その2)](#マウスでの操作と条件分岐と変数その2)
      - [Try](#try-5)
  - [テニスゲームを作ってみよう](#テニスゲームを作ってみよう)
    - [sketchファイル(tennis)の作成](#sketchファイルtennisの作成)
    - [変数の使い方](#変数の使い方)
      - [変数とは](#変数とは)
        - [変数の宣言と型](#変数の宣言と型)
        - [変数のスコープ](#変数のスコープ)
    - [draw()を利用した繰り返しと乱数](#drawを利用した繰り返しと乱数)
      - [乱数とは](#乱数とは)
      - [Try](#try-6)
    - [draw()を利用した繰り返し2](#drawを利用した繰り返し2)
    - [ボールの移動](#ボールの移動)
    - [ボールの反射](#ボールの反射)
      - [println()デバッグ](#printlnデバッグ)
      - [Try](#try-7)
    - [draw()を利用したマウス操作との連動](#drawを利用したマウス操作との連動)
    - [当たり判定](#当たり判定)
  - [じゃんけんゲームを作ってみよう（その2）](#じゃんけんゲームを作ってみようその2)
    - [if文のネスト](#if文のネスト)
      - [Try](#try-8)
    - [開発者によるメソッドの定義と利用](#開発者によるメソッドの定義と利用)
    - [メソッドとは](#メソッドとは)

<!-- /TOC -->

# Processingとは
- MITメディアラボで開発されていたビジュアル・アートを表現することを目的としたプログラミング言語．
- https://processing.org/

## Processingで何ができるか
### 字や絵がかける
- 字
  - http://processingjs.org/learning/basic/words/
  - 日本語は避けたほうが良いかも（色々と面倒なので）
- 絵(円)
  - http://processingjs.org/learning/basic/multipleconstructors/
- 他にも四角形，楕円，弧(arc)などなど
  - 参考：Processingで描ける図形まとめ↓
    - https://qiita.com/reona396/items/5fa4babc8243c4ed4914
### 絵を動かせる（アニメーション）
- 線の移動
  - https://processing.org/examples/loop.html
- 円の移動
  - http://i.cla.kobe-u.ac.jp/murao/processing.js/fireWorks/index.html
### 画面をクリックできる
- クリック
  - http://processingjs.org/learning/basic/mousepress/

### 複雑なサンプル
- Mother2
  - https://www.openprocessing.org/sketch/649113
- 全方向シューティングゲーム
  - https://www.openprocessing.org/sketch/528480
- ロケットゲーム
  - https://www.openprocessing.org/sketch/686587


## インストール
- 授業中でDLに時間がかかりすぎる場合は第2回までにDLしてインストールしておくこと

### ファイルのダウンロード
- ↓のページから`Windows 64-bit`というLinkをクリックし，`processing-3.X.Y-windows64.zip`というファイルをDLする
  - https://processing.org/download/
  - X,Yはバージョン番号で，DLするときによって変わる
  - 130MBくらい
### ファイルの解凍
- C:\oit というフォルダを作成する
  - 解凍先フォルダ．本来はどこでも良いが，説明やフォローのため，Cドライブ直下にoitという名前のフォルダを作成すること
- `processing-3.X.Y-windows64.zip`ファイルをC:\oit に解凍する．解凍後に以下のようなディレクトリ構成になっていることを確認すること
```
C:\oit\processing-3.X.Y\core
C:\oit\processing-3.X.Y\java
:
:
C:\oit\processing-3.X.Y\processing.exe
C:\oit\processing-3.X.Y\processing-java.exe
C:\oit\processing-3.X.Y\revisions.txt
```
### Processingの実行
- `C:\oit\processing-3.X.Y\processing.exe`をダブルクリックする
- ↓のような画面が表示されればOK
  - パソコンのスペックによっては起動まで少し時間がかかる

<img src="https://github.com/igakilab/basic_seminar/raw/images/images/processing_start.jpg" width=400>

## じゃんけんゲームを作ってみよう（その1）
- 細かいことはおいおい説明するので，まずは以下の手順に従ってサンプルを実装して動かしてみよう

### sketchファイルの保存
- Processingのプログラムを書くファイル（sketchと言う）がデフォルトのままなので，名前をじゃんけんゲームに相応しい **Janken** に変更する
- 以下の画像を参考に，**ファイル->保存** をクリックする

<img src="https://github.com/igakilab/basic_seminar/raw/images/images/processing_file.jpg" width=300>

- 次に，ファイル名のところに`Janken`と入力し，**保存** ボタンをクリックする

<img src="https://github.com/igakilab/basic_seminar/raw/images/images/processing_save.jpg" width=500>

- そうすると，ドキュメントフォルダの中の`Processing` フォルダ内に `Janken` というフォルダが作成され，そのフォルダの中にProcessingファイルである `Janken.pde` というファイルが作成される

### 画面の表示
- Processing画面のJankenと表示されたエディタ部分に下記のコードをコピペする
  - `//`はコードではなくただの説明文（コメント）なので，書かなくても良い
```Processing
void setup(){
  size(450,300);//display size
}

void draw(){
}
```

- このコードを書いてからエディタ部分上部にある`▶`をクリックすると，下の画面のように横幅が450px(ピクセル)，縦が300px(ピクセル)のグレーの画面が表示される

<img src="https://github.com/igakilab/basic_seminar/raw/images/images/processing_run.jpg" width=500>

- Processingでは必ず`setup()`, `draw()` という **メソッド** が記述される
  - ここでメソッドとは一定の処理に名前をつけてまとめたもの
  - `setup()` がメソッド名で，そのあとの`{}`で囲まれた領域が `setup()` メソッドの中身になる
  - `setup()` はProcessingアプリを起動したときに一度だけ呼び出されるメソッドで，`draw()` はProcessingアプリを起動し続けている間繰り返し呼び出される画面描画のためのメソッド．
- `size(450,300)` はProcessingによって提供されており，画面のサイズ(幅，高さ)を引数に与えるとそのサイズの画面を表示してくれる．単位はpx．

#### Try
- 表示される画面サイズを色々変更してみよう！

### 背景色の変更
- 次は↓のコードをコピペしてみよう
  - 先程のコードに `background()` の行を追加しただけ
  - `//` 以降はコメントなので書かなくてもOK

```Processing
void setup(){
  size(450,300);//display size
  background(#000000);//display background color
}

void draw(){
}
```

- `background()` は引数にカラーコードを与えると画面の背景色をその色に変更してくれるメソッド

#### カラーコードとは
- Googleで↓の単語で検索するとGoogleのカラーコード表示ツールが利用できる
  - https://www.google.com/search?q=16%E9%80%B2%E6%95%B0+%E8%89%B2
- 適当な色をクリックすると，画面左側に `#4286f4` のように16進数のカラーコードが表示される．このカラーコードをそのまま `background()` の引数に与えると背景色がその色になる
- ちなみに，画面左に表示されている `rgb(66,134,244)` はRGB値といい，この値を利用して色の指定もできる
  - `background(66,134,244);` は `background(#4286f4);` と同じ

#### Try
- 背景の色を変更してみよう！

### 図形の表示
- ↓のコードをコピペしてみよう
  - `fill()`，`ellipse()`，`rect()`のメソッドが追加されている

```Processing
void setup(){
  size(450,300);//display size
  background(#000000);//display background color
  fill(#ff0000);//Red
  ellipse(75,75,150,150);
  rect(150,0,150,150);
}

void draw(){
}
```

- `fill()` はこのメソッド以降に表示される図形や文字の色を指定したカラーコードにするメソッド
  - 一度指定すると別の色にするまですべての図形や文字の色がその色のままになる
- `ellipse()`は楕円を描画するメソッド．引数を4つとり，先頭から楕円の **中心** 座標のx座標，y座標，楕円の幅，楕円の高さを表している
- `rect()`は長方形を描画するメソッド．引数を4つとり，先頭から長方形の **左上** 座標のx座標，y座標，長方形の幅，長方形の高さを表している

<img src="https://github.com/igakilab/basic_seminar/raw/images/images/processing_zukei.jpg" width=400>

- 図形はこれらの他にも直線 `line()` ，三角形 `triangle()` ，弧 `arc()` など様々なものがある
- 以下のURLのShapeという項目に説明があるので確認してみよう
  - https://processing.org/reference/

#### Processingの座標
- Processingでの座標は左上が原点(0,0)で下図のように右向きがx軸の正の向き，下向きがy軸の正の向きになる
- x軸とy軸の上限は`size()`で指定したとおりとなり，`size(20,15)`であればx軸の上限が20，y軸の上限が15となる
- 今回のプログラム例のように，`size(450,300)`であればx軸の上限は450,y軸の上限は300となる

<img src="https://github.com/igakilab/basic_seminar/raw/images/images/zahyou.jpg" width=400>

#### Try
- 楕円や長方形の場所や大きさを変更してみよう
- 余裕がある人は↑のURLのShapeの項目を見て楕円や長方形以外の図形を描画してみよう

### 文字の表示
- ↓のコードをコピペしてみよう
  - 先程のコードに`textSize()` と `text()` と関連するメソッドが追加されている

```Processing
void setup(){
  size(450,300);//display size
  background(#000000);//display background color
  fill(#ff0000);
  ellipse(75,75,150,150);
  rect(150,0,150,150);
  ellipse(375,75,150,150);

  textSize(50);
  fill(#000000);
  text("Gu",50,80);
  text("Choki",160,80);
  text("Pa",350,80);
}

void draw(){
}
```

- `textSize()`はこのメソッド以降に呼び出された`text()`メソッドに対して，引数に与えた大きさの文字を表示する
- `textSize()` の次の `fill()` はその後のtextの文字を黒にするために呼び出している
- `text("Gu",50,80)` は下図が示すとおり， **Gu** という文字列の **左下** の座標を `50,80` に表示することを意味する
  - 0がx座標，50がy座標を表す

<img src="https://github.com/igakilab/basic_seminar/raw/images/images/processing_text.jpg" width=400>

#### Try
- いろいろな文字を表示させてみよう
- 文字の位置を画面真ん中，右上，左下，右下のそれぞれに表示させてみよう

#### 日本語の扱い（おまけ）
- この項目は必須ではないので，余裕がある学生のみ実施すること．
- Processingでは日本語を扱えるようにするため，2つの設定を行う必要がある
1. エディタ上にコメントとして日本語を入力できるようにするためには下図のように``ファイル->設定->エディタとコンソールのフォント「MSゴシック」``を実行する必要がある
  - エディタの描画の関係でMSゴシックにすると若干カーソル位置と文字の位置がずれるため，日本語化が不要な場合は元のSource Code Proのままにしておくほうが良い

<img src="https://github.com/igakilab/basic_seminar/raw/images/images/processing_japan_config.jpg" width=400>

2. 1の設定でエディタ中に日本語が入力できるようになる．ただし， `text("ぐー",50,80);` として実行しても，エディタ上では日本語が表示されているが，実行した画面では正常に日本語は表示されない．以下をコピペしてプログラムを実行してみること．

```Processing
void setup(){
  size(450,300);//display size
  background(#000000);//display background color
  fill(#ff0000);
  ellipse(75,75,150,150);
  rect(150,0,150,150);
  ellipse(375,75,150,150);

  fill(#000000);
  PFont font = createFont("MS Gothic",50);
  textFont(font);
  text("ぐー",50,80);
  text("ちょき",160,80);
  text("ぱー",350,80);
}

void draw(){
}
```

- `PFont font = createFont("MS Gothic",50);` は日本語フォントを50ptの大きさで作成(create)している．その後， `textFont(font);` を呼び出すことで，以降のtextをこの日本語フォントで下図のように表示することができるようになる．

<img src="https://github.com/igakilab/basic_seminar/raw/images/images/processing_japanese_font.jpg" width=400>

### マウスでの操作と条件分岐と変数(その1)
- 以下のコードをコピペしてみよう
  - `void mouseClicked()` というメソッドの定義が追加されている
- コピペして実行したら，Guの文字があるあたりをマウスでクリックしてみよう

```Processing
void setup(){
  size(450,300);//display size
  background(#000000);//display background color
  fill(#ff0000);
  ellipse(75,75,150,150);
  rect(150,0,150,150);
  ellipse(375,75,150,150);

  textSize(50);
  fill(#000000);
  text("Gu",50,80);
  text("Choki",160,80);
  text("Pa",350,80);
}

void draw(){
}

void mouseClicked(){
  fill(#FFFFFF);//White
  if(mouseX >=0 && mouseX < 150){
    text("Gu Clicked",75,260);
  }
}
```

- `mouseClicked()` メソッドは，ユーザが画面上のどこかをクリックすると呼び出される
  - このプログラムの場合，クリックをすると `fill(#FFFFFF)` 以降の処理が実行される
- `fill(#FFFFFF)` はこれ以降に呼び出される図形や文字の色を白にする
- `if(){}` は条件分岐と呼び，特定の条件を満たしたときのみ実行される処理を記述する際に利用する
  - ここで `mouseX` はProcessingが用意している **変数** で，ユーザがクリックした点のx座標が保存されている
  - 変数とは何らかの値を保存するための箱（詳細は後日）
- この条件分岐は**マウスでクリックした点のx座標が0以上で，かつ(&&)，x座標が150未満の場合，「Gu Clicked」と画面に表示する** という意味になっている

<img src="https://github.com/igakilab/basic_seminar/raw/images/images/processing_clicked.jpg" width=400>

#### Try
- クリックする座標や表示される文字列を変更してみよう
  - mouseYという変数も用意されており，こちらはマウスでクリックした点のy座標を表している

### マウスでの操作と条件分岐と変数(その2)
- ↑のプログラムの`void mouseClicked(){}` のみを↓のコードと差し替えてみよう
  - `setup()` メソッドや `draw()` メソッドは消さないこと

```Processing
void mouseClicked(){
  fill(#000000);//Black
  rect(0,150,450,150);
  fill(#FFFFFF);//White
  if(mouseX >=0 && mouseX < 150){
    text("Gu Clicked",75,260);
  }else if (mouseX >= 150 && mouseX < 300){
    text("Choki Clicked",75,260);
  }
}
```

- `mouseClicked()` メソッドの冒頭に `fill(#000000);` と `rect(0,180,450,150);` が追加されている．これはマウスがクリックされるたびに画面の下半分を黒い四角で塗りつぶすことで，描画された文字を消している
- `if(){} else if(){}` と書くことで，複数の条件で分岐を実現している．この例の場合， **mouseXの値が0以上かつ150未満** の場合は **Gu Clicked** と表示し，そうでなく **mouseXの値が150以上でかつ300未満** の場合は **Choki Clicked** と表示する．

#### Try
- Paがクリックされた場合の処理を追加してみよう

## テニスゲームを作ってみよう
- 変数や乱数，繰り返し処理などの一般的なプログラミング言語の要素を利用したプログラムをテニスゲームを題材に実装してみよう

### sketchファイル(tennis)の作成
- じゃんけんゲームを参考にtennisという名前のスケッチファイルを作成しよう
- `Janken` を開いているときは**ファイル->名前をつけて保存** で「tennis」を入力すればOK．

### 変数の使い方
- 以下のコードをコピペしてみよう

```Processing
float x;
void setup(){
  size(500,500);
  x = 50.5;
  ellipse(x,x,20,20); //Ball
}

void draw(){
}
```
- `float x;` は **変数を宣言** している． ここでは**float** という型を持つ`x`という**変数名** の変数が宣言されている
- `x = 50.5;` ではxという変数に `50.5` という数値を保存（一般には **代入** という）している
- `ellipse()` は↑でも紹介したが，楕円を描画するメソッド．この例のように **変数** を引数に取ることもできる
  - ここでは，中心の座標が `(50.5,50.5)` で幅と高さが `20` の円が描画されている

#### 変数とは
- 変数とは決まった種類の値を保存することができる箱である

##### 変数の宣言と型
- 変数を利用する場合，まず変数の宣言を行う
  - 変数が保存できる値の種類を規定したものを **型** といい，型名と変数名を続けて記述することで **変数の宣言** を行うことができる
  - **型名** **変数名**;
    - `float x;`
    - `int hoge;`
  - `float`という **型** が指定された場合，その変数には（この場合変数x）小数値を保存できる．`int`という型が指定された場合，その変数（この例の場合はhoge)には整数値が保存できる．
    - 型には保存できる値の範囲（上限値と下限値）も定められている
    - 他にも文字列が保存できる `String fuga;` という変数の型もある
  - コンピュータにおける整数と小数の扱いの違いについては **コンピュータ入門** の授業で習うので確認しておくこと
- 変数に値を保存することを **代入** と呼ぶ
- 変数を利用することで，一度変数に値を **代入** すると，あとは変数を **再利用** してプログラムを書くことができる
  - 一度xに値を代入すると，他のところでxを何回でも利用できる
- ↓のコードを`ellipse(x,x,20,20);` の次の行に追加してからプログラムを実行してみよう
```Processing
  rect(x-10,x+10,20,20);
```
- **変数x** を **再利用** することで，円の直下に四角が描画されるプログラムが作成できる
  - このプログラムの場合，円や四角形の場所を変更したい場合， `x = 50.5;` の数値を変更するだけで円と四角形の位置をまとめて変更できる
- 変数には今回のxのようなユーザが自分で宣言する変数だけでなく，`mouseX` のようなProcessing側で用意している変数もある．後者については宣言を行う必要はない

##### 変数のスコープ
- 変数を **どこで宣言するか** で利用できる場所 (**スコープ**)が変わる
- ↑のプログラムでは `float x;` を`void setup(){}` などの **ブロックの外側** で宣言している
  - Processingなどの多くのプログラミング言語では `{}` で囲まれた箇所を**ブロック**と呼ぶ
- 変数を特定のブロック({}) の内側で宣言した場合，そのブロックでしかその変数は利用できない
  - 例えば `void setup(){float x;}` のように `setup()` メソッドのブロック内で変数が宣言されていると，その変数xを`void draw(){}` メソッドのブロック内では利用できない
- 変数をすべてのブロックの外側で宣言した場合，どのブロックでも利用できる
  - `void setup(){}` などの外側に一番大きなブロックがあると考えると良い

### draw()を利用した繰り返しと乱数
- 以下をコピペしてみよう

```processing
float x;
void setup(){
  size(500,500);
}

void draw(){
  x = random(500);
  ellipse(x,x,20,20); //Ball
}
```

- 下図のように無数の円がランダムに斜めの線上（x座標とy座標が同じになる線）に描画されていく
- `setup()` メソッドはプログラムを実行した最初に一度だけ呼ばれるが， `draw()` メソッドはプログラムを実行すると `setup()` が実行されたあと何回も呼び出される
  - このプログラムの場合，  `x = random(500);  ellipse(x,x,20,20); //Ball` この2行が何回も何回も呼び出される
- `random()` はランダムな値を返すメソッド．引数に500が指定されると，0以上500 **未満** の小数値が返ってくる．ここでは，xという **変数** に **0以上500未満** のランダムな値が保存（一般に**代入**と呼ぶ)される

<img src="https://github.com/igakilab/basic_seminar/raw/images/images/processing_random.jpg" width=400>

#### 乱数とは
- ゲームやアニメーションなどの実装・描画には指定した範囲でランダムな値を必要とするものが多い
  - サイコロや画面上の様々な場所に円や四角などを移動したい場合など

#### Try
- ↓の図のように円の中心のy座標もrandom() メソッドを利用してランダムな値になるようにプログラムを変更してみよう
  - まず，変数yを**ブロックの外**で宣言する．さらに，xと同様に500未満の小数値を`draw()`メソッドの中で変数yに代入し，ellipse()メソッドで利用すれば良い

<img src="https://github.com/igakilab/basic_seminar/raw/images/images/processing_random2.jpg" width=400>

### draw()を利用した繰り返し2
- 以下のプログラムをコピペしてみよう
 - コピペしたあと，このプログラムを実行するとどのように表示されるかを **実行前に** 考えてみよう

```processing
float x;
float y;
void setup(){
  size(500,500);
  x = random(500);
  y = random(500);
}

void draw(){
  x = x + 1;
  y = y + 1;
  ellipse(x,y,20,20); //Ball
}
```

- `x = random(500);  y = random(500);` が `draw()` から `setup()` に移動している
- `draw()` では `x = x + 1;` が何回も呼び出される．この記述では，変数xにこれまでの変数xの値に1を足したものが加算される（つまり毎回1ずつ増えていくことを表す）．変数yも同じ

### ボールの移動
- 以下のコードをコピペしてみよう
 - コピペしたあと，このプログラムを実行するとどのように表示されるかを **実行前に** 考えてみよう
 - Hint: `background(#000000);` を実行するとその時点の画面を黒で塗りつぶす

```processing
float x;
float y;
int speedX = 1;
int speedY = 1;
void setup(){
  size(500,500);
  x = random(500);
  y = random(500);
}

void draw(){
  background(#000000);//Clear display
  x = x + speedX;
  y = y + speedY;
  ellipse(x,y,20,20); //Ball
}
```

### ボールの反射
- 以下のコードをコピペしてみよう
 - コピペしたあと，このプログラムを実行するとどのように表示されるかを **実行前に** 考えてみよう

```processing
float x;
float y;
int speedX = 1;
int speedY = 1;
void setup(){
  size(500,500);
  x = random(500);
  y = random(500);
}

void draw(){
  background(#000000);//Clear display
  x = x + speedX;
  y = y + speedY;
  ellipse(x,y,20,20); //Ball
  if( x < 0 || x > 500){
    speedX = speedX * -1;
  }
}
```

- `if(){}` の記述を `if文` と呼び，条件分岐（もし～だったら～する）を表している
  - `()` の中に条件を書き，`{}` の中に条件が満たされたときに実行する処理を書く
- `if( x < 0 || x > 500)` は **もし変数xの値が0未満 あるいは 変数xの値が 500より大きければ** を表している．
  - `||` は **あるいは** ， `&&` は **かつ** を表す
- `{}` の中の処理はspeedXの値を元のspeedXの値に `-1` をかけたものを表している．この場合は speedXの値が1であれば-1に，-1であれば1になる

#### println()デバッグ
- プログラム中の誤りを特定し，修正する作業のことを **デバッグ** という
- `if文` などの条件分岐を利用する際，変数の値や分岐が正しく動作しているかをコードを見るだけで確認することは困難な場合がある
- 以下のコードを↑のプログラムの `if( x < 0 || x > 500){` の前の行に追加してみよう

```processing
  println("x:"+x);
```

- このコードを追加した状態でプログラムを実行すると，下図のようにエディタ下部のコンソールというエリアに `x:105.621` というように `x:`という文字列とそのときの`変数x` の値が表示される
- プログラム実行時に意図しない振る舞いをするときは利用すると良い
  - println() を利用する以外に，Processingエディタに付属のデバッガを利用してデバッグを行う方法もあるが授業中には紹介しない．興味がある場合は調べてみると良い

<img src="https://github.com/igakilab/basic_seminar/raw/images/images/processing_println.jpg" width=400>

#### Try
- speedXやspeedYの最初の値(初期値)を変更するとどうなるか確認してみよう
- ↑のプログラムを修正し，画面の両サイドだけでなく，上下の壁にあたった場合もボールが跳ね返るようなプログラムにしてみよう

### draw()を利用したマウス操作との連動
- 以下の一行を `draw()` メソッドのブロック内の `background(#000000);` の次の行に追加してみよう

```processing
  rect(mouseX,400,100,50);
```

- 画面上でマウスを動かすと，その動きに連動して左右に動く長方形が表示される
  - `rect()` の最初の引数が `mouseX` になっているため，長方形左上のx座標がマウスポインタの場所に応じて変更される
- ここで `mouseX` はProcessingが用意している変数で，呼び出されたときの画面上でのマウスポインタの位置のx座標が保存されている

### 当たり判定
- 以下のコードをコピペしてみよう

```processing
float x;
float y;
int speedX = 1;
int speedY = 1;
void setup(){
  size(500,500);
  x = random(500);
  y = random(500);
}

void draw(){
  background(#000000);//Clear display
  rect(mouseX,400,100,50);
  x = x + speedX;
  y = y + speedY;
  ellipse(x,y,20,20); //Ball
  if( x < 0 || x > 500){
    speedX = speedX * -1;
  }
  if(y<0 || y > 500){
    speedY = speedY * -1;
  }
  if(x >= mouseX && x <= mouseX + 100 && y > 400){
    speedY = speedY * -1;
  }
}
```

- `if(x >= mouseX && x <= mouseX + 100 && y > 400){}` ここの `if文` で当たり判定を実現している
- 下図で示すように，マウスに連動して左右に動く長方形の上側の枠にあたると `speedY` の値の正負が反転する（つまりy軸(上下)方向に跳ね返る）
  - 具体的には， **もし** 変数xの値(ボールのx座標)がmouseXの値 **以上** で **かつ**，mouseXの値 + 100 (長方形の幅) **以下** で **かつ**，変数yの値(ボールのy座標)が 400 (長方形の上側の枠のy座標) **よりも大きい** 場合に `speedY` の値の正負を反転させる

<img src="https://github.com/igakilab/basic_seminar/raw/images/images/processing_atari.jpg" width=400>

## じゃんけんゲームを作ってみよう（その2）
- 乱数や `draw()` メソッド，変数などを駆使してCPUと対戦できるじゃんけんゲームを完成させよう
- まず，↑で作成したじゃんけんゲーム（その1）のファイルを開こう
  - processingを起動し，**ファイル->開く** で `Janken` フォルダの`Janken.pde` ファイルを指定すると良い

### if文のネスト
- 以下のコードをコピペしてみよう
  - `void mouseClicked()` メソッドの中身が変更されている

```processing
void setup(){
  size(450,300);//display size
  background(#000000);//display background color
  fill(#ff0000);
  ellipse(75,75,150,150);
  rect(150,0,150,150);
  ellipse(375,75,150,150);

  textSize(50);
  fill(#000000);
  text("Gu",50,80);
  text("Choki",160,80);
  text("Pa",350,80);
}

void draw(){
}

void mouseClicked(){
  fill(#000000);//Black
  rect(0,150,450,150);
  fill(#FFFFFF);//White

  float cpuHand = random(3);// 0~1:Gu,1~2:Choki,2~3:Pa
  if(mouseX >=0 && mouseX < 150){
    if(cpuHand < 1){//cpu's hand is Gu
      text("Draw",75,260);
    }else if(cpuHand < 2){//cpu's hand is Choki
      text("You win!",75,260);
    }else{//cpu's hand is Pa
      text("You lose",75,260);
    }
  }else if (mouseX >= 150 && mouseX < 300){
    text("Choki Clicked",75,260);
  } else {
    text("Pa Clicked",75,260);
  }
}
```

- `void mouseClicked()` メソッドはProcessingによって，画面上でマウスがクリックされるたびに呼び出されるメソッドである
- `float cpuHand = random(3);` はCPUのじゃんけんの手を計算している． `random(3)` によって **0以上3未満** の数値が返ってくるため，0以上1未満の場合はGu，1以上2未満の場合はChoki，2以上3未満の場合はPaと設定している
  - `float cpuHand` は小数値の値を保存できる変数 `cpuHand` を宣言している
- プログラムの↓の部分がじゃんけんの判定を行っている
- `if(mouseX >=0 && mouseX < 150)` は画面をクリックしたときのマウスポインタのx座標が **0以上でかつ150未満** の場合を表している．さらに，次の行の `if(cpuHand < 1){//cpu's hand is Gu` は **変数cpuHandの値が1未満の場合** を意味しており，前の行の **if文のブロックの中** に含まれている．すなわち，マウスポインタのx座標が **0以上でかつ150未満** であり， **変数cpuHandの値が1未満の場合** に `text("Draw",75,260);` が実行されることを示している．
  - このように `if文` の**ブロックの中**に 別の `if文`が含まれることを **if文のネスト** という

```processing
  if(mouseX >=0 && mouseX < 150){
    if(cpuHand < 1){//cpu's hand is Gu
      text("Draw",75,260);
    }else if(cpuHand < 2){//cpu's hand is Choki
      text("You win!",75,260);
    }else{//cpu's hand is Pa
      text("You lose",75,260);
    }
  }
```

- プログラムを実行すると，下図のように"Gu"の領域をクリックするとCPUとじゃんけんが行われ，結果が画面下部に表示される

<img src="https://github.com/igakilab/basic_seminar/raw/images/images/processing_janken_gu.jpg" width=400>

#### Try
- Guだけでなく，ChokiやPaがクリックされた場合の処理も追加してみよう
- 余裕がある人は勝数を保存する変数を用意し，画面右下に勝数を表示してみよう

### 開発者によるメソッドの定義と利用
- ここの内容は少し難しいので，余裕がある人のみ確認すること
  - ただし，開発者による独自メソッドの定義と利用ができるようになると，より高品質で読みやすいプログラムが書けるようになるので可能な範囲で頑張ってみよう
- これまでは `text()` や `rect()` 等のProcessingによって **定義済みの** メソッドを呼び出して使ったり， `void setup()` や `void draw()`， `void mouseClicked()` のようなProcessingから呼び出される(プログラムを実行すると，種類に応じたタイミングで勝手に実行される)メソッドの中身を自分で定義してつかったりしてきた
- メソッドにはこれらのProcessingに用意されているものだけでなく， **開発者自身が定義して利用するメソッド** も存在する
- ↑のプログラムから `void mouseClicked(){}` を削除し，以下のコードをコピペして追加しよう
  - `showResult()` 及び `getCpuHand()` が **開発者自身が定義して利用するメソッド** になっている

```processing
void mouseClicked(){
  fill(#000000);//Black
  rect(0,150,450,150);
  fill(#FFFFFF);//White

  if(mouseX >=0 && mouseX < 150){
    showResult("Gu",getCpuHand());
  } else if (mouseX >= 150 && mouseX < 300){
    showResult("Choki",getCpuHand());
  } else {
    showResult("Pa",getCpuHand());
  }
}

void showResult(String playerHand, String cpuHand){
  textSize(20);
  text("Cpu:" + cpuHand,10,300);
  textSize(40);
  if(playerHand.equals(cpuHand)){
    text("Draw",75,260);
  }else if(playerHand.equals("Gu") && cpuHand.equals("Choki")
  || playerHand.equals("Choki") && cpuHand.equals("Pa")
  || playerHand.equals("Pa") && cpuHand.equals("Gu")){
    text("You Win!",75,260);
  }else{
    text("You Lose",75,260);
  }
}

String getCpuHand(){
  float cpuHand = random(3);// 0~1:Gu,1~2:Choki,2~3:Pa
  if(cpuHand < 1){//cpu's hand is Gu
    return "Gu";
  }else if(cpuHand < 2){//cpu's hand is Choki
    return "Choki";
  }else{//cpu's hand is Pa
    return "Pa";
  }
}
```

### メソッドとは
- `void mouseClicked()` もそうだが，メソッドを定義する場合は， **返り値の型 メソッド名(引数){ブロック}** の順で記述する
- ここで返り値の型とは，そのメソッドを利用した際にメソッドが返す値の型 (変数の型と同じ)を指す．
  - 例えば，↑の `getCpuHand()` の場合， `"Gu"`, `"Choki"`, `"Pa"` などの文字列が返るため，返り値の型が `String` となっている
  - 返り値がない場合は `void` となる
  - メソッドのブロック内で `return` に続けて変数や値を指定することでそのメソッドを終了して呼び出し元に指定された値が返る
    - `getCpuHand()` の場合 `return "Gu";` という処理が実行された時点で， `getCpuHand()` は終了し， `"Gu"` という文字列が返る
- メソッド名はアルファベットから始まる英数字で自由に決められる（既存のものとの重複は一定の条件下以外では認められない）
- メソッド名に続いて，引数が指定される
  - 引数は **変数の型と変数名** から構成される．変数の宣言と同様と考えて良い
  - 複数の引数が与えられる場合は **,** (カンマ)でつなげて記述される
  - ここで宣言された変数はそのメソッドの `{}` ブロック内で利用できる
- `showResult("Choki",getCpuHand());` の場合， `void showResult(String playerHand, String cpuHand)` メソッドが呼び出され， `"Choki"` が `playerHand` に， `getCpuHand()` の実行結果("Gu"か"Choki"か"Pa")が `cpuHand` に代入される．その後， `showResult()` メソッドのブロックで `playerHand` と `cpuHand` を利用した処理が実行される
- メソッドを定義することで， **CPUのじゃんけんの手を決定する** とか **CPUとプレーヤのじゃんけんの手から結果を出力する** といったある程度の処理のまとまりを作ることができるようになり，プログラムを見通しやすくなったり，同じ処理を何回も書かずにすむようになったりする
