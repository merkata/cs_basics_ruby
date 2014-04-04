require 'rake/testtask'
current_chapter = "total_avg_words"
ENV['TEST'] = "tests/t_#{current_chapter}.rb"

Rake::TestTask.new do |t|
    t.libs << 'tests/'
    t.test_files = FileList['tests/t_*.rb']
end
