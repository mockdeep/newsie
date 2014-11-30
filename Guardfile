group :everything, halt_on_fail: true do
  rspec_opts = {
    all_after_pass: false,
    all_on_start: false,
    failed_mode: :keep,
    cmd: 'spring rspec',
  }

  guard 'rspec', rspec_opts do
    watch('.rspec')
    watch(/^spec\/.+_spec\.rb$/)
    watch(/^lib\/(.+)\.rb$/) { |m| "spec/lib/#{m[1]}" }
    watch(/^app\/(.+)\.rb$/) { |m| "spec/#{m[1]}" }
  end

  guard :rubocop, all_on_start: false, cli: %w(--rails -D) do
    watch(/.+\.rb$/)
    watch(/.+\.rake$/)
    watch(/.+\.ru$/)
    watch(/Guardfile/)
    watch(/Rakefile/)
    watch(/(?:.+\/)?\.rubocop\.yml$/) { |m| File.dirname(m[0]) }
  end
end
