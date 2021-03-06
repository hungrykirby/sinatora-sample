require 'sinatra'
require 'sinatra/reloader'

before do
  @ogptitle = 'きゃりかつルーム'
  @ogpdescription = '塙克樹の公式サイト？です。今までの作品をまとめて紹介するために作っています。あと自分の備忘録。'
end

get '/' do
  @title = 'きゃりかつルーム'
  @is_top = true
  erb :index
end

get '/about' do
  @title = 'きゃりかつルーム'
  @navtype = 'about'
  @contents = [
    {
      'type'=>'h1','main'=>'塙克樹のプロフィール'
    },
    {
      'type'=>'h2',
      'main'=>'塙 克樹'
    },
    {
      'type'=>'img',
      'uri'=>'/img/noimg.jpg',
      'alt'=>'プロフィール画像'
    },
    {
      'type'=>'p',
      'main'=>'生真面目と言わるほど真面目なエンジニア'
    },
    {
      'type'=>'p',
      'main'=>'ハード、ソフト、サーバ、フロントなど割と幅広くこなす。\n
      機械学習も少しかじった。\n
      個人的にはプロトタイプエンジニアと自称したい。\n
      pythonでLINE botを作ったり、phpとwordpressをいじったり、Rubyでサイトを作ったりしている。\n
      このサイトは勉強用にsinatraというフレームワークを使い、Rubyで書いている。\n
      大学時代はHCI系の研究室に所属していて、ArduinoやopenFrameworks、Processingなどの言語で遊ぶのが好きだった。\n
      卒論研究はArduinoとoF、修論研究はArduino、Processing、pythonを使っている。\n
      修論ではArduinoと接続した14のセンサから、pythonで機械学習をしたので「修論では機械学習を用いて研究しました！」というわりとすごそうに聞こえる経歴がある。'.gsub('\n', '<br>').gsub('\r', '<br>')
    },
    {
      'type'=>'p',
      'main'=>'趣味はイラスト。ピカチュウやハム太郎など一般的にかわいいと言われるキャラクターが好き。'.gsub('\n', '<br>').gsub('\r', '<br>')
    },
    {
      'type'=>'p', 'main'=>'過去3度程度、強い抑うつ状態になった経験から、メンタルヘルスに関する関心が強い。'.gsub('\n', '<br>').gsub('\r', '<br>')
    },
    {
      'type'=>'p','main'=>'早稲田大学基幹理工学研究科表現工学専攻橋田朋子研究室卒業。\n
      ペーパーコンピューティングや新しい時代のコミュニケーション、プログラミング場面の拡張などをテーマに研究していた。
     '.gsub('\n', '<br>').gsub('\r', '<br>')
    },
    {
      'type'=>'h2',
      'main'=>'使用言語'
    },
    {
      'type'=>'ul_gray',
      'main_list'=>[
        'Python', 'Ruby', 'php', 'javascript', 'html', 'css', 'C++', 'Processing', 'openFrameworks', 'Arduino', 'node.js'
      ]
    },
    {
      'type'=>'h2','main'=>'受賞歴'
    },
    {
      'type'=>'ul',
      'main_list'=>[
        '<span>楽天温泉ハッカソン</span><span>優勝</span>',
        '<span>早稲田大学主催第3回アプリケーションコンテスト</span><span>若手科学者賞</span>',
        '<span>電子情報通信学会MVE研究会</span><span>MVE賞</span>',
        '<span>TECH LAB PAAK</span><span>TECH LAB PAAK賞</span>',
        '<span>Fintech Challenge 2016 – Bring Your Own Bank!</span><span>ぐるなび賞</span>',
        '<span>エスキュービジム IoT×お笑いハッカソン</span><span>技術があるで賞</span>',
        '<span>第24回学生CGコンテスト アート部門</span><span>ノミネート</span>',
        '<span>Wired主催Creative Hack Award 2018</span><span>ファイナリスト</span>'
      ]
    },
    {
      'type'=>'h2',
      'main'=>'生い立ち'
    },
    {
      'type'=>'ul',
      'main_list'=>[
        '1993年11月21日栃木県に生まれる',
        '2006年大宮開成中高一貫校入学',
        '2012年早稲田大学入学',
        '2016年早稲田大学基幹理工学研究科表現工学専攻入学',
        '2018年早稲田大学 大学院修了',
        '2018年4月より現職'
      ]
    }
  ]
  @ogptitle = '塙克樹について：' + @title
  @ogpdescription = '塙克樹について説明しています。塙克樹とはどんな人物なんでしょうか？…：' + @ogpdescription
  erb :main
end

