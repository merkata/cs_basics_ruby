require 'rake/testtask'
current_chapter = "searching"
ENV['TEST'] = "tests/t_#{current_chapter}.rb"

Rake::TestTask.new do |t|
    t.libs << 'tests/'
    t.test_files = FileList['tests/t_*.rb']
end
