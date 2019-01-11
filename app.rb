require 'sinatra'
require 'sinatra/reloader'
require 'sass'

get '/' do
  @title = 'きゃりかつルーム'
  @is_top = true
  erb :index
end

get '/works/*' do |worksname|
  member_list = ['塙 克樹']
  otherpics = []
  prizes = []
  link_list = []
  @title = 'きゃりかつルーム'
  @name = worksname + 'という名前の作品は見つかりませんでした!'
  @main_pic = '/img/noimg.jpg'
  @contents = nil
  @date = ''
  @role = ''
  @classname = ''
  @place = ''
  @members = ''
  @process = 'プロトタイプ'
  language_list = ['Processing']
  @links = []
  @language = ''
  @blcolor = 'black'
  #@process = ''
  if worksname == 'granavi'
    @main_pic = '/img/granaviimg.PNG'
    @name = 'Gra Navi'
    @date = '2014/08/31'
    @role = 'Software Engineer'
    @blcolor = 'orange'
    @members = member_list.push('西村 幸泰', '油井 俊哉').join(',')
    @language = language_list.push('楽天トラベルAPI').join(',')
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
  elsif worksname == 'grayswitch'
    @main_pic = '/img/gray-switch.jpg'
    @name = 'Gray Switch'
    @date = '2018/02/10'
    @role = 'Engineer (Chrome Addon Type Switch)'
    @blcolor = 'black'
    @language = ['python', 'node.js', 'Chrome Extension'].join(', ')
    @members = member_list.push('北澤 優也', '油井 俊哉', '横田 智大').join(',')
    @links = link_list.push(
      {
        'text' => 'Gray Switch公式サイト',
        'uri' => 'http://grayswitch.strikingly.com/'
      },
      {
        'text' => 'グレースケール展',
        'uri' => 'http://grayscale.cc/'
      },
      {
        'text' => 'Github',
        'uri' => 'https://github.com/hungrykirby/my_extension'
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
    </p>'
  else
    puts 2
  end

  if @contents
    @classname = worksname
  end
  
  erb :works
end

not_found do
  "Whoops! You requested a route that wasn't available."
end

error do
  "Y U NO WORK?"
end
