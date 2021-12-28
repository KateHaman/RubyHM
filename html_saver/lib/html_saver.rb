require 'sanitize'

module HTMLSaver
  def self.save(body, file_name: 'index.html', bypass_html: false)
    body = Sanitize.fragment(body) unless bypass_html
    File.open(file_name, 'w+') do |f|
      html = <<~HTML
        <!DOCTYPE html>
        <html lang="en">
        <head>
        <title>#{file_name}</title>
        <meta charset="utf-8">
        </head>
        <body>
        #{body}
        </body>
        </html>
      HTML
      f.write(html)
    end
  end
end
