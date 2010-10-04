module Jekyll
  class RawHTMLConverter < Converter
    safe true
    priority :low

    def matches(ext)
      ext =~ /html/i
    end

    def output_ext(ext)
      ".html"
    end

    def convert(content)
      content
    end
  end
end