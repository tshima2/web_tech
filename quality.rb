require "./common"

# データを受け取り、返却するCGIプログラムの起動
require 'cgi'
cgi = CGI.new
# データを受け取った後、HTMLの形式でレスポンスを返す
get = cgi['quality']
# HTMLでレスポンスを返却する
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  format(get,'品質が悪いもの（false）のgoyaの情報')
}
