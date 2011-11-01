Dir::glob(File.join(File.dirname(__FILE__), "..", "lib", "**", "*.rb")) {|file| require file; }
