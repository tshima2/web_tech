#require 'byebug'

def format(tsv, caps)
  ar = tsv.split(' ')
  out_string = "<html><body>";
  out_string += "<p>#{caps}</p>"
  out_string += "<table border=1><tr><th>日付</th><th>譲渡先</th><th>長さ</th><th>重量</th><th>品質</th></tr>"

  i=0
  ar.each do |s|
    out_string += "<tr>" if i==0

    #  byebug
    out_string += "<td>" + s + "</td>"
    out_string += "</tr>" if i==4
    i += 1
    if (i % 5 == 0)
      i = 0
    end
  end
  out_string += "</table></body></html>"

  return out_string
end
