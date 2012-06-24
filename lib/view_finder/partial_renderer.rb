module ::ActionView
  class PartialRenderer < AbstractRenderer
    alias :render_orig :render
    def render(context, options, block)
      setup(context, options, block)
      file_path = find_partial.inspect
      span_tag = "<span style='display:none' class='the-real-file-path' data-uri='file://#{Rails.root.join file_path}'></span>".html_safe if file_path =~ /\.html/
      render_orig(context, options, block) + span_tag
    end
  end
end
