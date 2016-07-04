#매주 월요일 새벽 2시에 동작합니다.

#every :monday, :at => '2am' do
#	rake "echo:request_task"
#end

#Test Script
every 5.minutes do
	rake "echo:request_task"
end
