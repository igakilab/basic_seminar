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

2. 1の設定でエディタ中に日本語が入力できるようになるが， `text("ぐー",50,80);` として実行しても，エディタ上では日本語が表示されているが，実行した画面では正常に日本語は表示されない．以下をコピペしてプログラムを実行してみること．

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

<img src="https://github.com/igakilab/basic_seminar/raw/images/images/processing_japan_config.jpg" width=400>

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
  - このプログラムの場合，  `x = random(500);  ellipse(x,x,20,20); //Ball' この2行が何回も何回も呼び出される
- `random(500)` はランダムな値を返すメソッド．引数に500が指定されると，0以上500 **未満** の小数値が返ってくる．ここでは，xという **変数** に **0以上500未満** のランダムな値が保存（一般に**代入**と呼ぶ)される

<img src="https://github.com/igakilab/basic_seminar/raw/images/images/processing_random.jpg" width=400>

#### 乱数とは
- ゲームやアニメーションなどの実装・描画には指定した範囲でランダムな値を必要とするものが多い
  - サイコロや画面上の様々な場所に円や四角などを移動したい場合など

#### Try
- ↓の図のように円の中心のy座標もrandom() メソッドを利用してランダムな値になるようにプログラムを変更してみよう
  - まず，変数yを**ブロックの外**で宣言する．さらに，xと同様に500未満の小数値を`draw()`メソッドの中で変数yに代入し，ellipse()メソッドで利用すれば良い

<img src="https://github.com/igakilab/basic_seminar/raw/images/images/processing_random2.jpg" width=400>

### メソッドの作成と利用
