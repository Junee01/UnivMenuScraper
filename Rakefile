# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

##localhost:3009/diets로 요청을 보내는 명령어입니다.
namespace :echo do
	task :request_task do
		Net::HTTP.get(URI('http://localhost:3010'))
	end
end
