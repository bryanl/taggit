module Taggit
  class Utils
    class << self
      def symlink(src, project, dest)
        FileUtils.ln_s(src, "#{project}/.git/hooks/#{dest}")
      end
    end
  end
end
