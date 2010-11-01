module Trinidad
  class WarWebApp < WebApp
    def context_path
      super.gsub(/\.war$/, '')
    end

    def work_dir
      File.join(web_app_dir.gsub(/\.war$/, ''), 'WEB-INF')
    end
  end
end
