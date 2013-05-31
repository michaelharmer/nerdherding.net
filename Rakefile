def jekyll(opts = "", path = "../jekyll/bin/")
  sh "rm -rf _site"
  sh "jekyll " + opts
end

desc "Build site using Jekyll"
task :build do
  jekyll("build")
end

desc "Serve on Localhost with port 4000"
task :default do
  jekyll("serve --watch")
end

desc "Deploy to Test"
task :deploy => :"deploy:test"

namespace :deploy do
  desc "Deploy to Test"
  task :test => :build do
    rsync "test.nerdherding.net"
  end
  
  desc "Deploy to Live"
  task :live => :build do
    rsync "nerdherding.net"
  end
  
  desc "Deploy to Dev and Live"
  task :all => [:test, :live]
  
  def rsync(domain)
    sh "rsync -rtz --delete _site/ mharmer@manganese.sabren.com:/home/mharmer/web/#{domain}/"
  end
end