get '/award' do
  @title = 'きゃりかつルーム'
  @navtype = 'award'
  @contents = [
    {
      'type'=>'table',
      'main_list'=>[
        ['発表場所', '賞', '作品名'],
        ['楽天温泉ハッカソン', '優勝', 'Gra-Navi'],
        ['早稲田大学主催第3回アプリケーションコンテスト', '若手科学者賞', 'Gra-Navi'],
        ['2016年電子情報通信学会MVE研究会', 'MVE賞', '磁性シートの磁力制御に基づく積層させた複数紙面への同時描画システム'],
        ['TECH LAB PAAK', 'TECH LAB PAAK賞', 'Delter'],
        ['Fintech Challenge 2016 – Bring Your Own Bank!', 'ぐらなび賞', 'API map for personalize'],
        ['エスキュービジム IoT×お笑いハッカソン', '技術があるで賞', 'た（わむ）れまく'],
        ['第24回学生CGコンテスト アート部門', 'ノミネート', 'Gray Switch'],
        ['Wired主催Creative Hack Award 2018', 'ファイナリスト', 'Gray Switch']
      ]
    }
  ]
  @ogptitle = '受賞歴について：' + @title
  @ogpdescription = '塙克樹の受賞歴。いくつか受賞しているので、それらをご紹介！…：' + @ogpdescription
  erb :main
end

get '/contacts' do
  @title = 'きゃりかつルーム'
  @navtype = 'contact'
  @contents = [
    {
      'type'=>'h2',
      'main'=>'SNS'
    },
    {
      'type'=>'a',
      'uri'=>'https://twitter.com/hungrykirby',
      'targettype'=>'_blank',
      'main'=>'Twitter'
    },
    {
      'type'=>'a',
      'uri'=>'https://www.facebook.com/hungrykirby',
      'targettype'=>'_blank',
      'main'=>'facebook'
    },
    {
      'type'=>'a',
      'uri'=>'https://github.com/hungrykirby',
      'targettype'=>'_blank',
      'main'=>'Github'
    },
    {
      'type'=>'a',
      'uri'=>'https://www.wantedly.com/users/10827164',
      'targettype'=>'_blank',
      'main'=>'wantedly'
    },
    {
      'type'=>'p',
      'main'=>'連絡は上記SNSよりよろしくお願いします。<br>メールアドレスや電話番号、LINE情報の公開はいたしておりません。'
    }
  ]
  @ogptitle = '連絡先について：' + @title
  erb :main
end

get '/talk' do
  @navtype = 'talk'
  @title = 'きゃりかつルーム'
  @contents = [
    {
      'type'=>'h1',
      'main'=>'発表歴、場所'
    },
    {
      'type'=>'h2',
      'main'=>'準備中'
    }
  ]
  @ogptitle = '登壇について：' + @title
  erb :main
end

get '/works' do
  erb :works
end

