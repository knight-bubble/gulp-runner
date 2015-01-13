# desc "Explaining what the task does"
# task :gulprunner do
#   # Task goes here
# end

namespace :gulp do
	desc 'List all gulp tasks'
	task :list do
		puts GulpRunner::Gulp.list
	end

	namespace :run do
		desc 'Runs default task'
		task :default do
			puts GulpRunner::Gulp.run
		end
	end

	desc 'Run gulp task'
	task :run, [:task_name] do |t, args|
		puts GulpRunner::Gulp.run args[:task_name]
	end
end