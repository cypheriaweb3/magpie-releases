class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.435/magpie-cli-darwin-arm64"
      sha256 "26ccb042b9e8b4cd1656be837cc0bfb090a932701c7a65a0fd05a15df52f2a58"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.435/magpie-cli-darwin-amd64"
      sha256 "591796f481831117cc317b74d7162efd4128bc10d0ea7f4ad97f43052823a2d7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.435/magpie-cli-linux-arm64"
      sha256 "14d3d2a530434593ff966e417b5ef1213f58412f98e0a86af0f4fa16d94dbcb5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.435/magpie-cli-linux-amd64"
      sha256 "bc70cea26146ab8a0d672a1115899e2de0b7d0515847028b9ee5ffe0edb8a2c6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