get '/works/*' do |worksname|
  member_list = ['塙 克樹']
  @otherpics = []
  @navtype = 'work'
  link_list = []
  category_list = []
  @title = 'きゃりかつルーム'
  @name = worksname + 'という名前の作品は見つかりませんでした!'
  @main_pic = '/img/noimg.jpg'
  @contents = nil
  @date = ''
  @role = ''
  @classname = ''
  @place = ''
  @members = []
  @process = 'プロトタイプ'
  language_list = ['Processing']
  @links = []
  @language = ''
  @blcolor = 'black'
  @categories = []
  @before_link = {}
  @afterlink = {}
  @place = ''
  #@process = ''
  if worksname == 'granavi'
    @place = '楽天温泉ハッカソン, 早稲田大学地図アプリコンテスト'
    @main_pic = '/img/granaviimg.PNG'
    @name = 'Gra Navi'
    @date = '2014/08/31'
    @role = 'Software Engineer'
    @blcolor = 'orange'
    @members = member_list.push('西村 幸泰', '油井 俊哉')
    @language = language_list.push('楽天トラベルAPI')
    @categories = category_list.push('ハッカソン', '登壇')
    @prizes = '楽天温泉ハッカソン：優勝<br>早稲田大学地図アプリコンテスト：若手科学者賞'
    @otherpics = ['/img/granavi.jpeg']
    @links = link_list.push(
      {
        'text' => "楽天温泉ハッカソン",
        'uri' => 'http://nlab.itmedia.co.jp/nl/articles/1406/27/news082.html'
      },
      {
        'text' => 'Rakuten Technology Conference 2014',
        'uri' => 'https://youtu.be/DAGpIacIBHk'
      },
      {
        'text' => '油井 俊哉',
        'uri' => 'http://yui1048119.tumblr.com/'
      },
      {
        'text' => 'デモ動画',
        'uri' => 'https://youtu.be/mMGPCEp_XQY'
      }
    )
    @contents = '<p>
    Gra-NaviはGraphic navigationの略。<br>
    データビジュアライゼーションによる分かりやすい宿検索アプリを作った。<br>
    </p>
    <p>
    今までの宿検索アプリでは位置情報と値段の情報などを直感的に確認する手段がなく、値段を数字で確認した後、地図上で位置を確認する必要があった<br>
    たとえば「この宿評価もいいし、よさそう！」と思ってもアクセスが悪く、断念をした経験がある人もいるのではないだろうか<br>
    そういう課題をこのアプリケーションは解決する。
    </p>'
  elsif worksname == 'nagara'
    @place = '修士論文, インタラクション2018'
    @main_pic = '/img/nagara3.png'
    @name = 'ながらデバッグマスク:口の表情を入力としてソースコードの読み上げと バグの検出・記録が可能な仕組み'
    @members = member_list.push('橋田朋子')
    @date = '2018/01/14'
    @role = 'エンジニアリング、論文執筆者'
    @blcolor = 'rgb(121, 197, 253)'
    @process = 'デモ発表'
    @categories = category_list.push('論文', '研究', '学会')
    @language = ['Pyhton', 'SVM', '機械学習', 'Processing', 'データビジュアライゼーション']
    @otherpics = ['/img/nagara.jpg', '/img/nagare2.png']
    @links = link_list.push(
      {
        'text'=>'Github',
        'uri'=>'https://github.com/hungrykirby/maskQ2'
      },
      {
        'text' => '橋田朋子研究室',
        'uri' => 'http://tomokohashida.tumblr.com/'
      },
      {
        'text' => 'インタラクション2018',
        'url' => 'http://www.interaction-ipsj.org/2018/'
      }
    )
    @contents = '<p>概要より引用：<br>
    従来のプログラミング方法は手を動かしての入力とモニタからの視覚情報の提示を必要とする．
    <br>本稿では，この問 題を解決するために，発声の伴わない口の表情を入力とし聴覚情報の提示でデバッグを行うシステムを提案する．<br>
    外部に 音声に漏らすことなく使用可能な口の表情を 5 種類，マスク型デバイスで識別して，ソースコードの読み上げとバグの検 出および記録を操作するシステムを実装した．
    <br>聴覚情報でのデバッグに関する予備検討とマスク型デバイスの精度実験 を行った．</p>'
  elsif worksname == 'negadegkun'
    @place = 'ローカルで動かしながらテスト運用'
    @main_pic = '/img/negadegree.jpg'
    @name = 'ネガティブ診断くん'
    @members = member_list
    @date = '2017/01/07'
    @role = 'エンジニア(node,js、openFrameworks)'
    @blcolor = 'black'
    @process = 'ローカルでテスト(何人かにベータ的に使用してもらう):凍結中'
    @categories = category_list.push('Twitter bot', '自己満足')
    @language = ['Twitter bot', 'node.js', 'openFrameworks', 'C++', 'Python']
    @otherpics = nil
    @links = link_list.push(
      {
        'text'=>'Github(node.js)',
        'uri'=>'https://github.com/hungrykirby/negative_degrees'
      },
      {
        'text'=>'Github(Python)',
        'uri'=>'https://github.com/hungrykirby/pydegadeg'
      }
    )
    @contents = '<p>Twitter Bot
    <br>
    ユーザからのリプライを受けて、直近数ツイートのポジティブ度を測定している。<br>
    形態素解析で文章を分割し、単語ごとのプラマイを見ているだけなので、精度は悪い。<br>
    なるべく感覚値に近づくよう、多項式の補正関数を導入して、調整していたが、関数に圧倒的誤りがあることが発見された。<br>
    Pythonで書き換えたものの、鍵アカウントを取得できなかったり、補正関数がなかったりで、あんまりおもしろくないので止めている。</p>'
  elsif worksname == 'room'
    @place = '---'
    @main_pic = '/img/room.gif'
    @name = 'きゃりかつルーム'
    @members = member_list
    @date = '2019/01/14'
    @role = 'エンジニア(Ruby、CSS、html、p5.js)'
    @blcolor = 'rgb(121, 197, 253)'
    @process = '最後までやりきったぞ…(順次追加予定)'
    @categories = category_list.push('個人サイト', '自己満足')
    @language = ['Ruby', 'html', 'CSS', 'p5.js']
    @otherpics = ['/img/sketchjs.PNG']
    @links = link_list.push(
      {
        'text'=>'Github',
        'uri'=>'https://github.com/hungrykirby/sinatora-sample'
      }
    )
    @contents = '<p>自己満足で作ろうとしたプロフィールサイト。<br>
    Rubyの勉強用に作成している。フレームワークにsinatraを使っている。フロントにはp5.jsを使って装飾している。<br>
    プロフィールサイトはwordpressで作ったほうが良いぞ…。</p>'
  elsif worksname == 'ideanozokun'
    @place = '---'
    @main_pic = '/img/idea.png'
    @name = 'アイデアのぞくん'
    @date = '2019/01/14'
    @role = 'エンジニア(Python)'
    @blcolor = 'rgb(1, 185, 1)'
    @process = '製作途中'
    @categories = category_list.push('LINE BOT', '自己満足', 'クリエイター支援')
    @language = ['Python', 'html', 'CSS', 'Flask']
    @otherpics = nil
    @links = link_list.push(
      {
        'text'=>'Github',
        'uri'=>'https://github.com/hungrykirby/lineIdeaBox'
      }
    )
    @contents = '<p>自己満足で作ろうとしたLINE BOT<br>
    "みんなの「あったら面白い気がするけど、別に金払って作るほどじゃないし、誰か気が乗った人が作ってくれるといいな」"を集めている。<br>
    研究テーマも起業テーマも悩んだ経験や、研究室でアイデアが多くて実装しきれない人を見たことから作成した。</p>
    <img style="width:200px;" src="http://qr-official.line.me/L/slqSwEZG-B.png"><br>
    <a href="https://line.me/R/ti/p/%40wqp7452q"><img style="width:auto" height="36" border="0" alt="友だち追加" src="https://scdn.line-apps.com/n/line_add_friends/btn/ja.png"></a>'
  elsif worksname == 'grayswitch'
    @place = 'Grayscale展, 第24回学生CGコンテストアート部門, Wired主催Creative Hack Award 2018'
    @main_pic = '/img/gray-switch.jpg'
    @name = 'Gray Switch'
    @date = '2018/02/10'
    @role = 'Engineer (Chrome Addon Type Switch)'
    @blcolor = 'black'
    @categories = category_list.push('展示')
    @language = ['Python', 'node.js', 'Chrome Extension']
    @members = member_list.push('北澤 優也', '油井 俊哉', '横田 智大')
    @links = link_list.push(
      {
        'text' => 'Gray Switch公式サイト',
        'uri' => 'http://grayswitch.strikingly.com/'
      },
      {
        'text' => 'Grayscale展',
        'uri' => 'http://grayscale.cc/'
      },
      {
        'text' => 'Github',
        'uri' => 'https://github.com/hungrykirby/my_extension'
      },
      {
        'text' => '動画',
        'uri' => 'https://youtu.be/IjyW11fZpSU'
      },
      {
        'text' => '第24回学生CGコンテスト',
        'uri' => 'https://archive.campusgenius.jp/2018/works/410/'
      },
      {
        'text' => 'Wired主催Creative Hack Award 2018',
        'uri' => 'https://hack.wired.jp/ja/finalist/'
      },
      {
        'text' => '北澤 優也',
        'uri' => 'http://yuyakitazawa.tumblr.com/'
      },
      {
        'text' => '横田 智大',
        'uri' => 'http://tyokota.strikingly.com/'
      },
      {
        'text' => '油井 俊哉',
        'uri' => 'http://yui1048119.tumblr.com/'
      },
      {
        'text' => '橋田朋子研究室',
        'uri' => 'http://tomokohashida.tumblr.com/'
      }
    )
    @contents = '<p>
    スイッチは押す/押さないという2択の選択肢をユーザに提案します。<br>
    しかし、人の意志は0/1で割り切れないこともあります。<br>
    そのため、スイッチの前に立つたびに自分の曖昧な気持ちを0か1のどちらかに振り切らなければならず、苦痛に感じる人も多いでしょう。<br>
    これは、人が無理に機械に合わせている状態です。<br>
    けれども、本来は機械が人に寄り添うべきなのではないでしょうか。
    </p>

    <p>
    そこで、すでに蔓延した0/1のスイッチを人の気持ちに合わせられる0~1へと矯正する装置を作りました。<br>
    この装置はスイッチに中間の選択肢ができるよう確率の要素を加えます。<br>
    例えば、8割程度の押す気持ちであれば、つまみで調節することで8割の確率で押されるスイッチに変えられます。<br>
    また、どうでも良い選択時や決断を迷った時、神頼みをするように選択を機械に任せられることも可能です。<br>
    </p>
    <p>
    本作品では現在日常的に使われている物理的なスイッチからデジタルなスイッチまで、主な数種類のスイッチをハックしました。<br>
    グレースイッチがあれば、押すかどうかの判断は少しハードルは低くなるのではないでしょうか。<br>
    もし思い通りでの結果に行かなかった時であっても、それは自分の意思を確認できる手助けになるのではないでしょうか。<br>
    人と機械のインタフェースであるスイッチをグレーにハックすることで、いつのまにか機械の中身やスイッチを押した先の行為自体もグレー化されていくのかもしれません。<br>
    </p>
    <p>私はこの一連の四作品のうちChrome Extensionを作成した。<br></p>
    <p>
    この作品群は学生CGコンテストでファイナリストにノミネートされている
    </p>
    <div class="video"><iframe src="https://www.youtube.com/embed/IjyW11fZpSU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>'
  elsif worksname == 'nowloading'
    @place = '東京デザインウィーク2016'
    @main_pic = '/img/nowloading3.png'
    @name = 'Now Loading'
    @date = '2016/11/02'
    @role = 'アイデア'
    @process = '展示発表'
    @blcolor = '#666'
    @categories = category_list.push('展示')
    @language = nil
    @members = member_list.push('油井 俊哉', '千葉 一磨')
    @otherpics = ['/img/nowloading2.png', '/img/loading.gif']
    @links = link_list.push(
      {
        'text' => 'HELLO HUMAN, GOODBYE HUMAN.',
        'url' => 'http://hellohuman.strikingly.com/'
      },
      {
        'text' => 'TOKYO DESIGN WEEK 2016 Interactive展',
        'uri' => 'http://tokyodesignweek.jp/2016/exhibitors/details/008442.html'
      },
      {
        'text' => '動画',
        'uri' => 'https://vimeo.com/263627671'
      },
      {
        'text' => '油井 俊哉',
        'uri' => 'http://yui1048119.tumblr.com/'
      },
      {
        'text' => '千葉 一磨',
        'uri' => 'https://ameblo.jp/kazuma-chiba/'
      },
      {
        'text' => '橋田朋子研究室',
        'uri' => 'http://tomokohashida.tumblr.com/'
      }
    )
    @contents = '<p>“コンピュータ上のアイコンは、直感的にするために現実世界の何かに似せていました。ですが最近ではアイコンは情報世界独自のものへと変わりつつ有ります。この情報世界独自のアイコンを現実世界に回帰させるとどうなるでしょうか。”</p><br>
    <p>スキュモーフィズムの逆として、デジタルで一般的になったアイコンを実世界に戻す試み。ローディングのマークは昔は砂時計を真似ていたが、いつのまにか丸いサークルの形が定着した。そのサークル型のローディングマークのステッカーを作り、日常の様々な風景に貼って実世界上の物事のニュアンスをデジタルのマークで上書きをする運動である。</p><br>
    <p>2016年東京デザイナーズウィークで橋田朋子研究室のHELLO HUMAN, GOODBYE HUMAN 機械から始まるインタラクション展の一部として展示</p><br>
    <div class="video"><iframe src="https://player.vimeo.com/video/263627671" frameborder="0" allowfullscreen></iframe></div>'
  elsif worksname == 'tawamure'
    @main_pic = '/img/tawamure1.jpg'
    @name = 'た(わむ)れまく'
    @date = '2016/08/06'
    @role = 'ソフトウェアエンジニア'
    @blcolor = '#121212'
    @prizes = 'お笑い×IoTハッカソン：技術があるで賞'
    @place = 'エスキュービジム IoT×お笑いハッカソン, S-cubism IoTカンファレンス'
    @categories = category_list.push('ハッカソン', '登壇', 'IoT')
    @language = ['openFrameworks', 'C++', 'swift', 'kinect', 'プロジェクションマッピング', 'ポリッドスクリーン', 'node.js', 'OSC']
    @otherpics = ['/img/tawamure.jpg']
    @members = member_list.push('大島 翼', '西村 幸泰', '山田 光一')
    @links = link_list.push(
      {
        'text' => '次世代の笑いのカタチを開発せよ！お笑い×IoTハッカソン開催レポート',
        'uri' => 'https://s-cubism.jp/blog/koho/%E6%AC%A1%E4%B8%96%E4%BB%A3%E3%81%AE%E7%AC%91%E3%81%84%E3%81%AE%E3%82%AB%E3%82%BF%E3%83%81%E3%82%92%E9%96%8B%E7%99%BA%E3%81%9B%E3%82%88%EF%BC%81%E3%81%8A%E7%AC%91%E3%81%84xiot%E3%83%8F%E3%83%83/'
      },
      {
        'text' => 'S-cubism IoTカンファレンス(登壇)',
        'uri' => 'https://tech.s-cubism.jp/iot/iotconference'
      }
    )
    @contents = '<p>
    実世界のお笑いにインターネット特有のコメントを追加して、お笑いをアップデートする作品。<br>
    </p>
    <p>
    視聴者のツイートがコメントとしてリアルタイムに演者の前に表示され、演者はそれに対してインタラクションを行うことができる<br>
    </p>
    <p>
    演者の後ろにディスプレイを置けば、演者はコメントとインタラクションするために、後ろを向く必要がある<br>
    演者の前にスクリーンを置けば、スクリーンに隠れて演者が見えない。<br>
    ポリッドスクリーンというスクリーン技術を用いることで、透明スクリーン上にコメントを投影して、これらの問題を解決している。<br>
    </p>
    <p>
    演者の体や手の動きをkinectで取得している。<br>
    </p>
    <p>ハッカソンで技術があるで賞を受賞し、イベントで登壇している。<br>
    その際トレンディエンジェルの斎藤さんが実際に使用した。
    </p>'
  elsif worksname == 'delter'
    @main_pic = '/img/delter.png'
    @name = 'Delter'
    @date = '2016/03/08'
    @blcolor = 'rgb(66, 133, 244)'
    @role = 'フロントエンドエンジニア'
    @prizes = 'TECH LAB PAAK：TECH LAB PAAK賞'
    @place = 'リクルート主催コワーキングスペース  TECH LAB PAAK'
    @categories = category_list.push('Twitter')
    @language = ['node.js', 'javascript', 'css', 'heroku', 'Twitter API', 'html','機械学習']
    @members = member_list.push('Takuya Kitazawa')
    @otherpics = nil
    @links = link_list.push(
      {
        'text'=>'Takuya Kitazawa',
        'uri'=>'https://takuti.me/'
      },
      {
        'text'=>'TECH LAB PAAK',
        'uri'=>'http://techlabpaak.com/'
      }
    )
    @contents = '<p>
    情報収集の新しい形を提示するアプリケーション<br></p>
    <p>
    自分に最適な情報を得るために自分でアルゴリズムの変数を変更できる。
    </p>
    <ol>
    <li>SNSでフォローしている人が投稿したリンクを集約するだけのタイムライン</li>
    <li>自分の興味をに応じたタイムライン</li>
    <li>インターネット全体の”トレンド分析”に基づき、情報を推薦してくれるタイムライン</li>
    </ol>
    <p>
    これら3種類のタイムラインによって構成されて、情報収集を行うことができる
    </p>
    <p>このアプリケーションはリクルート主催TECH LAB PAAKにてTECH LAB PAAK賞を受賞している。
    </p>
    '
  elsif worksname == 'apimapforpersonalize'
    @main_pic = '/img/apimapforpersonalize.jpeg'
    @name = 'API map for personalize'
    @date = '2016/03/04'
    @blcolor = 'rgb(199, 0, 0)'
    @role = 'エンジニア'
    @prizes = 'Fintech Challenge 2016 "Bring Your Own Bank" ハッカソン：ぐるなび賞'
    @place = 'Fintech Challenge 2016 "Bring Your Own Bank" ハッカソン'
    @categories = category_list.push('データビジュアライゼーション')
    @members = member_list.push('宇佐美 孝太', 'その他')
    @language = language_list.push('API')
    @otherpics = nil
    @links = link_list.push({
      'text'=>'Fintech Challenge 2016 "Bring Your Own Bank" ハッカソン',
      'uri'=>'http://www.bk.mufg.jp/innovation/fintech2016/report/index.html'
    })
    @contents = '
    <p>社会には様々な情報があふれているが、これらを統合して閲覧できる地図が存在しない<br>
    同一地図上で複数の情報を閲覧できない問題を解決するアプリケーションである。<br>
    </p>
    <p>
    今回は三菱UFJのAPIとぐるなびのAPIを用いて、同一地図上に可視化するアプリケーションのプロトタイプを作成した。<br>
    ATMの場所とおろした金で食事をする場所を同一アプリケーション上で確認することができる。<br>
    </p>
    <p>本作品はハッカソンにて「ぐるなび賞」を受賞している</p>'
  elsif worksname == 'sotsuron'
    @main_pic = '/img/sotsuron.png'
    @name = '磁性シートの磁力制御に基づく積層させた複数紙面への同時描画システム'
    @date = '2016/03/01'
    @blcolor = 'rgb(56, 87, 35)'
    @role = 'Researcher'
    @prizes = '電子情報通信学会MVE研究会：MVE賞'
    @place = '卒業論文, 電子情報通信学会MVE研究会'
    @categories = category_list.push('論文', '研究', '学会')
    @members = member_list.push('橋田 朋子')
    @language = ['openFrameworks', 'Arduino']
    @otherpics = nil
    @links = link_list.push(
      {
        'text'=>'Tumblr',
        'uri'=>'https://tmblr.co/ZPy9xn2EaJxYF'
      },
      {
        'text'=>'橋田朋子研究室',
        'uri'=>'http://tomokohashida.tumblr.com/'
      },
      {
        'text'=>'電子情報通信学会MVE研究会',
        'uri'=>'http://www.ieice.org/~mve/award.html'
      }
    )
    @contents = '
    <p>本研究では、磁力により印字や消去が可能な積層したリライタブルシートに濃淡のある同時描画システムを構築するための基礎実験を行っている。
    磁力を制御することで任意の複数紙面に同時に印字できるシステムを試作し、磁束密度に対する磁性シートの特性を明らかにするため２種類の基礎実験を行い、磁束密度の制御により色濃淡や描画枚数の関係を制御可能であることを示した。<br></p>
    <p>本研究は電子情報通信学会MVE研究会にて発表を行い、MVE賞を受賞している。'
  elsif worksname == 'plottage'
    @main_pic = '/img/plottage.jpeg'
    @name = 'PLOTtage'
    @date = '2016/02/15'
    @blcolor = 'black'
    @role = 'ソフトウェアエンジニア'
    @place = 'Yahoo! HackDay 2016'
    @categories = category_list.push('デバイス')
    @members = member_list.push('井上 紘太朗', '北澤 優也', '中山 祐之介')
    @language = ['Arduino', 'openFrameworks']
    @otherpics = ['/img/plottage1.jpg']
    @links = link_list.push(
      {
        'text'=>'中山 祐之介',
        'uri'=>'https://yunosuke-nakayama.com/'
      },
      {
        'text'=>'Tumblr',
        'uri'=>'http://yuyakitazawa.tumblr.com/post/152655641563/%E3%83%97%E3%83%AD%E3%83%83%E3%82%BF%E3%83%BC%E3%82%B8%E3%83%A5-plottage'
      },
      {
        'text'=>'井上 紘太朗',
        'uri'=>'https://musaprg.hatenablog.com/'
      }
    )
    @contents = '凹凸のあるものの上に紙を置き、その上をなぞると模様が浮き出てくるものをフロッタージュという。<br>
    これをデジタル世界の画像データで行うことを試みた。'
  elsif worksname == 'sutesute'
    @main_pic = '/img/sutesute.png'
    @name = 'すてすて'
    @date = '2015/09/09'
    @blcolor = 'rgb(250, 240, 160)'
    @role = 'Kinectエンジニア'
    @place = '第24回 国際学生対抗バーチャルリアリティコンテスト'
    @categories = category_list.push('VR', 'SR')
    @language = language_list.push('HMD', 'C++', 'Kinect')
    @members = member_list.push('北澤 優也')
    @otherpics = nil
    @links = link_list.push({
      'text'=>'第23回 国際学生対抗バーチャルリアリティコンテスト',
      'uri'=>'http://ivrc.net/2015/'
    },{
      'text'=>'Tumblr',
      'uri'=>'https://tmblr.co/ZWTetk2EAuy4U'
    })
    @contents = '<p>
    足元を見ない状態で階段を昇り、あると思ったもう一段がなかった時の恐怖感は身近に体感することができる。<br>
    </p>
    <p>
    VR 技術を応用し仮想設置された階段を視覚に提示することで、この現象をいつでも体感することができるようにした。<br>
    </p>
    <p>
    ユーザはHMD を装着し、足元を見ながら階段を昇り、同時にユーザの階段に対する位置情報はKinect によって取得され続ける。階段を昇る中盤で、その位置から二段下の位置にいた時の映像に変えて、これ以降はユーザの位置より二段下の映像をユーザの速さに合わせて提示し続ける。
    <br></p>
    <p>
    階段のように 同じ光景が続く場の中で行動する際は、現実世界と仮想世界の境界に気付くことが難しい。繰り返し動作がSRと相性が良いとみて実施した。
    <br></p>'
  elsif worksname == 'kaihukai'
    @main_pic = '/img/kaihukai.jpeg'
    @name = '快不快タイマー'
    @date = '2015/07/31'
    @blcolor = 'rgb(210, 250, 230)'
    @role = 'プロトタイプエンジニア'
    @place = 'ゼミ発表'
    @categories = category_list.push('講義', '研究室', 'ハードウェア')
    @language = ['Arduino'].push()
    @members = member_list
    @otherpics = nil
    @links = link_list.push(
      {
        'text'=>'橋田朋子研究室',
        'uri'=>'http://tomokohashida.tumblr.com/'
      },
      {
        'text'=>'Tumblr',
        'uri'=>'https://tmblr.co/ZPy9xn2EaInvM'
      }
    )
    @contents = '<p>不快指数に応じてタイマーの経過スピードが変わるタイマー<br>
    時間経過をLEDテープで表示している。<br>
    湿温度センサーで不快指数を計算している。</p>'
  elsif worksname == 'hanauta'
    @main_pic = '/img/hanauta.png'
    @name = '花歌職人'
    @date = '2015/05/21'
    @blcolor = 'rgb(115, 217, 130)'
    @role = 'マーケター(?)'
    @place = '学生が起業を学ぶビジネススクール WILLFU'
    @categories = category_list.push('事業')
    @members = member_list.push('Tatsuro Ishii', 'Yuichi Yogo')
    @process = '事業'
    @language = nil
    @otherpics = nil
    @links = link_list.push(
      {
        'text'=>'Yuichi Yogo',
        'uri'=>'http://yuichi-yogo.net/'
      },
      {
        'text'=>'学生が起業を学ぶビジネススクール WILLFU',
        'uri'=>'https://willfu.jp/'
      },
    )
    @contents = 'ユーザから届いた鼻歌を、音大の学生が短い楽曲として届けるビジネス'
  elsif worksname == 'windgrass'
    @main_pic = '/img/windgrass.png'
    @name = 'WindGrass 手風でなびく草型ディスプレイ'
    @date = '2015/03/01'
    @blcolor = 'rgb(0, 100, 75)'
    @role = 'ハードウェアエンジニア'
    @place = 'WASEDAものづくりプログラム'
    @categories = category_list.push('ハードウェア')
    @members = member_list.push('西村 幸泰', '横田 智大')
    @language = ['Arduino']
    @otherpics = ['/img/wg2.JPG', '/img/wg3.JPG', '/img/wg4.JPG', '/img/wg5.JPG', '/img/wg6.JPG', '/img/wg7.JPG', '/img/wg8.JPG', '/img/wg9.JPG']
    @links = link_list.push(
      {
        'text'=>'WASEDAものづくりプログラム',
        'uri'=>'http://www.koubou.sci.waseda.ac.jp/event/mono-pro.html'
      },
      {
        'text' => '横田 智大',
        'uri' => 'http://tyokota.strikingly.com/'
      }
    )
    @contents = '<p>都会に住む現代人は日々ビル風に当たるだけで、草原で心地よい風に吹かれる体験がなくなっている<br>
    </p>
    <p>
    本デバイスは心地よい風を感じた気分になることを目的としている<br>
    </p>
    <p>そのために本デバイスは手の動きを取得して、その動きに応じて柔らかく曲がる。<br>
    </p>
    <p>マイコンにArduino(Mega)、アクチュエータにバイオメタル(形状記憶合金)、センサに光センサを用いている</p>'
  elsif worksname == 'chinanago'
    @name = 'チンアナゴ型ディスプレイ'
    @main_pic = '/img/chinanago.jpg'
    @date = '2015/03/01'
    @blcolor = '#999'
    @role = 'エンジニア'
    @place = '情報理工学科中島研究室のプロジェクト学習B(副専攻)'
    @categories = category_list.push('ハードウェア')
    @members = member_list
    @language = ['C++', 'Kinect', 'Arduino', 'シリアル通信']
    @otherpics = nil
    @links = link_list.push({
      'text'=>'Tumblr','uri'=>'http://hungrykirby.tumblr.com/post/115555802180/%E4%B8%AD%E5%B3%B6%E7%A0%94%E7%A9%B6%E5%AE%A4%E3%81%AE%E3%83%97%E3%83%AD%E3%82%B8%E3%82%A7%E3%82%AF%E3%83%88%E5%AD%A6%E7%BF%92b%E3%81%A7%E4%BD%9C%E6%88%90%E3%81%97%E3%81%9F%E3%83%81%E3%83%B3%E3%82%A2%E3%83%8A%E3%82%B4%E5%9E%8B%E3%83%87%E3%82%A3%E3%82%B9%E3%83%97%E3%83%AC%E3%82%A4%E6%9C%80%E5%B0%8F%E3%81%AE%E7%94%9F%E7%89%A9%E6%84%9F%E3%82%92%E7%9B%AE%E6%8C%87%E3%81%97%E3%81%A6%E4%BD%9C%E6%88%90%E3%81%95%E3%82%8C%E3%81%9Fk'
    },{
      'text'=>'早稲田大学情報理工学科中島研究室','uri'=>'http://www.dcl.cs.waseda.ac.jp/'
    })
    @contents = '<p>最小の生命単位を目指した作品<br></p><p>Kinectで顔の位置を取得し、それに合わせてアクチュエータを動かしている。
    <br></p>
    <p>Kinectによる入力をC++で行い、Arduinoでアクチュエーションしている。<br></p>'
  elsif worksname == 'whisperspeakers'
    @name = 'Whisper Speakers'
    @main_pic = '/img/ws.jpg'
    @date = '2014/10/01'
    @blcolor = 'black'
    @place = 'TopGunProject(KEIO MEDIA DESIGN主催、日本マイクロソフト株式会社共催の未来のクリエータを育成するコース)'
    @categories = category_list.push('ハードウェア')
    @members = member_list.push('高橋 幸輝', '三木 悠', 'Kentaro Sueyoshi')
    @language = ['C++', 'Arduino', 'Kinect', 'シリアル通信', '指向性スピーカー']
    @otherpics = ['/img/whisperspeakers.jpeg']
    @links = link_list.push(
      {'text'=>'TOPGUNproject Twitter アカウント', 'uri'=>'https://twitter.com/topgunproject'}
    )
    @contents = '<p>「ことばが通じない人とも一緒に盛り上がりたい！」<br></p>
    <p>パラメトリックスピーカーで、Kinectで取得した人のいる方向に音声を送信します<br>
    その際、2つのスピーカーで伝達する言語を分けることで、言語圏の違う2人が同時に映像(音声)を楽しむことができます。<br>
    <br></p>'
  elsif worksname == 'dancingwithtwitter'
    @name = 'Dancing with twitter'
    @main_pic = '/img/dancingwithtwitter.jpg'
    @date = '2014/07/24'
    @blcolor = 'rgb(190, 160, 160)'
    @place = '講義(インタラクティブセンシング)'
    @categories = category_list.push('講義', 'ハードウェア')
    @role = 'ソフトウェアエンジニア(Twitter API)'
    @members = member_list.push('佐々木')
    @language = language_list.push('Arduino', 'Twitter API')
    @otherpics = nil
    @links = link_list.push(
      {'text'=>'インタラクティブセンシング2014', 'uri'=>'http://interactivesensing2014.tumblr.com/post/92718374430/dancing-with-twitter'}
    )
    @contents = '<p>Twitterの情報を目でみえる動きと耳で聞こえる音で表現しデータの偶然性が作り出す不規則な動きを表現する。</p>'
  else
    puts 2
  end

  if @contents
    @classname = worksname
    @ogptitle = @name + '：きゃりかつルーム'
    @ogpdescription = '塙克樹が関わった作品、作品名' + @name + 'について解説しています。：' + @ogpdescription
  end

  erb :works
end

not_found do
  "ここにお宝はないみたいだぜ？"
end

error do
  "エラーかよ…"
end
