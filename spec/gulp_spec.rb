require 'gulp-runner/gulp'

describe GulpRunner::Gulp do
	let (:gulp) { GulpRunner::Gulp.new('gulp') }
	before(:each) do 
		GulpRunner.options[:root_path] = "#{Dir.pwd}/spec/fixtures"
	end

	it 'returns list of gulp tasks' do
		expect(gulp.list).not_to be_empty
	end
end