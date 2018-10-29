module Logger
  def logging(log)
    log_file = File.open("Log.txt", 'a') { |file| file.write log }
  end
end
