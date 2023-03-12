# frozen_string_literal: true

class TailwindFormBuilder < ActionView::Helpers::FormBuilder
  def text_field(method, opts = {})
    default_opts = { class: 'mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50' }
    merged_opts = default_opts.merge(opts)
    super(method, merged_opts)
  end

  def submit_button(text, opts: {})
    classes = (opts.delete(:class) || opts.delete('class') || '').split
    classes << 'btn btn-primary'
    # classes << "btn-primary" unless classes.any?{|c| c =~ /^btn-/}
    @template.button_tag(text, opts.merge(class: classes.uniq.join(' ')))
  end
end
