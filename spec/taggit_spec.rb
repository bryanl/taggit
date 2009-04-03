require File.join(File.dirname(__FILE__), "spec_helper")

describe "Taggit" do
  describe "Utils" do
    it "should symlink a file" do
      FileUtils.should_receive(:ln_s).with("src", "/project/.git/hooks/dest").and_return(true)
      Taggit::Utils.symlink("src", "/project", "dest")
    end
  end
end
