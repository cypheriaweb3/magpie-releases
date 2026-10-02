class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.621/magpie-cli-darwin-arm64"
      sha256 "9c1ccfac9d93e058633e6a231d3d998e4eac53c8feffbeed1dabf713496ebf59"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.621/magpie-cli-darwin-amd64"
      sha256 "262ab821ab6d7c55de5728aeebb7f22488b7040d545add00724dfea36b4e9752"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.621/magpie-cli-linux-arm64"
      sha256 "6c8ba0be3747505e59b78fd65a318757e184ab111a07cb7ac7b0f5acd03d74de"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.621/magpie-cli-linux-amd64"
      sha256 "6b241e2e51020f85907625c4d86a7575d62e8be7881b21de545347cc131c2970"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
