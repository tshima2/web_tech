require "./common"

# データを受け取り、返却するCGIプログラムの起動
require 'cgi'
cgi = CGI.new
# データを受け取った後、HTMLの形式でレスポンスを返す
get = cgi['give_for']
# HTMLでレスポンスを返却する
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  format(get, '譲渡先が自家消費ではないもののgoyaの情報')
}
