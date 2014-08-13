site :opscode


## Community cookbooks
cookbook "java",         ">=1.16.4"

## Public cookbooks
cookbooks = File.join(File.dirname(__FILE__), "cookbooks", "*")
Dir.glob(cookbooks).select { |f| File.directory?(f) }.each do |path|
  cookbook File.basename(path), path: path
  end


